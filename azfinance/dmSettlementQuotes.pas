unit dmSettlementQuotes;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient;

type
  TdtmSettlementQuotes = class(TDataModule)
    dsSettlements: TADODataSet;
    dtsSettlements: TDataSource;
    dsTransactions: TADODataSet;
    cmdAddQuote: TADOCommand;
    dsSettlementsSettlementID: TAutoIncField;
    dsSettlementsLoanID: TIntegerField;
    dsSettlementsCreateDate: TDateTimeField;
    dsSettlementsCreateUser: TStringField;
    dsSettlementsSettlementAmount: TBCDField;
    dsSettlementsExpiryDate: TDateTimeField;
    dsSettlementsSentMethod: TStringField;
    dsSettlementsSentAddress: TStringField;
    ADODataSet1: TADODataSet;
    qrySettlementsExist: TADOQuery;
    cmdRunCycleFees: TADOCommand;
    qryLoanStatus: TADOQuery;
    cmdCreateSettlementBatch: TADOCommand;
    cdsTransactions: TClientDataSet;
    cdsTransactionsAmount: TBCDField;
    cdsTransactionsEffectiveDate: TDateTimeField;
    dtsTransactions: TDataSource;
    cdsTransactionsInterest: TBCDField;
    cdsTransactionsRate: TBCDField;
    cdsTransactionsTotalInterest: TBCDField;
    cdsTransactionsBalance: TBCDField;
    cdsTransactionsType: TStringField;
    cdsTransactionsDescription: TStringField;
    cdsSummary: TClientDataSet;
    BCDField1: TBCDField;
    StringField2: TStringField;
    dtsSummary: TDataSource;
    dsSettlementsVersion: TIntegerField;
    cmdSettleLoan: TADOCommand;
    cdsTransactionsInsurance: TBCDField;
    dsSettlementsLoanBalance: TBCDField;
    dsSettlementsSettlementInterest: TBCDField;
    dsSettlementsAdditionalCharges: TBCDField;
    dsSettlementsFutureTransactions: TBCDField;
    dsSettlementsDepositBalance: TBCDField;
    dsSettlementsSettlementAmount_1: TBCDField;
    dsSettlementsRefNo: TStringField;
    procedure dsSettlementsNewRecord(DataSet: TDataSet);
    procedure dsSettlementsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmSettlementQuotes: TdtmSettlementQuotes;

implementation

uses dmMain;

{$R *.dfm}

procedure TdtmSettlementQuotes.dsSettlementsNewRecord(DataSet: TDataSet);
begin
 { dsSettlements.FieldByName('LoanBalance').AsCurrency := 0;
  dsSettlements.FieldByName('Discount').AsCurrency := 0;
  dsSettlements.FieldByName('SettlementFee').AsCurrency := 0;
  dsSettlements.FieldByName('SettlementAmount').AsCurrency := 0;
  dsSettlements.FieldByName('InterestToDate').AsCurrency := 0; }
end;

procedure TdtmSettlementQuotes.dsSettlementsAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(dsSettlements.FieldByName('CreateDate')).DisplayFormat := ShortDateFormat;
end;

end.
