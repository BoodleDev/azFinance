unit fmSMSMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmSMSMessage = class(TForm)
    memSMSMessage: TMemo;
    btnClose: TButton;
    lblSMS: TLabel;
    procedure btnCloseClick(Sender: TObject);
  private
    FSMSMsg: string;
    procedure SetSMSMsg(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property SMSMsg: string read FSMSMsg write SetSMSMsg;
  end;

var
  frmSMSMessage: TfrmSMSMessage;

implementation

{$R *.dfm}

procedure TfrmSMSMessage.btnCloseClick(Sender: TObject);
begin
  memSMSMessage.Clear();
  Close();
end;

procedure TfrmSMSMessage.SetSMSMsg(const Value: string);
begin
  FSMSMsg := Value;

  memSMSMessage.Lines.Add(SMSMsg);
end;

end.
