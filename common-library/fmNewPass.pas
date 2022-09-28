unit fmNewPass;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Unit32;

type
  TfrmNewPass = class(TForm)
    edtPass: TEdit;
    edtConfirm: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
    edtUser: TEdit;
    Label3: TLabel;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewPass: TfrmNewPass;

implementation

{$R *.DFM}

procedure TfrmNewPass.btnOKClick(Sender: TObject);
begin
  if not (edtPass.Text = edtConfirm.Text) then
    MesDlg('The passwords supplied do not match','E')
  else
  begin
    if (edtPass.Text = '') or (edtConfirm.Text = '') then
      MesDlg('The password supplied is invalid','E')
    else
      ModalResult := mrOK;
  end;
end;

end.
