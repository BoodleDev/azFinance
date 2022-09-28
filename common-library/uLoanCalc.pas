unit uLoanCalc;
{===============================================================================
 Author  : Wicus Botha
 Date    : 20/05/2000
 Unit    : Loan contract calculations
 PreConditions  :
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,StdCtrls,
    Classes, SysUtils, Controls, uFinMath, Unit32, Math;

type
  TLoanCalc = class(TComponent)
    constructor Create(AOwner: TComponent); override;
   // destructor Destroy; override;
  private
    { Private declarations }
    FVarFeeI: integer;  // variable Fee for loan adjustment index
    FFeeIntI: integer;
    FFeeBalI: integer;  //Index for percentage fee calculated monthly on outstanding balance
                  //FFeesPAT: array[1..7] of char; // Fee per or amount type
                  //FFeesPAV: array[1..7] of double; // Fee per or amount value
                  //FFeesV: array[1..7] of Currency; // Fee calculated values
                  //FFeesT: array[1..7]  of integer; // Fee types Yearly, Mthly, Var Fee
    FPayIns: Currency;
    FFeesToLn: Currency;
    FCapital: Currency;
    FFeesToIns: Currency;
    FAmtToFin: Currency;
    FResidualAmt: Currency;
    FLoanIns: Currency;
    FInsFreq: integer; // Values -> 12 = Monthly; 26 = Bi-Weekly; 52 = Weekly
    FTerm: integer;
    FTermMth: integer;
    FVarType: Shortint;
    FIntRate: single;
    FFirstInsDate: TDate;
    FStartDate: TDate;
    FTotInterest: Currency;
    FEndDate: TDate;
    function GetInstalment: Currency;
    function GetMthTerm:integer;
    // ---- property Functions ---
                                  //function GetFeesPAT(const I : integer):char;
                                  //function GetFeesPAV(const I : integer):double;
                                  //function GetFeesV(const I : integer):currency;
                                  //function GetFeesT(const I: integer): integer;
//    procedure SetAmtToFin(const Value: Currency);
    // ---- property Procedures ----
    procedure CalcAndSetFees;
    procedure SetCapital(const Value: Currency);
                                  //procedure SetFeesT(const I, Value: integer);
//    procedure SetFeesToIns(const Value: Currency);
//    procedure SetFeesToLn(const Value: Currency);
//    procedure SetFeesV(const Value: array of Currency);
    procedure SetFirstInsDate(const Value: TDate);
    procedure SetInsFreq(const Value: integer);
    procedure SetIntRate(const Value: single);
    procedure SetLoanIns(const Value: Currency);
//    procedure SetPayIns(const Value: Currency);
    procedure SetResidualAmt(const Value: Currency);
    procedure SetStartDate(const Value: TDate);
    procedure SetTerm(const Value: integer);
//    procedure SetTermMth(const Value: integer);
    procedure SetVarType(const Value: Shortint);
                          //procedure SetFeesPAT(const I: integer; const Value: char);
                          //procedure SetFeesPAV(const I: integer; const Value: double);
//    procedure SetFeesV(const Value: array of Currency);
  protected
  public
    { Public declarations }
    //OffsetFees: array[0..6,1..3] of variant;
    OffsetFees: array of array of variant;
    FeeBal: Double; //PERCENTAGE FOR FEE CALCULATED MONTHLY ON OUTSTANDING BALANCE
    FeeInt: Double; //PERCENTAGE FOR FEE CALCULATED DAILY, CAPPED MONTHLY ON OUSTANDING BALANCE
    FeesI: array of integer;   //Fee ID
    FeesID: array of integer; //New LoanType Fee ID -- FeesI remains for historic purposes
    FeesT: array of integer;   //Fee Types
    FeesV: array of currency; //Fee Calculated Values
    FeesPAV: array of Double; //Fee Percentage or Amount Value
    FeesPAT: array of Char; //Fee Percentage or Amount Type

    property AmtToFin: Currency read FAmtToFin; //write SetAmtToFin; // read only
    property Capital: Currency read FCapital write SetCapital; // @# - User have to set
    property EndDate: TDate read FEndDate;

    //property FeesPAT[const I: integer]: char read GetFeesPAT write SetFeesPAT; // @#
    //property FeesPAV[const I: integer]: double read GetFeesPAV write SetFeesPAV; // @#
    //property FeesV[const I: integer]: Currency read GetFeesV; // write SetFeesV; // read only
    //property FeesT[const I: integer]: integer read GetFeesT write SetFeesT; // @#

    property FeesToIns: Currency read FFeesToIns; // write SetFeesToIns;  // read only
    property FeesToLn: Currency read FFeesToLn; // write SetFeesToLn;  // read only
    property FirstInsDate: TDate read FFirstInsDate write SetFirstInsDate; // @#
    property InsFreq: integer read FInsFreq write SetInsFreq default 12; // Mth, Bi-Weekly, Weekly
    property IntRate : single read FIntRate write SetIntRate; // @#
    property LoanIns: Currency read FLoanIns write SetLoanIns; // @# for fix inst
    property PayIns: Currency read FPayIns; // write SetPayIns;  // read only
    property ResidualAmt: Currency read FResidualAmt write SetResidualAmt;
    property StartDate: TDate read FStartDate write SetStartDate; // @#
    property Term: integer read FTerm write SetTerm; // @#
    property TermMth: integer read FTermMth; // write SetTermMth;  // read only
    property TotInterest : Currency read FTotInterest;
    property VarType: Shortint read FVarType write SetVarType default 0; // @# Var Mth Ins, Var Term, Var Rate
    property VarFeeI: integer read FVarFeeI;
    property FeeBalI: integer read FFeeBalI;
    procedure CalculateLoan;
    procedure ResetLoanCalc;
  end;

implementation

uses uLoanCalcCFP, DateUtils;

procedure TLoanCalc.CalcAndSetFees;
var
  i : integer;
begin
  FeeBal := 0;
  for i := Low(FeesV) to High(FeesV) do
  begin
    if FeesT[i] = feeVarFee then
    begin
      FVarFeeI := I;
      FeesPAT[FVarFeeI] := 'X';
      FeesPAV[FVarFeeI] := 0;
    end
    else if FeesT[i] = feeInstBal then
    begin
      FFeeBalI := I;
      FeeBal := FeesPAV[i];
      if FeesPAT[i] = '%' then
        FeeBal := FeeBal/100;
      FeesPAT[FFeeBalI] := 'X';
      FeesPAV[FFeeBalI] := 0;
    end
    else if FeesT[i] = feeInstInt then
    begin
      FFeeIntI := I;
      FeeInt := FeesPAV[i];
      if FeesPAT[i] = '%' then
        FeeInt := FeeInt;
      FeesPAT[FFeeIntI] := 'X';
      FeesPAV[FFeeIntI] := 0;
    end
    else
    //if (i <> FVarFeeI) then
      //if FeesT[i] <> 11 then
    begin
      FeesV[i] := RoundTo2Decimals(CalcLoanFee(FeesPAT[i], FeesPAV[i],Capital, FeesT[i],Term,
        OffsetFees[i,0],OffsetFees[i,1],OffsetFees[i,2],OffsetFees[i,3]));

      if (FeesT[i] in [feeLoanOnce,feeLoanYear,feeLoanMth]) then
        FFeesToLn := FFeesToLn + FeesV[i]
      else
        FFeesToIns := FFeesToIns + FeesV[i]
    end;
  end;
end;

procedure TLoanCalc.CalculateLoan;
var
  TotalFee: Currency;
begin
///////  ResetLoanCalc;
  // Calculate Loan fees;
  CalcAndSetFees;
  FAmtToFin := RoundTo2Decimals(Capital + FFeesToLn);
  //
  if VarFeeI <> -1 then
  begin
    // PV of MthIns diff
    FAmtToFin := RoundTo2Decimals(uFinMath.GetAmtToFin(IntRate,FAmtToFin,ResidualAmt,
      FLoanIns,Term,InsFreq,StartDate,FirstInsDate));
    FeesV[VarFeeI] := FAmtToFin - RoundTo2Decimals(Capital + FFeesToLn);
    FFeesToLn := FFeesToLn + FeesV[VarFeeI];
  end;
  // Get instalment amount
  if VarType <> vtFixIns then
    FLoanIns   := GetInstalment;
  //
  case InsFreq of
     ifWeek : FTotInterest :=
                RoundTo2Decimals(uFinMath.GetIntOrBalForLoan(Term,7,
                  StartDate,FirstInsDate,AmtToFin,IntRate,FLoanIns,False, FeeInt, TotalFee));
     ifBiWk : FTotInterest :=
                RoundTo2Decimals(uFinMath.GetIntOrBalForLoan(Term,14,
                  StartDate,FirstInsDate,AmtToFin,IntRate,FLoanIns,False, FeeInt, TotalFee));
     else
       FTotInterest := RoundTo2Decimals(uFinMath.GetIntOrBalForLoan(Term,0,
         StartDate,FirstInsDate,AmtToFin,IntRate,FLoanIns,False, FeeInt, TotalFee));
  end;

  if TotalFee > 0 then
    if FFeeBalI > -1 then
      FeesV[FFeeBalI] := TotalFee;
  //
  FPayIns := FLoanIns + FFeesToIns;
  FTermMth := GetMthTerm;
  // update End date
 // FEndDate := EndOfTheMonth((IncMonth(FirstInsDate, FTermMth))); //Daniel IncMonth(FirstInsDate,FTermMth);
  FEndDate := DateToME(IncMonth(FirstInsDate, FTermMth));
end;

constructor TLoanCalc.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ResetLoanCalc;
end;

                                                  {destructor TLoanCalc.Destroy;
                                                  begin
                                                    inherited;
                                                  end;      *)


{procedure TLoanCalc.SetAmtToFin(const Value: Currency);
begin
  FAmtToFin := Value;
end;}

                        {function TLoanCalc.GetFeesPAT(const I: integer): char;
                        begin
                          Result := FFeesPAT[I];
                        end;}

                        {function TLoanCalc.GetFeesPAV(const I: integer): double;
                        begin
                          Result := FFeesPAV[I];
                        end;}

                        {function TLoanCalc.GetFeesT(const I: integer): integer;
                        begin
                          Result := FFeesT[I];
                        end;}

                        {function TLoanCalc.GetFeesV(const I: integer): currency;
                        begin
                          Result := FFeesV[I];
                        end;}

function TLoanCalc.GetInstalment: Currency;
begin
  case InsFreq of
    ifWeek : begin
               Result := RoundTo2Decimals(-1*uFinMath.PMTWeekly(IntRate,FAmtToFin,
                           -1*ResidualAmt,Term,0,StartDate,FirstInsDate, FeeBal));
             end;
    ifBiWk : begin
               Result := RoundTo2Decimals(-1*uFinMath.PMTBiWeekly(IntRate,FAmtToFin,
                           -1*ResidualAmt,Term,0,StartDate,FirstInsDate, FeeBal));
             end;
    else
      Result := RoundTo2Decimals(-1*uFinMath.ActualPMT(IntRate,FAmtToFin,
           -1*ResidualAmt,Term,0,StartDate,FirstInsDate, FeeBal));
   end;
end;

function TLoanCalc.GetMthTerm: integer;
begin
  case InsFreq of
    ifWeek : Result := Ceil(Term *12 / 52);
    ifBiWk : Result := Ceil(Term *12 / 26);
  else
    Result := Term;
  end;
end;

procedure TLoanCalc.ResetLoanCalc;
var
 i : integer;
begin
  for i := Low(FeesPAT) to High(FeesPAT) do
    FeesPAT[i] := 'F';
  for i := Low(FeesPAV) to High(FeesPAV) do
    FeesPAV[i] := 0;
  for i := Low(FeesT) to High(FeesT) do
    FeesT[i] := 0;
  for i := Low(FeesV) to High(FeesV) do
    FeesV[i] := 0;

  FPayIns  := 0;
  FFeesToLn:= 0;
//  FCapital: Currency;
  FFeesToIns:= 0;
  FAmtToFin := 0;
  FResidualAmt := 0;
  FLoanIns  := 0;
//  FInsFreq: integer;
//  FTerm: integer;
  FTermMth := 0;
  FVarType := vtMthIns;
  FVarFeeI := -1;
  FFeeBalI := -1;
  FeeBal := 0;
end;

procedure TLoanCalc.SetCapital(const Value: Currency);
begin
  FCapital := Value;
end;

                        {procedure TLoanCalc.SetFeesPAT(const I: integer; const Value: char);
                        begin
                          FFeesPAT[I] := Value;
                        end;}

                        {procedure TLoanCalc.SetFeesPAV(const I: integer; const Value: double);
                        begin
                          FFeesPAV[I] := Value;
                        end;}

                        {*procedure TLoanCalc.SetFeesT(const I, Value: integer);
                        begin
                          FFeesT[I] := Value;
                         if Value = feeVarFee then
                          begin
                            FVarFeeI := I;
                            FFeesPAT[FVarFeeI] := 'X';
                            FFeesPAV[FVarFeeI] := 0;
                          end;
                        end; *}

{procedure TLoanCalc.SetFeesToIns(const Value: Currency);
begin
  FFeesToIns := Value;
end;}

{procedure TLoanCalc.SetFeesToLn(const Value: Currency);
begin
  FFeesToLn := Value;
end;}

{procedure TLoanCalc.SetFeesV(const Value: array of Currency);
begin
  FFeesV := Value;
end;}


procedure TLoanCalc.SetFirstInsDate(const Value: TDate);
begin
  FFirstInsDate := Value;
end;

procedure TLoanCalc.SetInsFreq(const Value: integer);
begin
  FInsFreq := Value;
  if not (Value in [ifMonth,ifWeek,ifBiWk]) then
  begin
    FInsFreq := ifMonth;
    MesDlg('Instalment frequency must have value of Monthly=12, Bi-Weekly=26, Weekly=52','E');
  end;
end;

procedure TLoanCalc.SetIntRate(const Value: single);
begin
  FIntRate := Value;
end;

procedure TLoanCalc.SetLoanIns(const Value: Currency);
begin
  FLoanIns := Value;
  FVarType := vtFixIns;
end;

{procedure TLoanCalc.SetPayIns(const Value: Currency);
begin
  FPayIns := Value;
end;}

procedure TLoanCalc.SetResidualAmt(const Value: Currency);
begin
  FResidualAmt := Value;
end;

procedure TLoanCalc.SetStartDate(const Value: TDate);
begin
  FStartDate := Value;
end;

procedure TLoanCalc.SetTerm(const Value: integer);
begin
  FTerm := Value;
end;

{procedure TLoanCalc.SetTermMth(const Value: integer);
begin
  FTermMth := Value;
end;}

procedure TLoanCalc.SetVarType(const Value: Shortint);
begin
  FVarType := Value;
  if VarType <> vtFixIns then
  begin
    if FVarFeeI <> -1 then
      FVarFeeI := -1;
  end;
end;

end.



