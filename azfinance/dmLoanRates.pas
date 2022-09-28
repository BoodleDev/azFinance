unit dmLoanRates;

interface

uses
  SysUtils, Classes, DB, ADODB, Math, DateUtils, uFinMath;

type
  TdtmLoanRates = class(TDataModule)
    dsRateHistory: TADODataSet;
    dtsRateHistory: TDataSource;
    dsLoanContract: TADODataSet;
    dtsLoanContract: TDataSource;
    dsLoan: TADODataSet;
    cmdAddTransactions: TADOCommand;
    dsContractInterest: TADODataSet;
    cmdUpdateAmount: TADOCommand;
    cmdAddRevision: TADOCommand;
    procedure dsRateHistoryAfterOpen(DataSet: TDataSet);
    procedure dsRateHistoryNewRecord(DataSet: TDataSet);
  private
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    procedure AppendLoanContract;
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
    procedure AddNewLoanContractRevision(LoanID: Integer);
  end;

function CreateLoanRates(LoanID: Integer): TdtmLoanRates;

var
  dtmLoanRates: TdtmLoanRates;

implementation

uses dmMain;

{$R *.dfm}

function CreateLoanRates(LoanID: Integer): TdtmLoanRates;
begin
  dtmLoanRates := TdtmLoanRates.Create(nil);
  dtmLoanRates.LoanID := LoanID;

  dtmLoanRates.dsRateHistory.Close;
  dtmLoanRates.dsRateHistory.Parameters[0].Value := LoanID;
  dtmLoanRates.dsRateHistory.Open;

  Result := dtmLoanRates;
end;

{ TdtmLoanRates }

procedure TdtmLoanRates.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;

procedure TdtmLoanRates.dsRateHistoryAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(dsRateHistory.FieldByName('EffectiveDate')).DisplayFormat := ShortDateFormat;
  TDateTimeField(dsRateHistory.FieldByName('CreateDate')).DisplayFormat := ShortDateTimeFormat;
  TBCDField(dsRateHistory.FieldByName('InterestRate')).DisplayFormat := '#00.00%';
end;

procedure TdtmLoanRates.dsRateHistoryNewRecord(DataSet: TDataSet);
begin
  dsRateHistory.FieldByName('EffectiveDate').AsDateTime := Date;
  dsRateHistory.FieldByName('CreateDate').AsDateTime := Now;
  dsRateHistory.FieldByName('CreateUser').AsString := dtmMain.CurrentID;
  dsRateHistory.FieldByName('LoanID').AsInteger := LoanID;
end;


procedure TdtmLoanRates.AddNewLoanContractRevision(LoanID: Integer);
begin
  dsLoan.Close;
  dsLoan.Parameters[0].Value := LoanID;
  dsLoan.Open;

  dsLoanContract.Close;
  dsLoanContract.Parameters[0].Value := LoanID;
  dsLoanContract.Open;
  dsLoanContract.Last; //proceed to the last record which is the new rate change

  while dsLoanContract.FieldByName('Balance').AsCurrency > 5 do
  begin
    AppendLoanContract;
    dsLoanContract.Requery();
    dsLoanContract.Last;
  end;
  dsContractInterest.Close;
  dsLoan.Close;
end;

procedure TdtmLoanRates.AppendLoanContract;
var
  Balance: Currency;
  Instalment: Currency;
  Rate: Real;
  CycleEndDay: Integer;
  NextInstalDate: TDateTime;
  Periods: Extended;

  Days: Integer;
  Interest: Currency;
begin
  Instalment := dsLoan.FieldByName('MthIns').AsCurrency;
  CycleEndDay := dsLoan.FieldByName('CycleEndDay').AsInteger;

  Balance := dsLoanContract.FieldByName('Balance').AsCurrency;
  Rate := dsLoanContract.FieldByName('InterestRate').AsFloat/100/365;
  NextInstalDate := dsLoanContract.FieldByName('TransactionDate').AsDateTime;

  Periods := NumberOfPeriods(Rate, Instalment * -1, Balance, 0, ptEndOfPeriod);

  NextInstalDate := IncDay(NextInstalDate, Max(0, Min(DaysInMonth(NextInstalDate), CycleEndDay) - DayOfTheMonth(NextInstalDate)));

  cmdAddTransactions.Parameters.ParamByName('LoanID').Value := LoanID;
  cmdAddTransactions.Parameters.ParamByName('Periods').Value := Ceil(ABS(Periods));
  cmdAddTransactions.Parameters.ParamByName('TransDate').Value := NextInstalDate;
  cmdAddTransactions.Execute;

  dsContractInterest.Close;
  dsContractInterest.Parameters.ParamByName('LoanID').Value := LoanID;
  //dsContractInterest.Parameters.ParamByName('TransDate').Value := NextInstalDate;
  dsContractInterest.Open;

  dsContractInterest.Last;
  if dsContractInterest.FieldByName('Balance').AsCurrency < 0.001 then
  begin
    Interest := 0;
    while (dsContractInterest.FieldByName('TransType').AsString <> 'P') and
      (not dsContractInterest.Bof) do
    begin
      if dsContractInterest.FieldByName('TransType').AsString <> 'FB' then
        Interest := Interest + dsContractInterest.FieldByName('Amount').AsCurrency;
      dsContractInterest.Prior;
    end;

    if dsContractInterest.FieldByName('TransType').AsString = 'P' then
    begin
      Rate := dsContractInterest.FieldByName('IntRate').AsFloat/100/365;
      //Interest := dsContractInterest.FieldByName('Interest').AsCurrency;
      Days := DaysInMonth(dsContractInterest.FieldByName('TransDate').AsDateTime) -
        DayOfTheMonth(dsContractInterest.FieldByName('TransDate').AsDateTime);

      cmdUpdateAmount.Parameters.ParamByName('RecordID').Value :=
        dsContractInterest.FieldByName('RecordID').AsInteger;
          cmdUpdateAmount.Parameters.ParamByName('Amount').Value :=
        dsContractInterest.FieldByName('Amount').AsCurrency -
        dsContractInterest.FieldByName('Balance').AsCurrency  - Interest +
        (Interest * Rate * Days) - ((Interest * Rate * Days)* Rate * Days);
      cmdUpdateAmount.Execute;
      dsContractInterest.Requery();
    end;
  end;
end;


end.
