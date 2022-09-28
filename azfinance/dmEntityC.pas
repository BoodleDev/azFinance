unit dmEntityC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dmEntity, ADODB, Db, Unit32;

type
  TdtmEntityC = class(TdtmEntity)
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
    procedure qryEntCpyAddAfterInsert(DataSet: TDataSet);
    procedure qryERLinkBeforeOpen(DataSet: TDataSet);
    procedure qryEntPsnAddAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetLinkDet(inID: integer): string;
    procedure SetAllQueries(Ready: Boolean);
    procedure AddEntEntRelation(LinkEnt: integer);
    procedure DelCurRelWrapper;
    procedure DoLSerLU(inType: integer; FldUse: string);
  end;

var
  dtmEntityC: TdtmEntityC;

implementation

uses uBase32, dmMain, uConst, uLScentral;

{$R *.DFM}

{ TdtmEntityC }

procedure TdtmEntityC.SetAllQueries(Ready: Boolean);
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

procedure TdtmEntityC.qryEntCpyAddAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EntityID').AsInteger := CurID;
  if DataSet.FieldByName('Nationality').IsNull then
   DataSet.FieldByname('Nationality').AsInteger := 110012001;
end;

procedure TdtmEntityC.AddEntEntRelation(LinkEnt: integer);
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

procedure TdtmEntityC.DelCurRelWrapper;
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

procedure TdtmEntityC.DoLSerLU(inType: integer; FldUse: string);
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

function TdtmEntityC.GetLinkDet(inID: integer): string;
begin
  RunQry(qryToUse,'select EntCode+'' - ''+RTrim(ISNULL("Name",''''))+'', ''+'+
    'RTrim(ISNULL(Name2,''''))+''  tel.''+ISNULL(TelNo1,'''')'+
    'from EntityData where EntityID= '+IntToStr(inID),'O');
  Result := qryToUse.Fields[0].AsString;
end;

procedure TdtmEntityC.qryERLinkBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryErLink.Parameters.ParamByName('EntityID').Value := qryEntity.FieldByName('EntityId').AsInteger;
end;

procedure TdtmEntityC.qryEntPsnAddAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qryEntPsnAdd.RecordCount = 0 then
  begin
    qryEntPsnAdd.Append;
    qryEntPsnAdd.Post;
  end;
end;

end.
