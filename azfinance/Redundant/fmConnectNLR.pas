{===============================================================================
 Author         : Wynand Wessels
 Date           :
 Unit           :
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
unit fmConnectNLR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Gauges, StdCtrls, ExtCtrls, Psock, NMHttp, DBCtrls, OleCtrls, SHDocVw,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Unit32;

type
  TfrmConnectNLR = class(TForm)
    pnlMain: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    gugNLR: TGauge;
    Label5: TLabel;
    lblTime: TLabel;
    lblProgress: TLabel;
    Label7: TLabel;
    Timer1: TTimer;
    dbCurrentRecord: TDBText;
    lblTransType: TLabel;
    httpNLR: TIdHTTP;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    OldTime : TDateTime;
    WebStr  : String;
    ConsumerNo : String;
    EnquireyNo : String;
    ITCNo      : String;
    function GetQryReg : Boolean;
    function RemoveImg(inStr:String): String;
    procedure StartUpLoad;
    procedure ProccReg;
    procedure ProccCls;
    procedure ProccQry;
  public
    { Public declarations }
    procedure StartProcess;
  end;
        
implementation

uses dmNLR, uConst, dmMain;

{$R *.DFM}

procedure TfrmConnectNLR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmNLR.qryNLRResult.Close;
end;

procedure TfrmConnectNLR.StartUpLoad;
begin
  dtmNLR.qryNLRToDo.First;
  gugNLR.MaxValue := dtmNLR.qryNLRToDo.RecordCount;
  while not dtmNLR.qryNLRToDo.Eof do
  begin
    lblTransType.Caption := dtmNLR.GetNLRStatus(dtmNLR.qryNLRToDo.FieldByName('TransType').AsInteger);
    lblProgress.Caption := IntToStr(dtmNLR.qryNLRToDo.RecNo) + ' / '+ IntToStr(gugNLR.MaxValue);
    Application.ProcessMessages;
    if dtmNLR.qryNLRToDo.FieldByName('StatusCode').AsInteger <> nlrOK then
    begin
      WebStr:= httpNLR.Get(dtmNLR.qryNLRToDo.FieldByName('RequestStr').AsString);
      if webStr = '' then // Rerun the command
        WebStr:= httpNLR.Get(dtmNLR.qryNLRToDo.FieldByName('RequestStr').AsString);
      Application.ProcessMessages;
      if GetQryReg then
      begin
        case dtmNLR.qryNLRToDo.FieldByName('TransType').AsInteger of
          NLRReg : ProccReg;
          NLRQry : ProccQry;
          NLRCls : ProccCls;
        end;
      end
      else
       dtmnlr.ErrorResult(RemoveImg(WebStr))
    end;
    gugNLR.Progress := gugNLR.Progress + 1;
    dtmNLR.qryNLRToDo.Next;
  end;
end;

procedure TfrmConnectNLR.Timer1Timer(Sender: TObject);
begin
  lblTime.Caption := FormatDateTime('hh:nn.ss',(now - OldTime));
end;

procedure TfrmConnectNLR.ProccCls;
begin
  if WebStr <> '' then
   dtmNLR.NLRStartNew;
end;

procedure TfrmConnectNLR.ProccQry;
begin
  if WebStr <> '' then
   dtmNLR.NLRQueryClient(RemoveImg(WebStr),Consumerno,EnquireyNo);
end;

procedure TfrmConnectNLR.ProccReg;
begin
  if WebStr <> '' then
   dtmNLR.NLRRegisterClient(EnquireyNo,ITCNo);
end;

function TfrmConnectNLR.GetQryReg:Boolean;
begin
  EnquireyNo := '';
  ITCNo := '';
  ConsumerNo := '';
  if Pos('<P>Consumer number</TD><TD><P>',WebStr) > 0 then
    ConsumerNo :=  Trim(Copy(WebStr,Pos('<P>Consumer number</TD><TD><P>',WebStr)+30,9));
  if Pos('<P>Enquiry reference no.</TD><TD><P>',WebStr) > 0 then
    EnquireyNo :=  Trim(Copy(WebStr,Pos('<P>Enquiry reference no.</TD><TD><P>',WebStr)+36,11));
  if Pos('<P>Loan registration no.</TD><TD><P>',WebStr) > 0 then
    ITCNo      :=  Trim(Copy(WebStr,Pos('<P>Loan registration no.</TD><TD><P>',WebStr)+36,14));
  Result := (ConsumerNo = '') and (EnquireyNo = '' )and ( ITCNo = '');

  if Result then
    dtmNLR.SetStatus(nlrER)
  else
    dtmNLR.SetStatus(nlrOK);
  Result := not Result;
end;

function TfrmConnectNLR.RemoveImg(inStr: String): String;
var
 i : Integer;
begin
  Result := '';
//  i := POS('http://www.graytech.co.za/nlr/image/',WebSTR);
  i := POS('<IMG SRC = "http://www.graytech.co.za/nlr/image/header.jpg" width="600">',WebSTR);
  Result := Copy(webStr,0,i-1);
//  Result := Result + Copy(WebStr,i+36,length(webStr)-((i-1) +36));
  Result := Result + ' <Center><b>Grayston Technologies NLR interface</b></Center> ';
  Result := Result + Copy(WebStr,i+72,length(webStr)-((i-1) +36));
end;

procedure TfrmConnectNLR.StartProcess;
begin
  OldTime := now;
  dtmNLR.qryNLRResult.Open;
  Self.Show;
  if dtmNLR.PrxPort > 0 then
  begin
    httpNLR.ProxyParams.ProxyPort   := dtmNLR.PrxPort;
    httpNLR.ProxyParams.ProxyServer := dtmNLR.PrxAdd;
  end;
  StartUpLoad;
  Self.Close;
end;

end.
