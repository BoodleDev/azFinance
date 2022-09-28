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
  Menus, ComCtrls, ToolWin, fmLookUp, ADODB;

type
  TfrmBankDetails = class(TForm)
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
    btnLUBank: TBitBtn;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    edtBank: TDBEdit;
    btnValidate: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAccTypeChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnLUBankClick(Sender: TObject);
    procedure edtBankChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnValidateClick(Sender: TObject);
    procedure edtAccNoChange(Sender: TObject);
  private
    { Private declarations }
    FShowBoxes: boolean;
    FCurEntID: integer;
    FCurTypeID: integer;
    FDBName: WideString;
    FCurrentID: string;
    FdtmData: TdtmBankDet;
    FBankDataSet: TADOQuery;
    procedure DoBranchNameLU;
    procedure SetBankStrValues;
    procedure SetBoxes(Status:boolean);
    procedure SetShowBoxes(const Value: boolean);
    procedure SetDBName(const Value: WideString);
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
    // Data
//    procedure BankDetAfterInsert(DataSet: TDataSet);
    procedure SetdtmData(const Value: TdtmBankDet);
    function VerifyBankAccount: Boolean;
    procedure SetBankDataSet(const Value: TADOQuery);
  public
    { Public declarations }
    property BankDataSet: TADOQuery read FBankDataSet write SetBankDataSet;
    property dtmData : TdtmBankDet read FdtmData write SetdtmData;
    property DBName : WideString  read FDBName write SetDBName;
    property CurrentID : string read FCurrentID write FCurrentID;
    property CurEntID : integer read FCurEntID write SetCurEntID;
    property CurTypeID: integer read FCurTypeID write SetCurTypeID;
    property ShowBoxes : boolean read FShowBoxes write SetShowBoxes;
  end;

//function VerifyBankAccNo(FudgeFactor, Modulus: Integer;
//  AccountNo, Weighting: String; ExceptionCode: Char): Boolean; external 'VeriCheck.dll';

implementation

uses dmMain, BankService;

{$R *.DFM}

procedure TfrmBankDetails.FormShow(Sender: TObject);
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
  if not BankDataSet.FieldByName('AccType').IsNull then
    cbAccType.ItemIndex := BankDataSet.FieldByName('AccType').AsInteger;
end;

{WB 31/01/2000
 This will set the boxes as either view only or allow new & amendments}
procedure TfrmBankDetails.SetBoxes(Status: boolean);
begin //make boxes accessible or not - view(no access) or capture(access)
  cbxBank.Visible    := Status;
  cbxBrName.Visible  := Status;
  cbxBrCode.Visible  := Status;
  edtAccName.Visible := Status;
  edtAccNo.Visible   := Status;
  cbAccType.Visible  := Status;
  btnLUBank.Visible  := Status;
end;

procedure TfrmBankDetails.SetBankStrValues;
begin
//  qryBranchC.Locate
  BankDataSet.FieldByName('BBranch').AsString :=
    dtmData.qryBranchC.FieldByName('BranchName').AsString;
  BankDataSet.FieldByName('BBCode').AsString  :=
    dtmData.qryBranchC.FieldByName('BranchCode').AsString;
  BankDataSet.FieldByName('UserID').AsString  := CurrentID;
end;

procedure TfrmBankDetails.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BankDataSet.State = dsEdit) or (BankDataSet.State = dsInsert) then
  begin
    if Self.ModalResult = mrOk then
    begin
      SetBankStrValues;
      BankDataSet.Post;
    end
    else
      BankDataSet.Cancel;
  end;
  inherited;
end;

procedure TfrmBankDetails.cbAccTypeChange(Sender: TObject);
begin
  if BankDataSet.State = dsBrowse then
    BankDataSet.Edit;
  BankDataSet.FieldByName('AccType').AsInteger := cbAccType.ItemIndex;
end;

procedure TfrmBankDetails.SetShowBoxes(const Value: boolean);
begin
  FShowBoxes := Value;
  SetBoxes(FShowBoxes);
end;

procedure TfrmBankDetails.SetDBName(const Value: WideString);
begin
  FDBName := Value;
  dtmData.SetDBName(FDBName);
end;

procedure TfrmBankDetails.FormCreate(Sender: TObject);
begin
  inherited;
  //dtmData := TdtmBankDet.Create(Self);
  //BankDataSet.AfterInsert := BankDetAfterInsert;
end;

procedure TfrmBankDetails.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmData.Free;
  dtmData := nil;
end;

procedure TfrmBankDetails.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
  dtmData.CurEntID := FCurEntID;
end;

procedure TfrmBankDetails.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
  dtmData.CurTypeID := FCurTypeID;
end;

//procedure TfrmBankDetails.BankDetAfterInsert(DataSet: TDataSet);
//begin
//  Dataset.FieldByName('EntityID').AsInteger := FCurEntID;
//  Dataset.FieldByName('TypeID').AsInteger   := FCurTypeID;
//end;

procedure TfrmBankDetails.btnCancelClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;  
end;

procedure TfrmBankDetails.btnSaveClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TfrmBankDetails.btnLUBankClick(Sender: TObject);
begin
  inherited;
  DoBranchNameLU;
end;

procedure TfrmBankDetails.DoBranchNameLU;
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
      BankDataSet.Edit;
      BankDataSet.FieldByName('BRecID').AsInteger := frmLookUp.ChoosenId;
      BankDataSet.Post;
    end;
  finally
    Screen.Cursor := crDefault;
    dtmData.qryBranchN.Filter := '';
    dtmData.qryBranchN.Filtered := False;
    frmLookUp.Free;
  end;
end;

procedure TfrmBankDetails.SetdtmData(const Value: TdtmBankDet);
begin
  FdtmData := Value;
end;

procedure TfrmBankDetails.edtBankChange(Sender: TObject);
begin
  if Assigned(dtmData) then
    if BankDataSet.State in [dsEdit,dsInsert] then
      BankDataSet.FieldByName('BRecID').AsInteger := 0;
end;

procedure TfrmBankDetails.btnOKClick(Sender: TObject);
var
  Bank: String;
  BRecID: Integer;
  AccountName: String;
  AccountNo: String;
  AccType: Integer;
begin
  Bank := Trim(BankDataSet.FieldByName('BName').AsString);
  BRecID := BankDataSet.FieldByName('BRecID').AsInteger;
  AccountName := Trim(BankDataSet.FieldByName('AccName').AsString);
  AccountNo := Trim(BankDataSet.FieldByName('AccNo').AsString);
  AccType := cbAccType.ItemIndex;
  //BranchCode := Trim(BankDataSet.FieldByName('BBCode').AsString);

  BankDataSet.FieldByName('EntityID').AsInteger := FCurEntID;
  BankDataSet.FieldByName('TypeID').AsInteger   := FCurTypeID;

  if (Bank = '') or (BRecID = 0) or (AccountName = '') or (AccountNo = '') or (AccType = -1) then
      MessageDlg('All fields must be completed', mtError, [mbOK], 0)
  else
     if not VerifyBankAccount then
        begin
          edtAccNo.Color := clRed;
          MessageDlg('Invalid account number', mtError, [mbOK], 0);
        end
     else
        if Bank = 'NEDBANK' then
           begin
              if ((AccountNo[1] = '1') and (AccType <> 0)) or
                 ((AccountNo[1] = '2') and (AccType <> 1)) then
                 MessageDlg('Invalid account type. Please confirm that the account number & account type have been captured correctly.', mtError, [mbOK], 0)
              else
                 ModalResult := mrOK;
           end
        else
           ModalResult := mrOK;
end;

function TfrmBankDetails.VerifyBankAccount: Boolean;
var
  Bank: String;
  AccountNo: String;
  AccType: Integer;
begin
  Bank := Trim(BankDataSet.FieldByName('BName').AsString);
  AccountNo := Trim(BankDataSet.FieldByName('AccNo').AsString);
  AccType := cbAccType.ItemIndex;

  (*dtmData.dsBankCDV.Close;
  dtmData.dsBankCDV.Parameters.ParamByName('BankName').Value := Bank;
  dtmData.dsBankCDV.Parameters.ParamByName('AccType').Value := AccType + 1;
  dtmData.dsBankCDV.Open;*)

  try
    Result := GetBankSoap.VerifyCDV(AccountNo, Bank, AccType)
    //Result := VerifyBankAccNo(dtmData.dsBankCDV.FieldByName('FudgeFactor').AsInteger,
    //  dtmData.dsBankCDV.FieldByName('Modulus').AsInteger,
    //  AccountNo, dtmData.dsBankCDV.FieldByName('Weighting').AsString, //'a') then
    //  dtmData.dsBankCDV.FieldByName('ExceptCode').AsString[1]);
  finally
    //dtmData.dsBankCDV.Close;
  end;
end;

procedure TfrmBankDetails.btnValidateClick(Sender: TObject);
begin
  if VerifyBankAccount then
    ShowMessage('This is a valid bank account')
  else
    ShowMessage('This is an invalid bank account');
end;

procedure TfrmBankDetails.edtAccNoChange(Sender: TObject);
begin
  edtAccNo.Color := clWindow;
end;

procedure TfrmBankDetails.SetBankDataSet(const Value: TADOQuery);
begin
  FBankDataSet := Value;
end;

end.
