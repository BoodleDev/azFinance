?
 TDTMLOANMAN 0?0  TPF0TdtmLoanMan
dtmLoanManOldCreateOrderOnCreateDataModuleCreateLeftITop7Height?Width? TADOCommandUpdLoanStatsCommandTextMupdate lsLoanDetail
set Status=:inStatus,UserID=:inUser where LoanID=:inLoan
ConnectiondtmMain.dbData
ParametersNameinStatus
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  NameinUserDataTypeftStringNumericScale? 	Precision? Size
Value  NameinLoan
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftxTop  TADOStoredProcqryLoanView
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyOnCalcFieldsqryLoanViewCalcFieldsProcedureNamelsLoanSumView;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@inBranchId
Attributes
paNullable DataType	ftInteger	Precision
Value  Left Topp TStringFieldqryLoanViewEntCodeDisplayLabelClientDisplayWidth	FieldNameEntCodeSize
  TStringFieldqryLoanViewSurname	FieldNameSurnameReadOnly	Size  TIntegerFieldqryLoanViewLoanIDDisplayLabelLoan ID	FieldNameLoanIDReadOnly	  TStringFieldqryLoanViewLoanTypeDisplayLabel	Loan type	FieldNameLoanType	FixedChar	Size  	TBCDFieldqryLoanViewAmtToFinDisplayLabelAmt. to fin.DisplayWidth	FieldNameAmtToFincurrency		Precision  	TBCDFieldqryLoanViewPayInsDisplayLabelPay ins.DisplayWidth	FieldNamePayInscurrency		Precision
  TSmallintFieldqryLoanViewLoanPeriodDisplayLabelPeriod	FieldName
LoanPeriod  	TBCDFieldqryLoanViewIntRateDisplayLabelRateDisplayWidth
	FieldNameIntRate	PrecisionSize  	TBCDFieldqryLoanViewTotInterestDisplayLabel	Tot. int.DisplayWidth	FieldNameTotInterestcurrency		Precision  	TBCDFieldqryLoanViewAccBalDisplayLabelClient acc balDisplayWidth	FieldNameAccBalcurrency		Precision  	TBCDFieldqryLoanViewLoanBalDisplayLabelLoan acc balDisplayWidth	FieldNameLoanBalcurrency		Precision  	TBCDFieldqryLoanViewAvlBalDisplayLabelAvailable bal.DisplayWidth	FieldNameAvlBalcurrency		Precision  	TBCDFieldqryLoanViewDepositBalDisplayLabelDeposit bal.DisplayWidth	FieldName
DepositBalcurrency		Precision  TSmallintFieldqryLoanViewStatus	FieldNameStatus  	TBCDFieldqryLoanViewArrearsBucketDisplayLabelArrears int.DisplayWidth	FieldNameArrearsBucketcurrency		Precision
  	TBCDFieldqryLoanViewArrearsAmtDisplayLabelArrears amt.DisplayWidth	FieldName
ArrearsAmtcurrency		Precision
  TSmallintFieldqryLoanViewNoOfPayDisplayLabel
No of pay.	FieldNameNoOfPay  TSmallintFieldqryLoanViewExtendPrdDisplayLabelExtend prd.	FieldName	ExtendPrd  TCurrencyFieldqryLoanViewTotCashAvlDisplayLabelTot. cash avlDisplayWidth	FieldKindfkCalculated	FieldName
TotCashAvl
Calculated	  TSmallintFieldqryLoanViewArrearsNo	FieldName	ArrearsNo  TDateTimeFieldqryLoanViewLastDPayDisplayWidth	FieldNameLastDPay  TStringFieldqryLoanViewStatusName	FieldKindfkCalculated	FieldName
StatusNameSize
Calculated	   TADOStoredProcspcLoanStatus
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyProcedureNamelsGetLoansSetStatus;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@inBranchId
Attributes
paNullable DataType	ftInteger	Precision
Value   Left Top TIntegerFieldspcLoanStatusLoanID	FieldNameLoanIDReadOnly	  TIntegerFieldspcLoanStatusEntityID	FieldNameEntityID  TStringFieldspcLoanStatusEntCodeDisplayLabelCodeDisplayWidth	FieldNameEntCodeSize
  TIntegerFieldspcLoanStatusLoanKeyDisplayLabelLCDisplayWidth	FieldNameLoanKey  TStringFieldspcLoanStatusSurnameDisplayWidth	FieldNameSurnameSize#  TStringFieldspcLoanStatusName	FieldNameName	FixedChar	Size  TStringFieldspcLoanStatusRegNoDisplayLabelID no	FieldNameRegNoSize  TSmallintFieldspcLoanStatusStatusDisplayWidth
	FieldNameStatus  	TBCDFieldspcLoanStatusAmtToFinDisplayWidth	FieldNameAmtToFincurrency		Precision  	TBCDFieldspcLoanStatusPayInsDisplayWidth	FieldNamePayInscurrency		Precision
  TStringFieldspcLoanStatusLoanTypeDisplayLabelLT	FieldNameLoanType	FixedChar	Size  TDateTimeFieldspcLoanStatusStartDate	FieldName	StartDate  TDateTimeFieldspcLoanStatusDateChanged	FieldNameDateChanged  	TBCDFieldspcLoanStatusAccBalDisplayWidth
	FieldNameAccBalcurrency		Precision   TADODataSetqryChkSettle
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText7select LoanID from lsBatchTrans
where LoanID = :LoanID
DataSourcedtsLoanStatusMasterFieldsLoanID
ParametersNameLoanID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left? Top  TADOCommandadoEmptyArrearsCommandText`update lsLoanDetail
set  ArrearsNo = 0, ArrearsAmt = 0, AmountDue = 0
where LoanID = :inLoanID
ConnectiondtmMain.dbData
ParametersNameinLoanID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left Top  TDataSourcedtsLoanViewDataSetqryLoanViewLeft Top?   TDataSourcedtsLoanStatusDataSetspcLoanStatusLeft Top,  TADODataSetqryMETotals
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnly	AfterOpenqryCurrentAfterOpenCommandTextO  select MEID, LoanID, EntityID, LoanCapital, AmtToFin, MthIns, PayIns,   TotInterest, CashDep, TotSecAmt, AccBal, LoanBal, DepositBal,   ArrearsAmt, AmountDue, TotCRRec, TotAddDC, TotIntEarn, TotDepInt, Days30, Days60, Days90, Days120, More150
from lsMESumTotals 
where MEID in (select MonthNo-2
from lsMonthEnd where CurrentMonth=1)
Parameters LeftxTopp TIntegerFieldqryMETotalsMEID	FieldNameMEID  TIntegerFieldqryMETotalsLoanID	FieldNameLoanID  TIntegerFieldqryMETotalsEntityID	FieldNameEntityID  	TBCDFieldqryMETotalsLoanCapital	FieldNameLoanCapital	Precision  	TBCDFieldqryMETotalsAmtToFin	FieldNameAmtToFin	Precision  	TBCDFieldqryMETotalsMthIns	FieldNameMthIns	Precision  	TBCDFieldqryMETotalsPayIns	FieldNamePayIns	Precision  	TBCDFieldqryMETotalsTotInterest	FieldNameTotInterest	Precision  	TBCDFieldqryMETotalsCashDep	FieldNameCashDep	Precision  	TBCDFieldqryMETotalsTotSecAmt	FieldName	TotSecAmt	Precision  	TBCDFieldqryMETotalsAccBal	FieldNameAccBal	Precision  	TBCDFieldqryMETotalsLoanBal	FieldNameLoanBal	Precision  	TBCDFieldqryMETotalsDepositBal	FieldName
DepositBal	Precision  	TBCDFieldqryMETotalsArrearsAmt	FieldName
ArrearsAmt	Precision  	TBCDFieldqryMETotalsAmountDue	FieldName	AmountDue	Precision  	TBCDFieldqryMETotalsTotCRRec	FieldNameTotCRRec	Precision  	TBCDFieldqryMETotalsTotAddDC	FieldNameTotAddDC	Precision  	TBCDFieldqryMETotalsTotIntEarn	FieldName
TotIntEarn	Precision  	TBCDFieldqryMETotalsTotDepInt	FieldName	TotDepInt	Precision  	TBCDFieldqryMETotalsDays30	FieldNameDays30	Precision  	TBCDFieldqryMETotalsDays60	FieldNameDays60	Precision  	TBCDFieldqryMETotalsDays90	FieldNameDays90	Precision  	TBCDFieldqryMETotalsDays120	FieldNameDays120	Precision  	TBCDFieldqryMETotalsMore150	FieldNameMore150	Precision   TADODataSet
qryCurrent
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnly	AfterOpenqryCurrentAfterOpenCommandText|  select Count(LoanID) As LoanID, COUNT(DISTINCT(EntityID)) As EntityID, 
SUM(LoanCapital) As LoanCapital, SUM(AmtToFin) As AmtToFin, 
SUM(MthIns) As MthIns, SUM(PayIns) As PayIns, SUM(TotInterest) As TotInterest, SUM(CashDep) As CashDep, SUM(TotSecAmt) As TotSecAmt, SUM(AccBal) As AccBal, SUM(LoanBal) As LoanBal, SUM(DepositBal) As DepositBal, SUM(ArrearsAmt) As ArrearsAmt, SUM(AmountDue) As AmountDue, SUM(TotCRRec) As TotCRRec, SUM(TotAddDC) As TotAddDC, SUM(TotIntEarn) As TotIntEarn, SUM(TotDepInt) As TotDepInt , '0' as Days30, '0' as Days60, '0' as Days90, '0' as Days120, '0' as More150
from lsLoanDetail
where Status <> 40
Parameters LeftxTop?  TIntegerFieldqryCurrentLoanID	FieldNameLoanID  TIntegerFieldqryCurrentEntityID	FieldNameEntityID  	TBCDFieldqryCurrentLoanCapital	FieldNameLoanCapital	Precision  	TBCDFieldqryCurrentAmtToFin	FieldNameAmtToFin	Precision  	TBCDFieldqryCurrentMthIns	FieldNameMthIns	Precision  	TBCDFieldqryCurrentPayIns	FieldNamePayIns	Precision  	TBCDFieldqryCurrentTotInterest	FieldNameTotInterest	Precision  	TBCDFieldqryCurrentCashDep	FieldNameCashDep	Precision  	TBCDFieldqryCurrentTotSecAmt	FieldName	TotSecAmt	Precision  	TBCDFieldqryCurrentAccBal	FieldNameAccBal	Precision  	TBCDFieldqryCurrentLoanBal	FieldNameLoanBal	Precision  	TBCDFieldqryCurrentDepositBal	FieldName
DepositBal	Precision  	TBCDFieldqryCurrentArrearsAmt	FieldName
ArrearsAmt	Precision  	TBCDFieldqryCurrentAmountDue	FieldName	AmountDue	Precision  	TBCDFieldqryCurrentTotCRRec	FieldNameTotCRRec	Precision  	TBCDFieldqryCurrentTotAddDC	FieldNameTotAddDC	Precision  	TBCDFieldqryCurrentTotIntEarn	FieldName
TotIntEarn	Precision  	TBCDFieldqryCurrentTotDepInt	FieldName	TotDepInt	Precision  TStringFieldqryCurrentDays30	FieldNameDays30ReadOnly	Size  TStringFieldqryCurrentDays60	FieldNameDays60ReadOnly	Size  TStringFieldqryCurrentDays90	FieldNameDays90ReadOnly	Size  TStringFieldqryCurrentDays120	FieldNameDays120ReadOnly	Size  TStringFieldqryCurrentMore150	FieldNameMore150ReadOnly	Size   TADODataSet	qryLMonth
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnly	AfterOpenqryCurrentAfterOpenCommandTextN  select MEID, LoanID, EntityID, LoanCapital, AmtToFin, MthIns, PayIns,   TotInterest, CashDep, TotSecAmt, AccBal, LoanBal, DepositBal,   ArrearsAmt, AmountDue, TotCRRec, TotAddDC, TotIntEarn, TotDepInt,
Days30, Days60, Days90, Days120, More150
from lsMESumTotals
where MEID in (select MonthNo-3 from lsMonthEnd where CurrentMonth=1)
Parameters Left? Topp  TClientDataSetcdsLoanBook
Aggregates Params Left Topp TStringFieldcdsLoanBookFldName	FieldNameFldNameVisible  TStringFieldcdsLoanBookDescriptionDisplayLabel DisplayWidth	FieldNameDescriptionSize  TStringFieldcdsLoanBookCurrent	FieldNameCurrentSize  TStringFieldcdsLoanBookMETotals	FieldNameMETotalsSize  TStringFieldcdsLoanBookCurrMonth	FieldName	CurrMonthSize  TStringFieldcdsLoanBookPrevMonth	FieldName	PrevMonthSize   TDataSourcedtsLoanbookDataSetcdsLoanBookLeft Top?   TADODataSet	qryCMonth
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnly	AfterOpenqryCurrentAfterOpenCommandTextN  select MEID, LoanID, EntityID, LoanCapital, AmtToFin, MthIns, PayIns,   TotInterest, CashDep, TotSecAmt, AccBal, LoanBal, DepositBal,   ArrearsAmt, AmountDue, TotCRRec, TotAddDC, TotIntEarn, TotDepInt,
Days30, Days60, Days90, Days120, More150
from lsMESumTotals
where MEID in (select MonthNo-1 from lsMonthEnd where CurrentMonth=1)
Parameters Left? Top?   TADODataSetqryActionInd
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextDselect Description, TypeKey
from CodeTable
where GroupKey = 100126
Parameters LeftPTop?   TClientDataSetcdsToUpd
Aggregates Params Left(Top TIntegerFieldcdsToUpdLoanID	FieldNameLoanID  TStringFieldcdsToUpdRefNo	FieldNameRefNoSize  TStringFieldcdsToUpdEntCode	FieldNameEntCodeSize
  TIntegerFieldcdsToUpdStatus	FieldNameStatus  TBooleanFieldcdsToUpdExists	FieldNameExistsVisible   TDataSourcedtsToUpdDataSetcdsToUpdLeft(Top(  TADODataSet	qryLoanLU
ConnectiondtmMain.dbDataCommandTextnselect Cast(LoanID as varchar(10)) as IDVal,
 EntityID,EntCode,LoanType,RegNo,RefNo,Status
from lsLoanDetail
Parameters LeftxTop TStringFieldqryLoanLUIDVal	FieldNameIDValReadOnly	Size
  TIntegerFieldqryLoanLUEntityID	FieldNameEntityID  TStringFieldqryLoanLUEntCode	FieldNameEntCodeSize
  TStringFieldqryLoanLULoanType	FieldNameLoanTypeSize  TStringFieldqryLoanLURegNo	FieldNameRegNoSize  TStringFieldqryLoanLURefNo	FieldNameRefNoSize  TSmallintFieldqryLoanLUStatus	FieldNameStatusVisible   TADODataSet
qryLoanSts
ConnectiondtmMain.dbData
CursorTypectStaticCommandText@select LoanID, Status
from lsLoanDetail
where LoanID = :LoanID
DataSourcedtsToUpdMasterFieldsLoanID
ParametersNameLoanID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left? Top   