?
 TDTMENTITYLOAN 0   TPF0?TdtmEntityLoandtmEntityLoanOldCreateOrder	Left? Top? Height?Width? ?TADODataSet	qryEntity
CursorTypectStaticMarshalOptionsmoMarshalAllCommandText4  select EntityID, EntType, EntCode, Status, DefAdr, DocAdr, DelAdr,
  Category, SendSMS,SendEmail,
  RegNo, RefFld1, RefFld2, Title, Name, Name2, Name + ' ' + Name2 FullName,TelNo1, TelNo2, TelNo3, 
  FaxNo, UserID, DateChange, UserAdd, DateAdded, Email, WebSite
from Entitydata
where EntityID = :EntID
  TADODataSetqryERLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText?select TypeKey as IdVal, Description, GroupKey
from CodeTable
where GroupKey between 110001 and 1100026
and NotUse = 0
order by Description
Parameters Left Top` TAutoIncFieldqryERLUIdVal	FieldNameIdValReadOnly	Visible  TStringFieldqryERLUDescription	FieldNameDescriptionSize2  TIntegerFieldqryERLUGroupKey	FieldNameGroupKeyVisible   TDataSourcedtsERLUDataSetqryERLULeft Topp  TADODataSet	qryERLink
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnly
BeforeOpenqryERLinkBeforeOpenAfterInsertqryEntCpyAddAfterInsertCommandText?  select ERL.EntityID, ERL.LinkID, ERL.Relation, ERL.DateAdded,
  ERL.UserId, ENT.EntCode, ENT.Name2, ENT.Name, ENT.TelNo1,
  ENT.TelNo3, CTL.Description
from Entrelation ERL 
  left join EntityData ENT on ERL.LinkID=ENT.EntityID
  left join CodeTable CTL on CTL.TypeKey=ERL.Relation
where ERL.EntityID= :EntityID and ERL.LinkID<>0
 and GroupKey in (110001,110006,110025,110026)
-- and ERL.Relation between 110001001 and 110001999
order by ENT.Name2
DataSource	dtsEntity
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left? Top`  TDataSource	dtsERLinkDataSet	qryERLinkLeft? Topp  TADODataSetqryEntPsnAdd
ConnectiondtmMain.dbData
CursorTypectStaticAfterInsertqryEntCpyAddAfterInsertOnCalcFieldsqryEntPsnAddCalcFieldsCommandText?  select EntityID, EmpID, BranchID, EntInd, EntInd2, Gender, MthGross, DOB, MaritalStatus, NoDepend, Occupation, Employment, Link1, Link2, Link3, Nationality, EmpDate, RetireDate, PayDay, PayFreq, PayPoint, Superior, SpsMthGross, SpsEmployer, OwnRent, LandLord, LandLordTel, PFundDate, PFundNo, WPEDate, NLRRefNo, NetSal, MinHomeAmt,
Department
from lsEntPsnAdd
where EntityID=:EntityID
DataSource	dtsEntity
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left`Top` TIntegerFieldqryEntPsnAddEntityID	FieldNameEntityID  TIntegerFieldqryEntPsnAddEmpID	FieldNameEmpID  TIntegerFieldqryEntPsnAddBranchID	FieldNameBranchID  TIntegerFieldqryEntPsnAddEntInd	FieldNameEntInd  TIntegerFieldqryEntPsnAddEntInd2	FieldNameEntInd2  TStringFieldqryEntPsnAddGender	FieldNameGender	FixedChar	Size  	TBCDFieldqryEntPsnAddMthGross	FieldNameMthGross	Precision  TDateTimeFieldqryEntPsnAddDOB	FieldNameDOB  TIntegerFieldqryEntPsnAddMaritalStatus	FieldNameMaritalStatus  
TWordFieldqryEntPsnAddNoDepend	FieldNameNoDepend  TIntegerFieldqryEntPsnAddOccupation	FieldName
Occupation  TIntegerFieldqryEntPsnAddEmployment	FieldName
Employment  TIntegerFieldqryEntPsnAddLink1	FieldNameLink1  TIntegerFieldqryEntPsnAddLink2	FieldNameLink2  TIntegerFieldqryEntPsnAddLink3	FieldNameLink3  TIntegerFieldqryEntPsnAddNationality	FieldNameNationality  TDateTimeFieldqryEntPsnAddEmpDate	FieldNameEmpDate  TDateTimeFieldqryEntPsnAddRetireDate	FieldName
RetireDate  
TWordFieldqryEntPsnAddPayDay	FieldNamePayDay  TStringFieldqryEntPsnAddPayFreq	FieldNamePayFreq	FixedChar	Size  TStringFieldqryEntPsnAddPayPoint	FieldNamePayPointSize  TStringFieldqryEntPsnAddSuperior	FieldNameSuperiorSize  	TBCDFieldqryEntPsnAddSpsMthGross	FieldNameSpsMthGross	Precision  TStringFieldqryEntPsnAddSpsEmployer	FieldNameSpsEmployerSize  
TWordFieldqryEntPsnAddOwnRent	FieldNameOwnRent  TStringFieldqryEntPsnAddLandLord	FieldNameLandLordSize  TStringFieldqryEntPsnAddLandLordTel	FieldNameLandLordTelSize  TDateTimeFieldqryEntPsnAddPFundDate	FieldName	PFundDate  TStringFieldqryEntPsnAddPFundNo	FieldNamePFundNoSize  TDateTimeFieldqryEntPsnAddWPEDate	FieldNameWPEDate  TStringFieldqryEntPsnAddNLRRefNo	FieldNameNLRRefNoSize  	TBCDFieldqryEntPsnAddNetSal	FieldNameNetSal	Precision  	TBCDFieldqryEntPsnAddMinHomeAmt	FieldName
MinHomeAmt	Precision  TStringFieldqryEntPsnAddPeriodEmployed	FieldKindfkCalculated	FieldNamePeriodEmployed
Calculated	  TStringFieldqryEntPsnAddDepartment	FieldName
DepartmentSize   TDataSourcedtsEntPsnAddDataSetqryEntPsnAddLeft`Topp  TADODataSet	qryLSerLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText?select EntityID as IdVal, EntCode, Name,Name2,TelNo1
from EntityData where EntityID in (select EntityID from EntRelation
 where Relation=:inType)
order by EntCode
ParametersNameinTypeDataType	ftInteger	Precision
SizeValue   LeftTop` TIntegerFieldIntegerField1	FieldNameIdValVisible  TStringFieldStringField1DisplayLabelCode	FieldNameEntCodeSize
  TStringFieldStringField2DisplayWidth	FieldNameNameSized  TStringFieldStringField3DisplayLabelContact personDisplayWidth	FieldNameName2Size#  TStringFieldStringField4DisplayLabelTelephone numberDisplayWidth	FieldNameTelNo1Size   TADODataSetqryLUEntInd2
ConnectiondtmMain.dbDataCommandText^select TypeKey, GroupKey, Description 
from CodeTable
where Groupkey = 100127 and Notuse = 0
Parameters LeftTop?   TDataSourcedtsLUEntInd2DataSetqryLUEntInd2LeftTop?   TADODataSetqryLUStatus
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextMselect Description, TypeKey, GroupKey from CodeTable
where groupkey = 110017
Parameters Left Top?   TDataSourcedtsLUStatusDataSetqryLUStatusLeft Top?   TADODataSetqryEntCpyAdd
Parameters Left? Top?   TADODataSetqryAllEntLU
ConnectiondtmMain.dbData
Parameters LeftTop?   TADODataSetqryGetEntityType
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText;select EntType
from EntityData
where EntityID = :EntityID
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftxTop?    