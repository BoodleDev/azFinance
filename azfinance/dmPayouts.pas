unit dmPayouts;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, Provider, DBClient, XSBuiltIns;

type
  TdtmPayouts = class(TDataModule)
    dsSettlements: TADODataSet;
    dtsSettlements: TDataSource;
    cmdLoanSettle: TADOCommand;
    dsArrears: TADODataSet;
    dtsArrears: TDataSource;
    dsArrearsLoanID: TAutoIncField;
    dsArrearsRefNo: TStringField;
    dsArrearsLoanStatus: TStringField;
    dsArrearsStatusColor: TStringField;
    dsArrearsLoanBal: TBCDField;
    dsArrearsPayIns: TBCDField;
    dsArrearsNoOfPay: TSmallintField;
    dsArrearsLoanPeriod: TSmallintField;
    qryBranchCode: TADOQuery;
    dtsBranchCode: TDataSource;
    qryBranchName: TADOQuery;
    qryBranchNameIDVal: TIntegerField;
    qryBranchNameBranchCode: TStringField;
    qryBranchNameBranchName: TStringField;
    dtsBranchName: TDataSource;
    qryBanks: TADOQuery;
    dtsBanks: TDataSource;
    dsSettlePayouts: TADODataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    dsSettlementsLoanID: TAutoIncField;
    dsSettlementsRefNo: TStringField;
    dsSettlementsStatusColor: TStringField;
    dsSettlementsSettlementInterest: TBCDField;
    dsSettlementsLoanBalance: TBCDField;
    dsSettlementsFutureTrans: TBCDField;
    dsSettlementsAdditionalCharges: TBCDField;
    dsSettlementsPayIns: TBCDField;
    dsSettlementsNoOfPay: TSmallintField;
    dsSettlementsLoanPeriod: TSmallintField;
    dsSettlementsDepositBalance: TBCDField;
    dsSettlementsSettlement: TBCDField;
    dsSettlementsLoanStatus: TStringField;
    cmdAddQuote: TADOCommand;
    dsBeneficiary: TADODataSet;
    dsBeneficiaryEntityID: TAutoIncField;
    dsBeneficiaryEntCode: TStringField;
    dsBeneficiaryBeneficiary: TStringField;
    dsBeneficiaryBankName: TStringField;
    dsBeneficiaryBranch: TStringField;
    dsBeneficiaryBranchCode: TStringField;
    dsBeneficiaryAccountName: TStringField;
    dsBeneficiaryAccountNo: TStringField;
    dsBeneficiaryAccountType: TSmallintField;
    dsScoreOptions: TADODataSet;
    dtsScoreOptions: TDataSource;
    dsScoreOptionsProductID: TAutoIncField;
    dsScoreOptionsLoanType: TStringField;
    dsScoreOptionsLoanPeriod: TSmallintField;
    dsScoreOptionsLoanCapital: TBCDField;
    dsScoreOptionsInstalment: TBCDField;
    cmdManualOption: TADOCommand;
    cmdOptionPayout: TADOCommand;
    dsArrearsArrearsAmount: TBCDField;
    ADODataSet2: TADODataSet;
    AutoIncField2: TAutoIncField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    DateTimeField1: TDateTimeField;
    BCDField7: TBCDField;
    DataSource2: TDataSource;
    dsArrearsEffectiveDate: TDateTimeField;
    cdsSettlePayouts: TClientDataSet;
    dtsSettlePayouts: TDataSource;
    cdsSettlePayoutsRefNo: TStringField;
    cdsSettlePayoutsLoanStatus: TStringField;
    cdsSettlePayoutsStatusColor: TStringField;
    cdsSettlePayoutsLoanBal: TBCDField;
    cdsSettlePayoutsPayIns: TBCDField;
    cdsSettlePayoutsNoOfPay: TSmallintField;
    cdsSettlePayoutsLoanPeriod: TSmallintField;
    cdsSettlePayoutsSettlement: TBCDField;
    cdsSettlePayoutsLoanID: TIntegerField;
    dsSettlePayoutsReference: TStringField;
    cdsSettlePayoutsReference: TStringField;
    dsScoreOptionssLoanCapital: TStringField;
    dsScoreOptionssLoanPeriod: TStringField;
    procedure dsArrearsAfterOpen(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure dtsBanksDataChange(Sender: TObject; Field: TField);
  private
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
    procedure AddLoanSettlement(LoanID, SettleLoanID: Integer; RefNo, Reference: String;
      ExpiryDate: TDateTime; Settlement, Instalment: Currency);
  end;

var
  dtmPayouts: TdtmPayouts;

implementation

uses dmMain, dmSettleArrears, SettlementService;

{$R *.dfm}

procedure TdtmPayouts.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;

  dsSettlements.Parameters.ParamByName('LoanID').Value := LoanID;
  dsSettlePayouts.Parameters.ParamByName('LoanID').Value := LoanID;
end;

procedure TdtmPayouts.dsArrearsAfterOpen(DataSet: TDataSet);
begin
  TBCDField(dsArrears.FieldByName('PayIns')).currency := True;
  TBCDField(dsArrears.FieldByName('LoanBal')).currency := True;
  TBCDField(dsArrears.FieldByName('ArrearsAmount')).currency := True;
end;

procedure TdtmPayouts.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(dtmSettleArrears);
end;

procedure TdtmPayouts.DataModuleCreate(Sender: TObject);
begin
  dtmSettleArrears := TdtmSettleArrears.Create(Self);
  dtmSettleArrears.dbSettleArrears.Connected := False;
  dtmSettleArrears.dbSettleArrears.ConnectionString := dtmMain.dbData.ConnectionString;
  dtmSettleArrears.dbSettleArrears.Connected := True;
end;

procedure TdtmPayouts.dtsBanksDataChange(Sender: TObject; Field: TField);
begin
  qryBranchName.Parameters[0].Value := qryBanks.FieldByName('BankName').AsString;
  if qryBranchName.Active then
    qryBranchName.Requery;
end;

procedure TdtmPayouts.AddLoanSettlement(LoanID, SettleLoanID: Integer; RefNo, Reference: String;
  ExpiryDate: TDateTime; Settlement, Instalment: Currency);
begin
  try
    dtmMain.dbData.BeginTrans;
    cmdLoanSettle.Parameters.ParamByName('LoanID').Value := LoanID;
    cmdLoanSettle.Parameters.ParamByName('ThirdType').Value := 1;
    cmdLoanSettle.Parameters.ParamByName('Amount').Value := Settlement;
    cmdLoanSettle.Parameters.ParamByName('Instalment').Value := Instalment;
    cmdLoanSettle.Parameters.ParamByName('ExpiryDate').Value := ExpiryDate;
    cmdLoanSettle.Parameters.ParamByName('Name').Value := 'Boodle';
    cmdLoanSettle.Parameters.ParamByName('ThirdRefNo').Value := RefNo;
    cmdLoanSettle.Parameters.ParamByName('RefNo').Value := SettleLoanID;
    cmdLoanSettle.Parameters.ParamByName('CreateUser').Value := dtmMain.CurrentID;
    cmdLoanSettle.Execute;

    GetSettlementSoap.AddSettlement(SettleLoanID, DateTimeToXSDateTime(ExpiryDate), dtmMain.UserKey, 'Quotation', Reference);

    (*cmdAddQuote.Parameters.ParamByName('LoanID').Value := dsSettlements.FieldByName('LoanID').AsString;
    cmdAddQuote.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
    cmdAddQuote.Parameters.ParamByName('LoanBalance').Value := dsSettlements.FieldByName('LoanBalance').AsCurrency;;
    cmdAddQuote.Parameters.ParamByName('SettlementInterest').Value := dsSettlements.FieldByName('SettlementInterest').AsCurrency;
    cmdAddQuote.Parameters.ParamByName('AdditionalCharges').Value := dsSettlements.FieldByName('AdditionalCharges').AsCurrency;
    cmdAddQuote.Parameters.ParamByName('DepositBalance').Value := dsSettlements.FieldByName('DepositBalance').AsCurrency;
    cmdAddQuote.Parameters.ParamByName('SettlementAmount').Value := dsSettlements.FieldByName('Settlement').AsCurrency;
    cmdAddQuote.Parameters.ParamByName('ExpiryDate').Value := dsSettlements.Parameters.ParamByName('SettleDate').Value;
    cmdAddQuote.Parameters.ParamByName('FutureTransactions').Value := dsSettlements.FieldByName('FutureTrans').Value;
    cmdAddQuote.Parameters.ParamByName('SentMethod').Value := 'Quote';
    cmdAddQuote.Parameters.ParamByName('SentAddress').Value := '';
    cmdAddQuote.Execute;*)

    if dtmMain.dbData.InTransaction then
      dtmMain.dbData.CommitTrans;
  except
    if dtmMain.dbData.InTransaction then
      dtmMain.dbData.RollbackTrans;

    MessageDlg('An unknown error occurred, please contact your systems administrator',
      mtError, [mbOK], 0);
  end;
end;

end.
