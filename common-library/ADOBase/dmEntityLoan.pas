unit dmEntityLoan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dmEntity, ADODB, Db, Unit32, uBureau, fmLookup;

type
  TdtmEntityLoan = class(TdtmEntity)
    qryERLU1: TADODataSet;
    qryERLU1IdVal: TAutoIncField;
    dtsERLU: TDataSource;
    qryERLU1Description: TStringField;
    qryERLink: TADODataSet;
    dtsERLink: TDataSource;
    qryEntPsnAdd: TADODataSet;
    dtsEntPsnAdd: TDataSource;
    qryLSerLU: TADODataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    qryLUEntInd2: TADODataSet;
    dtsLUEntInd2: TDataSource;
    qryLUStatus: TADODataSet;
    dtsLUStatus: TDataSource;
    qryEntCpyAdd: TADODataSet;
    qryAllEntLU: TADODataSet;
    qryEntPsnAddEntityID: TIntegerField;
    qryEntPsnAddEmpID: TIntegerField;
    qryEntPsnAddBranchID: TIntegerField;
    qryEntPsnAddEntInd: TIntegerField;
    qryEntPsnAddEntInd2: TIntegerField;
    qryEntPsnAddGender: TStringField;
    qryEntPsnAddMthGross: TBCDField;
    qryEntPsnAddDOB: TDateTimeField;
    qryEntPsnAddMaritalStatus: TIntegerField;
    qryEntPsnAddNoDepend: TWordField;
    qryEntPsnAddOccupation: TIntegerField;
    qryEntPsnAddEmployment: TIntegerField;
    qryEntPsnAddLink1: TIntegerField;
    qryEntPsnAddLink2: TIntegerField;
    qryEntPsnAddLink3: TIntegerField;
    qryEntPsnAddNationality: TIntegerField;
    qryEntPsnAddEmpDate: TDateTimeField;
    qryEntPsnAddRetireDate: TDateTimeField;
    qryEntPsnAddPayDay: TWordField;
    qryEntPsnAddPayFreq: TStringField;
    qryEntPsnAddPayPoint: TStringField;
    qryEntPsnAddSuperior: TStringField;
    qryEntPsnAddSpsMthGross: TBCDField;
    qryEntPsnAddSpsEmployer: TStringField;
    qryEntPsnAddOwnRent: TWordField;
    qryEntPsnAddLandLord: TStringField;
    qryEntPsnAddLandLordTel: TStringField;
    qryEntPsnAddPFundDate: TDateTimeField;
    qryEntPsnAddPFundNo: TStringField;
    qryEntPsnAddWPEDate: TDateTimeField;
    qryEntPsnAddNLRRefNo: TStringField;
    qryEntPsnAddNetSal: TBCDField;
    qryEntPsnAddMinHomeAmt: TBCDField;
    qryEntPsnAddPeriodEmployed: TStringField;
    qryGetEntityType: TADODataSet;
    qryERLU1GroupKey: TIntegerField;
    qryEnqHistory: TADODataSet;
    dtsEnqHistory: TDataSource;
    qryUpdateNlrEnqRefNo: TADOCommand;
    qryTestClientRef: TADODataSet;
    dtsTestClientRef: TDataSource;
    qryGetServiceType: TADODataSet;
    dtsGetServiceType: TDataSource;
    qryTestClientRefNLRRefNo: TStringField;
    qryTestClientRefCSRefNo: TStringField;
    qryGetServiceTypeValInt: TIntegerField;
    qrySetBureau: TADODataSet;
    dtsSetBureau: TDataSource;
    qryTestCompuscan: TADODataSet;
    qryEntPsnAddDepartment: TStringField;
    qryPersonLoan: TADODataSet;
    dtsPersonLoan: TDataSource;
    qryPersonLoanEntityID: TIntegerField;
    qryPersonLoanEntType: TSmallintField;
    qryPersonLoanEntCode: TStringField;
    qryPersonLoanStatus: TIntegerField;
    qryPersonLoanDefAdr: TSmallintField;
    qryPersonLoanDocAdr: TSmallintField;
    qryPersonLoanDelAdr: TSmallintField;
    qryPersonLoanCategory: TIntegerField;
    qryPersonLoanSendSMS: TWordField;
    qryPersonLoanSendEmail: TWordField;
    qryPersonLoanDOB: TDateTimeField;
    qryPersonLoanRegNo: TStringField;
    qryPersonLoanRefFld1: TStringField;
    qryPersonLoanRefFld2: TStringField;
    qryPersonLoanTitle: TStringField;
    qryPersonLoanName: TStringField;
    qryPersonLoanName2: TStringField;
    qryPersonLoanFullName: TStringField;
    qryPersonLoanTelNo1: TStringField;
    qryPersonLoanTelNo2: TStringField;
    qryPersonLoanTelNo3: TStringField;
    qryPersonLoanFaxNo: TStringField;
    qryPersonLoanUserID: TStringField;
    qryPersonLoanUserAdd: TStringField;
    qryPersonLoanDateAdded: TDateTimeField;
    qryPersonLoanEmail: TStringField;
    qryPersonLoanWebSite: TStringField;
    qryPersonLoanAEntityID: TIntegerField;
    qryPersonLoanEmpID: TIntegerField;
    qryPersonLoanBranchID: TIntegerField;
    qryPersonLoanEntInd: TIntegerField;
    qryPersonLoanEntInd2: TIntegerField;
    qryPersonLoanGender: TStringField;
    qryPersonLoanMthGross: TBCDField;
    qryPersonLoanNetSal: TBCDField;
    qryPersonLoanMinHomeAmt: TBCDField;
    qryPersonLoanMaritalStatus: TIntegerField;
    qryPersonLoanNoDepend: TWordField;
    qryPersonLoanEmployment: TIntegerField;
    qryPersonLoanLink1: TIntegerField;
    qryPersonLoanLink2: TIntegerField;
    qryPersonLoanLink3: TIntegerField;
    qryPersonLoanNationality: TIntegerField;
    qryPersonLoanEmpDate: TDateTimeField;
    qryPersonLoanRetireDate: TDateTimeField;
    qryPersonLoanPayDay: TWordField;
    qryPersonLoanPayFreq: TStringField;
    qryPersonLoanPayPoint: TStringField;
    qryPersonLoanSuperior: TStringField;
    qryPersonLoanSpsMthGross: TBCDField;
    qryPersonLoanSpsEmployer: TStringField;
    qryPersonLoanOwnRent: TWordField;
    qryPersonLoanLandLord: TStringField;
    qryPersonLoanLandLordTel: TStringField;
    qryPersonLoanPFundDate: TDateTimeField;
    qryPersonLoanPFundNo: TStringField;
    qryPersonLoanWPEDate: TDateTimeField;
    qryPersonLoanNLRRefNo: TStringField;
    qryPersonLoanCSRefNo: TStringField;
    qryPersonLoanDepartment: TStringField;
    qryPersonLoanPeriodEmployed: TStringField;
    qryPersonLoanMobile_type: TStringField;
    qryPersonLoanYears_at_address: TWordField;
    qryPersonLoanCallName: TStringField;
    qryPersonLoanTrade_union: TIntegerField;
    qryPersonLoanUnion_No: TStringField;
    qryERLU: TADOQuery;
    qryERLUIdVal: TIntegerField;
    qryERLUDescription: TStringField;
    qryERLUGroupKey: TIntegerField;
    qryEntPsnAddStatus: TIntegerField;
    qryERCrossLink: TADODataSet;
    qryERCrossLinkEntCode: TStringField;
    qryERCrossLinkName2: TStringField;
    qryERCrossLinkName: TStringField;
    qryERCrossLinkDescription: TStringField;
    qryERCrossLinkDateAdded: TDateTimeField;
    qryERCrossLinkLinkID: TIntegerField;
    qryERCrossLinkEntityID: TIntegerField;
    qryERCrossLinkRelation: TIntegerField;
    qryPersonLoanDateChange: TDateTimeField;
    qryPersonLoanUpdateUser: TStringField;
    qryPersonLoanUpdateDetails: TStringField;
    dsPayRuleLU: TADODataSet;
    qryPersonLoanPayRule: TIntegerField;
    dtsPayRuleLU: TDataSource;
    qryUpdateEnqHist: TADOCommand;
    dsPayRules: TADODataSet;
    qryPersonLoanPayRuleID: TIntegerField;
    dtsPayRules: TDataSource;
    qryPersonLoanLastPayDate: TDateTimeField;
    dsMonthlyRules: TADODataSet;
    qryPersonLoanSecondName: TStringField;
    qryPersonLoanMaidenName: TStringField;
    qryPersonLoanMaritalContract: TStringField;
    qryPersonLoanCorrespondence: TStringField;
    qryPersonLoanStatementPeriod: TStringField;
    dsLanguages: TADODataSet;
    dtsLanguages: TDataSource;
    dsEducationLevel: TADODataSet;
    dtsEducationLevel: TDataSource;
    qryPersonLoanPrefLanguage: TIntegerField;
    qryPersonLoanHomeLanguage: TIntegerField;
    qryPersonLoanEducationLevel: TIntegerField;
    qryPersonLoanResidenceStatus: TStringField;
    qryPersonLoanStatementSent: TStringField;
    qryPersonLoanYearsCurrentAddr: TBCDField;
    qryPersonLoanYearsPreviousAddr: TBCDField;
    qryPersonLoanYearsCurrentAddr1: TIntegerField;
    qryPersonLoanMonthsCurrentAddr1: TBCDField;
    qryPersonLoanMonthsPreviousAddr1: TBCDField;
    qryPersonLoanYearsPreviousAddr1: TIntegerField;
    qryPersonLoanEmpName: TStringField;
    qryPersonLoanEmpTel: TStringField;
    qryPersonLoanEmpExt: TStringField;
    qryPersonLoanEmpContact: TStringField;
    qryPersonLoanEmpType: TStringField;
    qryPersonLoanEmpYearsOpen: TWordField;
    qryPersonLoanWorkName: TStringField;
    qryPersonLoanWorkTel: TStringField;
    qryPersonLoanWorkSuburb: TStringField;
    qryPersonLoanWorkTown: TStringField;
    qryPersonLoanWorkProvince: TStringField;
    qryPersonLoanWorkPostcode: TStringField;
    qryPersonLoanContractEndDate: TDateTimeField;
    qryPersonLoanPayMethod: TStringField;
    qryPersonLoanClientSource: TStringField;
    qryPersonLoanDoTelemarket: TBooleanField;
    qryPersonLoanDoDistribute: TBooleanField;
    qryPersonLoanDoEmailSMS: TBooleanField;
    dsDocCapture: TADODataSet;
    qryPersonLoanUnderAdmin: TBooleanField;
    qryCurrentLoan: TADOQuery;
    dsClientLoans: TADODataSet;
    qryPersonLoanMaritalConsent: TBooleanField;
    qryPersonLoanRetirementAge: TWordField;
    qryPersonLoanFinanceFee: TBooleanField;
    qryPersonLoanLifeInsurance: TBooleanField;
    qryPersonLoanIllness: TBooleanField;
    qryPersonLoanRace: TStringField;
    qryPersonLoanClientStatus: TIntegerField;
    qryPersonLoanEmploymentStatus: TIntegerField;
    dsClientStatus: TADODataSet;
    qryPersonLoanluClientStatus: TStringField;
    dsEmploymentStatus: TADODataSet;
    qryPersonLoanluEmploymentStatus: TStringField;
    dsClientStatusHistory: TADODataSet;
    dtsClientStatusHistory: TDataSource;
    dsEmploymentStatusHistory: TADODataSet;
    dtsEmploymentStatusHistory: TDataSource;
    dsEmploymentStatusStatusCode: TIntegerField;
    dsEmploymentStatusDescription: TStringField;
    dsClientStatusStatusCode: TIntegerField;
    dsClientStatusDescription: TStringField;
    dsAHVActive: TADODataSet;
    dtsAHVActive: TDataSource;
    dsAHVInactive: TADODataSet;
    dtsAHVInactive: TDataSource;
    cmdAddAHV: TADOCommand;
    qryAHVBanks: TADOQuery;
    qryPersonLoanWorkAddress1: TStringField;
    dsEmployerWorkplace: TADODataSet;
    dsEmployerWorkplaceEntityID: TAutoIncField;
    dsEmployerWorkplaceCode: TStringField;
    dsEmployerWorkplaceName: TStringField;
    dsEmployerWorkplaceTradingName: TStringField;
    dtsEmployerWorkplace: TDataSource;
    qryPersonLoanEmpRegistrationNo: TStringField;
    qryPersonLoanEmpConfirmationSource: TIntegerField;
    qryPersonLoanEmpTradingName: TStringField;
    qryPersonLoanWorkAddress2: TStringField;
    qryPersonLoanAllowEarlyDeduction: TBooleanField;
    qryPersonLoanOccupation: TStringField;
    dsAHVHistory: TADODataSet;
    dtsAHVHistory: TDataSource;
    dsAHVResult: TADODataSet;
    dtsAHVResult: TDataSource;
    qryPersonLoanUpdateUserID: TIntegerField;
    procedure qryEntCpyAddAfterInsert(DataSet: TDataSet);
    procedure qryERLinkBeforeOpen(DataSet: TDataSet);
    procedure qryEntPsnAddCalcFields(DataSet: TDataSet);
    procedure qryPersonLoanCalcFields(DataSet: TDataSet);
    procedure qryPersonLoanBeforePost(DataSet: TDataSet);
    procedure qryPersonLoanBeforeOpen(DataSet: TDataSet);
    procedure qryPersonLoanAfterClose(DataSet: TDataSet);
    procedure qryPersonLoanAfterOpen(DataSet: TDataSet);
    procedure dsAHVHistoryAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetLinkDet(inID: integer): string;
    procedure SetAllQueries(Ready: Boolean);
    procedure AddEntityRelation(LinkID, LinkType: integer);
    procedure AddEntEntRelation(LinkEnt: integer);
    procedure DelCurRelWrapper;
    procedure DoLSerLU(inType: integer; FldUse: string);
    procedure SetEnqParam;
    procedure UpdateEnqHistory(Status, EnqType : Integer);
    procedure UpdateNlrEnqRefNo;
    function UseCompuscan: Boolean;
  end;

var
  dtmEntityLoan: TdtmEntityLoan;

implementation

uses uBase32, dmMain, uConst, uLScentral;

{$R *.DFM}

{ TdtmEntityC }

procedure TdtmEntityLoan.SetAllQueries(Ready: Boolean);
begin
  if not Ready then
    CheckDataSet(qryEntPsnAdd);
  qryLUStatus.Active               := Ready;
  qryEntity.Active                 := Ready;
  qryERLink.Active                 := Ready;
  qryERLu.Active                   := Ready;
  qryLUEntInd2.Active              := Ready;
//  qryModRel.Active  := Ready;
  if EntType = PSNtype then
    qryPersonLoan.Active  := Ready;
  dsLanguages.Active               := Ready;
  dsEducationLevel.Active          := Ready;
  dsDocCapture.Active              := Ready;
  dsClientStatus.Active            := Ready;
  dsEmploymentStatus.Active        := Ready;
  dsClientStatusHistory.Active     := Ready;
  dsEmploymentStatusHistory.Active := Ready;
  dsAHVActive.Active               := Ready;
  dsAHVInactive.Active             := Ready;
  dsAHVHistory.Active              := Ready;
  dsAHVResult.Active               := Ready;
end;

procedure TdtmEntityLoan.qryEntCpyAddAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EntityID').AsInteger := CurID;
  if DataSet.FieldByName('Nationality').IsNull then
   DataSet.FieldByname('Nationality').AsInteger := 110012001;
end;

procedure TdtmEntityLoan.AddEntEntRelation(LinkEnt: integer);
var
  CrossRel : integer;
begin
  AddRelationShip(qryEntity.FieldByName('EntityID').AsInteger, LinkEnt,
      qryERLU.FieldByName('IDVal').AsInteger);
  qryERLink.Requery;
  if MesDlg('Do you want to cross link this relationship ?','C') = mrYes then
  begin
    CrossRel  := ShowLU(qryERLU,'Relation type');
    if CrossRel <> -1 then
    begin
      try
        AddRelationShip(LinkEnt,qryEntity.FieldByName('EntityID').AsInteger,CrossRel);
      except
        MesDlg('Cross link already exists.','E');
      end; // try
    end; // CrossRel <> -1
  end; // if Mes
end;

{function TdtmEntityLoan.GetEntityType(EntityID: Integer): Integer;
begin
  qryGetEntityType.Parameters[0].Value := EntityID;
  qryGetEntityType.Open;
  Result := qryGetEntityType.Fields[0].AsInteger;
  qryGetEntityType.Close;
end;}

procedure TdtmEntityLoan.DelCurRelWrapper;
begin
  if MesDlg('Are you sure you want to delete this relationship?','C') = mrYes then
  begin
    DelRelationShip(qryERLink.FieldByName('EntityID').AsInteger,
      qryERLink.FieldByName('LinkID').AsInteger,
      qryERLink.FieldByName('Relation').AsInteger);


    if MesDlg('Delete cross-link relationship?', 'C') = mrYes then
    begin
      try
        qryERCrossLink.Parameters[0].Value := qryERLink.FieldByName('LinkID').AsInteger;
        qryERCrossLink.Open;
        if ShowLU(qryERCrossLink, 'Delete cross-link relationship - ' +
             qryERLink.FieldByName('EntCode').AsString) > - 1 then
          DelRelationShip(qryERCrossLink.FieldByName('EntityID').AsInteger,
            qryERCrossLink.FieldByName('LinkID').AsInteger,
            qryERCrossLink.FieldByName('Relation').AsInteger);
      finally
        qryERCrossLink.Close;
      end;
    end;

    qryERLink.Requery;
  end;
end;

procedure TdtmEntityLoan.DoLSerLU(inType: integer; FldUse: string);
var
  LUres : integer;
begin
  qryLSerLU.Close;
  qryLSerLU.CommandText :=
    'SELECT EntityID as IdVal, EntCode, Name,Name2,TelNo1 ' +
    'FROM EntityData ' +
    'WHERE EntityID in ' +
    ' (SELECT EntityID ' +
    ' FROM EntRelation ' +
    ' WHERE Relation = ' + IntToStr(inType) + ') ' +
    'ORDER BY EntCode';
 //qryLSerLU.Parameters[0].Value := inType; 
 qryLSerLU.Open;
 LUres := ShowLU(qryLSerLU,'Look up entity.');
 qryLSerLU.Close;
 if LURes <> -1 then
 begin
   //qryEntPsnAdd.Edit;
   //qryEntPsnAdd.FieldByName(FldUse).AsInteger := LUres;
   if not (qryPersonLoan.State in [dsInsert,dsEdit]) then
    qryPersonLoan.Edit;
   qryPersonLoan.FieldByName(FldUse).AsInteger := LUres;  
 end;
end;

function TdtmEntityLoan.GetLinkDet(inID: integer): string;
begin
(*  RunQry(qryToUse,'select EntCode+'' - ''+RTrim(ISNULL("Name",''''))+'', ''+'+
    'RTrim(ISNULL(Name2,''''))+''  tel.''+ISNULL(TelNo1,'''')'+
    'from EntityData where EntityID= '+IntToStr(inID),'O'); *)
    RunQry(qryToUse,'select EntCode+'' - ''+RTrim(ISNULL("Name",''''))+'', ''+'+
    'RTrim(ISNULL(Name2,''''))' + 
    'from EntityData where EntityID= '+IntToStr(inID),'O');
  Result := Trim(qryToUse.Fields[0].AsString);
  if not (Result = '') then
    if Result[Length(Result)] = ',' then
      Delete(Result,Length(Result),1);
end;

procedure TdtmEntityLoan.qryERLinkBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryErLink.Parameters.ParamByName('EntityID').Value := qryEntity.FieldByName('EntityId').AsInteger;
end;

procedure TdtmEntityLoan.qryEntPsnAddCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryEntPsnAdd.FieldByName('PeriodEmployed').AsString :=
    FormatFloat('##0.##',(Date - qryEntPsnAdd.FieldByName('EmpDate').AsFloat) /365) +
    ' year(s)';
end;

procedure TdtmEntityLoan.AddEntityRelation(LinkID, LinkType: integer);
var
  Relation : integer;
  RelationGroup, CrossLinkGroup: Integer;
begin
  if dtmEntityLoan.qryEntity.FieldByName('EntType').AsInteger = PSNType then
  begin
    if LinkType <> PSNType then
    begin
      RelationGroup  := 110026;
      CrossLinkGroup := 110025;
    end
    else
    begin
      RelationGroup  := 110001;
      CrossLinkGroup := 110001;
    end;
  end
  else //if dtmEntityLoan.qryEntity.FieldByName('EntType').AsInteger = CPYType then
  begin
    if LinkType <> CPYType then
    begin
      RelationGroup  := 110025;
      CrossLinkGroup := 110026;
    end
    else
    begin
      RelationGroup  := 110006;
      CrossLinkGroup := 110006;
    end;
  end;

  //FilterDataSet(qryERLU, 'GroupKey = ' + IntToStr(RelationGroup));
  qryERLU.Close;
  qryERLU.SQL.Strings[2] := 'WHERE GroupKey = ' + IntToStr(RelationGroup);
  qryERLU.Open;
  Relation  := ShowLU(qryERLU,'Relation type');
  if Relation <> -1 then
  begin
    AddRelationShip(qryEntity.FieldByName('EntityID').AsInteger, LinkID, Relation);
    qryERLink.Requery;
    if MesDlg('Do you want to cross link this relationship ?','C') = mrYes then
    begin
      //FilterDataSet(qryERLU, 'GroupKey = ' + IntToStr(CrossLinkGroup));
      qryERLU.Close;
      qryERLU.SQL.Strings[2] := 'WHERE GroupKey = ' + IntToStr(CrossLinkGroup);
      qryERLU.Open;
      Relation  := ShowLU(qryERLU,'Relation type');
      if Relation <> -1 then
      begin
        try
          AddRelationShip(LinkID, qryEntity.FieldByName('EntityID').AsInteger,Relation);
        except
          MesDlg('Cross link already exists.','E');
        end;
      end;
    end;
    qryERLink.Requery;
  end;
end;

procedure TdtmEntityLoan.SetEnqParam;
begin
  qryEnqHistory.Close;
  qryEnqHistory.Parameters.ParamByName('EntID').Value := qryEntity.FieldByName('EntityID').Asstring;
  qryEnqHistory.Open;
end;

procedure TdtmEntityLoan.UpdateEnqHistory(Status, EnqType: Integer);
var
  Command: String;
begin
  Command := 'Insert into BureauHistory(EntityID, EnqDate, EnqType, Status, CreateUser)' +
    ' Values(' +
    qryEntity.FieldByName('EntityID').AsString+ ', getdate(), ' +
    //FormatDateTime('yyyy-mm-dd',Date) + ''',' +
    IntToStr(EnqType) + ',' +
    IntToStr(Status) +  ',' +
    QuotedStr(dtmMain.CurrentID) + ')';
  dtmMain.dbData.Execute(Command);

 { qryUpdateEnqHist.Parameters.ParamByName('EntityID').Value := qryEntity.FieldByName('EntityID').AsInteger;
  qryUpdateEnqHist.Parameters.ParamByName('EnqType').Value := EnqType;
  qryUpdateEnqHist.Parameters.ParamByName('EnqDate').Value := Date;
  qryUpdateEnqHist.Parameters.ParamByName('Status').Value := Status;
  qryUpdateEnqHist.Execute;}
end;

procedure TdtmEntityLoan.UpdateNlrEnqRefNo;
begin
  qryUpdateNlrEnqRefNo.Parameters.ParamByName('EntityID').Value :=
    qryEntity.FieldByName('EntityID').AsInteger;
  qryUpdateNlrEnqRefNo.Parameters.ParamByName('NlrRefNo').Value :=
    GetNLREnqRefNo(qryEntity.FieldByName('RegNo').AsString);
  qryUpdateNlrEnqRefNo.Execute;
end;

function TdtmEntityLoan.UseCompuscan: Boolean;
begin
  qryTestCompuscan.Open;
  Result := qryTestCompuscan.FieldByname('ValInt').AsInteger <> 0;
  qryTestCompuscan.Close;
end;

procedure TdtmEntityLoan.qryPersonLoanCalcFields(DataSet: TDataSet);
{var
  SYear, SMonth, SDay: Word;
  EYear, EMonth, EDay: Word;
  Years, Months, Days: Integer;}
begin
  inherited;
{  DecodeDate(DataSet.FieldByName('EmpDate').AsDateTime, SYear, SMonth, SDay);
  DecodeDate(Date, EYear, EMonth, EDay);

  Years := EYear - Syear;
  Months := EMonth - SMonth;
  Days := EDay - SDay;  }

  DataSet.FieldByName('PeriodEmployed').AsString :=
    FormatFloat('##0.##',(Date - DataSet.FieldByName('EmpDate').AsFloat) /365) +
    ' year(s)';
end;

procedure TdtmEntityLoan.qryPersonLoanBeforePost(DataSet: TDataSet);
begin
//  if not VerifyTelNo(DataSet.FieldByName('TelNo1').AsString) then Abort;
//  if not VerifyTelNo(DataSet.FieldByName('TelNo2').AsString) then Abort;
//  if not VerifyTelNo(DataSet.FieldByName('TelNo3').AsString) then Abort;

  AllBeforePost(DataSet);
  qryPersonLoan.FieldByName('DateChange').AsDateTime := Date;
  qryPersonLoan.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
  qryPersonLoan.FieldByName('UpdateUserID').AsInteger := dtmMain.UserKey;
  
//  if DataSet.FieldByName('DefAdr').AsInteger > 0 then
//    CheckAddresses;

//  if DataSet.FieldByName('EntType').AsInteger = PSNtype then
//    VerifyIDno;
end;

procedure TdtmEntityLoan.qryPersonLoanBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsPayRuleLU.Open;
end;

procedure TdtmEntityLoan.qryPersonLoanAfterClose(DataSet: TDataSet);
begin
  inherited;
  dsPayRuleLU.Close;
  dsPayRules.Close;
end;

procedure TdtmEntityLoan.qryPersonLoanAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsPayRules.Open;
end;

procedure TdtmEntityLoan.dsAHVHistoryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TDateTimeField(dsAHVHistory.FieldByName('CreateDate')).DisplayFormat := ShortDateFormat + ' hh:mm';
end;

end.
