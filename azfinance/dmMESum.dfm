?
 TDTMMESUM 0?  TPF0	TdtmMESumdtmMESumOldCreateOrderOnCreateDataModuleCreate	OnDestroyDataModuleDestroyLeft? TopvHeight?Width
 TADODataSetqryMEReports
ConnectiondtmMain.dbDataCommandText{select RepID, RepName, RepFld1, RepFld2, RepFld3, RepFld4, 
  RepFld5, RepFld6, RepFld7, RepFld8, RepFld9
from lsMESumRep
Parameters Left? Top  TADODataSet
qryMonthNo
ConnectiondtmMain.dbDataLockType
ltReadOnlyCommandText?select MonthNo, MonthEndDate
from lsMonthEnd
where MonthNo between (select Min(MEid) from lsMESum) and
  (select MonthNo-1 from lsMonthEnd where CurrentMonth=1)
Parameters Left? TopH  TClientDataSetcdsMESum
Aggregates Params ProviderNamedspMESumReadOnly	Left(Top?  TIntegerFieldcdsMESumLoanID	FieldNameLoanIDVisible  TStringFieldcdsMESumEntCodeDisplayLabelCodeDisplayWidth	FieldNameEntCodeSize
  TIntegerFieldcdsMESumEntityID	FieldNameEntityIDVisible  TStringFieldcdsMESumNameDisplayWidth	FieldNameNameSize#  TStringFieldcdsMESumSurnameDisplayWidth	FieldNameSurnameSize#  TStringFieldcdsMESumLoanTypeDisplayLabelLT	FieldNameLoanTypeSize  TStringFieldcdsMESumRegNoDisplayLabelID no.	FieldNameRegNoSize  TStringFieldcdsMESumRefFld1DisplayLabel	Salary no	FieldNameRefFld1Size  TIntegerFieldcdsMESumLoanKeyDisplayLabelLCDisplayWidth	FieldNameLoanKey  TSmallintFieldcdsMESumLTaccT	FieldNameLTaccTVisible  TSmallintFieldcdsMESumLoanPeriodDisplayLabelLoan prdDisplayWidth	FieldName
LoanPeriod  	TBCDFieldcdsMESumLoanCapitalDisplayLabelLoan capitalDisplayWidth
	FieldNameLoanCapitalcurrency		Precision  	TBCDFieldcdsMESumAmtToFinDisplayLabelAmt. financedDisplayWidth
	FieldNameAmtToFincurrency		Precision  	TBCDFieldcdsMESumResidualAmtDisplayLabelResidual amt.DisplayWidth
	FieldNameResidualAmtcurrency		Precision  	TBCDFieldcdsMESumMthInsDisplayLabel
InstalmentDisplayWidth
	FieldNameMthInscurrency		Precision
  	TBCDFieldcdsMESumPayInsDisplayLabel
Pay. inst.DisplayWidth
	FieldNamePayInscurrency		Precision
  	TBCDFieldcdsMESumIntRateDisplayLabel	Int. rate	FieldNameIntRate	PrecisionSize  	TBCDFieldcdsMESumTotInterestDisplayLabelTot. interestDisplayWidth
	FieldNameTotInterestcurrency		Precision  	TBCDFieldcdsMESumTotSecAmtDisplayWidth
	FieldName	TotSecAmtcurrency		Precision  	TBCDFieldcdsMESumCashDepDisplayLabelCash depDisplayWidth
	FieldNameCashDepcurrency		Precision  TStringFieldcdsMESumInstPaidDisplayLabel
Inst. paidDisplayWidth	FieldNameInstPaid	FixedChar	Size  TDateTimeFieldcdsMESumStartDateDisplayLabel
Start dateDisplayWidth	FieldName	StartDate  TDateTimeFieldcdsMESumFirstInsDateDisplayLabel
First dateDisplayWidth	FieldNameFirstInsDate  TDateTimeFieldcdsMESumEndDateDisplayLabelEnd dateDisplayWidth	FieldNameEndDate  	TBCDFieldcdsMESumAccBalDisplayLabelAcc. balDisplayWidth
	FieldNameAccBalcurrency		Precision  	TBCDFieldcdsMESumLoanBalDisplayLabel	Loan. balDisplayWidth
	FieldNameLoanBalcurrency		Precision  	TBCDFieldcdsMESumDepositBalDisplayLabelDeposit balDisplayWidth
	FieldName
DepositBalcurrency		Precision  TIntegerFieldcdsMESumStatus	FieldNameStatus  TIntegerFieldcdsMESumLoanTypeInd	FieldNameLoanTypeIndVisible  TStringFieldcdsMESumUserID	FieldNameUserID	FixedChar	Size
  TDateTimeFieldcdsMESumDateChangedDisplayLabelDate changedDisplayWidth	FieldNameDateChanged  	TBCDFieldcdsMESumArrearsAmtDisplayLabelArrears amt.DisplayWidth
	FieldName
ArrearsAmtcurrency		Precision
  TSmallintFieldcdsMESumArrearsNoDisplayLabelArrears prd.	FieldName	ArrearsNo  	TBCDFieldcdsMESumAmountDueDisplayLabelAmt. dueDisplayWidth
	FieldName	AmountDuecurrency		Precision  TSmallintFieldcdsMESumNoOfPayDisplayLabel	No of pay	FieldNameNoOfPay  TDateTimeFieldcdsMESumLastDPayDisplayWidth	FieldNameLastDPay  	TBCDFieldcdsMESumLastAmtPayDisplayLabelLast. amt. payDisplayWidth
	FieldName
LastAmtPaycurrency		Precision
  TSmallintFieldcdsMESumExtendPrdDisplayLabel
Extend prdDisplayWidth	FieldName	ExtendPrd  	TBCDFieldcdsMESumFeeToInsTotDisplayLabelFee ins. tot.DisplayWidth
	FieldNameFeeToInsTotcurrency		Precision
  TStringFieldcdsMESumRegNo_1DisplayLabel	Loan reg.	FieldNameRegNo_1Size  TStringFieldcdsMESumRefNoDisplayLabel	Loan ref.	FieldNameRefNoSize  	TBCDFieldcdsMESumDays30DisplayWidth
	FieldNameDays30currency		Precision
  	TBCDFieldcdsMESumDays60DisplayWidth
	FieldNameDays60currency		Precision
  	TBCDFieldcdsMESumDays90DisplayWidth
	FieldNameDays90currency		Precision
  	TBCDFieldcdsMESumDays120DisplayWidth
	FieldNameDays120currency		Precision
  	TBCDFieldcdsMESumMore150DisplayLabelMore120DisplayWidth
	FieldNameMore150currency		Precision
  TSmallintFieldcdsMESumLastMPay	FieldNameLastMPayVisible  	TBCDFieldcdsMESumTotCRRecDisplayLabelTot. CR recDisplayWidth
	FieldNameTotCRReccurrency		Precision  	TBCDFieldcdsMESumTotAddDCDisplayLabelTot. add DCDisplayWidth
	FieldNameTotAddDCcurrency		Precision  	TBCDFieldcdsMESumTotIntEarnDisplayLabelTot. int. earnDisplayWidth
	FieldName
TotIntEarncurrency		Precision  	TBCDFieldcdsMESumTotDepIntDisplayLabelTot. dep. intDisplayWidth
	FieldName	TotDepIntcurrency		Precision  TStringFieldcdsMESumEmpKeyDisplayLabel	Emp. code	FieldNameEmpKeySize
  TStringFieldcdsMESumEmpNameDisplayLabel	Emp. nameDisplayWidth	FieldNameEmpNameSize#  TStringFieldcdsMESumBranchKeyDisplayLabelBranch code	FieldName	BranchKeySize
  TStringFieldcdsMESumBranchNameDisplayLabelBranch nameDisplayWidth	FieldName
BranchNameSize#  TIntegerFieldcdsMESumLOID	FieldNameLOIDVisible  TIntegerFieldcdsMESumFunderID	FieldNameFunderIDVisible   TDataSetProviderdspMESumDataSetspcMESumConstraints	Left(TopH  TDataSourcedtsMESumDataSetcdsMESumLeft(Top?   TADOStoredProcspcMESum
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyProcedureNamelsRepMESum;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@MEID
Attributes
paNullable DataType	ftInteger	Precision
Value   Left(Top   