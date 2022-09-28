unit fmBankDetail;
{===============================================================================
 Author  : Wicus Botha
 Date    : 31/01/2000
 Unit    : Base bankdetails form for all DB apps.
 PreConditions  : Have to assign the BankDetail datasource.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, DB, Buttons;

type
  TfrmBankDetail = class(TForm)
    lblAddress: TLabel;
    edtName: TDBEdit;
    edtBranch: TDBEdit;
    edtAccName: TDBEdit;
    edtAccNo: TDBEdit;
    BOk: TBitBtn;
    BCancel: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbAccType: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAccTypeChange(Sender: TObject);
  private
    { Private declarations }
    FCurrentDts : TDataSource;
    AccTypeDF   : string;
    procedure SetCurrentDts(const Value: TDataSource);
    procedure SetDataFields;
    procedure SetBankFields;
    procedure SetBoxes(Status:boolean);
  public
    { Public declarations }
    property CurrentDts : TDataSource read FCurrentDts write SetCurrentDts;
    procedure SetBankDetailForm(dtsSource: TDataSource;
      frmCaption: string; bReadOnly : boolean; strBank: integer);
  end;

implementation

{$R *.DFM}

{WB 31/01/2000
 Bank details from - Used to show & capture address detail
 All bank field names in the database carry the names below,
 except for 2 Bank detail fields}
procedure TfrmBankDetail.SetDataFields;
begin //set boxes data fields (Fieldnames of spesific Tbl)
  edtName.DataField    := 'Name';
  edtBranch.DataField  := 'Branch';
  edtAccName.DataField := 'AccName';
  edtAccNo.DataField   := 'AccNo';
  AccTypeDF            := 'AccType';
end;

{WB 31/01/2000
 This is the bank fields in the database, if exists in a non
 generic address table for Loan Officers}
procedure TfrmBankDetail.SetBankFields;
begin
  edtName.DataField    := 'BankName';
  edtBranch.DataField  := 'BankBranch';
  edtAccName.DataField := 'BankAccName';
  edtAccNo.DataField   := 'BankAccNo';
  AccTypeDF            := 'BankAccType';
end;

procedure TfrmBankDetail.FormShow(Sender: TObject);
begin
  Self.ModalResult := mrNone;
  if edtName.Enabled = true then
    edtName.SetFocus;//set focus if can
  if not CurrentDts.DataSet.FieldByName(AccTypeDF).IsNull then
    cbAccType.ItemIndex := CurrentDts.DataSet.FieldByName(AccTypeDF).AsInteger;
end;

{WB 31/01/2000
 This will set the boxes as either view only or allow new & amendments}
procedure TfrmBankDetail.SetBoxes(Status: boolean);
begin //make boxes accessible or not - view(no access) or capture(access)
  edtName.Enabled    := Status;
  edtBranch.Enabled  := Status;
  edtAccName.Enabled := Status;
  edtAccNo.Enabled   := Status;
  cbAccType.Enabled  := Status;
  BCancel.Visible    := Status;
end;

{WB 31/01/2000
 The form has a property for the current datasource and via this datasource
 the data will be saved back to the database}
procedure TfrmBankDetail.SetCurrentDts(const Value: TDataSource);
begin
  FCurrentDts := Value;
  edtName.DataSource    := Value;
  edtBranch.DataSource  := Value;
  edtAccName.DataSource := Value;
  edtAccNo.DataSource   := Value;
end;

procedure TfrmBankDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (CurrentDts.DataSet.State = dsEdit) or
     (CurrentDts.DataSet.State = dsInsert) then
  begin
    if Self.ModalResult = mrOk then
      CurrentDts.DataSet.Post
    else
      CurrentDts.DataSet.Cancel;
  end;
end;

{WB 31/01/2000
 Set the address form for normal generic address use}
procedure TfrmBankDetail.SetBankDetailForm(dtsSource: TDataSource;
  frmCaption: string; bReadOnly : boolean; strBank: integer);
begin
  lblAddress.Caption := frmCaption;
  CurrentDts := dtsSource;
  if strBank = 0 then
    SetDataFields
  else
    SetBankFields;
  SetBoxes(not bReadOnly);
  ShowModal;
end;

procedure TfrmBankDetail.cbAccTypeChange(Sender: TObject);
begin
  CurrentDts.DataSet.Edit;
  CurrentDts.DataSet.FieldByName(AccTypeDF).AsVariant
    := cbAccType.ItemIndex;
end;

end.

