unit fmAllocateTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrls;

type
  TfrmAllocateTrans = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    cmbLoanTrans: TComboBox;
    cmbSuspenseTrans: TComboBox;
    lblBadDebtTrans: TLabel;
    cmbBadDebtTrans: TComboBox;
    GroupBox2: TGroupBox;
    dtpDefDate: TDateTimePicker;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    lblBadDebtCount: TLabel;
    lblLoanCount: TLabel;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAllocateTrans: TfrmAllocateTrans;

implementation

uses dmBatchSusp, dmMain, Math;

{$R *.dfm}

procedure TfrmAllocateTrans.btnOKClick(Sender: TObject);
begin
  if ((cmbSuspenseTrans.ItemIndex > -1) and (cmbLoanTrans.ItemIndex > -1)) and
    (((cmbBadDebtTrans.Enabled) and (cmbBadDebtTrans.ItemIndex > -1)) or
      (cmbBadDebtTrans.Enabled = False)) then
    ModalResult := mrOK
  else
    MessageDlg('Not all transactions have been properly specified.', mtError, [mbOK], 0);
end;

end.
