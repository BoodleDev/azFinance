�
 TDTMENTCHECK 0~  TPF0TdtmEntCheckdtmEntCheckOldCreateOrder	OnDestroyDataModuleDestroyLeft�Top-HeightWidth� 	TADOQueryqryToUse
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters Left Topp  TADODataSet	qrySearch
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextPselect EntityID,EntCode,RegNo,"Name",Name2,TelNo1,TelNo2,TelNo3
from EntityData
Parameters Left Top TIntegerFieldqrySearchEntityID	FieldNameEntityIDVisible  TStringFieldqrySearchRegNoDisplayLabelID no / Reg noDisplayWidth	FieldNameRegNoSize  TStringFieldqrySearchNameDisplayWidth	FieldNameNameSize#  TStringFieldqrySearchName2DisplayLabelSurnameDisplayWidth	FieldNameName2Size#  TStringFieldqrySearchTelNo1DisplayLabelTel. no. homeDisplayWidth	FieldNameTelNo1Size  TStringFieldqrySearchTelNo3DisplayLabel	Mobile noDisplayWidth	FieldNameTelNo3Size  TStringFieldqrySearchTelNo2DisplayLabelTel. no. office	FieldNameTelNo2VisibleSize  TStringFieldqrySearchEntCodeDisplayLabelCode	FieldNameEntCodeSize
   TDataSource	dtsSearchDataSet	qrySearchLeft Top(  TADODataSetqryDupRegNo
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextQSELECT EntCode
FROM EntityData
WHERE RegNo = :prRegNo
AND EntType = :prEntType
ParametersNameprRegNo
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue  Name	prEntType
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   LeftxTop   TADOCommandcmdUpdateRegNoCommandTextEUPDATE EntityData
SET RegNo = :prRegNo
WHERE EntityID = :prEntityID
ConnectiondtmMain.dbData
ParametersNameprRegNo
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue  Name
prEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftxTopp   