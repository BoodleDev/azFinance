unit frmSMSMessageu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmSMSMessage = class(TForm)
    memSMSMessage: TMemo;
    btnClose: TButton;
    lblSMS: TLabel;
    procedure FormCreate(Sender: TObject; smsMsg: String);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSMSMessage: TfrmSMSMessage;

implementation

{$R *.dfm}

procedure TfrmSMSMessage.FormCreate(Sender: TObject; smsMsg: String);
begin
  memSMSMessage.Lines.Add(smsMsg);
end;

procedure TfrmSMSMessage.btnCloseClick(Sender: TObject);
begin
  memSMSMessage.Clear();
  Close();
end;

end.
