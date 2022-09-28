unit fmWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmWait = class(TForm)
    lblDisplayMessage: TLabel;
    btnOK: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
  private
    FDisplayMessage: String;
    procedure SetDisplayMessage(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property DisplayMessage: String read FDisplayMessage write SetDisplayMessage;
  end;

var
  frmWait: TfrmWait;

implementation

{$R *.dfm}

procedure TfrmWait.SetDisplayMessage(const Value: String);
begin
  FDisplayMessage := Value;
  lblDisplayMessage.Caption := Value;
  Application.ProcessMessages;
end;

procedure TfrmWait.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmWait.btnOKClick(Sender: TObject);
begin
 Close;
end;

end.
