unit uConst;

interface
//Types

//Constants
const
  StoreDef = 'azFinance.ini';
  ViewDir  = 'Views\100\';
  AppID    = 100;
  Version  = '2.3.4.19';
  PSNtype = 1;
  CPYtype = 2;
  //
  AdrPost = 1;
  AdrPhys = 2;

  //Filter fields
  {Status ,EntCode ,Dates ,LT , BranchID,EmpID,LOID,FunderID,Link1,Link2,Link3,
   Bal, ArrAmt, ArrNo ,LoanPrd ,NoOfPay ,LoanInd ,EntInd}
  // links
  fflAttorney = 'Attorney=Link2';
  fflBranch   = 'Branch=BranchID';
  fflDebtC    = 'Debt collector=Link1';
  fflEmployer = 'Employer=EmpID';
  fflFunder   = 'Funder=FunderID';
  fflLOfficer = 'Loan officer=LOID';
  fflStaffM   = 'Staff member=Link3';
  // Balance
  fflLoanBal  = 'Loan bal.=LoanBal';
  fflAccount  = 'Account bal.=AccBal';
  fflAvlBal   = 'Available bal.=AvlBal';
  fflDepBal   = 'Deposit bal.=DepBal';
  // Dates
  fflStartD   = 'Start date=StartDate';
  fflFirstI   = 'First inst. date=FirstInsDate';

  RulerAdj = 4/3;
  GutterWid = 6;

implementation

end.

