?
 TDTMENTITYLOAN 0??  TPF0?TdtmEntityLoandtmEntityLoanOldCreateOrder	LeftTop?Height5Width? ?TADODataSet	qryEntityCommandText,  select EntityID, EntType, EntCode, DefAdr, DocAdr, DelAdr,
  Category, SendSMS,SendEmail,
  RegNo, RefFld1, RefFld2, Title, Name, Name2, Name + ' ' + Name2 FullName,TelNo1, TelNo2, TelNo3, 
  FaxNo, UserID, DateChange, UserAdd, DateAdded, Email, WebSite
from Entitydata
where EntityID = :EntID
  ?TDataSource	dtsEntityDataSet  TADODataSetqryERLU1
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText?select TypeKey as IdVal, Description, GroupKey
from CodeTable
where GroupKey between 110001 and 1100026
and NotUse = 0
order by Description
Parameters Left(Top  TAutoIncFieldqryERLU1IdVal	FieldNameIdValReadOnly	Visible  TStringFieldqryERLU1Description	FieldNameDescriptionSize2  TIntegerFieldqryERLU1GroupKey	FieldNameGroupKeyVisible   TDataSourcedtsERLUDataSetqryERLULeft Top?   TADODataSet	qryERLink
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
ConnectiondtmMain.dbDataCursorLocationclUseServerAfterInsertqryEntCpyAddAfterInsertOnCalcFieldsqryEntPsnAddCalcFieldsCommandText?  select EntityID, EmpID, BranchID, EntInd, EntInd2, Gender, MthGross, DOB, MaritalStatus, NoDepend, Occupation, Employment, Link1, Link2, Link3, Nationality, EmpDate, RetireDate, PayDay, PayFreq, PayPoint, Superior, SpsMthGross, SpsEmployer, OwnRent, LandLord, LandLordTel, PFundDate, PFundNo, WPEDate, NLRRefNo, NetSal, MinHomeAmt,
Department, Status
from lsEntPsnAdd
where EntityID=:EntityID
DataSource	dtsEntity
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftpTop` TIntegerFieldqryEntPsnAddEntityID	FieldNameEntityID  TIntegerFieldqryEntPsnAddEmpID	FieldNameEmpID  TIntegerFieldqryEntPsnAddBranchID	FieldNameBranchID  TIntegerFieldqryEntPsnAddEntInd	FieldNameEntInd  TIntegerFieldqryEntPsnAddEntInd2	FieldNameEntInd2  TStringFieldqryEntPsnAddGender	FieldNameGender	FixedChar	Size  	TBCDFieldqryEntPsnAddMthGross	FieldNameMthGross	Precision  TDateTimeFieldqryEntPsnAddDOB	FieldNameDOB  TIntegerFieldqryEntPsnAddMaritalStatus	FieldNameMaritalStatus  
TWordFieldqryEntPsnAddNoDepend	FieldNameNoDepend  TIntegerFieldqryEntPsnAddOccupation	FieldName
Occupation  TIntegerFieldqryEntPsnAddEmployment	FieldName
Employment  TIntegerFieldqryEntPsnAddLink1	FieldNameLink1  TIntegerFieldqryEntPsnAddLink2	FieldNameLink2  TIntegerFieldqryEntPsnAddLink3	FieldNameLink3  TIntegerFieldqryEntPsnAddNationality	FieldNameNationality  TDateTimeFieldqryEntPsnAddEmpDate	FieldNameEmpDate  TDateTimeFieldqryEntPsnAddRetireDate	FieldName
RetireDate  
TWordFieldqryEntPsnAddPayDay	FieldNamePayDay  TStringFieldqryEntPsnAddPayFreq	FieldNamePayFreq	FixedChar	Size  TStringFieldqryEntPsnAddPayPoint	FieldNamePayPointSize  TStringFieldqryEntPsnAddSuperior	FieldNameSuperiorSize  	TBCDFieldqryEntPsnAddSpsMthGross	FieldNameSpsMthGross	Precision  TStringFieldqryEntPsnAddSpsEmployer	FieldNameSpsEmployerSize  
TWordFieldqryEntPsnAddOwnRent	FieldNameOwnRent  TStringFieldqryEntPsnAddLandLord	FieldNameLandLordSize  TStringFieldqryEntPsnAddLandLordTel	FieldNameLandLordTelSize  TDateTimeFieldqryEntPsnAddPFundDate	FieldName	PFundDate  TStringFieldqryEntPsnAddPFundNo	FieldNamePFundNoSize  TDateTimeFieldqryEntPsnAddWPEDate	FieldNameWPEDate  TStringFieldqryEntPsnAddNLRRefNo	FieldNameNLRRefNoSize  	TBCDFieldqryEntPsnAddNetSal	FieldNameNetSal	Precision  	TBCDFieldqryEntPsnAddMinHomeAmt	FieldName
MinHomeAmt	Precision  TStringFieldqryEntPsnAddPeriodEmployed	FieldKindfkCalculated	FieldNamePeriodEmployed
Calculated	  TStringFieldqryEntPsnAddDepartment	FieldName
DepartmentSize  TIntegerFieldqryEntPsnAddStatus	FieldNameStatus   TDataSourcedtsEntPsnAddDataSetqryEntPsnAddLeftpTopp  TADODataSet	qryLSerLU
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText?select EntityID as IdVal, EntCode, Name,Name2,TelNo1
from EntityData where EntityID in (select EntityID from EntRelation
 where Relation=:inType)
order by EntCode
ParametersNameinTypeDataType	ftInteger	Precision
SizeValue   LeftTop` TIntegerFieldIntegerField1	FieldNameIdValVisible  TStringFieldStringField1DisplayLabelCode	FieldNameEntCodeSize
  TStringFieldStringField2DisplayWidth	FieldNameNameSized  TStringFieldStringField3DisplayLabelContact personDisplayWidth	FieldNameName2Size#  TStringFieldStringField4DisplayLabelTelephone numberDisplayWidth	FieldNameTelNo1Size   TADODataSetqryLUEntInd2
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?SELECT TypeKey, GroupKey, Description, Description AS OrderID
FROM CodeTable
WHERE Groupkey = 100127 
AND Notuse = 0

UNION

SELECT 0, 100127, '<NONE>', 'AAA'

ORDER BY OrderID
Parameters LeftTop?   TDataSourcedtsLUEntInd2DataSetqryLUEntInd2LeftTop?   TADODataSetqryLUStatus
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextdSELECT Description, TypeKey, GroupKey
FROM CodeTable
WHERE groupkey = 110017
ORDER BY Description
Parameters Left Top?   TDataSourcedtsLUStatusDataSetqryLUStatusLeft Top?   TADODataSetqryEntCpyAdd
Parameters Left? TopH  TADODataSetqryAllEntLU
ConnectiondtmMain.dbData
Parameters LeftTop   TADODataSetqryGetEntityType
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText;select EntType
from EntityData
where EntityID = :EntityID
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftxTop  TADODataSetqryEnqHistory
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?SELECT EntityID, EnqType, EnqDate, Status, CreateUser,
CONVERT(VARCHAR(10), EnqDate, 103) + ' ' +
CONVERT(VARCHAR(5),EnqDate,108) AS FMTEnqDate, LoanID, TransNo
FROM BureauHistory
WHERE EntityID = :EntID
ORDER BY TransNo DESC
ParametersNameEntID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left?Top?   TDataSourcedtsEnqHistoryDataSetqryEnqHistoryLeft?Top?   TADOCommandqryUpdateNlrEnqRefNoCommandTextHUpdate lsEntPsnAdd
set NlrRefNo = :NlrRefNo
where EntityID = :EntityID
ConnectiondtmMain.dbData
ParametersNameNlrRefNo
Attributes
paNullable DataTypeftStringNumericScale? 	Precision? SizeValue  NameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left?Top  TADODataSetqryTestClientRef
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextCselect NLRRefNo, CSRefNo
from lsentPsnAdd
where EntityID = :EntID
ParametersNameEntID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left?TopH TStringFieldqryTestClientRefNLRRefNo	FieldNameNLRRefNoSize  TStringFieldqryTestClientRefCSRefNo	FieldNameCSRefNoSize   TDataSourcedtsTestClientRefDataSetqryTestClientRefLeft?TopX  TADODataSetqryGetServiceType
ConnectiondtmMain.dbData
CursorTypectStaticCommandText0select ValInt
from General
where RecID = 12506
Parameters Left?Top TIntegerFieldqryGetServiceTypeValInt	FieldNameValInt   TDataSourcedtsGetServiceTypeDataSetqryGetServiceTypeLeft?Top  TADODataSetqrySetBureau
ConnectiondtmMain.dbData
CursorTypectStaticFiltered	CommandTextA  SELECT 
(SELECT ValStr FROM General WHERE RecID = 12501) AS Server,
(SELECT ValStr FROM General WHERE RecID = 12502) AS Username,
(SELECT ValStr FROM General WHERE RecID = 12503) AS Password,
(SELECT ValStr FROM General WHERE RecID = 12504) AS BranchID,
(SELECT ValStr FROM General WHERE RecID = 12505) AS ResultPath
Parameters Left?TopH  TDataSourcedtsSetBureauDataSetqrySetBureauLeft?TopX  TADODataSetqryTestCompuscan
ConnectiondtmMain.dbDataLockType
ltReadOnlyCommandText0select ValInt
from General
where RecID = 12507
Parameters Left(TopH  TADODataSetqryPersonLoan
ConnectiondtmMain.dbData
CursorTypectStatic
BeforeOpenqryPersonLoanBeforeOpen	AfterOpenqryPersonLoanAfterOpen
AfterCloseqryPersonLoanAfterClose
BeforePostqryPersonLoanBeforePostOnCalcFieldsqryPersonLoanCalcFieldsCommandText?  SELECT 
ED.EntityID, ED.EntType, Ed.EntCode, PA.Status, ED.DefAdr, ED.DocAdr, ED.DelAdr,
ED.Category, Ed.SendSMS, ED.SendEmail, ED.RegNo, ED.RefFld1, ED.RefFld2,
ED.Title, ED.Name, ED.Name2, ED.CallName, ED.Name + ' ' + ED.Name2 as FullName, ED.TelNo1, ED.TelNo2, ED.TelNo3, ED.FaxNo, ED.UserID,
 ED.UserAdd, ED.DateAdded, ED.Email, ED.WebSite, PA.EmpTradingName, PA.EmpRegistrationNo, PA.EmpConfirmationSource,
PA.EntityID as AEntityID, PA.EmpID, PA.BranchID, PA.EntInd, PA.EntInd2, PA.Gender, PA.MthGross,
PA.NetSal, PA.MinHomeAmt, PA.DOB, PA.MaritalStatus, PA.NoDepend, PA.Occupation,
PA.Employment, PA.Link1, PA.Link2, PA.Link3, PA.Nationality, PA.Race, PA.EmpDate, PA.RetireDate,
PA.PayDay, PA.PayFreq, PA.LastPayDate, PA.PayPoint, PA.Superior, PA.SpsMthGross, PA.SpsEmployer,
PA.OwnRent, PA.LandLord, PA.LandLordTel, PA.PFundDate, PA.PFundNo, PA.WPEDate,
PA.NLRRefNo, PA.CSRefNo, PA.Department, RetirementAge,
PA.Mobile_type, PA.Years_at_address, PA.Trade_union,
PA.Union_No, ED.DateChange, ED.UpdateUser, PA.PayRule, PA.PayRuleID,
SecondName, MaidenName, PrefLanguage, HomeLanguage, MaritalContract,
MaritalConsent, YearsCurrentAddr, YearsPreviousAddr,
CAST(YearsCurrentAddr AS INT) AS YearsCurrentAddr1, 
(YearsCurrentAddr - CAST(YearsCurrentAddr AS INT))* 100  AS MonthsCurrentAddr1,
CAST(YearsPreviousAddr AS INT) AS YearsPreviousAddr1, 
(YearsPreviousAddr - CAST(YearsPreviousAddr AS INT))* 100 AS MonthsPreviousAddr1,
Correspondence, StatementSent, StatementPeriod, EducationLevel, ResidenceStatus,
EmpName, EmpTel, EmpExt, EmpContact, EmpType, EmpYearsOpen, WorkName, WorkTel,
WorkAddress1, WorkAddress2, WorkSuburb, WorkTown, WorkProvince, WorkPostcode, ContractEndDate,
PayMethod, ClientSource, DoTelemarket, DoDistribute, DoEmailSMS, UnderAdmin,
ED.UpdateUser + ' ' + CONVERT(VARCHAR(10),ED.DateChange,103) + ' ' + 
CONVERT(VARCHAR(5),ED.DateChange,108) AS UpdateDetails,
FinanceFee, LifeInsurance, Illness, ClientStatus, EmploymentStatus, PA.AllowEarlyDeduction, PA.UpdateUserID
FROM EntityData ED
LEFT JOIN lsEntPsnAdd PA on ED.EntityID = PA.EntityID
/*LEFT JOIN CodeTable PL ON PrefLanguage = PL.TypeKey
LEFT JOIN CodeTable HL ON HomeLanguage = HL.TypeKey*/
WHERE ED.EntityID = :prEntityID

ParametersName
prEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left(Top@ TIntegerFieldqryPersonLoanEntityID	FieldNameEntityID  TSmallintFieldqryPersonLoanEntType	FieldNameEntType  TStringFieldqryPersonLoanEntCode	FieldNameEntCodeSize
  TIntegerFieldqryPersonLoanStatus	FieldNameStatus  TSmallintFieldqryPersonLoanDefAdr	FieldNameDefAdr  TSmallintFieldqryPersonLoanDocAdr	FieldNameDocAdr  TSmallintFieldqryPersonLoanDelAdr	FieldNameDelAdr  TIntegerFieldqryPersonLoanCategory	FieldNameCategory  
TWordFieldqryPersonLoanSendSMS	FieldNameSendSMS  
TWordFieldqryPersonLoanSendEmail	FieldName	SendEmail  TDateTimeFieldqryPersonLoanDOB	FieldNameDOB  TStringFieldqryPersonLoanRegNo	FieldNameRegNoSize  TStringFieldqryPersonLoanRefFld1	FieldNameRefFld1Size  TStringFieldqryPersonLoanRefFld2	FieldNameRefFld2Size  TStringFieldqryPersonLoanTitle	FieldNameTitleSize  TStringFieldqryPersonLoanName	FieldNameNameSize2  TStringFieldqryPersonLoanName2	FieldNameName2Size2  TStringFieldqryPersonLoanFullName	FieldNameFullNameReadOnly	Sizee  TStringFieldqryPersonLoanTelNo1	FieldNameTelNo1  TStringFieldqryPersonLoanTelNo2	FieldNameTelNo2  TStringFieldqryPersonLoanTelNo3	FieldNameTelNo3  TStringFieldqryPersonLoanFaxNo	FieldNameFaxNo  TStringFieldqryPersonLoanUserID	FieldNameUserIDSize
  TStringFieldqryPersonLoanUserAdd	FieldNameUserAddSize
  TDateTimeFieldqryPersonLoanDateAdded	FieldName	DateAdded  TStringFieldqryPersonLoanEmail	FieldNameEmailSize<  TStringFieldqryPersonLoanWebSite	FieldNameWebSiteSize(  TIntegerFieldqryPersonLoanAEntityID	FieldName	AEntityID  TIntegerFieldqryPersonLoanEmpID	FieldNameEmpID  TIntegerFieldqryPersonLoanBranchID	FieldNameBranchID  TIntegerFieldqryPersonLoanEntInd	FieldNameEntInd  TIntegerFieldqryPersonLoanEntInd2	FieldNameEntInd2  TStringFieldqryPersonLoanGender	FieldNameGender	FixedChar	Size  	TBCDFieldqryPersonLoanMthGross	FieldNameMthGross	Precision  	TBCDFieldqryPersonLoanNetSal	FieldNameNetSal	Precision  	TBCDFieldqryPersonLoanMinHomeAmt	FieldName
MinHomeAmt	Precision  TIntegerFieldqryPersonLoanMaritalStatus	FieldNameMaritalStatus  
TWordFieldqryPersonLoanNoDepend	FieldNameNoDepend  TIntegerFieldqryPersonLoanEmployment	FieldName
Employment  TIntegerFieldqryPersonLoanLink1	FieldNameLink1  TIntegerFieldqryPersonLoanLink2	FieldNameLink2  TIntegerFieldqryPersonLoanLink3	FieldNameLink3  TIntegerFieldqryPersonLoanNationality	FieldNameNationality  TDateTimeFieldqryPersonLoanEmpDate	FieldNameEmpDate  TDateTimeFieldqryPersonLoanRetireDate	FieldName
RetireDate  TStringFieldqryPersonLoanOccupation	FieldName
OccupationSize2  
TWordFieldqryPersonLoanPayDay	FieldNamePayDayMaxValue  TStringFieldqryPersonLoanPayFreq	FieldNamePayFreq	FixedChar	Size  TDateTimeFieldqryPersonLoanLastPayDate	FieldNameLastPayDate  TStringFieldqryPersonLoanPayPoint	FieldNamePayPointSize  TStringFieldqryPersonLoanSuperior	FieldNameSuperiorSize  	TBCDFieldqryPersonLoanSpsMthGross	FieldNameSpsMthGross	Precision  TStringFieldqryPersonLoanSpsEmployer	FieldNameSpsEmployerSize  
TWordFieldqryPersonLoanOwnRent	FieldNameOwnRent  TStringFieldqryPersonLoanLandLord	FieldNameLandLordSize  TStringFieldqryPersonLoanLandLordTel	FieldNameLandLordTelSize  TDateTimeFieldqryPersonLoanPFundDate	FieldName	PFundDate  TStringFieldqryPersonLoanPFundNo	FieldNamePFundNoSize  TDateTimeFieldqryPersonLoanWPEDate	FieldNameWPEDate  TStringFieldqryPersonLoanNLRRefNo	FieldNameNLRRefNoSize  TStringFieldqryPersonLoanCSRefNo	FieldNameCSRefNoSize  TStringFieldqryPersonLoanDepartment	FieldName
DepartmentSize  TStringFieldqryPersonLoanPeriodEmployed	FieldKindfkCalculated	FieldNamePeriodEmployed
Calculated	  TStringFieldqryPersonLoanMobile_type	FieldNameMobile_type	FixedChar	Size  
TWordFieldqryPersonLoanYears_at_address	FieldNameYears_at_address  TStringFieldqryPersonLoanCallName	FieldNameCallNameSize2  TIntegerFieldqryPersonLoanTrade_union	FieldNameTrade_union  TStringFieldqryPersonLoanUnion_No	FieldNameUnion_No  TDateTimeFieldqryPersonLoanDateChange	FieldName
DateChange  TStringFieldqryPersonLoanUpdateUser	FieldName
UpdateUserSize
  TStringFieldqryPersonLoanUpdateDetails	FieldNameUpdateDetailsReadOnly	Size   TIntegerFieldqryPersonLoanPayRule	FieldNamePayRule  TIntegerFieldqryPersonLoanPayRuleID	FieldName	PayRuleID  TStringFieldqryPersonLoanSecondName	FieldName
SecondNameSize  TStringFieldqryPersonLoanMaidenName	FieldName
MaidenNameSize  TStringFieldqryPersonLoanMaritalContract	FieldNameMaritalContractSize  TBooleanFieldqryPersonLoanMaritalConsent	FieldNameMaritalConsent  TStringFieldqryPersonLoanCorrespondence	FieldNameCorrespondence	FixedChar	Size  TStringFieldqryPersonLoanStatementPeriod	FieldNameStatementPeriod	FixedChar	Size  TIntegerFieldqryPersonLoanPrefLanguage	FieldNamePrefLanguage  TIntegerFieldqryPersonLoanHomeLanguage	FieldNameHomeLanguage  TIntegerFieldqryPersonLoanEducationLevel	FieldNameEducationLevel  TStringFieldqryPersonLoanResidenceStatus	FieldNameResidenceStatusSize
  TStringFieldqryPersonLoanStatementSent	FieldNameStatementSentSize  	TBCDFieldqryPersonLoanYearsCurrentAddr	FieldNameYearsCurrentAddr	PrecisionSize  	TBCDFieldqryPersonLoanYearsPreviousAddr	FieldNameYearsPreviousAddr	PrecisionSize  TIntegerFieldqryPersonLoanYearsCurrentAddr1	FieldNameYearsCurrentAddr1ReadOnly	  	TBCDFieldqryPersonLoanMonthsCurrentAddr1	FieldNameMonthsCurrentAddr1ReadOnly		PrecisionSize  TIntegerFieldqryPersonLoanYearsPreviousAddr1	FieldNameYearsPreviousAddr1ReadOnly	  	TBCDField qryPersonLoanMonthsPreviousAddr1	FieldNameMonthsPreviousAddr1ReadOnly		PrecisionSize  TStringFieldqryPersonLoanEmpName	FieldNameEmpNameSize  TStringFieldqryPersonLoanEmpTel	FieldNameEmpTelSize
  TStringFieldqryPersonLoanEmpExt	FieldNameEmpExtSize  TStringFieldqryPersonLoanEmpContact	FieldName
EmpContact  TStringFieldqryPersonLoanEmpType	FieldNameEmpTypeSize  
TWordFieldqryPersonLoanEmpYearsOpen	FieldNameEmpYearsOpen  TStringFieldqryPersonLoanWorkAddress1	FieldNameWorkAddress1SizeF  TStringFieldqryPersonLoanWorkAddress2	FieldNameWorkAddress2Size#  TStringFieldqryPersonLoanWorkName	FieldNameWorkNameSize  TStringFieldqryPersonLoanWorkTel	FieldNameWorkTelSize
  TStringFieldqryPersonLoanWorkSuburb	FieldName
WorkSuburb  TStringFieldqryPersonLoanWorkTown	FieldNameWorkTown  TStringFieldqryPersonLoanWorkProvince	FieldNameWorkProvinceSize  TStringFieldqryPersonLoanWorkPostcode	FieldNameWorkPostcodeSize  TDateTimeFieldqryPersonLoanContractEndDate	FieldNameContractEndDate  TStringFieldqryPersonLoanPayMethod	FieldName	PayMethodSize  TStringFieldqryPersonLoanClientSource	FieldNameClientSource  TBooleanFieldqryPersonLoanDoTelemarket	FieldNameDoTelemarket  TBooleanFieldqryPersonLoanDoDistribute	FieldNameDoDistribute  TBooleanFieldqryPersonLoanDoEmailSMS	FieldName
DoEmailSMS  TBooleanFieldqryPersonLoanUnderAdmin	FieldName
UnderAdmin  
TWordFieldqryPersonLoanRetirementAge	FieldNameRetirementAge  TBooleanFieldqryPersonLoanFinanceFee	FieldName
FinanceFee  TBooleanFieldqryPersonLoanLifeInsurance	FieldNameLifeInsurance  TBooleanFieldqryPersonLoanIllness	FieldNameIllness  TStringFieldqryPersonLoanRace	FieldNameRaceSize
  TIntegerFieldqryPersonLoanClientStatus	FieldNameClientStatus  TIntegerFieldqryPersonLoanEmploymentStatus	FieldNameEmploymentStatus  TStringFieldqryPersonLoanluClientStatus	FieldKindfkLookup	FieldNameluClientStatusLookupDataSetdsClientStatusLookupKeyFields
StatusCodeLookupResultFieldDescription	KeyFieldsClientStatusLookupCache	Size2Lookup	  TStringFieldqryPersonLoanluEmploymentStatus	FieldKindfkLookup	FieldNameluEmploymentStatusLookupDataSetdsEmploymentStatusLookupKeyFields
StatusCodeLookupResultFieldDescription	KeyFieldsEmploymentStatusLookupCache	Size2Lookup	  TStringFieldqryPersonLoanEmpRegistrationNo	FieldNameEmpRegistrationNoSize  TIntegerField"qryPersonLoanEmpConfirmationSource	FieldNameEmpConfirmationSource  TStringFieldqryPersonLoanEmpTradingName	FieldNameEmpTradingNameSize2  TBooleanField qryPersonLoanAllowEarlyDeduction	FieldNameAllowEarlyDeduction  TIntegerFieldqryPersonLoanUpdateUserID	FieldNameUpdateUserID   TDataSourcedtsPersonLoanDataSetqryPersonLoanLeft(TopP  	TADOQueryqryERLU
ConnectiondtmMain.dbData
Parameters SQL.Strings.select TypeKey as IdVal, Description, GroupKeyfrom CodeTable)where GroupKey between 110001 and 1100026and NotUse = 0order by Description Left Top` TIntegerFieldqryERLUIdVal	FieldNameIdValVisible  TStringFieldqryERLUDescription	FieldNameDescriptionSize2  TIntegerFieldqryERLUGroupKey	FieldNameGroupKeyVisible   TADODataSetqryERCrossLink
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnly
BeforeOpenqryERLinkBeforeOpenAfterInsertqryEntCpyAddAfterInsertCommandText?  SELECT ERL.EntityID, ERL.LinkID, ERL.Relation, ENT.EntCode, ENT.Name2, ENT.Name, CTL.Description, ERL.DateAdded
FROM Entrelation ERL 
LEFT JOIN EntityData ENT ON ERL.LinkID=ENT.EntityID
LEFT JOIN CodeTable CTL ON CTL.TypeKey=ERL.Relation
WHERE ERL.EntityID= :EntityID and ERL.LinkID<>0
AND GroupKey in (110001,110006,110025,110026)
-- and ERL.Relation between 110001001 and 110001999
ORDER BY ENT.Name2
DataSource	dtsEntity
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftxTop?  TIntegerFieldqryERCrossLinkLinkID	FieldNameLinkIDVisible  TIntegerFieldqryERCrossLinkEntityID	FieldNameEntityIDVisible  TIntegerFieldqryERCrossLinkRelation	FieldNameRelationVisible  TStringFieldqryERCrossLinkEntCodeDisplayLabelEntity Code	FieldNameEntCodeSize
  TStringFieldqryERCrossLinkNameDisplayWidth	FieldNameNameSize2  TStringFieldqryERCrossLinkName2DisplayLabelSurnameDisplayWidth	FieldNameName2Size2  TStringFieldqryERCrossLinkDescriptionDisplayWidth	FieldNameDescriptionSize2  TDateTimeFieldqryERCrossLinkDateAddedDisplayLabel
Date AddedDisplayWidth	FieldName	DateAdded   TADODataSetdsPayRuleLU
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextNselect TypeKey, Description
from CodeTable where GroupKey=111001 and NotUse=0
Parameters Left? TopH  TDataSourcedtsPayRuleLUDataSetdsPayRuleLULeft? TopX  TADOCommandqryUpdateEnqHistCommandTextYInsert into BureauHistory(EntityID, EnqType, Status)
Values(:EntityID,:EnqType, :Status)
ConnectiondtmMain.dbData
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameEnqType
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameStatus
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left?Top?   TADODataSet
dsPayRules
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?  SELECT PayRuleID, Frequency + ' - ' + PayDay AS PayRule, iFrequency, iPayDay
FROM
(SELECT PayRuleID,  
CAST(CASE Frequency
WHEN 'M' THEN 'Monthly'
WHEN 'W' THEN 'Weekly'
WHEN 'F' THEN 'Fortnightly' END  AS VARCHAR(15)) AS Frequency,  
CASE Frequency
WHEN 'M' THEN ISNULL(Description, PayDay)
ELSE
	CASE PayDay
	WHEN 1 THEN 'Monday'
	WHEN 2 THEN 'Tuesday'
	WHEN 3 THEN 'Wednesday'
	WHEN 4 THEN 'Thursday'
	WHEN 5 THEN 'Friday'
	WHEN 6 THEN 'Saturday'
	ELSE ''
	END
END AS PayDay, PayDay AS iPayDay,
CASE Frequency
WHEN 'W' THEN 1
WHEN 'F' THEN 2
WHEN 'M' THEN 3
END AS iFrequency
FROM lsPayRules PR
LEFT JOIN CodeTable CT ON PayDay = TypeKey AND Frequency IN ('M')
WHERE EntityID = :EmpID)PR
ORDER BY iFrequency, iPayDay
DataSourcedtsPersonLoanMasterFieldsEmpID
ParametersNameEmpID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left Top  TDataSourcedtsPayRulesDataSet
dsPayRulesLeft Top   TADODataSetdsMonthlyRules
ConnectiondtmMain.dbDataCommandTextjSELECT TypeKey, Description
FROM CodeTable
WHERE GroupKey = 111001
AND NotUse = 0
ORDER BY Description
Parameters Left Topp  TADODataSetdsLanguages
ConnectiondtmMain.dbDataLockType
ltReadOnlyCommandTextjSELECT TypeKey, Description
FROM CodeTable
WHERE GroupKey = 100140
AND NotUse = 0
ORDER BY Description
Parameters Left Top?   TDataSourcedtsLanguagesDataSetdsLanguagesLeft Top?   TADODataSetdsEducationLevel
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandText?SELECT TypeKey, Description, 2 AS OrderID
FROM CodeTable
WHERE GroupKey = 100141
AND NotUse = 0
UNION
SELECT 0, 'None', 1
ORDER BY OrderID, Description
Parameters LeftTop  TDataSourcedtsEducationLevelDataSetdsEducationLevelLeftTop  TADODataSetdsDocCapture
ConnectiondtmMain.dbData
CursorTypectStaticCommandText.SELECT Control, PosX, PosY
FROM dtDataCapture
Parameters LeftTopX  	TADOQueryqryCurrentLoan
ConnectiondtmMain.dbData
CursorTypectStatic
DataSourcedtsPersonLoan
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT ISNULL(LoanID,0)FROM lsLoanDetailWHERE EntityID = :EntityIDAND Status = 0 LeftxTop  TADODataSetdsClientLoans
ConnectiondtmMain.dbData
CursorTypectStaticLockType
ltReadOnlyCommandTextTSELECT RefNo, LoanID
FROM lsLoanDetail
WHERE EntityID = :EntityID
ORDER BY LoanID
DataSourcedtsPersonLoanMasterFieldsEntityID
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   LeftxTopX  TADODataSetdsClientStatus
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextpSELECT StatusCode, Description
FROM ClientStatus
WHERE StatusType = 'C'
AND Enabled = 1
ORDER BY Description
Parameters LeftxTop?  TIntegerFielddsClientStatusStatusCode	FieldName
StatusCodeVisible  TStringFielddsClientStatusDescription	FieldNameDescriptionSize2   TADODataSetdsEmploymentStatus
ConnectiondtmMain.dbData
CursorTypectStaticCommandTextpSELECT StatusCode, Description
FROM ClientStatus
WHERE StatusType = 'E'
AND Enabled = 1
ORDER BY Description
Parameters LeftxTop?  TIntegerFielddsEmploymentStatusStatusCode	FieldName
StatusCodeVisible  TStringFielddsEmploymentStatusDescription	FieldNameDescriptionSize2   TADODataSetdsClientStatusHistory
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?SELECT EffectiveDate, Description, CreateUser, CreateDate, StatusColor
FROM ClientStatusHistory SH
LEFT JOIN ClientStatus CS ON SH.Status = StatusCode
WHERE EntityID = :EntityID
AND CS.StatusType = 'C'
ORDER BY EffectiveDate DESC, RecordID DESC
DataSourcedtsPersonLoanMasterFieldsEntityID
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left?Top  TDataSourcedtsClientStatusHistoryDataSetdsClientStatusHistoryLeft?Top   TADODataSetdsEmploymentStatusHistory
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?SELECT EffectiveDate, Description, CreateUser, CreateDate, StatusColor
FROM ClientStatusHistory SH
LEFT JOIN ClientStatus CS ON SH.Status = StatusCode
WHERE EntityID = :EntityID
AND CS.StatusType = 'E'
ORDER BY EffectiveDate DESC, RecordID DESC
DataSourcedtsPersonLoanMasterFieldsEntityID
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left?TopX  TDataSourcedtsEmploymentStatusHistoryDataSetdsEmploymentStatusHistoryLeft?Toph  TADODataSetdsAHVActive
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?  DECLARE @RecordID INT

SELECT TOP 1 @RecordID = AV.RecordID
FROM BankDetails BD
LEFT JOIN EntityData ED ON BD.EntityID = ED.EntityID
LEFT JOIN ieAHV AV ON BD.EntityID = AV.EntityID AND ED.RegNo = AV.IDNumber AND BD.BName = AV.BankName AND BD.BBCode = AV.BranchCode AND BD.AccNo = AV.AccountNo
WHERE BD.EntityID = :EntityID
AND Active = 1
ORDER BY AV.RecordID DESC

SELECT RecordID, Response1 AS Response, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response1 = AC.ReturnCode AND GroupID = 1
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response2, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response2 = AC.ReturnCode AND GroupID = 2
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response3, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response3 = AC.ReturnCode AND GroupID = 3
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response4, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response4 = AC.ReturnCode AND GroupID = 4
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response5, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response5 = AC.ReturnCode AND GroupID = 5
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response6, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response6 = AC.ReturnCode AND GroupID = 6
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response7, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response7 = AC.ReturnCode AND GroupID = 7
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response8, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response8 = AC.ReturnCode AND GroupID = 8
WHERE RecordID = @RecordID

UNION

SELECT RecordID, NULL, 'Pending', '', 2, 0
FROM ieAHV AV
LEFT JOIN AHV_Batch BT ON AV.BatchID = BT.BatchID
WHERE RecordID = @RecordID
AND BT.ReplyDate IS NULL

ORDER BY GroupID
DataSourcedtsPersonLoanMasterFieldsEntityID
ParametersNameEntityIDDataType	ftIntegerSize?Value   Left(Top?  TDataSourcedtsAHVActiveDataSetdsAHVActiveLeft(Top?  TADODataSetdsAHVInactive
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?  DECLARE @RecordID INT

SELECT TOP 1 @RecordID = AV.RecordID
FROM BankDetails BD
LEFT JOIN EntityData ED ON BD.EntityID = ED.EntityID
LEFT JOIN ieAHV AV ON BD.EntityID = AV.EntityID AND ED.RegNo = AV.IDNumber AND BD.BName = AV.BankName AND BD.BBCode = AV.BranchCode AND BD.AccNo = AV.AccountNo
WHERE BD.EntityID = :EntityID
AND Active = 0
ORDER BY AV.RecordID DESC

SELECT RecordID, Response1 AS Response, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response1 = AC.ReturnCode AND GroupID = 1
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response2, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response2 = AC.ReturnCode AND GroupID = 2
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response3, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response3 = AC.ReturnCode AND GroupID = 3
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response4, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response4 = AC.ReturnCode AND GroupID = 4
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response5, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response5 = AC.ReturnCode AND GroupID = 5
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response6, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response6 = AC.ReturnCode AND GroupID = 6
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response7, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response7 = AC.ReturnCode AND GroupID = 7
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response8, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response8 = AC.ReturnCode AND GroupID = 8
WHERE RecordID = @RecordID

UNION

SELECT RecordID, NULL, 'Pending', '', 2, 0
FROM ieAHV AV
LEFT JOIN AHV_Batch BT ON AV.BatchID = BT.BatchID
WHERE RecordID = @RecordID
AND BT.ReplyDate IS NULL

ORDER BY GroupID
DataSourcedtsPersonLoanMasterFieldsEntityID
ParametersNameEntityIDDataType	ftIntegerSize?Value   Left? Top?  TDataSourcedtsAHVInactiveDataSetdsAHVInactiveLeft? Top?  TADOCommand	cmdAddAHVCommandText  INSERT INTO ieAHV (EntityID, IDNumber, BankName, BranchCode, AccountNo, CreateUser)
SELECT ED.EntityID, RegNo, BName, BBCode, AccNo, :UserID
FROM EntityData ED
LEFT JOIN BankDetails BD ON ED.EntityID = BD.EntityID AND Active = :Active
WHERE ED.EntityID = :EntityID
ConnectiondtmMain.dbData
ParametersNameUserIDDataTypeftStringSize?Value  NameActiveDataType	ftBooleanSize?Value  NameEntityIDDataType	ftIntegerSize?Value   Left? Top?  	TADOQueryqryAHVBanks
ConnectiondtmMain.dbData
Parameters SQL.StringsSELECT BankName
FROM BanksWHERE AHV = 1ORDER BY BankName Left?Top?  TADODataSetdsEmployerWorkplace
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?SELECT ED.EntityID, ED.EntCode AS Code, Name, Name2 AS TradingName
FROM EntRelation ER
LEFT JOIN EntityData ED ON ER.LinkID = ED.EntityID
WHERE ER.Relation = 100001006
AND ER.EntityID = :EmpID
AND ER.Status = 0
ORDER BY NameMasterFieldsEmpID
ParametersNameEmpID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left?Top? TAutoIncFielddsEmployerWorkplaceEntityID	FieldNameEntityIDReadOnly	Visible  TStringFielddsEmployerWorkplaceCode	FieldNameCodeSize
  TStringFielddsEmployerWorkplaceNameDisplayLabel	Workplace	FieldNameNameSize(  TStringFielddsEmployerWorkplaceTradingNameDisplayLabelTrading Name	FieldNameTradingNameSize(   TDataSourcedtsEmployerWorkplaceDataSetdsEmployerWorkplaceLeft?Top?  TADODataSetdsAHVHistory
ConnectiondtmMain.dbData
CursorTypectStatic	AfterOpendsAHVHistoryAfterOpenCommandTextm  SELECT AV.RecordID, AV.CreateDate, AR.Description, AV.CreateUser, AV.BankName, AV.AccountNo,
	AP.Description AS BankAccountPeriod
FROM vw_ENT_AHV AV
LEFT JOIN AHV_Result AR ON AV.Result = AR.ResultID
LEFT JOIN BankAccountPeriod AP ON AV.BankAccountPeriodID = AP.BankAccountPeriodID
WHERE EntityID = :EntityID
	AND AV.Enabled = 1
ORDER BY AV.CreateDate DESC

DataSourcedtsPersonLoanMasterFieldsEntityID
ParametersNameEntityID
AttributespaSigned DataType	ftInteger	Precision
SizeValue   Left Top?  TDataSourcedtsAHVHistoryDataSetdsAHVHistoryLeft Top?  TADODataSetdsAHVResult
ConnectiondtmMain.dbData
CursorTypectStaticCommandText?  DECLARE @RecordID INT

SET @RecordID = :RecordID

SELECT RecordID, Response1 AS Response, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response1 = AC.ReturnCode AND GroupID = 1
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response2, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response2 = AC.ReturnCode AND GroupID = 2
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response3, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response3 = AC.ReturnCode AND GroupID = 3
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response4, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response4 = AC.ReturnCode AND GroupID = 4
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response5, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response5 = AC.ReturnCode AND GroupID = 5
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response6, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response6 = AC.ReturnCode AND GroupID = 6
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response7, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response7 = AC.ReturnCode AND GroupID = 7
WHERE RecordID = @RecordID

UNION

SELECT RecordID, Response8, GroupDescription, CodeDescription, Result, GroupID
FROM ieAHV AV
INNER JOIN ieAHVCode AC ON Response8 = AC.ReturnCode AND GroupID = 8
WHERE RecordID = @RecordID

ORDER BY GroupID
DataSourcedtsAHVHistory
ParametersNameRecordIDDataType	ftIntegerSize?Value   Left?Top?  TDataSourcedtsAHVResultDataSetdsAHVResultLeft?Top?   