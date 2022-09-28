unit dmLCST;
{===============================================================================
 Author  : Wicus Botha
 Date    : 01/12/2002
 Unit    : This datamodule is to re-structure a loan contract.
           It allows to add new structures
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, Variants, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, uFinMath, Unit32, ADODB, Provider, uLCCentral;

type
  TdtmLCST = class(TDataModule)
    cdsContract: TClientDataSet;
    cdsStruc: TClientDataSet;
    cdsContractLoanID: TIntegerField;
    cdsContractPayNo: TIntegerField;
    cdsContractEffectDate: TDateField;
    cdsContractAmount: TCurrencyField;
    cdsContractInterest: TCurrencyField;
    cdsContractBalance: TCurrencyField;
    cdsContractIntRate: TFloatField;
    dtsContract: TDataSource;
    cdsContractNOD: TIntegerField;
    cdsContractAmtToAdd: TCurrencyField;
    dtsStruc: TDataSource;
    cdsContractType: TIntegerField;
    qryLDS: TADODataSet;
    qryToUse: TADOQuery;
    qryRate: TADODataSet;
    dtsLDS: TDataSource;
    dtsRate: TDataSource;
    dspStruc: TDataSetProvider;
    qryStruc: TADODataSet;
    qryStrucLoanID: TIntegerField;
    qryStrucEffectDate: TDateTimeField;
    qryStrucType: TWordField;
    qryStrucAmount: TBCDField;
    qryStrucTypeCnt: TWordField;
    cdsStrucLoanID: TIntegerField;
    cdsStrucEffectDate: TDateTimeField;
    cdsStrucType: TSmallintField;
    cdsStrucAmount: TBCDField;
    cdsStrucTypeCnt: TSmallintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    cntNo   : integer;
    LoanPrd : integer;
    CtrEndDate : TDate;
    FLoanID: integer;
    tmpDate : TDateTime;
    function GetNextInstDate(inDate: TDate):TDate;
    procedure CreateCDS(cds :TClientDataSet; IndName,IndFld :string);
    procedure AddMonthEndDates;
    procedure AddRecToContract(inType,PayNo:integer; EffectDate :TDate;
      Amount, ReCurBal :Currency; IntRate :real);
    procedure AddStructure;
    procedure AddLoanPayments;
    procedure AddLoanRates;
    procedure FillRatesAndNoOfDays;
    procedure CheckLastInstalment;
    procedure AddRecToStructure(EffectDate :TDate; inType,TypeCnt: integer;
      Amount :Currency);
    procedure SetContractEndDate;
    procedure UpdateFromToEndNormalI(inDate :TDate; NewInst :Currency);
    procedure SetLoanID(const Value: integer);
    procedure SetDataStatus(Ready: boolean);
  public
    { Public declarations }
    property LoanID: integer read FLoanID write SetLoanID;
    function GetBalanceBeforeLoan:Currency;
    function RateChangeBeforeLoan:boolean;
    function GetNewInstalment:Currency;
    function GetBalance(inDate: TDate): Currency;
    procedure SetDBCon(conDB : TADOConnection);
    procedure DoInterestRun;
    procedure BuildAndRunContract(FixLastIns :boolean);
    procedure DoRateChanges;
    procedure AddDefStructure;
    procedure AddNewStrucType(EffectDate :TDateTime; PrdFor : integer;
      Amount :Currency);
    procedure ExtendContract(EffectDate :TDateTime; PrdFor :integer);
    //
    procedure BuildStruc;
    procedure MarkLoanForLCD;
    procedure UpdLoanEndDate;
  end;

var
  dtmLCST: TdtmLCST;

implementation

{$R *.DFM}

procedure TdtmLCST.SetContractEndDate;
begin
  cdsContract.Last;
  CtrEndDate := cdsContract.FieldByName('EffectDate').AsDateTime;
  cntNo      := cdsContract.FieldByName('PayNo').AsInteger;
  LoanPrd    := cntNo;
end;
{------------------------------------------------------------------------------
 ---------------------------- Build CDS Contract ------------------------------
 ------------------------------------------------------------------------------}
procedure TdtmLCST.AddRecToContract(inType,PayNo:integer; EffectDate :TDate;
  Amount, ReCurBal :Currency; IntRate :real);
begin
  cdsContract.Append;
  cdsContract.FieldByName('Type').AsInteger        := inType;
  cdsContract.FieldByName('PayNo').AsInteger       := PayNo;
  cdsContract.FieldByName('EffectDate').AsDateTime := EffectDate;
  if inType >= ttNorI then
    cdsContract.FieldByName('Amount').AsCurrency   := Amount;
  cdsContract.FieldByName('Balance').AsCurrency    := ReCurBal;
  cdsContract.FieldByName('IntRate').AsFloat       := IntRate;
  cdsContract.Post;
end;

function TdtmLCST.GetNextInstDate(inDate: TDate): TDate;
begin
  case qryLDS.FieldByName('LTaccT').AsInteger of
    5,6 : Result := inDate + 7; // weekly instalment
    7,8 : Result := inDate + 14;// bi-weekly instalment
  else
    Result := IncMonth(inDate,1);
  end; // case
end;

procedure TdtmLCST.AddLoanPayments;
var
  i : integer;
begin
  tmpDate := qryLDS.FieldByName('FirstInsDate').AsDateTime;
  for i := 0 to qryLDS.FieldByName('LoanPeriod').AsInteger-1 do
  begin
    AddRecToContract(ttNorI,i+1,tmpDate,-1*qryLDS.FieldByName('MthIns').AsCurrency,0,0);
    tmpDate := GetNextInstDate(tmpDate);
  end;
end;

procedure TdtmLCST.AddStructure;
var
  i : integer;
begin
  // 0 = Normal instalment, 1 = Last instal, 2 = Fixed Instal, 3 = Mort.
  cdsStruc.First;
  tmpDate := cdsStruc.FieldByName('EffectDate').AsDateTime;
  while not cdsStruc.EOF do
  begin
    for i := 0 to cdsStruc.FieldByName('TypeCnt').AsInteger-1 do
    begin
      AddRecToContract(cdsStruc.FieldByName('Type').AsInteger,
        cntNo,tmpDate,cdsStruc.FieldByName('Amount').AsCurrency,0,0);
      Inc(cntNo);
      // Changes this for weekly and bi-weekly instalments
      tmpDate := GetNextInstDate(tmpDate);
    end;
    cdsStruc.Next;
  end;
end;

procedure TdtmLCST.AddLoanRates;
begin
  cdsContract.First;
  MoveToCurrent(qryRate,'EffectDate',cdsContract.FieldByName('EffectDate').AsDateTime);
  //Set first rate
  cdsContract.Edit;
  cdsContract.FieldByName('IntRate').AsFloat := qryRate.FieldByName('IntRate').AsFloat;
  cdsContract.Post;
  qryRate.Next;
  //
  FilterDataSet(cdsContract,'Type='+IntTostr(ttRate));
  while (not qryRate.Eof) and (qryRate.FieldByName('EffectDate').AsDateTime <=
    CtrEndDate) do
  begin
    if not cdsContract.Locate('EffectDate',
      qryRate.FieldByName('EffectDate').AsDateTime,[]) then
    begin
      AddRecToContract(ttRate,-2,qryRate.FieldByName('EffectDate').AsDateTime,
        0,0,qryRate.FieldByName('IntRate').AsFloat);
    end;
    qryRate.Next;
  end;
  FilterDataSet(cdsContract,'');
end;

procedure TdtmLCST.AddMonthEndDates;
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

procedure TdtmLCST.FillRatesAndNoOfDays;
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

procedure TdtmLCST.DoInterestRun;
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
    if cdsContract.FieldByName('PayNo').AsInteger > -2 then
    begin
      //-1 : me
      if cdsContract.FieldByName('PayNo').AsInteger = -1 then
      begin
        cdsContract.FieldByName('AmtToAdd').AsCurrency := IntBucket+
          cdsContract.FieldByName('Amount').AsCurrency;
        IntBucket := 0;
      end
      else
        cdsContract.FieldByName('AmtToAdd').AsCurrency := cdsContract.FieldByName('Amount').AsCurrency;
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
  cdsContract.Post;
end;

procedure TdtmLCST.BuildAndRunContract(FixLastIns :boolean);
begin
  cntNo := 1;
  cdsContract.DisableControls;
  cdsContract.EmptyDataSet;
  // Add open balance
  AddRecToContract(ttBalO,0,qryLDS.FieldByName('StartDate').AsDateTime,
     0,qryLDS.FieldByName('AmtToFin').AsCurrency,0);
  // Add payments
  if cdsStruc.Fields[0].IsNull then
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
  // Can take this out for read only contract processing
  if (not cdsStruc.Fields[0].IsNull) and (FixLastIns) then
    CheckLastInstalment;
  SetContractEndDate;
  cdsContract.First;
  cdsContract.EnableControls;
end;
{----------------------------- END - Contract ---------------------------------}

procedure TdtmLCST.CreateCDS(cds: TClientDataSet; IndName, IndFld: string);
begin
  cds.CreateDataSet;
  if cds.IndexDefs.IndexOf(IndName) = -1 then
    cds.IndexDefs.Add(IndName,IndFld,[]);
  cds.Open;
  cds.IndexName := IndName;
end;

procedure TdtmLCST.SetDataStatus(Ready: boolean);
begin
  qryLDS.Active   := Ready;
  qryRate.Active  := Ready;
  qryStruc.Active := Ready;
  cdsStruc.Active := Ready;
  if (Ready) and not (cdsContract.Active) then
    cdsContract.Active := Ready;
  if Ready then
    SetContractEndDate;
end;

procedure TdtmLCST.DataModuleCreate(Sender: TObject);
begin
  CreateCDS(cdsContract,'i_EffDate','EffectDate');
  //CreateCDS(cdsStruc,'i_EffDate','EffectDate');
end;

procedure TdtmLCST.DataModuleDestroy(Sender: TObject);
begin
  cdsContract.SaveToFile(AppDir+'cdsContract.dat');
  cdsStruc.SaveToFile(AppDir+'cdsStruc.dat');
  SetDataStatus(False);
end;

function TdtmLCST.GetNewInstalment: Currency;
var
  CurBal : Currency;
  MEDate : TDate;
begin
  CurBal := cdsContract.FieldByName('Balance').AsCurrency;
//?? WB 30/01/2004  if cdsContract.FieldByName('PayNo').AsInteger >= 0 then
  if cdsContract.FieldByName('PayNo').AsInteger <> -1 then
     CurBal := CurBal + cdsContract.FieldByName('Interest').AsCurrency;
  MEDate := cdsContract.FieldByName('EffectDate').AsDateTime;
  cdsContract.Next;
  //
  case qryLDS.FieldByName('LTaccT').AsInteger of
    5,6 : begin// weekly instalment
            Result := uFinMath.PMTWeekly(cdsContract.FieldByName('IntRate').AsFloat,
                       CurBal,-1*qryLDS.FieldByName('ResidualAmt').AsCurrency,
                       (LoanPrd //for extended
                         -cdsContract.FieldByName('PayNo').AsInteger+1),1,
                        MEDate,cdsContract.FieldByName('EffectDate').AsDateTime, 0);
          end;
    7,8 : begin;// bi-weekly instalment
            Result := uFinMath.PMTBiWeekly(cdsContract.FieldByName('IntRate').AsFloat,
                       CurBal,-1*qryLDS.FieldByName('ResidualAmt').AsCurrency,
                       (LoanPrd //for extended
                         -cdsContract.FieldByName('PayNo').AsInteger+1),1,
                        MEDate,cdsContract.FieldByName('EffectDate').AsDateTime, 0);
          end;
  else
    Result := uFinMath.ActualPMT(cdsContract.FieldByName('IntRate').AsFloat,
       CurBal,
       -1*qryLDS.FieldByName('ResidualAmt').AsCurrency,
  //     (qryLDS.FieldByName('LoanPeriod').AsInteger+ExtPrd+
       (LoanPrd //for extended
         -cdsContract.FieldByName('PayNo').AsInteger+1),
       0,
       MEDate,
       cdsContract.FieldByName('EffectDate').AsDateTime, 0);
  end; // case
end;

procedure TdtmLCST.AddRecToStructure(EffectDate: TDate; inType,
  TypeCnt: integer; Amount: Currency);
begin
//* qryStruc = cdsStruc
  qryStruc.Append;
  qryStruc.FieldByName('LoanID').AsInteger      := LoanID;
  qryStruc.FieldByName('EffectDate').AsDateTime := EffectDate;
  qryStruc.FieldByName('Type').AsInteger        := inType;
  qryStruc.FieldByName('TypeCnt').AsInteger     := TypeCnt;
  qryStruc.FieldByName('Amount').AsCurrency     := Amount;
  qryStruc.Post;
end;

procedure TdtmLCST.CheckLastInstalment;
begin
  cdsContract.Last;
  cdsStruc.Last;
  if (cdsContract.FieldByName('Amount').AsCurrency-0.01 <
    cdsStruc.FieldByName('Amount').AsCurrency) or
     (cdsContract.FieldByName('Amount').AsCurrency+0.01 >
    cdsStruc.FieldByName('Amount').AsCurrency) then
  begin
    // set Structure
    if cdsStruc.FieldByName('Type').AsInteger = 1 then
      cdsStruc.Edit
    else
    begin
      cdsStruc.Edit;
      cdsStruc.FieldByName('TypeCnt').AsInteger := cdsStruc.FieldByName('TypeCnt').AsInteger - 1;
      //
      cdsStruc.Append;
      cdsStruc.FieldByName('LoanID').AsInteger      := qryLDS.FieldByName('LoanID').AsInteger;
      cdsStruc.FieldByName('EffectDate').AsDateTime := cdsContract.FieldByName('EffectDate').AsDateTime;
      cdsStruc.FieldByName('Type').AsInteger   := 1;
      cdsStruc.FieldByName('TypeCnt').AsInteger:= 1;
    end;
    cdsStruc.FieldByName('Amount').AsCurrency := cdsContract.FieldByName('Amount').AsCurrency;
    cdsStruc.Post;
  end;
end;

function TdtmLCST.GetBalance(inDate: TDate): Currency;
begin
  if cdsContract.Locate('EffectDate',inDate,[]) then
  begin
    Result := cdsContract.FieldByName('Balance').AsCurrency;
    if cdsContract.FieldByName('PayNo').AsInteger >= 0 then
     Result := Result + cdsContract.FieldByName('Interest').AsCurrency;
  end
  else
    Result := -1;
end;

procedure TdtmLCST.AddDefStructure;
begin
  AddRecToStructure(qryLDS.FieldByName('FirstInsDate').AsDateTime,0,
    qryLDS.FieldByName('Term').AsInteger,qryLDS.FieldByName('MthIns').AsCurrency);
  CheckLastInstalment;
end;

{---------------------------cdsConrtact amend ---------------------------------}
procedure TdtmLCST.UpdateFromToEndNormalI(inDate :TDate; NewInst :Currency);
begin
  FilterDataSet(cdsContract,'Type>='+IntToStr(ttNorI)+' and EffectDate>='''+
    FormatDateTime('dd/mm/yyyy',inDate)+'''');
  while not cdsContract.EOF do
  begin
    cdsContract.Edit;
    cdsContract.FieldByName('Amount').AsCurrency := NewInst;
    cdsContract.Post;
    cdsContract.Next;
  end;
  FilterDataSet(cdsContract,'');
end;

procedure TdtmLCST.AddNewStrucType(EffectDate: TDateTime; PrdFor: integer;
  Amount: Currency);
var
  i : integer;
  NewInst : Currency;
begin
  cdsContract.DisableControls;
  FilterDataSet(cdsContract,'Type>='+IntToStr(ttNorI));
  tmpDate := EffectDate;
  for i := 0 to PrdFor-1 do
  begin
    cdsContract.Locate('EffectDate',tmpDate,[]);
    tmpDate := GetNextInstDate(tmpDate);
    cdsContract.Edit;
    cdsContract.FieldByName('Type').AsCurrency   := ttFixI;
    cdsContract.FieldByName('Amount').AsCurrency := Amount;
    cdsContract.Post;
  end;
  FilterDataSet(cdsContract,'');
  //
  DoInterestRun;
  cdsContract.Locate('EffectDate',tmpDate,[]);
  cdsContract.Prior; // for ME
  NewInst := GetNewInstalment;
  UpdateFromToEndNormalI(tmpDate,NewInst);
  DoInterestRun;
  cdsContract.EnableControls;
end;

procedure TdtmLCST.ExtendContract(EffectDate: TDateTime; PrdFor: integer);
var
  cntInst : integer;
  i : integer;
  NewInst : currency;
  tempDate, tmpToD : TDate;
begin
  cdsContract.DisableControls;
  // Extend contract
  cdsContract.Last;
  cntInst := cdsContract.FieldByName('PayNo').AsInteger + 1;
  tmpDate := CtrEndDate;
  for i := 1 to PrdFor do
  begin
    tmpDate := GetNextInstDate(tmpDate);
    AddRecToContract(ttNorI,cntInst,tmpDate,0,0,0);
    Inc(cntInst);
  end;
  SetContractEndDate;
  // Add ME
  cdsContract.Last;
  while (not cdsContract.Bof) and
    (cdsContract.FieldByName('Type').AsInteger <> ttME) do
    cdsContract.Prior;
  // AddMonthEnds
  tempDate := IncMonth(cdsContract.FieldByName('EffectDate').AsDateTime,1);
  tempDate := DateToEndOfMonth(tempDate);
  cdsContract.Last;
  tmpToD := cdsContract.FieldByName('EffectDate').AsDateTime;
  while tempDate < tmpToD do
  begin
    AddRecToContract(ttME,-1,tempDate,0,0,0);
    tempDate := IncMonth(tempDate,1);
    tempDate := DateToEndOfMonth(tempDate);
  end;
  //
  FillRatesAndNoOfDays;
  DoInterestRun;
  cdsContract.Locate('EffectDate',EffectDate,[]);
  cdsContract.Prior; // for ME
  NewInst := GetNewInstalment;
  UpdateFromToEndNormalI(EffectDate,NewInst);
  DoInterestRun;
  SetContractEndDate;
  cdsContract.EnableControls;
end;

procedure TdtmLCST.DoRateChanges;
var
  newInst : Currency;
  insDate : TDate;
begin
  cdsContract.DisableControls;
  AddLoanRates;
  FillRatesAndNoOfDays;
  DoInterestRun;
  // Fix rate instalments
  cdsContract.First;
  MoveToCurrent(qryRate,'EffectDate',cdsContract.FieldByName('EffectDate').AsDateTime);
  qryRate.Next;
  while not qryRate.EOF do
  begin
    if cdsContract.Locate('EffectDate;Type',VarArrayOf([
      qryRate.FieldByName('EffectDate').AsDateTime,ttRate]),[]) then
    begin
      while (not cdsContract.EOF) and
        (cdsContract.FieldByName('Type').AsInteger<>ttNorI) do
        cdsContract.Next;
      if cdsContract.EOF then
        qryRate.Last;
      // Get New intalment
      insDate := cdsContract.FieldByName('EffectDate').AsDateTime;
      cdsContract.Prior; // move to preious Rate changes
      NewInst := GetNewInstalment;
      UpdateFromToEndNormalI(insDate,NewInst);
      DoInterestRun;
      //
    end;
    qryRate.Next;
  end;
  cdsContract.EnableControls;
end;

function TdtmLCST.GetBalanceBeforeLoan: Currency;
begin
  Result := GetIntOrBalUpTo(
       qryLDS.FieldByName('StartDate').AsDateTime,
       qryLDS.FieldByName('FirstInsDate').AsDateTime,
       qryLDS.FieldByName('AmtToFin').AsCurrency,
       qryRate,'IntRate',True);
end;

function TdtmLCST.RateChangeBeforeLoan: boolean;
var
  CurRate : real;
begin
  MoveToCurrent(qryRate,'EffectDate',qryLDS.FieldByName('StartDate').AsDateTime);
  CurRate := qryRate.FieldByName('IntRate').AsFloat;
  qryRate.Next;
  if qryRate.FieldByName('EffectDate').AsDateTime <
    qryLDS.FieldByName('FirstInsDate').AsDateTime then
    Result := CurRate <> qryRate.FieldByName('IntRate').AsFloat
  else
  begin
    MoveToCurrent(qryRate,'EffectDate',qryLDS.FieldByName('FirstInsDate').AsDateTime);
    Result := CurRate <> qryRate.FieldByName('IntRate').AsFloat;
  end;
end;

procedure TdtmLCST.SetLoanID(const Value: integer);
begin
  FLoanID := Value;
  if qryLDS.Active then
    SetDataStatus(False);
  qryLDS.Parameters[0].Value := LoanID;
  try
    Screen.Cursor := crHourGlass;
    SetDataStatus(True);
    BuildAndRunContract(False);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmLCST.BuildStruc;
var
  ChkAmt : Currency;
  Cnt, iType : integer;
  dFrom  : TDate;
begin
  RunQry(qryToUse,'delete from lsLDStruc where LoanID='+IntToStr(LoanID),'E');
  qryStruc.Open;
  //*cdsStruc.EmptyDataSet;
  cdsContract.DisableControls;
  FilterDataSet(cdsContract,'Type>='+IntTostr(ttPayO));
  cdsContract.First;
  Cnt := 1;
  ChkAmt := cdsContract.FieldByName('Amount').AsCurrency;
  dFrom  := cdsContract.FieldByName('EffectDate').AsDateTime;
  iType  := cdsContract.FieldByName('Type').AsInteger;
  while not cdsContract.EOF do
  begin
    if ChkAmt <> cdsContract.FieldByName('Amount').AsCurrency then
    begin
      AddRecToStructure(dFrom,iType,Cnt-1,RoundTo2Decimals(ChkAmt));
      Cnt := 1;
      ChkAmt := cdsContract.FieldByName('Amount').AsCurrency;
      dFrom  := cdsContract.FieldByName('EffectDate').AsDateTime;
      iType  := cdsContract.FieldByName('Type').AsInteger;
    end;
    cdsContract.Next;
    Inc(Cnt);
  end;
  AddRecToStructure(dFrom,iType,Cnt-1,ChkAmt);
  FilterDataSet(cdsContract,'');
  cdsContract.EnableControls;
  //*cdsStruc.ApplyUpdates(-1);
end;

procedure TdtmLCST.SetDBCon(conDB: TADOConnection);
begin
  qryLDS.Connection   := conDB;
  qryStruc.Connection := conDB;
  qryRate.Connection  := conDB;
  qryToUse.Connection := conDB;
end;

procedure TdtmLCST.MarkLoanForLCD;
begin
  RunQry(qryToUse,'update lsLoanDetail set CntrC=4 where LoanID='+IntToStr(LoanID),'E');
end;

procedure TdtmLCST.UpdLoanEndDate;
begin
  RunQry(qryToUse,'update lsLoanDetail set EndDate='''+FormatDateTime('mm/dd/yyyy',CtrEndDate)
    + ''' where LoanID='+IntToStr(LoanID),'E');
end;

end.
