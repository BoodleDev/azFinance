?
 TDTMLS2GL 0e  TPF0	TdtmLS2GLdtmLS2GLOldCreateOrder	OnCreateDataModuleCreateLeftFTop/Height?Widthc TClientDataSetcdsGLReport
Aggregates Params ProviderNamedspGLReportLeft0Top?   TDataSetProviderdspGLReportDataSet	qryGLTDetLeft0Top?   	TADOQuery	qryGLTDet
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters Left0TopX  TDataSetProviderdspTransDetDataSetqryGetTransDetLeft8Top?   TClientDataSetcdsTransDet
Aggregates Params ProviderNamedspTransDetReadOnly	Left8Top?  TIntegerFieldcdsTransDetTransNo	FieldNameTransNoReadOnly	  TStringFieldcdsTransDetBatchNo	FieldNameBatchNo	FixedChar	Size
  TStringFieldcdsTransDetEntCode	FieldNameEntCodeSize
  TIntegerFieldcdsTransDetTransCode	FieldName	TransCode  TDateTimeFieldcdsTransDetPostDateDisplayWidth	FieldNamePostDate  TDateTimeFieldcdsTransDetEffectDateDisplayWidth	FieldName
EffectDate  	TBCDFieldcdsTransDetAmountDisplayWidth	FieldNameAmountcurrency		Precision  TStringFieldcdsTransDetRefNo	FieldNameRefNoSize
  TStringFieldcdsTransDetRefNo2	FieldNameRefNo2Size  TStringFieldcdsTransDetUserID	FieldNameUserID	FixedChar	Size
  TIntegerFieldcdsTransDetLoanID	FieldNameLoanID  TStringFieldcdsTransDetAccountNo	FieldName	AccountNo   	TADOQueryqryGetTransDet
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters SQL.StringsSELECT T	BH.TransNo, BH.BatchNo, BH.EntCode, BH.LoanID, LD.RefNo AS AccountNo, BH.TransCode,I    BH.EffectDate, BH.PostDate, BH.Amount, BH.RefNo, BH.RefNo2, BH.UserIDFROM lsBatchHistory BH2LEFT JOIN lsLoanDetail LD ON BH.LoanID = LD.LoanID Left8TopX TIntegerFieldqryGetTransDetTransNo	FieldNameTransNoReadOnly	  TStringFieldqryGetTransDetBatchNo	FieldNameBatchNo	FixedChar	Size
  TStringFieldqryGetTransDetEntCode	FieldNameEntCodeSize
  TIntegerFieldqryGetTransDetTransCode	FieldName	TransCode  TDateTimeFieldqryGetTransDetEffectDate	FieldName
EffectDate  TDateTimeFieldqryGetTransDetPostDate	FieldNamePostDate  	TBCDFieldqryGetTransDetAmount	FieldNameAmountcurrency		Precision  TStringFieldqryGetTransDetRefNo	FieldNameRefNoSize
  TStringFieldqryGetTransDetRefNo2	FieldNameRefNo2Size  TStringFieldqryGetTransDetUserID	FieldNameUserID	FixedChar	Size
  TIntegerFieldqryGetTransDetLoanID	FieldNameLoanID  TStringFieldqryGetTransDetAccountNo	FieldName	AccountNoSize   	TADOQuery
qrySumTots
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters SQL.Strings5select count(TransNo) as recCnt,sum(Amount) as TotSumfrom lsBatchHistory Left8Top  TIntegerFieldqrySumTotsrecCnt	FieldNamerecCnt  	TBCDFieldqrySumTotsTotSum	FieldNameTotSumcurrency		Precision   TDataSource
dtsSumTotsDataSet
qrySumTotsLeft8Top  TExportDataExportData1ShowMessageComplete	RunExportDoExportLineVisibleFldOnlyLeft? Top?   	TADOQueryqryToUse
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters Left? Top  	TADOQueryqryTransGrp
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters SQL.Strings;select TSP.TransCode, sum(BH.Amount) as Amount,TSP.GLAccNo,  TSP.DC, TSP.DescriptionOfrom lsBatchHistory BH left join TransSetup TSP on BH.TransCode = TSP.TransCode#where BH.TransNo between 1 and 10009group by TSP.TransCode,TSP.GLAccNo,TSP.DC,TSP.Description Left8Top TIntegerFieldqryTransGrpTransCode	FieldName	TransCode  	TBCDFieldqryTransGrpAmount	FieldNameAmountcurrency		Precision  TIntegerFieldqryTransGrpGLAccNo	FieldNameGLAccNo  TStringFieldqryTransGrpDC	FieldNameDC	FixedChar	Size  TStringFieldqryTransGrpDescription	FieldNameDescriptionSize   TDataSourcedtsTransGrpDataSetqryTransGrpLeft8Top   TADODataSet	qryGLTsum
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextvselect RecordID, RunDate, EffectDate, BHFrom, BHTo, GLRef, ToGlAcc, TotAccBal, TotDepBal, TotLoanBal from lsGLTransSum
Parameters Left0Top TAutoIncFieldqryGLTsumRecordID	FieldNameRecordIDReadOnly	  TDateTimeFieldqryGLTsumRunDate	FieldNameRunDate  TDateTimeFieldqryGLTsumEffectDate	FieldName
EffectDate  TIntegerFieldqryGLTsumBHFrom	FieldNameBHFrom  TIntegerFieldqryGLTsumBHTo	FieldNameBHTo  TStringFieldqryGLTsumGLRef	FieldNameGLRefSize  TBooleanFieldqryGLTsumToGlAcc	FieldNameToGlAcc  	TBCDFieldqryGLTsumTotAccBal	FieldName	TotAccBalcurrency		Precision  	TBCDFieldqryGLTsumTotDepBal	FieldName	TotDepBalcurrency		Precision  	TBCDFieldqryGLTsumTotLoanBal	FieldName
TotLoanBalcurrency		Precision   TDataSource	dtsGLTsumDataSet	qryGLTsumLeft0Top   TDataSourcedtsTransDetDataSetcdsTransDetLeft8Top?    