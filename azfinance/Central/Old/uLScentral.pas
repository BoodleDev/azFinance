unit uLScentral;
{
Author:      Wicus Botha
Date:        07/09/2000
Description: The purpose off this unit is to make central code availible to
             global LOANS2000 programs (LS2, LS2Setup, LS2Scheduler)
}

interface

uses
  Windows, SysUtils, Dialogs, Graphics, DB,Classes, uLSconst;

{type
  TMod10Func = function(inNo :string):boolean; stdcall;
function CallMod10Dll(inNo :string):boolean;
}

procedure BuildLoanStatusList(StrList: TStrings);
function CalcLoanFee(FixOrPer :string; AmtOrPer, LoanCapital :Currency;
  LoanFeeType, LoanPrd :integer):Currency;
function ColorLoanStatus(Status: integer): TColor;
function GetLoanStatus(Status :integer): string;
function GetLTtypeDesc(inType: integer): string;
function GetInstFreqDesc(inType: integer):string;
function GetFeeTypeInd(FeeType:integer):char;
function GetFeeTypeDesc(FeeType:integer):string;
function GetPayFreq(inInd: string): string;
function GetPayFreqStatus(cbxInd : integer):Char;// hardcode to cbx list
function SetLastPayPointer(AccTrans :TDataSet): boolean;

implementation


{function CallMod10Dll(inNo :string):boolean;
var
  HInst    : THandle;
  FPointer : TFarProc;
  ModFunct : TMod10Func;
begin
  Result := False;
  HInst := LoadLibrary(PChar('Mod10.dll'));
  if HInst > 0 then
    try
      FPointer := GetProcAddress(HInst,PChar('IsNoValid'));
      if FPointer <> nil then
      begin
        ModFunct := TMod10Func(FPointer);
        Result := ModFunct(inNo);
      end;
    finally
      FreeLibrary(HInst);
    end
  else
    ShowMessage('Mod10.dll - library not found.');
end;
}
function CalcLoanFee(FixOrPer:string; AmtOrPer, LoanCapital :Currency;
  LoanFeeType, LoanPrd :integer):Currency;
begin
  // Calc the figure - Percentage OR Fixed Amount
  if Trim(FixOrPer) = '%' then
    Result := LoanCapital * AmtOrPer / 100
  else
    Result := AmtOrPer;
  // Fee type - Add to ... / Reference only
  case LoanFeeType of
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

function ColorLoanStatus(Status: integer): TColor;
begin
  case Status of
    lnsInactive    : Result := clYellow; // Inactive
    lnsDeclined    : Result := clRed;    // Declined
    lnsCancelled   : Result := clRed;    // Cancelled
    lnsPreApproved : Result := clLime;   // Pre-approved
    lnsApproved    : Result := clLime;   // Active
    lnsActPay      : Result := clGreen;  // Active ready to pay
    lnsActImex     : Result := clGreen;  // Active Imex to pay
    lnsOpen        : Result := clAqua;   // Open
    lnsBadDebt     : Result := clSilver; //Bad Debt
    lnsHandover    : Result := $000058B0; //Handover (BROWN)
    lnsSettle      : Result := clFuchsia;// Settled
    lnsFrozen      : Result := clTeal;   // Suspended Frozen
    lnsZero        : Result := clTeal;   // Suspended Zero
    lnsNoDebits    : Result := clTeal;   // Suspended No Debits
    lnsClose       : Result := clGray;   // Closed
    else
      Result := clBtnFace;
  end;
end;

function GetLoanStatus(Status :integer): string;
begin
  case Status of
    lnsInActive    : Result := lndInActive;
    lnsDeclined    : Result := lndDeclined;
    lnsCancelled   : Result := lndCancelled;
    lnsPreApproved : Result := lndPreApproved;
    lnsApproved    : Result := lndApproved;
    lnsActPay      : Result := lndActPay;
    lnsActImex     : Result := lndActImex;
    lnsOpen        : Result := lndOpen;
    lnsBadDebt     : Result := lndBadDebt;
    lnsHandover    : Result := lndHandover; 
    //lnsExtended : Result := lndExtended;
    lnsSettle      : Result := lndSettle;
    lnsFrozen      : Result := lndFrozen;
    lnsZero        : Result := lndZero;
    lnsNoDebits    : Result := lndNoDebits;
    lnsClose       : Result := lndClose;
    else
      Result := 'none';
  end; {case}
end;

procedure BuildLoanStatusList(StrList: TStrings);
begin
  StrList.Clear;
  StrList.Add(lndInActive   + '=' + IntToStr(lnsInActive));
  StrList.Add(lndDeclined   + '=' + IntToStr(lnsDeclined));
  StrList.Add(lndCancelled  + '=' + IntToStr(lnsCancelled));
  StrList.Add(lndPreApproved+ '=' + IntToStr(lnsPreapproved));
  StrList.Add(lndApproved   + '=' + IntToStr(lnsApproved));
  StrList.Add(lndActPay     + '=' + IntToStr(lnsActPay));
  StrList.Add(lndActImex    + '=' + IntToStr(lnsActImex));
  StrList.Add(lndOpen       + '=' + IntToStr(lnsOpen));
  StrList.Add(lndSettle     + '=' + IntToStr(lnsSettle));
  StrList.Add(lndFrozen     + '=' + IntToStr(lnsFrozen));
  StrList.Add(lndZero       + '=' + IntToStr(lnsZero));
  StrList.Add(lndNoDebits   + '=' + IntToStr(lnsNoDebits));
  StrList.Add(lndClose      + '=' + IntToStr(lnsClose));
  StrList.Add(lndBadDebt    + '=' + IntToStr(lnsBadDebt));
  StrList.Add(lndHandover   + '=' + IntToStr(lnsHandover));
end;

function GetLTtypeDesc(inType: integer): string;
begin
  case inType of
    0  : Result := 'HP account'; //ltactHP
    10 : Result := 'Asset based'; //ltactAsset
    20 : Result := 'RC - Term'; //ltactRevCr
    30 : Result := 'RC - Fix term'; //ltactRevCrT
    40 : Result := 'RC - Balance'; //ltactRevCrB
    5  : Result := 'HP account - Weekly'; //ltactHP
    6  : Result := 'HP assets - Weekly'; //ltactHP
    7  : Result := 'HP account - BiWeekly'; //ltactHP
    8  : Result := 'HP asset - BiWeekly'; //ltactHP
    else
      Result := 'none';
  end; {case}
end;

function GetInstFreqDesc(inType: integer):string;
begin
  case inType of
    ltactHPWI,ltactHPAWI : Result := 'weeks';
    ltactHPBI,ltactHPABI : Result := 'bi-weeks';
    else
      Result := 'months';
  end;
end;

function GetFeeTypeDesc(FeeType:integer):string;
begin
  Result := '';
  case FeeType of
    feeLoanOnce,feeInstOnce,feeRefOnce : Result := 'Once off calc - ';
    feeLoanYear,feeInstYear,feeRefYear : Result := 'Yearly calc - ';
    feeLoanMth,feeInstMth,feeRefMth    : Result := 'Monthly calc - ';
  end;
  case FeeType of
    feeLoanOnce,feeLoanYear,feeLoanMth : Result := Result + 'Financed';
    feeInstOnce,feeInstYear,feeInstMth : Result := Result + 'Instalment';
    feeRefOnce,feeRefYear,feeRefMth    : Result :=  Result + 'Financed ref';
  end;
  if Result = '' then
    Result := 'none';
end;

function GetFeeTypeInd(FeeType:integer):char;
begin
  case FeeType of
    feeLoanOnce,feeLoanYear,feeLoanMth : Result := 'F';
    feeInstOnce,feeInstYear,feeInstMth : Result := 'M';
    feeRefOnce,feeRefYear,feeRefMth    : Result := 'R';
    else
      Result := ' ';
  end;
end;

function GetPayFreq(inInd: string): string;
begin
  if Trim(inInd) <> '' then
  begin
    case inInd[1] of
      ' ' : Result := 'None';
      'M' : Result := 'Monthly';
      'W' : Result := 'Weekly';
      'T' : Result := 'Every 2nd week';
      'D' : Result := 'Daily';
      'O' : Result := 'Other';
    end; {case}
  end
  else
    Result := 'None';
end;

function GetPayFreqStatus(cbxInd :integer):Char;// hardcode to cbx list
begin
  case cbxInd of
    1 : Result := 'M'; //pfsMth; //Monthly
    2 : Result := 'W'; //pfsWeek; //Weekly
    3 : Result := 'T'; //pfsBiWeek; //Every 2nd week
    4 : Result := 'D'; //pfsDaily; //Daily
    5 : Result := 'O'; //pfsOther; //Other
    else
      Result := 'N';
  end;
end;

function SetLastPayPointer(AccTrans :TDataSet): boolean;
var
  Bucket : Currency;
begin
  //Last Paid
  AccTrans.Last;
  Bucket := AccTrans.FieldByName('AmtPost').AsCurrency;
  AccTrans.Prior;
  while (not AccTrans.Bof) and (Bucket >= 0) do
  begin
    Bucket := Bucket + AccTrans.FieldByName('AmtPost').AsCurrency;
    AccTrans.Prior;
  end; {while not BOF}
  if not AccTrans.Bof then
    AccTrans.Next;
  Result := AccTrans.FieldByName('TransType').AsInteger = 11;
  if Result then
    Result := Bucket <> 0;
end;

end.
