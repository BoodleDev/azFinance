unit uLSconst;

interface
//Types
{ Type
  TLoanFeesSet = set of 1..9;}

//Constants
const
  UpdatePath  = 'UpdateDir';
  // Branch login SQL
  SQLForBranch = 'where BranchID = ';
  // Transaction types
  { Loans - C 1,4,6,11,13,16,23
            D 2,3,5,12,14,15,17,18,19,20,22,24}
  { Deposit - C 7,9
              D 10,11}
  actCA  = '1,2,3,5,6,11,12,15,16,17,18,22';
  actLA  = '1,2,4,11,12,13,14,15,16,17,18,22';
  actDA  = '7,8,9,10';
  actrCA = '4,7,8,9,10,13,14,19,20'; //not in
  actrLA = '3,5,6,7,8,9,10,19,20'; //not in
  //
  acCA  = 0;
  acLA  = 1;
  acDA  = 2;
  //Address Types
  //AdrPost  = 1; //Postal address - uConst
  //AdrPhys  = 2; //Physical address First - uConst
  AdrPrev  = 3; //Previous physical address
  AdrNewH  = 4; //New house address
  AdrSpouse= 5; //Spouse address
  AdrPsnRef= 6; //Person reference address

  lsEmployer = 100001001;
  lsFunder   = 100001002;
  lsBranch   = 100001003;
  lsDebtCol  = 100001004;
  lsAttorney = 100001005;
  lsPayBrnch = 100001006;
  lsLO       = 100001007;
  lsLO2      = 100001010;
  lsLOMan    = 100001008;
  lsStaffMem = 110015001;
  indLoan    = 100104;
  indEntity  = 100132;
  indAction  = 100126;
  // Verify batch transactions messages
  VerifyErrMes : array [0..8] of String = (
    'Error:  Entity does not exist', //0
    'Error:  Loan does not exist',  //1
    'Error:  Loan is not active', //2
    'Error:  Transaction code does not exist', //3
    'Error:  Loan advance exceeds available balance', //4
    'Error:  Amount negative figure', //5
    'Error:  Transaction effective date < Month-end startdate, use Value date', //6
    'Warning:  Transaction effective date < Loan startdate', //7
    'Error:  Invalid transaction type'); //8

  // Loan views // TLoanViews = (InfoView, BalView, AgeView);
  LMInfoView = 0;
  LMBalView  = 1;
  LMAgeView  = 2;

  // Fld List
  fldLoanType  = 'Loan type=LoanType';
  fldLoanCap   = 'Loan capital=LoanCapital';
  fldAmtToFin  = 'Amount to Finance=AmtToFin';
  fldMthIns    = 'Mth. instalment=MthIns';
  fldPayIns    = 'Payable Inst.=PayIns';
  fldLoanPrd   = 'Loan period=LoanPeriod';
  fldAccBal    = 'Acount balance=AccBal';
  fldLoanBal   = 'Loan balance=LoanBal';
  fldAvlBal    = 'Available balance=AvlBal';
  fldDepBal    = 'Deposit balance=DepositBal';
  fldArrAmt    = 'Arrears amount=ArrearsAmt';
  fldNoOfPay   = 'No. of payment=NoOfPay';
  fldExtPrd    = 'Extend period=ExtendPeriod';
  fldArrears   = 'Arrears period=ArrearsNo';
  fldLastDPay  = 'Last date paid=LastDPay';
  fldTotSec    = 'Tot. security amt.=TotSecAmt';
  fldTotIntE   = 'Tot. interest earned=TotIntEarn'; // lsMEsum
  fldLnStatus  = 'Loan status=Status';
  fldActionInd = 'Action Indicator=ActionInd';

  //Loan type - Fees & Expenses
  feePenalty = 0; // Arrears only
  //
  LoanFee1   = 1;
  LoanFee2   = 2;
  LoanFee3   = 3;
  LoanFee4   = 4;
  LoanFee5   = 5;
  LoanFee6   = 6;

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
  
  //
  nsNone    = 0;
  nsRemind  = 1;
  // Note Desc
  cNoteDone   = 'Note done';
  cNoteToDo   = 'Remind me';

  // Loan contract types
  ltactHP     = 0; // HP
  ltactAsset  = 10; // HP
  ltactRevCr  = 20; // RC define all terms
  ltactRevCrT = 30; // RC LT term fix
  ltactRevCrB = 40; // RC balance term=0
  ltactHPWI   = 5; // HP weekly
  ltactHPAWI  = 6; // HP Asset weekly
  ltactHPBI   = 7; // HP Bi-weekly
  ltactHPABI  = 8; // HP Asset Bi-weekly

  // Contract changes
  ctNormal = 0;
  ctNewBld = 1; // change to 0
  ctRate   = 2; // change to 4 - Rate change = 2 after rebuild change to 2 -> 4
  // ctStruc  = 3; // change to 4
  ctDefInt = 4; // change to 0 - Marked for lsScheduler only to run
                // transactions for entries to correct new def. int.
                // Sched change status back to 0
  // Batch status
  bsOpen   = 0;
  bsDecline= 5;
  bsClosed = 10;
  bsAccept = 15;
  bsInProc = 18;
  bsProcess= 20;

  // Loan status
  lnsInActive    =  0;  // In active loan - Grp 0   'I' - 0
  lnsDeclined    = 10;  // Declined loan  -
  lnsCancelled   = 15;
  lnsPreApproved = 18;
  lnsApproved    = 20;  // Active loan    - Grp 1   'A' - 20
  lnsActPay      = 25;  // Active ready to pay out  'P' - 25
  lnsActImex     = 28;
  lnsOpen        = 30;  // Open loan      - Grp 1   'O' - 30
  lnsBadDebt     = 40;  
  lnsSettle      = 50;  // settlement               'S' - 50
  lnsFrozen      = 60;  // Frozen                   'F' - 60
  lnsZero        = 65;  // Freez
  lnsNoDebits    = 68;
  lnsClose       = 70;  // Closed loan    - Grp 2   'C' - 70

  // Loan status description
  lndInActive    = 'Inactive';
  lndDeclined    = 'Declined';
  lndCancelled   = 'Cancelled';
  lndPreApproved = 'Approved subject to';
  lndApproved    = 'Approved';
  lndActPay      = 'Auto Pay';
  lndActImex     = 'Imex Pay';
  lndOpen        = 'Open';
  lndBadDebt     = 'Bad Debt';
  lndSettle      = 'Settled';
  lndFrozen      = 'Frozen';
  lndZero        = 'Zero Interest';
  lndNoDebits    = 'No Debits';
  lndClose       = 'Closed';
  //lndBadDebt  = 'Bad debt';  // same as close
  //Ent Statuses
  stEntCap = 0;
  stEntAmd = 1;
  stEntAct = 2;
{ LS2 report grps
    001 - 199 = All non summary reports
    200 - 299 = Loan summary
    300 - 399 = Arrears reports
    400 - 450 = Loan fees
    500 - 599 = client specific????
    600 - 699 = open
    700 - 799 = Deposit summary
    800 - 899 = Analyst reports
    900 - 999 = open }
  // Loan reports
  rplLoanSummary = '201 - Loan summary=80';
  rplLoanForPrd  = '202 - Loan for period=82';
  rplLoanAge     = '300 - Loan Age=81';
  rplArrControl  = '301 - Arrears control=83';
  rplArrAnalysis = '302 - Arrears amt. analysis per prd=75';
  rplLoanFee     = '400 - Loan fees=84';
  rplLoanFeeAnal = '401 - Loan fee analysis=85';
  rplEmployee    = '500 - Employee Monthly Report=87';
  rplEmpMthly    = '501 - Employee Weekly Report=89';
  rplInsurance   = '502 - Insurance Report=88';
  rplAssetList   = '600 - Asset list Report=91';
  //  rplDepSummary  = '700 - Deposit summary=86';
  rplImpactSum   = '800 - Impact summary report=74';
  rplPortfoliaRisk =  '900 - Portfolio at risk=116';
  rplProvExpenseRatio = '910 - Provision Expense Ratio=120';
  rplWriteOffRatio = '920 - Write-Off Ratio=122';

  //BatchControl Types
  btUser     = 1;
  btSystem   = 2;
  btSuspense = 3;
  btImex     = 4;
  btCAM      = 5;
  btTM       = 6;   

  //Suspense LoanIDs
  susCapture  = -1;
  susProcess  = -2;

  //Integration IDs
  inAPGL = 10; //ACCPAC General Ledger
  inPSCB = 20; //Peresoft Cashbook

implementation

end.
