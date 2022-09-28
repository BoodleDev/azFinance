unit uFinMath;

interface

uses
  Sysutils, Controls, DB, Math;

function ActualPMT(Rate,PV,FV:Extended; LoanTerm,PayTime :integer;
   dStart,dFirstIns:TDate):Currency;
function PMTBiWeekly(Rate,PV,FV:Extended; LoanTerm,PayTime :integer;
   dStart,dFirstIns:TDate):Currency;
function PMTWeekly(Rate,PV,FV:Extended; LoanTerm,PayTime :integer;
   dStart,dFirstIns:TDate):Currency;
function CalcIntForAmt(dStart, dStop :TDate; inAmt :Currency;
      dtaRates :TDataSet; FldRate :string): Currency;
function CalcInterest(NrDays, Princ, IntRate: double): Currency;
function CalcInterest112(Princ, IntRate: double): Currency;
function CalcInterestDaily360(NrDays, Princ, IntRate: double): Currency;
function CalcInterestDaily365(NrDays, Princ, IntRate: double): Currency;
function GetIntOrBalForLoan(inTerm,Days:integer; dStart,dFirstIns :TDate;
  PV,Rate,PMT :double; GetBal: boolean):Currency;  // Days <= 0 Monthly loan
function CalcPayment(Rate, LoanTerm, PV, FV, PType: Extended): Extended;
function DateToME(inDate:TDate):TDate; // unit32
function GetIntOrBalUpTo(dStart, dStop :TDate; inAmt :Currency;
  dtaRates :TDataSet; FldRate :string; GetBal :boolean): Currency;
function GetAmtToFin(Rate,PV,FV,PMT:Extended; LoanTerm,RateInd :integer;
   dStart,dFirstIns:TDate):Currency;
function GetLoanTerm(Rate,PV,FV,PMT:Extended; RateInd :integer;
   dStart,dFirstIns:TDate):integer;
function GetInterestRate(PV,FV,PMT:Extended; LoanTerm,RateInd :integer;
    dStart,dFirstIns:TDate):Extended;

implementation

function ActualPMT(Rate,PV,FV:Extended; LoanTerm,PayTime :integer;
   dStart,dFirstIns:TDate):Currency;
var
  Diff, PrevDiff : extended;
  tmpPV, tmpPMT  : extended;
begin
  //0 = Begin & 1 = End
  if PayTime = 0 then
    Result := Payment((Rate/100)/12,LoanTerm,PV,FV,ptStartOfPeriod)
  else
    Result := Payment((Rate/100)/12,LoanTerm,PV,FV,ptEndOfPeriod);
  // Difference in PMT function int vs. Actual Interest
  PrevDiff := 0;
  Diff := GetIntOrBalForLoan(LoanTerm,0,dStart,dFirstIns,PV,Rate,Result,True);
  while (PrevDiff < Diff-0.1) or (PrevDiff > Diff+0.1) do
//  while PrevDiff <> Diff do
  begin
    tmpPV  := PresentValue((Rate/100)/12,LoanTerm,0,Diff,ptStartOfPeriod);
    tmpPMT := Payment((Rate/100)/12,LoanTerm,tmpPV,FV,ptStartOfPeriod);
    Result := Result - tmpPMT;
    PrevDiff := Diff;
    Diff := GetIntOrBalForLoan(LoanTerm,0,dStart,dFirstIns,PV,Rate,Result,True);
  end;
end;

function PMTBiWeekly(Rate,PV,FV:Extended; LoanTerm,PayTime :integer;
   dStart,dFirstIns:TDate):Currency;
var
  Diff, PrevDiff : extended;
  tmpPV, tmpPMT  : extended;
begin
  //0 = Begin & 1 = End
  if PayTime = 0 then
    Result := Payment((Rate/100)/26,LoanTerm,PV,FV,ptStartOfPeriod)
  else
    Result := Payment((Rate/100)/26,LoanTerm,PV,FV,ptEndOfPeriod);
  // Calc inst
  PrevDiff := 0;
  Diff := GetIntOrBalForLoan(LoanTerm,14,dStart,dFirstIns,PV,Rate,Result,True);
  while (PrevDiff < Diff-0.1) or (PrevDiff > Diff+0.1) do
//  while PrevDiff <> Diff do
  begin
    tmpPV  := PresentValue((Rate/100)/26,LoanTerm,0,Diff,ptEndOfPeriod);
    tmpPMT := Payment((Rate/100)/26,LoanTerm,tmpPV,FV,ptEndOfPeriod);
    Result := Result - tmpPMT;
    PrevDiff := Diff;
    Diff := GetIntOrBalForLoan(LoanTerm,14,dStart,dFirstIns,PV,Rate,Result,True);
  end;
  // Round instalment to pay less - this will help with diff
  //  Result := Round(Result+0.5);
end;

function PMTWeekly(Rate,PV,FV:Extended; LoanTerm,PayTime :integer;
   dStart,dFirstIns:TDate):Currency;
var
  Diff, PrevDiff : extended;
  tmpPV, tmpPMT  : extended;
  //  Sign, FSn  : char; check to see when Diff sign change then stop calc
begin
  //0 = Begin & 1 = End
  if PayTime = 0 then
    Result := Payment((Rate/100)/52,LoanTerm,PV,FV,ptStartOfPeriod)
  else
    Result := Payment((Rate/100)/52,LoanTerm,PV,FV,ptEndOfPeriod);
  PrevDiff := 0;
  Diff := GetIntOrBalForLoan(LoanTerm,7,dStart,dFirstIns,PV,Rate,Result,True);
  while (PrevDiff < Diff-0.1) or (PrevDiff > Diff+0.1) do
  begin
    tmpPV  := PresentValue((Rate/100)/52,LoanTerm,0,Diff,ptEndOfPeriod);
    tmpPMT := Payment((Rate/100)/52,LoanTerm,tmpPV,FV,ptEndOfPeriod);
    Result := Result - tmpPMT;
    PrevDiff := Diff;
    Diff := GetIntOrBalForLoan(LoanTerm,7,dStart,dFirstIns,PV,Rate,Result,True);
  end;
end;

function CalcIntForAmt(dStart, dStop :TDate; inAmt :Currency;
  dtaRates :TDataSet; FldRate :string): Currency;
var
  dFrom : TDate;
  IntTot : Currency;
  CurRate : real;
begin
  IntTot   := 0;
  dFrom   := dStart;
  // MoveToCurrent(dtaRates,'EffectDate',dStart); // not want to use unit32, fin calcs in u32
  dtaRates.Last;
  while (dtaRates.FieldByName('EffectDate').AsDateTime > dStart)
      and (not dtaRates.BOF) do dtaRates.Prior;
  //
  CurRate := dtaRates.FieldByName(FldRate).AsFloat;
  dtaRates.Next;
  while (not dtaRates.EOF) and
    (dtaRates.FieldByName('EffectDate').AsDateTime < dStop) do
  begin
    IntTot  := IntTot +
      CalcInterest(dtaRates.FieldByName('EffectDate').AsDateTime-dFrom,inAmt,CurRate);
    dFrom   := dtaRates.FieldByName('EffectDate').AsDateTime;
    CurRate := dtaRates.FieldByName(FldRate).AsFloat;
    dtaRates.Next;
  end;
  //
  if dFrom < dStop then
    IntTot  := IntTot + CalcInterest(dStop-dFrom,inAmt,CurRate);
  //
  Result := IntTot;
end;

{------------------------------------------------------------------------------}
{Do interest calculation given princepal,nr days,int rate}
{------------------------------------------------------------------------------}
function CalcInterest(NrDays, Princ, IntRate: double): Currency;
begin
  Result := (Princ*(IntRate/100)*(NrDays/365));
end;

function CalcInterest112(Princ, IntRate: double): Currency;
begin
  Result := (Princ*(IntRate/100)*(1/12));
end;

function CalcInterestDaily360(NrDays, Princ, IntRate: double): Currency;
var
  i : integer;
  ReCurBal : Currency;
begin
  ReCurBal := Princ;
  for i := 1 to Trunc(NrDays) do
  begin
    ReCurBal := ReCurBal + (ReCurBal*(IntRate/100)*(1/360));
  end;
  Result := ReCurBal;
end;

function CalcInterestDaily365(NrDays, Princ, IntRate: double): Currency;
var
  i : integer;
  ReCurBal : Currency;
begin
  ReCurBal := Princ;
  for i := 1 to Trunc(NrDays) do
  begin
    ReCurBal := ReCurBal + (ReCurBal*(IntRate/100)*(1/365));
  end;
  Result := ReCurBal;
end;

function GetIntOrBalForLoan(inTerm,Days:integer; dStart,dFirstIns :TDate;
  PV,Rate,PMT :double; GetBal: boolean):Currency;
var
   CapitalBal, TotInt, IntPort : double;
   dFrom, dTo, dME, dEnd : TDate;
begin
   TotInt  := 0;
   dFrom   := dStart;
   dTo     := dFirstIns;
   dME     := DateToME(dFrom);
   if Days <= 0 then
     dEnd    := IncMonth(dTo,inTerm) -1
   else
     dEnd    := dFirstIns + ((inTerm-1)* Days); // or (inTerm * Days) - Days
   CapitalBal := PV;
   IntPort := 0;
   // Compound if Start & First ins date > 30 days
     // It will be more accurate to use func DateToMonthEnd, but will take too long ?
   while dMe < dTo do
   begin
     TotInt := TotInt + CalcInterest(dMe-dFrom,CapitalBal,Rate);
     CapitalBal := CapitalBal + CalcInterest(dMe-dFrom,CapitalBal,Rate);
     dFrom := dMe;
     dMe   := DateToME(IncMonth(dFrom,1));
   end;
   while dTo <= dEnd do
   begin
     if dTo < dME then
     begin
       IntPort := IntPort + CalcInterest(dTo-dFrom,CapitalBal,Rate);
       dFrom := dTo;
       if Days <= 0 then
         dTo := IncMonth(dFrom,1)
       else
         dTo := dFrom + Days;
       CapitalBal := CapitalBal - ABS(PMT);
     end
     else
     begin
       IntPort := IntPort + CalcInterest(dMe-dFrom,CapitalBal,Rate);
       dFrom := dMe;
       dMe :=  DateToME(IncMonth(dFrom,1));
       CapitalBal := CapitalBal + IntPort;
       TotInt  := TotInt + IntPort;
       IntPort := 0;
     end;
   end;
   CapitalBal := CapitalBal + IntPort;
   TotInt  := TotInt + IntPort;
   if GetBal then
     Result := CapitalBal
   else
     Result := TotInt;
end;

function CalcPayment(Rate, LoanTerm, PV, FV, PType: Extended): Extended;
// Type 0 = End of Period and 1 = Begin of Period
var
  f : extended;
begin
  if PType > 1 then
    PType:=1;
  f := Exp( LoanTerm * ln(1+Rate));
  Result := (FV+PV*f) * Rate/ ( (1+Rate*PType) * (1-f) );
end;

function DateToME(inDate:TDate):TDate; // unit32
begin
  case StrToInt(FormatDateTime('mm',inDate)) of
    // Months with 31 days
    1,3,5,7,8,10,12 : Result := StrToDate('31/'+FormatDateTime('mm/yyyy',inDate));
    // Months with 30 days
    4,6,9,11        : Result := StrToDate('30/'+FormatDateTime('mm/yyyy',inDate));
    // Months with 28/29 days
    2 : begin
          if IsLeapYear(StrToInt(FormatDateTime('yyyy',inDate))) then
             Result := StrToDate('29/'+FormatDateTime('mm/yyyy',inDate))
          else
             Result := StrToDate('28/'+FormatDateTime('mm/yyyy',inDate));
        end;
    else
      Result := Date;
  end; {case}
end;

function GetIntOrBalUpTo(dStart, dStop :TDate; inAmt :Currency;
  dtaRates :TDataSet; FldRate :string; GetBal :boolean): Currency;
var
  dME, dFrom, dRate : TDate;
  IntCalc, IntTot : Currency;
  ReCurBal: Currency;
  CurRate : real;
begin
  IntCalc  := 0;
  IntTot   := 0;
  ReCurBal := inAmt;
  // MoveToCurrent(dtaRates,'EffectDate',dStart); // not want to use unit32, fin calcs in u32
  dtaRates.Last;
  while (dtaRates.FieldByName('EffectDate').AsDateTime > dStart)
      and (not dtaRates.BOF) do dtaRates.Prior;
  //    
  CurRate := dtaRates.FieldByName(FldRate).AsFloat;
  dtaRates.Next;
  dRate   := dtaRates.FieldByName('EffectDate').AsDateTime;
  dFrom   := dStart;
  dME     := DateToME(dStart);
  while (dFrom < dStop) do
  begin
    if (not dtaRates.EOF) and (dRate < dME) then
    begin
      IntCalc := IntCalc + CalcInterest(dRate-dFrom,ReCurBal,CurRate);
      dFrom   := dRate;
      CurRate := dtaRates.FieldByName(FldRate).AsFloat;
      dtaRates.Next;
      dRate   := dtaRates.FieldByName('EffectDate').AsDateTime;
    end
    else
    begin
      if dME < dStop then
        IntCalc := IntCalc + CalcInterest(dME-dFrom,ReCurBal,CurRate)
      else
        IntCalc := IntCalc + CalcInterest(dStop-dFrom,ReCurBal,CurRate);
      IntTot  := IntTot   + IntCalc;
      ReCurBal:= ReCurBal + IntCalc;
      IntCalc := 0;
      dFrom   := dME;
      dME     := DateToME(IncMonth(dME,1));
    end;
  end;
  //
  if GetBal then
    Result := ReCurBal
  else
    Result := IntTot;
end;

function GetAmtToFin(Rate,PV,FV,PMT:Extended; LoanTerm,RateInd :integer;
   dStart,dFirstIns:TDate):Currency;
var
  Diff, PrevDiff : extended;
  tmpPV : extended;
begin
  // Difference in PMT function int vs. Actual Interest
  Result := PV;
  PrevDiff := 0;
  //
  case RateInd of
    26 : Diff := GetIntOrBalForLoan(LoanTerm,14,dStart,dFirstIns,Result,Rate,PMT,True);
    52 : Diff := GetIntOrBalForLoan(LoanTerm,7,dStart,dFirstIns,Result,Rate,PMT,True);
    else
      Diff := GetIntOrBalForLoan(LoanTerm,0,dStart,dFirstIns,Result,Rate,PMT,True);
  end;
  //
  while (PrevDiff < Diff-0.1) or (PrevDiff > Diff+0.1) do
//  while (Diff-0.1 < PrevDiff) or (PrevDiff+0.1 > Diff) do
  begin
    tmpPV  := PresentValue((Rate/100)/RateInd,LoanTerm,0,Diff,ptStartOfPeriod);
    Result := Result + tmpPV;
    PrevDiff := Diff;
    //
    case RateInd of
      26 : Diff := GetIntOrBalForLoan(LoanTerm,14,dStart,dFirstIns,Result,Rate,PMT,True);
      52 : Diff := GetIntOrBalForLoan(LoanTerm,7,dStart,dFirstIns,Result,Rate,PMT,True);
      else
        Diff := GetIntOrBalForLoan(LoanTerm,0,dStart,dFirstIns,Result,Rate,PMT,True);
    end;
  end;
end;

function GetLoanTerm(Rate,PV,FV,PMT:Extended; RateInd :integer;
   dStart,dFirstIns:TDate):integer;
var
  Diff : extended;
  fBal, sBal : char;
begin
  // Difference in PMT function int vs. Actual Interest
  Result := Trunc(NumberOfPeriods(Rate/RateInd/100,ABS(PMT),-1*ABS(PV),FV,ptEndOfPeriod));
  //
  case RateInd of
    26 : Diff := GetIntOrBalForLoan(Result,14,dStart,dFirstIns,PV,Rate,PMT,True);
    52 : Diff := GetIntOrBalForLoan(Result,7,dStart,dFirstIns,PV,Rate,PMT,True);
    else
      Diff := GetIntOrBalForLoan(Result,0,dStart,dFirstIns,PV,Rate,PMT,True);
  end;
  // When Bal diff sign change stop calc
  if Diff < 0 then
    fBal := '-'
  else
    fBal := '+';
  sBal := fBal;
  while sBal = fBal do
  begin
    if Diff > 0 then
      Result := Result + 1
    else
      Result := Result - 1;
    //
    case RateInd of
      26 : Diff := GetIntOrBalForLoan(Result,14,dStart,dFirstIns,PV,Rate,PMT,True);
      52 : Diff := GetIntOrBalForLoan(Result,7,dStart,dFirstIns,PV,Rate,PMT,True);
      else
        Diff := GetIntOrBalForLoan(Result,0,dStart,dFirstIns,PV,Rate,PMT,True);
    end;
    if Diff < 0 then
      sBal := '-'
    else
      sBal := '+';
  end;
end;

function GetInterestRate(PV,FV,PMT:Extended; LoanTerm,RateInd :integer;
    dStart,dFirstIns:TDate): Extended;
var
  Diff : extended;
  fBal, sBal : char;
begin
  // Difference in PMT function int vs. Actual Interest
  Result := InterestRate(LoanTerm,PMT,PV,FV,ptEndOfPeriod)*100*RateInd;
  //
  case RateInd of
    26 : Diff := GetIntOrBalForLoan(LoanTerm,14,dStart,dFirstIns,PV,Result,PMT,True);
    52 : Diff := GetIntOrBalForLoan(LoanTerm,7,dStart,dFirstIns,PV,Result,PMT,True);
    else
      Diff := GetIntOrBalForLoan(LoanTerm,0,dStart,dFirstIns,PV,Result,PMT,True);
  end;
  // When Bal diff sign change stop calc
  if Diff < 0 then
    fBal := '-'
  else
    fBal := '+';
  sBal := fBal;
  while sBal = fBal do
  begin
    if Diff > 0 then
      Result := Result - 0.25
    else
      Result := Result + 0.25;
    //
    case RateInd of
      26 : Diff := GetIntOrBalForLoan(LoanTerm,14,dStart,dFirstIns,PV,Result,PMT,True);
      52 : Diff := GetIntOrBalForLoan(LoanTerm,7,dStart,dFirstIns,PV,Result,PMT,True);
      else
        Diff := GetIntOrBalForLoan(LoanTerm,0,dStart,dFirstIns,PV,Result,PMT,True);
    end;
    if Diff < 0 then
      sBal := '-'
    else
      sBal := '+';
  end;
end;

end.
