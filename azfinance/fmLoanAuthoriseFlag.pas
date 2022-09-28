unit fmLoanAuthoriseFlag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst;

type
  TfrmLoanAuthoriseFlag = class(TForm)
    chlAuthorise: TCheckListBox;
    chkSelectAll: TCheckBox;
    btnCancel: TButton;
    btnOK: TButton;
    procedure chlAuthoriseClick(Sender: TObject);
    procedure chkSelectAllMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoanAuthoriseFlag: TfrmLoanAuthoriseFlag;

implementation

{$R *.dfm}

procedure TfrmLoanAuthoriseFlag.chlAuthoriseClick(Sender: TObject);
var
  I: Integer;
  CheckCount: Integer;
begin
  CheckCount := 0;

  for I := 0 to chlAuthorise.Items.Count - 1 do
  begin
    if chlAuthorise.Checked[I] then
      CheckCount := CheckCount + 1
    else
    begin
      chkSelectAll.Checked := False;
      //Break;
    end;

    if (I = chlAuthorise.Items.Count - 1) and (CheckCount = chlAuthorise.Items.Count) then
      chkSelectAll.Checked := True;
  end;

  btnOK.Enabled := CheckCount > 0;
end;

procedure TfrmLoanAuthoriseFlag.chkSelectAllMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  I: Integer;
begin
    for I := 0 to chlAuthorise.Items.Count - 1 do
      chlAuthorise.Checked[I] := chkSelectAll.Checked;

    btnOK.Enabled := chkSelectAll.Checked;
end;

procedure TfrmLoanAuthoriseFlag.FormShow(Sender: TObject);
begin
  btnOK.Enabled := False;
end;

procedure TfrmLoanAuthoriseFlag.btnOKClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to authorise the selected flags now?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Self.ModalResult := mrOK;
end;

end.
