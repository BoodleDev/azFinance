unit uLoanCalcCFP;

interface

uses variants;

//Types
{ Type
  TLoanFeesSet = set of 1..9;}

//Constants
const
  // InsFreq
  ifMonth = 12;
  ifBiWk  = 26;
  ifWeek  = 52;
  // Var Type
  vtNone   = 0;
  vtMthIns = 1;
  vtTerm   = 2;
  vtRate   = 3;
  vtFixIns = 4;

  //LoanFeeTypes
  feeNotInUse  = 0;
  feeLoanOnce  = 1;
  feeLoanYear  = 2;
  feeLoanMth   = 3;
  feeInstOnce  = 4;
  feeInstYear  = 5;
  feeInstMth   = 6;
  feeRefOnce   = 7;
  feeRefYear   = 8;
  feeRefMth    = 9;
  feeVarFee    = 10;
  feeInstBal   = 11;
  feeInstInt = 12;

function CalcLoanFee(FixOrPer :char; AmtOrPer, LoanCapital :Currency;
  LnFeeType, LoanPrd :integer;  OffsetType: string; OffsetValue: Real;
  Offset, Ceiling: Currency):Currency;

implementation

uses Math;

function CalcLoanFee(FixOrPer: char; AmtOrPer, LoanCapital: Currency;
  LnFeeType, LoanPrd: integer; OffsetType: string; OffsetValue: Real;
  Offset, Ceiling: Currency): Currency;
begin
  // Calc the figure - Percentage OR Fixed Amount
  if FixOrPer = '%' then
    Result := LoanCapital * AmtOrPer / 100
  else
    Result := AmtOrPer;

  if OffsetType <> '' then //not (OffsetFee[1] = Unassigned) then
  begin
    if LoanCapital > Offset then
    begin
      if OffsetType = '%' then
        Result := Result + ((LoanCapital - Offset) * OffsetValue/100)//Type
      else
        Result := Result + OffsetValue;

      if Ceiling > 0 then
        Result := Min(Ceiling, Result);
    end;
  end;

  // Fee type - Add to ... / Reference only
  case LnFeeType of
    //    feeLoanOnce, feeRefOnce: Result
    feeLoanYear, feeRefYear : Result := Result * LoanPrd / 12;
    feeLoanMth,feeRefMth    : Result := Result * LoanPrd;
    feeInstOnce             : if LoanPrd = 0 then
                                Result := 0
                              else
                                Result := Result / LoanPrd;
    feeInstYear             : Result := Result / 12
//    feeInstMth              : Result : =
  end;
end;

end.
