unit fmWorkMove;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;

type
  TfrmWorkMove = class(TForm)
    Label1: TLabel;
    edtAccountNo: TEdit;
    Label2: TLabel;
    edtCurrentProcess: TEdit;
    btnCancel: TButton;
    btnOK: TButton;
    Label3: TLabel;
    lstNewProcess: TDBLookupListBox;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWorkMove: TfrmWorkMove;

implementation

uses dmWorkFlow;

{$R *.dfm}

procedure TfrmWorkMove.btnOKClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to redirect Account ' + edtAccountNo.Text + ' from ' +
    edtCurrentProcess.Text + ' to ' +
    dtmWorkFlow.dsRedirectProcess.FieldByName('Description').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ModalResult := mrOK;
  end;
end;

procedure TfrmWorkMove.FormShow(Sender: TObject);
begin
  lstNewProcess.SetFocus;
end;

end.
