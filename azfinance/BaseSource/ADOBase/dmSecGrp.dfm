?
 TDTMSECGRP 0?  TPF0
TdtmSecGrp	dtmSecGrpOldCreateOrderLeft? TopvHeight?Widthx 	TADOQueryqryToUse
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters Left? Top  TADODataSet
qryUserGrp
ConnectiondtmMain.dbData
CursorTypectStaticMarshalOptionsmoMarshalModifiedOnlyCommandTextsselect TypeKey, GroupKey, Description, NotUse, UserID, DateAdded
from CodeTable
where GroupKey=90000 and NotUse=0
Parameters Left Top  TADODataSet	qryGTApps
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextAselect AppId as IDVal, Application
from Gtapps where Installed=1
Parameters LeftxTop TAutoIncFieldqryGTAppsIDVal	FieldNameIDValReadOnly	Visible  TStringFieldqryGTAppsApplication	FieldNameApplicationSize2   TADODataSet
qrySrcFrms
ConnectiondtmMain.dbDataLockType
ltReadOnlyCommandText?select AppID, UserGrp, FormID, ObjID, ObjE, ObjV, UseObj, 
  ObjName, Description, FrmName
from Securityfrm
where AppID=:AppID
ParametersNameAppID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop  TADODataSet	qryAppFrm
ConnectiondtmMain.dbData
CursorTypectStaticMarshalOptionsmoMarshalModifiedOnlyCommandTextzselect AppId, UserGrp, FrmID, ObjID, ObjE, ObjV
from SecurityFrm
where AppID= :AppID and UserGrp= :UserGrp and ObjID<0

DataSourcedtsAppIDMasterFieldsAppID;UserGrp
ParametersNameAppID
AttributespaSigned DataType	ftInteger	Precision
Value  NameUserGrp
AttributespaSigned DataType	ftInteger	Precision
Value   Left Top?  TIntegerFieldqryAppFrmAppId	FieldNameAppId  TIntegerFieldqryAppFrmUserGrp	FieldNameUserGrp  TIntegerFieldqryAppFrmFrmID	FieldNameFrmID  TIntegerFieldqryAppFrmObjID	FieldNameObjID  TSmallintFieldqryAppFrmObjE	FieldNameObjE  TSmallintFieldqryAppFrmObjV	FieldNameObjV  TStringFieldqryAppFrmObjDescLU	FieldKindfkLookup	FieldName	ObjDescLULookupDataSetqryFrmNameLULookupKeyFieldsFrmIDLookupResultFieldObjDesc	KeyFieldsFrmIDSizeLookup	   TADODataSetqryFrmNameLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextTselect FrmID, ObjID, ObjDesc
from GTFrmObj
where AppID=:AppID and ObjID in (-1,-2)
DataSourcedtsAppIDMasterFieldsAppID
ParametersNameAppID
AttributespaSigned DataType	ftInteger	Precision
Value   Left? Top?   TADODataSetqryDestFrms
ConnectiondtmMain.dbDataMarshalOptionsmoMarshalModifiedOnlyCommandText|select AppID, UserGrp, FormID, ObjID, ObjE, ObjV, UseObj, 
  ObjName, Description, FrmName
from Securityfrm
where AppID=0
Parameters LeftTopP  TADODataSet	qryFrmObj
ConnectiondtmMain.dbData
CursorTypectStaticMarshalOptionsmoMarshalModifiedOnlyCommandTextzselect FrmID, ObjID, ObjE, ObjV
from SecurityFrm
where AppID=:AppID and UserGrp=:UserGrp and FrmID=:FrmID
 and ObjID>0 
DataSource	dtsAppFrmMasterFieldsAppID;UserGrp;FrmID
ParametersNameAppID
AttributespaSigned DataType	ftInteger	Precision
Value  NameUserGrp
AttributespaSigned DataType	ftInteger	Precision
Value  NameFrmID
AttributespaSigned DataType	ftInteger	Precision
Value   LeftxTop?  TIntegerFieldqryFrmObjFrmID	FieldNameFrmID  TIntegerFieldqryFrmObjObjID	FieldNameObjID  TSmallintFieldqryFrmObjObjE	FieldNameObjE  TSmallintFieldqryFrmObjObjV	FieldNameObjV  TStringFieldqryFrmObjObjDescLU	FieldKindfkLookup	FieldName	ObjDescLULookupDataSetqryFrmObjLULookupKeyFieldsObjIDLookupResultFieldObjDesc	KeyFieldsObjIDSizeLookup	   TADODataSetqryFrmObjLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextkselect FrmID, ObjID, ObjDesc
from GTFrmObj
where AppID= :AppID and FrmID= :FrmID and UseObj=1 and ObjID>0
DataSource	dtsAppFrmMasterFieldsAppID
ParametersNameAppID
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameFrmID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftTop?   TADODataSetqryAppID
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextSselect distinct(AppID) as AppID, UserGrp
from SecurityFrm
where UserGrp= :TypeKey
DataSource
dtsUserGrpMasterFieldsTypeKey
ParametersNameTypeKey
AttributespaSigned DataType	ftInteger	Precision
Value   Left TopX TIntegerFieldqryAppIDAppID	FieldNameAppID  TIntegerFieldqryAppIDUserGrp	FieldNameUserGrp  TStringFieldqryAppIDAppLU	FieldKindfkLookup	FieldNameAppLULookupDataSet	qryGTAppsLookupKeyFieldsIDValLookupResultFieldApplication	KeyFieldsAppIDSizeLookup	   TDataSource
dtsUserGrpDataSet
qryUserGrpLeft Top(  TDataSource	dtsAppFrmDataSet	qryAppFrmLeft Top?   TDataSource	dtsFrmObjDataSet	qryFrmObjLeftxTop?   TDataSourcedtsAppIDDataSetqryAppIDLeft Topp   