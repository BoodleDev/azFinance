�
 TDTMLOADLET 0�  TPF0TdtmLoadLet
dtmLoadLetOldCreateOrder	OnDestroyDataModuleDestroyLeft� Top� Height"Width� TADODataSetqryLoadLetters
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextdselect LetKey, AppID, LetDescription, LetterBody, UserID, LetType,DateAdded, DefaultLA
from Letters
Parameters Left8Top  TDataSourcedtsLoadLettersDataSetqryLoadLettersLeft8Top   TADODataSetqryLUApp
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText9select AppID, Application
from GTApps
where Installed=1
Parameters Left� TopX  TDataSourcedtsLUAppDataSetqryLUAppLeft� Toph  TADOCommand	cmdDeleteCommandText.delete from LetterFld 
where LetKey =:LetKey 
ConnectiondtmMain.dbData
ParametersNameLetKey
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left� Top�   TADODataSetqryLetterCodes
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextZSELECT CodeID, AppID, Name, FieldName, Description
FROM LetterCodes
ORDER BY Description
DataSourcedtsLUApp	FieldDefsNameCodeID
Attributes
faReadonlyfaFixed DataType	ftInteger NameAppID
AttributesfaFixed DataType	ftInteger NameNameDataTypeftStringSize Name	FieldNameDataTypeftStringSize NameDescriptionDataTypeftStringSize-  
Parameters 	StoreDefs	Left8TopX  TDataSourcedtsLetterCodesDataSetqryLetterCodesLeft8Toph  TADODataSetqryLetterFields
ConnectiondtmMain.dbData
CursorTypectStaticCommandText(select LetKey, LetCode
from Letterfld

Parameters Left� Top  TDataSourcedtsLetterFieldsDataSetqryLetterFieldsLeft� Top    