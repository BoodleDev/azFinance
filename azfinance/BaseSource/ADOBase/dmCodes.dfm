�
 TDTMCODES 0L  TPF0	TdtmCodesdtmCodesTagOldCreateOrderOnCreateDataModuleCreateLeft}Top� HeightiWidth  TADODataSetqryBank
ConnectiondtmMain.dbData
CursorTypectStaticMarshalOptionsmoMarshalModifiedOnly	AfterPostqryBankAfterPostCommandText;SELECT RecID, BranchCode, BankName, BranchName
FROM Lubank
Parameters Left Top  TADODataSet
qryAddress
ConnectiondtmMain.dbData
CursorTypectStaticMarshalOptionsmoMarshalModifiedOnlyCommandText=SELECT RecId, SuburbName, TownName, PostCode
FROM Lupostcode
Parameters LeftpTop  TADODataSet	qryBankLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText8SELECT Distinct BankName
FROM Lubank
ORDER BY BankName
Parameters Left TopX TStringFieldqryBankLUBankNameDisplayLabel	Bank nameDisplayWidth2	FieldNameBankName   TADODataSetqryAddressLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText>SELECT distinct TownName
FROM Lupostcode
ORDER BY TownName

Parameters LeftpTopX TStringFieldqryAddressLUTownNameDisplayLabel	Town nameDisplayWidth2	FieldNameTownName   TDataSourcedtsBankDataSetqryBankLeft Top   TDataSource
dtsAddressDataSet
qryAddressLeftpTop   TDataSource	dtsBankLUDataSet	qryBankLULeft Toph  TDataSourcedtsAddressLUDataSetqryAddressLULeftpToph   