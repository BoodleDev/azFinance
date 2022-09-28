unit uFldSumConst;

interface

//Constants
const
  // MES.LoanID,MES.EntityID,
//  LTaccT,TotSecAmt,InstPaid,EndDate,LoanTypeInd,LOID,FunderID,
//  UserID,DateChanged,RegNo,RefNo

  // # not in Loans MESum
  fldLoanID   = 'Loan ID=LoanID';
  fldEntryID  = 'Record ID=RecordID';
  fldPsnKey   = 'Acc. code=EntCode';
  fldSurname  = 'Surname=Surname';
  fldName     = 'Name=Name';
  fldIdNo     = 'ID number=RegNo';
  fldSalNo    = 'Salary no=RefFld1';
  fldOccID    = 'OccupationID=Occupation'; // #
  fldOccDesc  = 'Occupation=OccupDesc';    // #
  fldEmplID   = 'EmploymentID=Employment'; // #
  fldEmplDesc = 'Employment=EmployDesc';   // #
//  fldLoanKey  = 'Loan code=LoanKey';
  fldLoanType = 'Loan type=LoanType';
  fldLoanUsID = 'Loan use ID=LoanUse';     // #
  fldLoanUse  = 'Loan usage=LoanUseDesc';  // #
  fldLoanSts  = 'Loan status=Status';
  fldAmtToFin = 'Amount financed=AmtToFin';
  fldResAmt   = 'Residual amount=ResidualAmt';
  fldPayInst  = 'Payable instalment=PayIns';
  fldLoanPrd  = 'Loan period=LoanPeriod';
  fldLoanCap  = 'Loan amount=LoanCapital';
  fldMthIns   = 'Instalment=MthIns';
  fldIntRate  = 'Interest rate=IntRate';
  fldTotInt   = 'Total interest=TotInterest';
  fldCashDep  = 'Cash deposit=CashDep';
  fldStartD   = 'Start date=StartDate';
  fldInsDate  = 'Instalment date=FirstInsDate';
  fldAccBal   = 'Account balance=AccBal';
  fldLoanBal  = 'Capital balance=LoanBal';
  // fldAvlBal   = 'Available balance=AvlBal';  deleted
  fldDepBal   = 'Deposit balance=DepositBal';
  fldArrAmt   = 'Arrears amount=ArrearsAmt';
  fldArrNo    = 'Arrears period=ArrearsNo';
  // fldArrDate  = 'Arrears upd date=ArrearsDate'; deleted
  fldAmtDue   = 'Amount due=AmountDue';
  fldNoOfPay  = 'No. of. pay.=NoOfPay';
  fldLastDPay = 'Last date paid=LastDPay';
  fldLastAmtP = 'Last amt. paid=LastAmtPay';
  fldExtPrd   = 'Moratorium=ExtendPrd';
  fldTotCRRec = 'Total CR received=TotCRRec';
  fldTotDRCR  = 'Total Add. DR/CR=TotAddDC';
  fldTotIntErn = 'Total interst earned=TotIntEarn';
  fldTotDepInt = 'Total deposit interest=TotDepInt';
  fldEmpKey    = 'Emp code=EmpKey';
  fldEmpName   = 'Emp. name=EmpName';
  fldBranchKey = 'Branch code=BranchKey';
  fldBranchName = 'Branch name=BranchName';
  fldFeeToInsTot = 'Fee to ins. total =FeeToInsTot';
  fldDays30    = '30 days=Days30';
  fldDays60    = '60 days=Days60';
  fldDays90    = '90 days=Days90';
  fldDays120   = '120 days=Days120';
  fldMore150   = 'More than 150 days=More150';
  fldLastMPay  = 'Last month payed=LastMpay';
  //
  fldSpace     = 'A space = space';
  fldRecCount  = 'No of loans = NoLoans';

implementation

end.
