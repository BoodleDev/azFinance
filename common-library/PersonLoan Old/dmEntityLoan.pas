unit dmEntityLoan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dmEntity, ADODB, Db, Unit32, uBureau;

type
  TdtmEntityLoan = class(TdtmEntity)
    qryERLU: TADODataSet;
    qryERLUIdVal: TAutoIncField;
    dtsERLU: TDataSource;
    qryERLUDescription: TStringField;
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
    qryERLUGroupKey: TIntegerField;
    qryEntPsnAddDepartment: TStringField;
    procedure qryEntCpyAddAfterInsert(DataSet: TDataSet);
    procedure qryERLinkBeforeOpen(DataSet: TDataSet);
    procedure qryEntPsnAddCalcFields(DataSet: TDataSet);
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
  qryLUStatus.Active := Ready;
  qryEntity.Active := Ready;
  qryERLink.Active  := Ready;
  qryERLu.Active    := Ready;
  qryLUEntInd2.Active := Ready;
//  qryModRel.Active  := Ready;
  if EntType = PSNtype then
    qryEntPsnAdd.Active := Ready;
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
{    if MesDlg('Delete cross relationship?','C') = mrYes then
      DelRelationShip(qryERLink.FieldByName('LinkID').AsInteger,
       qryERLink.FieldByName('EntityID').AsInteger,
       qryERLink.FieldByName('Relation').AsInteger);
}    // delete main relation
    DelRelationShip(qryERLink.FieldByName('EntityID').AsInteger,
      qryERLink.FieldByName('LinkID').AsInteger,
      qryERLink.FieldByName('Relation').AsInteger);
    qryERLink.Requery;  
  end;
end;

procedure TdtmEntityLoan.DoLSerLU(inType: integer; FldUse: string);
var
  LUres : integer;
begin
 qryLSerLU.Close;
 qryLSerLU.Parameters[0].Value := inType; 
 qryLSerLU.Open;
 LUres := ShowLU(qryLSerLU,'Look up entity.');
 qryLSerLU.Close;
 if LURes <> -1 then
 begin
   qryEntPsnAdd.Edit;
   qryEntPsnAdd.FieldByName(FldUse).AsInteger := LUres;
 end;
end;

function TdtmEntityLoan.GetLinkDet(inID: integer): string;
begin
  RunQry(qryToUse,'select EntCode+'' - ''+RTrim(ISNULL("Name",''''))+'', ''+'+
    'RTrim(ISNULL(Name2,''''))+''  tel.''+ISNULL(TelNo1,'''')'+
    'from EntityData where EntityID= '+IntToStr(inID),'O');
  Result := qryToUse.Fields[0].AsString;
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

  FilterDataSet(qryERLU, 'GroupKey = ' + IntToStr(RelationGroup));
  Relation  := ShowLU(qryERLU,'Relation type');
  if Relation <> -1 then
  begin
    AddRelationShip(qryEntity.FieldByName('EntityID').AsInteger, LinkID, Relation);
    qryERLink.Requery;
    if MesDlg('Do you want to cross link this relationship ?','C') = mrYes then
    begin
      FilterDataSet(qryERLU, 'GroupKey = ' + IntToStr(CrossLinkGroup));
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

end.
