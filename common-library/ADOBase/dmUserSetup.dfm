?
 TDTMUSERSETUP 0?
  TPF0TdtmUserSetupdtmUserSetupOldCreateOrderOnCreateDataModuleCreate	OnDestroyDataModuleDestroyLeft? TopyHeightQWidth' TADODataSetqryUsers
ConnectiondtmMain.dbData
CursorTypectStaticMarshalOptionsmoMarshalModifiedOnlyOnNewRecordqryUsersNewRecordCommandText?select UserID, UserPass, Surname, Name, Status, Locked, AddByUserID,
 EntityID, LastInDT, LastOutDT, DeleteDate
from Securitytbl
Parameters Left Top  TADODataSetqryUAG
ConnectiondtmMain.dbDataLockType
ltReadOnlyCommandText?select UAG.UserID, UAG.AppID, GTA.Application, CTL.Description
from Securityuag UAG left join GTApps GTA on UAG.AppID=GTA.AppID
  join CodeTable CTL on UAG.UsrGrp=CTL.TypeKey
where UAG.UserID=:UserID
DataSourcedtsUsers
ParametersNameUserIDDataTypeftFixedCharNumericScale? 	Precision? Size
Value   LeftpTop  TADODataSetqryGrpAppLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextQ  select distinct(SCF.UserGrp) as IDVal, SCF.AppID, GTA.Application, CTL.Description
from SecurityFrm SCF left join CodeTable CTL on SCF.UserGrp=CTL.TypeKey
 join GTApps GTA on SCF.AppID=GTA.AppID and CTL.NotUse=0
where SCF.AppID not in (select AppID from SecurityUAG 
  where UserID=:UserID)
order by GTA.Application, CTL.Description
DataSourcedtsUsers
ParametersNameUserIDDataTypeftStringSize
Value   Left? Top TIntegerFieldqryGrpAppLUIDVal	FieldNameIDValVisible  TIntegerFieldqryGrpAppLUAppID	FieldNameAppIDVisible  TStringFieldqryGrpAppLUApplicationDisplayWidth	FieldNameApplicationSize2  TStringFieldqryGrpAppLUDescriptionDisplayWidth	FieldNameDescriptionSize2   TDataSourcedtsUAGDataSetqryUserGroupsLeftpTop(  TDataSourcedtsUsersDataSetqryUsersLeft Top(  	TADOQueryqryToUse
ConnectiondtmMain.dbDataLockType
ltReadOnly
Parameters Left Toph  TADODataSetqryUserGroups
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?SELECT SG.UserGroup, Application, GroupID
FROM UserGroups UG
LEFT JOIN SecurityGroups SG ON UG.UserGroup = SG.GroupID
LEFT JOIN GTApps GA ON SG.AppID = GA.AppID
WHERE UG.UserID = :prUserID
ParametersNameprUserIDDataTypeftStringNumericScale? 	Precision? Size
Value   Left? Top?   TADODataSetqryGroupApps
ConnectiondtmMain.dbData
CursorTypectStaticCommandText  SELECT GroupID, SG.AppID, Application, UserGroup 
FROM SecurityGroups SG
LEFT JOIN GTApps GA ON SG.AppID = GA.AppID
WHERE SG.AppID NOT IN
(SELECT AppID
FROM UserGroups UG
LEFT JOIN SecurityGroups SG ON UG.UserGroup = SG.GroupID
WHERE UserID LIKE :prUserID)
ParametersNameprUserIDDataTypeftStringSize?Value   Left? Topx   