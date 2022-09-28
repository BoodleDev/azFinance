{===============================================================================
 Author         : Wynand Wessels
 Date           :
 Unit           :
 PreConditions  : DONT CHANGE MY CODE
 PostConditions : none.
 History :
 ==============================================================================}
unit fmConnectSMS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ScktComp, ExtCtrls, DB, ComCtrls, StdCtrls, Unit32;

type
  TfrmConnectSMS = class(TForm)
    pnlM: TPanel;
    cs: TClientSocket;
    lblStatus: TLabel;
    pbSMS: TProgressBar;
    procedure csRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure csConnecting(Sender: TObject; Socket: TCustomWinSocket);
    procedure csError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure csDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure csConnect(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
    smsData : TDataSet;
    UserName : String;
    procedure Stepe(sts :integer);
    procedure SendSMS;
    procedure Logon;
    procedure SetsmsData(DataSet :TDataSet);
  public
    { Public declarations }
    class procedure SendAll(iQry:TDataSet;iUName:String);
  end;

const
  stsSent = 3;
  stsFail = 5;

implementation

{$R *.DFM}

class procedure TfrmConnectSMS.SendAll(iQry: TDataSet;iUName:String);
var
  frmSendSMS : TfrmConnectSMS;
begin
  frmSendSMS := TfrmConnectSMS.Create(nil);
  try
    frmSendSMS.UserName := iUName;
    frmSendSMS.SetsmsData(iQry);
    frmSendSMS.ShowModal;
  finally
    frmSendSMS.Free;
  end;
end;

procedure TfrmConnectSMS.SetsmsData(DataSet :TDataSet);
begin
  smsData := DataSet;
  smsData.First;
  pbSMS.Max := smsData.RecordCount;
  pbSMS.Position := 0;
end;

procedure TfrmConnectSMS.csRead(Sender: TObject; Socket: TCustomWinSocket);
var
  rStr : String;
begin
  rStr := socket.ReceiveText;
  if rStr = 'Logon' then
    Logon
  else
  if rStr = 'Ok' then
    SendSMS
  else
  if rStr = 'OkNext' then
    Stepe(stsSent)
  else
  if rStr = 'Next' then
  begin
    Stepe(stsFail)
  end
  else
  if rStr = 'Logoff' then
    mesdlg('Invalid user account, or account has been locked','E');
end;

//cs.Socket.SendText('@100#12244#0824690658#ddd#13');
procedure TfrmConnectSMS.SendSMS;
var
  iStr : String;
begin
   iStr := '';
   if not smsData.eof then
   begin
     lblStatus.Caption := 'Sending sms';
     iStr := '@' +  Trim(smsData.FieldByName('AppID').AsString)+'#';
     iStr := iStr + Trim(smsData.FieldByName('TransID').AsString)+'#';
     iStr := iStr + Trim(smsData.FieldByName('Cellno').AsString)+'#';
     iStr := iStr + Trim(smsData.FieldByName('SMS').AsString)+'#';
     iStr := iStr + Trim(smsData.FieldByName('USrID').AsString);
   end
   else
   cs.Active := False;
   if iStr <> '' then cs.Socket.SendText(iStr);
end;

procedure TfrmConnectSMS.Stepe(sts :integer);
begin
  smsData.Edit;
  smsData.FieldByName('Status').AsInteger := sts;
  smsData.Post;
  smsData.Next;
  //
  pbSMS.stepit;
  sendSMS;
end;

procedure TfrmConnectSMS.FormDestroy(Sender: TObject);
begin
  cs.Active := False;
end;

procedure TfrmConnectSMS.FormShow(Sender: TObject);
begin
  cs.Active := True;
end;

procedure TfrmConnectSMS.Logon;
begin
  cs.Socket.SendText(':'+UserName);
end;

procedure TfrmConnectSMS.csConnecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  lblStatus.Caption := 'Connecting';
end;

procedure TfrmConnectSMS.csError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
   ErrorCode := 0;
   lblStatus.Caption := 'Error sending';
   Application.ProcessMessages;
   sleep(1000);
   lblStatus.Caption := 'Closing connection';
   Application.ProcessMessages;
   sleep(4000);
   close;
end;

procedure TfrmConnectSMS.csDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  close;
end;

procedure TfrmConnectSMS.csConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
 lblStatus.Caption := 'Connected';
end;

end.
