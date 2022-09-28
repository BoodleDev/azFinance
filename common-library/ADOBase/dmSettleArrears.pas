unit dmSettleArrears;

interface

uses
  SysUtils, Classes, DB, ADODB, Controls, dmSettle;

type
  TdtmSettleArrears = class(TDataModule)
    dsInterestTrans: TADODataSet;
    dsChargesTrans: TADODataSet;
    dsInterestSum: TADODataSet;
    dsChargesSum: TADODataSet;
    dsLastIntDate: TADODataSet;
    dsContractInt: TADODataSet;
    dsSumInterest: TADODataSet;
    dsSumArrears: TADODataSet;
    dsContractMonth: TADODataSet;
    dsInterestMth: TADODataSet;
    dbSettleArrears: TADOConnection;
    dsArrearsAmount: TADODataSet;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure dbSettleArrearsAfterConnect(Sender: TObject);
    procedure dbSettleArrearsAfterDisconnect(Sender: TObject);
  private
    function CalcContractInterest(LoanID: Integer;ToDate: TDate): Currency;
    { Private declarations }
  public
    { Public declarations }
    function CalcArrearsIntToDate(LoanID: Integer; ToDate: TDate): Currency;
    function CalculateSettlement(LoanID: Integer; EffectDate: TDate;
      var ArrearsAmt, AddPayments, AddCharges, IntCharged,
      IntToDate: Currency): Currency; overload;
    function CalculateSettlement(LoanID: Integer; EffectDate: TDate): Currency; overload;
  end;

var
  dtmSettleArrears: TdtmSettleArrears;
  dtmSettle: TdtmSettle;

implementation

uses dmMain, DateUtils, uLSconst;

{$R *.dfm}

function TdtmSettleArrears.CalculateSettlement(LoanID: Integer; EffectDate: TDate): Currency;
var
  V1,V2,V3,V4,V5: Currency;
begin
  Result := CalculateSettlement(LoanID,EffectDate,V1,V2,V3,V4,V5);
end;

function TdtmSettleArrears.CalculateSettlement(LoanID: Integer;
  EffectDate: TDate; var ArrearsAmt, AddPayments, AddCharges, IntCharged,
  IntToDate: Currency): Currency;
{var
  AddCharges: Currency;
  AddPayments: Currency;
  ArrearsAmt: Currency;
  IntCharged: Currency;
  IntToDate: Currency;}
begin
  try
    //ArrearsAmt := GetArrearsAmount(LoanID, EffectDate);
    dsArrearsAmount.Parameters[0].Value := LoanID;
    dsArrearsAmount.Open;
    ArrearsAmt := dsArrearsAmount.Fields[0].AsCurrency;

    dsInterestSum.Parameters[0].Value := LoanID;
    dsInterestSum.Open;
    IntCharged := dsInterestSum.Fields[0].AsCurrency;

    dsChargesSum.Parameters[0].Value := LoanID;
    dsChargesSum.Open;
    AddCharges := dsChargesSum.Fields[0].AsCurrency;

    if ArrearsAmt < 0 then
    begin
      AddPayments := ArrearsAmt;
      ArrearsAmt := 0;
    end
    else
      AddPayments := 0;

    IntToDate := CalcArrearsIntToDate(LoanID, EffectDate);

    {edtArrearsAmt.Text := FormatFloat('#,##0.00',ArrearsAmt);
    edtIntCharged.Text := FormatFloat('#,##0.00', IntCharged);
    edtIntToDate.Text  := FormatFloat('#,##0.00',IntToDate);

    edtArrearsInt.Text := FormatFloat('#,##0.00', IntCharged + IntToDate);

    edtAddCharges.Text := FormatFloat('#,##0.00', AddCharges);
    edtAddPayments.Text := FormatFloat('#,##0.00', AddPayments);

    edtTotal.Text := FormatFloat('#,##0.00',ArrearsAmt + IntCharged +
      IntToDate + AddCharges + AddPayments);}

    //Result := ArrearsAmt + IntCharged + IntToDate + AddCharges + AddPayments;
    Result := ArrearsAmt + IntToDate;
  finally
    dsArrearsAmount.Close;
    dsInterestSum.Close;
    dsChargesSum.Close;
  end;
end;

function TdtmSettleArrears.CalcArrearsIntToDate(LoanID: Integer;
  ToDate: TDate): Currency;
var
  IntToDate, ArrearsBucket, Interest, Arrears, ContractInt: Currency;
begin
  try
    dsSumInterest.Parameters.ParamByName('prToDate').Value := ToDate;
    dsSumInterest.Parameters.ParamByName('prLoanID').Value := LoanID;
    dsSumInterest.Open;
    Interest := dsSumInterest.Fields[0].AsCurrency;

    dsSumArrears.Parameters.ParamByName('prToDate').Value := ToDate;
    dsSumArrears.Parameters.ParamByName('prLoanID').Value := LoanID;
    dsSumArrears.Open;
    Arrears := dsSumArrears.Fields[0].AsCurrency;

    ContractInt := CalcContractInterest(LoanID, ToDate);

    dtmSettle.SetInfoStatus(False);
    dtmSettle.SettleDate := ToDate;
    dtmSettle.CurLoanID := LoanID;
    IntToDate := dtmSettle.GetIntUpToDate;
    ArrearsBucket := dtmSettle.GetArrBucket;
    

    Result :=  Interest + IntToDate - Arrears - ArrearsBucket - ContractInt;
  finally
    dsSumInterest.Close;
    dsSumArrears.Close;
  end;
end;

function TdtmSettleArrears.CalcContractInterest(LoanID: Integer;ToDate: TDate): Currency;
var
  Interest: Currency;
  I : Integer;
  InstDay: Integer;
  Balance: Currency;
  Install: Currency;
  AccType: Integer;
  Rate: Real;
begin
  try
    dsContractInt.Parameters[0].Value := LoanID;
    dsContractInt.Parameters[1].Value := ToDate;
    dsContractInt.Open;
    Interest := dsContractInt.Fields[0].AsCurrency;

    dsContractMonth.Parameters[0].Value := LoanID;
    dsContractMonth.Parameters[1].Value := ToDate;
    dsContractMonth.Open;

    dsInterestMth.Parameters[0].Value := LoanID;
    dsInterestMth.Parameters[1].Value := ToDate;
    dsInterestMth.Open;

    Balance := dsContractMonth.FieldByName('Balance').AsCurrency;
    Install := dsContractMonth.FieldByName('MthIns').AsCurrency;
    AccType := dsContractMonth.FieldByName('AccType').AsInteger;
    Rate := (dsContractMonth.FieldByName('IntRate').AsFloat /365) /100;

    if AccType in [ltactHPWI,ltactHPAWI,ltactHPBI,ltactHPABI] then
    begin
      InstDay := DayOfTheWeek(dsContractMonth.FieldByName('FirstInsDate').AsDateTime);
      for I := 1 to 7 do
        if DayOftheWeek(EncodeDate(YearOf(ToDate),MonthOfTheYear(ToDate),I)) = InstDay then
        begin
          InstDay := I;
          Break;
        end;
    end
    else
      InstDay := DayOfTheMonth(dsContractMonth.FieldByName('FirstInsDate').AsDateTime);

    if Balance > 0 then
    begin
      for I := 1 to DayOfTheMonth(ToDate) do
      begin
        Interest := Interest + (Balance * Rate);
        if I = DaysInMonth(ToDate) then
          Balance := Balance + dsInterestMth.Fields[0].AsCurrency;
        if I = InstDay then
        begin
          Balance := Balance - Install;
          if AccType in [ltactHPWI,ltactHPAWI] then
            InstDay := InstDay + 7
          else if AccType in [ltactHPBI,ltactHPABI] then
            InstDay := InstDay + 14;
        end;
      end;
    end;
    Result := Interest;
  finally
    dsContractInt.Close;
    dsContractMonth.Close;
    dsInterestMth.Close;
  end;
end;

procedure TdtmSettleArrears.DataModuleDestroy(Sender: TObject);
begin
  dbSettleArrears.Connected := False;
  dbSettleArrears.ConnectionString := '';
  FreeAndNil(dtmSettle);
end;

procedure TdtmSettleArrears.DataModuleCreate(Sender: TObject);
begin
  dtmSettle := TdtmSettle.Create(Self);
end;

procedure TdtmSettleArrears.dbSettleArrearsAfterConnect(Sender: TObject);
begin
  dtmSettle.dbSettle.Connected := False;
  dtmSettle.dbSettle.ConnectionString := dbSettleArrears.ConnectionString;
  dtmSettle.dbSettle.Connected := True;
end;

procedure TdtmSettleArrears.dbSettleArrearsAfterDisconnect(
  Sender: TObject);
begin
  dtmSettle.dbSettle.Connected := False;
end;

end.
