unit fmEmpPayRules;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;

type
  TfrmEmpPayRules = class(TForm)
    Label1: TLabel;
    lstPayRules: TDBLookupListBox;
    btnOK: TButton;
    btnCancel: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpPayRules: TfrmEmpPayRules;

implementation

uses dmEntityLoan;

{$R *.dfm}

procedure TfrmEmpPayRules.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult <> mrOK then
    CanClose := MessageDlg('The employer will not be saved until a pay rule ' +
    'has been selected. Are you sure you want to close?',mtWarning,[mbYes,mbNo],0) = mrYes;
end;

procedure TfrmEmpPayRules.btnOKClick(Sender: TObject);
begin
{  if dtmEntityLoan.dsPayRules.FieldByName('PayRuleID').AsInteger = 0 then
    MessageDlg('No pay rule has been selected.', mtError, [mbOK], 0)
  else   }
    ModalResult := mrOK;
end;

procedure TfrmEmpPayRules.FormShow(Sender: TObject);
begin
  if dtmEntityLoan.dsPayRules.RecordCount > 0 then
      dtmEntityLoan.qryPersonLoan.FieldByName('PayRuleID').AsInteger :=
        dtmEntityLoan.dsPayRules.FieldByName('PayRuleID').AsInteger;
end;

end.
