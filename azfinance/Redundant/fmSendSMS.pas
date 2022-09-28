{===============================================================================
 Author         : Wynand Wessels
 Date           :
 Unit           :
 PreConditions  : DONT CHANGE MY CODE
 PostConditions : none.
 History :
 ==============================================================================}
unit fmSendSMS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, Unit32, Grids, DBGrids, dmSMS,
  DBGrdClr,adodb;

type
  TfrmSendSMS = class(TfrmBase)
    btnSend: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DBGrdClr1: TDBGrdClr;
    procedure btnSendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
    dtmSMS : TdtmSMS;
    procedure SetSMSStatus(iStatus:integer);
  public
    { Public declarations }
  end;

const
  New     = 0;
  Ok      = 1;
  Sending = 2;
  Sent    = 3;
  Decline = 4;
  Failed  = 5;

implementation

uses fmConnectSMS;
  
{$R *.DFM}

procedure TfrmSendSMS.btnSendClick(Sender: TObject);
begin
  inherited;
  TfrmConnectSMS.SendAll(dtmSMS.qrySMS,dtmSMS.UserName);
end;

procedure TfrmSendSMS.FormCreate(Sender: TObject);
begin
  inherited;
  dtmSMS := TdtmSMS.Create(nil);
  dtmSMS.qrySMS.Open;
  dtmSMS.qrySMS.Filter := 'Status < 2';
  dtmSMS.qrySMS.Filtered := True;
end;

procedure TfrmSendSMS.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmSMS.qrySMS.Close;
  dtmSMS.qrySMS.Filter := '';
  dtmSMS.qrySMS.Filtered := False;
  dtmSMS.Free;
  dtmSMS := Nil;
end;

procedure TfrmSendSMS.SetSMSStatus(iStatus: integer);
begin
  dtmSMS.qrySMS.Edit;
  dtmSMS.qrySMS.FieldByName('Status').AsInteger := iStatus;
  dtmSMS.qrySMS.Post;
end;

procedure TfrmSendSMS.ToolButton1Click(Sender: TObject);
begin
  inherited;
  SetSMSStatus(Ok);
end;

procedure TfrmSendSMS.ToolButton3Click(Sender: TObject);
begin
  inherited;
  SetSMSStatus(Decline);
end;

procedure TfrmSendSMS.ToolButton2Click(Sender: TObject);
begin
  inherited;
  if MesDlg('Accept all sms''s ?','X') = mrYes then
  begin
    dtmSMS.qrySms.First;
    while not dtmSMS.qrySMS.Eof do
    begin
      SetSMSStatus(Ok);
      dtmSMS.qrySMS.Next;
    end;
  end;
end;

procedure TfrmSendSMS.ToolButton4Click(Sender: TObject);
begin
  inherited;
  if MesDlg('Decline all sms''s ?','X') = mrYes then
  begin
    dtmSMS.qrySms.First;
    while not dtmSMS.qrySMS.Eof do
    begin
      SetSMSStatus(Decline);
    end;
  end;
end;

end.
