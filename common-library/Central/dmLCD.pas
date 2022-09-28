unit dmLCD;
{===============================================================================
 Author  : Wicus Botha
 Date    : 01/12/2002
 Unit    : This datamodule is to rebuild loan contract.
           It does NOT allow to add new structures, that is done in dtmLCST
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ADODB, Db, DBClient, Unit32, uLCCentral;

type
  TdtmLCD = class(TDataModule)
    cdsContract: TClientDataSet;
    cdsContractLoanID: TIntegerField;
    cdsContractType: TIntegerField;
    cdsContractPayNo: TIntegerField;
    cdsContractEffectDate: TDateField;
    cdsContractAmount: TCurrencyField;
    cdsContractInterest: TCurrencyField;
    cdsContractBalance: TCurrencyField;
    cdsContractNOD: TIntegerField;
    cdsContractAmtToAdd: TCurrencyField;
    cdsContractIntRate: TFloatField;
    dtsContract: TDataSource;
    qryStruc: TADODataSet;
    qryLDS: TADODataSet;
    qryRates: TADODataSet;
    dtsLDS: TDataSource;
    cdsContractIntME: TCurrencyField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FLoanID: integer;
    cntNo : integer;
    CtrEndDate : TDate;
    function ValForDate(inDate: TDate; inType: integer; FldName: string):Currency;
    function GetNextInstDate(inDate: TDate):TDate;
    procedure SetLoanID(const Value: integer);
    //
    procedure CreateCDS(cds: TClientDataSet; IndName, IndFld: string);
    procedure AddMonthEndDates;
    procedure AddRecToContract(inType,PayNo:integer; EffectDate :TDate;
      Amount, ReCurBal :Currency; IntRate :real);
    procedure AddStructure;
    procedure AddLoanPayments;
    procedure AddLoanRates;
    procedure FillRatesAndNoOfDays;
    procedure DoInterestRun;
    procedure SetContractEndDate;
  public
    { Public declarations }
    property LoanID :integer read FLoanID write SetLoanID;
    procedure SetDBCon(conDB : TADOConnection);
    procedure SetDataStatus(Ready :boolean);
    procedure BuildAndRunContract;
    //
    function GetTotIntUpTo(inDate :TDate):Currency;
    function GetTotPayUpTo(inDate :TDate):Currency;
  end;

var
  dtmLCD: TdtmLCD;

implementation

{$R *.DFM}

{ TdtmLCD }

procedure TdtmLCD.SetContractEndDate;
begin
  cdsContract.Last;
  CtrEndDate := cdsContract.FieldByName('EffectDate').AsDateTime;
  cntNo      := cdsContract.FieldByName('PayNo').AsInteger;
end;

procedure TdtmLCD.CreateCDS(cds: TClientDataSet; IndName, IndFld: string);
begin
  cds.CreateDataSet;
  if cds.IndexDefs.IndexOf(IndName) = -1 then
    cds.IndexDefs.Add(IndName,IndFld,[]);
  cds.Open;
  cds.IndexName := IndName;
end;

procedure TdtmLCD.DataModuleCreate(Sender: TObject);
begin
  CreateCDS(cdsContract,'i_EffDate','EffectDate');
end;

procedure TdtmLCD.DataModuleDestroy(Sender: TObject);
begin
  SetDataStatus(False);
  cdsContract.Close;
end;

procedure TdtmLCD.SetDataStatus(Ready :boolean);
begin
  qryLDS.Active := Ready;
  qryStruc.Active := Ready;
  qryRates.Active := Ready;
end;

procedure TdtmLCD.SetLoanID(const Value: integer);
begin
  FLoanID := Value;
  qryLDS.Parameters[0].Value := LoanID;
  if qryLDS.Active then
    qryLDS.Requery;
end;

{------------------------------------------------------------------------------
 ---------------------------- Build CDS Contract ------------------------------
 ------------------------------------------------------------------------------}
procedure TdtmLCD.AddRecToContract(inType,PayNo:integer; EffectDate :TDate;
  Amount, ReCurBal :Currency; IntRate :real);
begin
  cdsContract.Append;
  cdsContract.FieldByName('LoanID').AsInteger      := LoanID;
  cdsContract.FieldByName('Type').AsInteger        := inType;
  cdsContract.FieldByName('PayNo').AsInteger       := PayNo;
  cdsContract.FieldByName('EffectDate').AsDateTime := EffectDate;
  if inType >= ttNorI then
    cdsContract.FieldByName('Amount').AsCurrency   := Amount;
  cdsContract.FieldByName('Balance').AsCurrency    := ReCurBal;
  cdsContract.FieldByName('IntRate').AsFloat       := IntRate;
  cdsContract.Post;
end;

function TdtmLCD.GetNextInstDate(inDate: TDate): TDate;
begin
  case qryLDS.FieldByName('LTaccT').AsInteger of
    5,6 : Result := inDate + 7; // weekly instalment
    7,8 : Result := inDate + 14;// bi-weekly instalment
  else
    Result := IncMonth(inDate,1);
  end; // case
end;

procedure TdtmLCD.AddLoanPayments;
var
  i : integer;
  tmpDate : TDate;
begin
  tmpDate := qryLDS.FieldByName('FirstInsDate').AsDateTime;
  for i := 0 to qryLDS.FieldByName('LoanPeriod').AsInteger-1 do
  begin
    AddRecToContract(ttNorI,i+1,tmpDate,-1*qryLDS.FieldByName('MthIns').AsCurrency,0,0);
    tmpDate := GetNextInstDate(tmpDate);
  end;
end;

procedure TdtmLCD.AddStructure;
var
  i : integer;
  tmpDate : TDate;
begin
  tmpDate := qryStruc.FieldByName('EffectDate').AsDateTime;
  // 0 = Normal instalment, 1 = Last instal, 2 = Fixed Instal, 3 = Mort.
  qryStruc.First;
  while not qryStruc.EOF do
  begin
    for i := 0 to qryStruc.FieldByName('TypeCnt').AsInteger-1 do
    begin
      AddRecToContract(qryStruc.FieldByName('Type').AsInteger,
        cntNo,tmpDate,qryStruc.FieldByName('Amount').AsCurrency,0,0);
      Inc(cntNo);
      // Changes this for weekly and bi-weekly instalments
      tmpDate := GetNextInstDate(tmpDate);
    end;
    qryStruc.Next;
  end;
end;

procedure TdtmLCD.AddLoanRates;
begin
  cdsContract.First;
  MoveToCurrent(qryRates,'EffectDate',cdsContract.FieldByName('EffectDate').AsDateTime);
  //Set first rate
  cdsContract.Edit;
  cdsContract.FieldByName('IntRate').AsFloat := qryRates.FieldByName('IntRate').AsFloat;
  cdsContract.Post;
  qryRates.Next;
  //
  FilterDataSet(cdsContract,'Type='+IntTostr(ttME));
  while (not qryRates.Eof) and (qryRates.FieldByName('EffectDate').AsDateTime <=
    CtrEndDate) do
  begin
    if not cdsContract.Locate('EffectDate',
      qryRates.FieldByName('EffectDate').AsDateTime,[]) then
    begin
      AddRecToContract(ttRate,-2,qryRates.FieldByName('EffectDate').AsDateTime,
        0,0,qryRates.FieldByName('IntRate').AsFloat);
    end;
    qryRates.Next;
  end;
  FilterDataSet(cdsContract,'');
end;

procedure TdtmLCD.AddMonthEndDates;
var
  tempDate, tmpToD : TDate;
begin
  tempDate := cdsContract.FieldByName('EffectDate').AsDateTime;
  tempDate := DateToEndOfMonth(tempDate);
  cdsContract.Last;
  tmpToD := cdsContract.FieldByName('EffectDate').AsDateTime;
  while tempDate < tmpToD do
  begin
    AddRecToContract(ttME,-1,tempDate,0,0,0);
    tempDate := IncMonth(tempDate,1);
    tempDate := DateToEndOfMonth(tempDate);
  end;
end;

procedure TdtmLCD.FillRatesAndNoOfDays;
var
  CurRate : Real;
  dFrom : TDate;
begin
  cdsContract.First;
  CurRate := cdsContract.FieldByName('IntRate').AsFloat;
  dFrom   := cdsContract.FieldByName('EffectDate').AsDateTime;
  while not cdsContract.EOF do
  begin
    if cdsContract.FieldByName('PayNo').AsInteger = -2 then
      CurRate := cdsContract.FieldByName('IntRate').AsFloat;
    cdsContract.Edit;
    cdsContract.FieldByName('IntRate').AsFloat  := CurRate;
    cdsContract.FieldByName('NOD').AsFloat := Abs(dFrom -
      cdsContract.FieldByName('EffectDate').AsDateTime);
    cdsContract.Post;
    dFrom := cdsContract.FieldByName('EffectDate').AsDateTime;
    cdsContract.Next;
  end;
end;

procedure TdtmLCD.DoInterestRun;
var
  IntCalc : Currency;
  ReCurBal: Currency;
  CurIntRate: real;
  IntBucket : Currency;
  EndBal    : Currency;
begin
  IntBucket := 0.00;
  // Do Interest upto the First instalment - begin
  cdsContract.First;
  CurIntRate := cdsContract.FieldByName('IntRate').AsFloat;
  ReCurBal   := cdsContract.FieldByName('Balance').AsCurrency;
  cdsContract.Next;
  while not cdsContract.Eof do
  begin
    IntCalc := CalcInterest(cdsContract.FieldByName('NOD').AsInteger,
      ReCurBal,CurIntRate);
    IntBucket := IntBucket + IntCalc;
    cdsContract.Edit;
    if cdsContract.FieldByName('Type').AsInteger > ttRate then
    begin
      //-1 : me
      if cdsContract.FieldByName('Type').AsInteger = ttME then
      begin
        cdsContract.FieldByName('IntME').AsCurrency := IntBucket;
        cdsContract.FieldByName('AmtToAdd').AsCurrency := IntBucket+
          cdsContract.FieldByName('Amount').AsCurrency;
        IntBucket := 0;
      end
      else
        cdsContract.FieldByName('AmtToAdd').AsCurrency := cdsContract.FieldByName('Amount').AsCurrency;
      //
      ReCurBal := ReCurBal + cdsContract.FieldByName('AmtToAdd').AsCurrency;
    end; {if}
    cdsContract.FieldByName('Interest').AsCurrency := IntCalc;
    cdsContract.FieldByName('Balance').AsCurrency  := ReCurBal;
    cdsContract.Post;
    CurIntRate  := cdsContract.FieldByName('IntRate').AsFloat;
    cdsContract.Next;
  end;
  //                                                 // going to add this for last bal
  EndBal := qryLDS.FieldByName('ResidualAmt').AsCurrency - ReCurBal - IntBucket;
  cdsContract.Edit;
  cdsContract.FieldByName('Amount').AsCurrency :=
    cdsContract.FieldByName('Amount').AsCurrency + EndBal;
  cdsContract.FieldByName('AmtToAdd').AsCurrency := cdsContract.FieldByName('Amount').AsCurrency;
  cdsContract.FieldByName('Balance').AsCurrency  := ReCurBal + EndBal + IntBucket;
  cdsContract.FieldByName('Interest').AsCurrency := IntBucket;
  cdsContract.FieldByName('IntME').AsCurrency    := IntBucket;
  cdsContract.Post;
end;

procedure TdtmLCD.BuildAndRunContract;
begin
  cntNo := 1;
  cdsContract.DisableControls;
  cdsContract.EmptyDataSet;
  // Add open balance
  AddRecToContract(ttBalO,0,qryLDS.FieldByName('StartDate').AsDateTime,
     0,qryLDS.FieldByName('AmtToFin').AsCurrency,0);
  // Add payments
  if qryStruc.Fields[0].IsNull then // if (qryStruc.Fields[0].IsNull) then
      AddLoanPayments
  else
    AddStructure;
  SetContractEndDate;
  // Add month ends
  cdsContract.First; // Set to first date
  AddMonthEndDates;
  // Add rates
  AddLoanRates;
  //
  FillRatesAndNoOfDays;
  //
  DoInterestRun;
  cdsContract.EnableControls;
end;
{----------------------------- END - Contract ---------------------------------}

function TdtmLCD.ValForDate(inDate: TDate; inType: integer;
  FldName: string): Currency;
begin
  Result := 0.00;
  try
    cdsContract.DisableControls;
    FilterDataSet(cdsContract,'Type>='+IntToStr(inType)+' and EffectDate<='''+
      FormatDateTime('dd/mm/yyyy',inDate)+'''');
    cdsContract.First;
    while not cdsContract.EOF do
    begin
      Result := Result + cdsContract.FieldByName(FldName).AsCurrency;
      cdsContract.Next;
    end;
  finally
    FilterDataSet(cdsContract,'');
    cdsContract.EnableControls;
  end;
end;

function TdtmLCD.GetTotIntUpTo(inDate: TDate): Currency;
begin
  Result := ValForDate(inDate,ttME,'IntME');
end;

function TdtmLCD.GetTotPayUpTo(inDate: TDate): Currency;
begin
  Result := ValForDate(inDate,ttNorI,'Amount');
end;

procedure TdtmLCD.SetDBCon(conDB : TADOConnection);
begin
  qryLDS.Connection   := conDB;
  qryStruc.Connection := conDB;
  qryRates.Connection := conDB;
end;

end.
