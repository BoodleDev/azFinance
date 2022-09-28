unit fmBankDetails;
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
  StdCtrls, Mask, DBCtrls, ExtCtrls, DB, Buttons, dmBankDet, fmDBBase,
  Menus, ComCtrls, ToolWin, fmLookUp;

type
  TfrmBankDetail = class(TfrmDBBase)
    edtAccName: TDBEdit;
    edtAccNo: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbAccType: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    cbxBank: TDBLookupComboBox;
    cbxBrName: TDBLookupComboBox;
    cbxBrCode: TDBLookupComboBox;
    dbtBName: TDBText;
    dbtBBranch: TDBText;
    dbtBBCode: TDBText;
    dbtAccNa: TDBText;
    dbtAccNo: TDBText;
    lblAccType: TLabel;
    btnLUBank: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAccTypeChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnLUBankClick(Sender: TObject);
  private
    { Private declarations }
    dtmData : TdtmBankDet;
    FShowBoxes: boolean;
    FCurEntID: integer;
    FCurTypeID: integer;
    FDBName: WideString;
    FCurrentID: string;
    procedure DoBranchNameLU;
    procedure SetBankStrValues;
    procedure SetBoxes(Status:boolean);
    procedure SetShowBoxes(const Value: boolean);
    procedure SetDBName(const Value: WideString);
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
    // Data
    procedure BankDetAfterInsert(DataSet: TDataSet);
  public
    { Public declarations }
    property DBName : WideString  read FDBName write SetDBName;
    property CurrentID : string read FCurrentID write FCurrentID;
    property CurEntID : integer read FCurEntID write SetCurEntID;
    property CurTypeID: integer read FCurTypeID write SetCurTypeID;
    property ShowBoxes : boolean read FShowBoxes write SetShowBoxes;
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TfrmBankDetail.FormShow(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrNone;
  if cbxBank.Visible then
    cbxBank.SetFocus;//set focus if can
  dtmData.qryBankDet.Open;
  //
  dtmData.qryBranchN.Close;  dtmData.qryBranchN.Open;
  dtmData.qryBranchC.Close;  dtmData.qryBranchC.Open;
  //
  if not dtmData.qryBankDet.FieldByName('AccType').IsNull then
  begin
    cbAccType.ItemIndex := dtmData.qryBankDet.FieldByName('AccType').AsInteger;
    lblAccType.Caption := cbAccType.Text;
  end
  else
    lblAccType.Caption := 'none';
  CurrentDts := dtmData.dtsBankDet;
  btnNew.Visible := False;
end;

{WB 31/01/2000
 This will set the boxes as either view only or allow new & amendments}
procedure TfrmBankDetail.SetBoxes(Status: boolean);
begin //make boxes accessible or not - view(no access) or capture(access)
  cbxBank.Visible    := Status;
  cbxBrName.Visible  := Status;
  cbxBrCode.Visible  := Status;
  edtAccName.Visible := Status;
  edtAccNo.Visible   := Status;
  cbAccType.Visible  := Status;
  btnAmend.Visible   := Status;
  btnSave.Visible    := Status;
  btnCancel.Visible  := Status;
  btnDelete.Visible  := Status;
  btnLUBank.Visible  := Status;
end;

procedure TfrmBankDetail.SetBankStrValues;
begin
//  qryBranchC.Locate
  dtmData.qryBankDet.FieldByName('BBranch').AsString :=
    dtmData.qryBranchC.FieldByName('BranchName').AsString;
  dtmData.qryBankDet.FieldByName('BBCode').AsString  :=
    dtmData.qryBranchC.FieldByName('BranchCode').AsString;
  dtmData.qryBankDet.FieldByName('UserID').AsString  := CurrentID;
end;

procedure TfrmBankDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dtmData.qryBankDet.State = dsEdit) or (dtmData.qryBankDet.State = dsInsert) then
  begin
    if Self.ModalResult = mrOk then
    begin
      SetBankStrValues;
      dtmData.qryBankDet.Post;
    end
    else
      dtmData.qryBankDet.Cancel;
  end;
  inherited;
end;

procedure TfrmBankDetail.cbAccTypeChange(Sender: TObject);
begin
  dtmData.qryBankDet.Edit;
  dtmData.qryBankDet.FieldByName('AccType').AsInteger := cbAccType.ItemIndex;
end;

procedure TfrmBankDetail.SetShowBoxes(const Value: boolean);
begin
  FShowBoxes := Value;
  SetBoxes(FShowBoxes);
end;

procedure TfrmBankDetail.SetDBName(const Value: WideString);
begin
  FDBName := Value;
  dtmData.SetDBName(FDBName);
end;

procedure TfrmBankDetail.FormCreate(Sender: TObject);
begin
  inherited;
  dtmData := TdtmBankDet.Create(Self);
  dtmData.qryBankDet.AfterInsert := BankDetAfterInsert;
end;

procedure TfrmBankDetail.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmData.Free;
  dtmData := nil;
end;

procedure TfrmBankDetail.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
  dtmData.CurEntID := FCurEntID;
end;

procedure TfrmBankDetail.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
  dtmData.CurTypeID := FCurTypeID;
end;

procedure TfrmBankDetail.BankDetAfterInsert(DataSet: TDataSet);
begin
  Dataset.FieldByName('EntityID').AsInteger := FCurEntID;
  Dataset.FieldByName('TypeID').AsInteger   := FCurTypeID;
end;

procedure TfrmBankDetail.btnCancelClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;  
end;

procedure TfrmBankDetail.btnSaveClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TfrmBankDetail.btnLUBankClick(Sender: TObject);
begin
  inherited;
  DoBranchNameLU;
end;

procedure TfrmBankDetail.DoBranchNameLU;
var
  frmLookUp : TfrmLookUp;
begin
  frmLookUp := TfrmLookUp.Create(Self);
  try
    dtmMain.SetGrdColors([frmLookUp.grdLookup]);
    if dtmData.Tag = 0 then
      frmLookUp.SetLookUpForm(dtmData.qryBranchN,nil,'Find bank branch','',True)
    else
      frmLookUp.SetLookUpForm(dtmData.qryBranchN,nil,'Find bank branch','',False);
    frmLookUp.ShowModal;
    if frmLookUp.ChoosenId <> -1 then
    begin
      dtmData.qryBankDet.Edit;
      dtmData.qryBankDet.FieldByName('BRecID').AsInteger := frmLookUp.ChoosenId;
      dtmData.qryBankDet.Post;
    end;
  finally
    Screen.Cursor := crDefault;
    dtmData.qryBranchN.Filter := '';
    dtmData.qryBranchN.Filtered := False;
    frmLookUp.Free;
  end;
end;

end.
