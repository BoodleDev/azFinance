unit dmSecGrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Gauges, Unit32, ADODB;

type
  TdtmSecGrp = class(TDataModule)
    qryToUse: TADOQuery;
    qryUserGrp: TADODataSet;
    qrySrcFrms: TADODataSet;
    qryAppFrm: TADODataSet;
    qryGTAppsIDVal: TAutoIncField;
    qryGTApps: TADODataSet;
    qryFrmNameLU: TADODataSet;
    qryDestFrms: TADODataSet;
    qryFrmObj: TADODataSet;
    qryFrmObjLU: TADODataSet;
    qryAppID: TADODataSet;
    qryAppIDAppID: TIntegerField;
    qryAppIDUserGrp: TIntegerField;
    qryAppIDAppLU: TStringField;
    dtsUserGrp: TDataSource;
    qryAppFrmAppId: TIntegerField;
    qryAppFrmUserGrp: TIntegerField;
    qryAppFrmFrmID: TIntegerField;
    qryAppFrmObjID: TIntegerField;
    qryAppFrmObjE: TSmallintField;
    qryAppFrmObjV: TSmallintField;
    qryAppFrmObjDescLU: TStringField;
    dtsAppFrm: TDataSource;
    qryFrmObjFrmID: TIntegerField;
    qryFrmObjObjID: TIntegerField;
    qryFrmObjObjE: TSmallintField;
    qryFrmObjObjV: TSmallintField;
    qryFrmObjObjDescLU: TStringField;
    dtsFrmObj: TDataSource;
    dtsAppID: TDataSource;
    qryGTAppsApplication: TStringField;
    procedure qryUserGrpBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FgugProg: TGauge;
  public
    { Public declarations }
    property gugProg :TGauge read FgugProg write FgugProg;
    function AddNewUserGroup(NewGrp :string):integer;
    procedure LoadList(var lst :TStringList; DataSet :TDataSet; fldDesc,fldID: string);
    procedure SetDataStatus(Ready: boolean);
    procedure AddModuleToGrp(AppID :integer);
    procedure CopyModuleToGrp(AppID :integer);
    procedure DeleteGrp(Grp : integer);
    procedure AppFrmUpdate(Access: Integer);
    procedure FrmCompUpdate(Scope, Access: Integer);
  end;

var
  dtmSecGrp: TdtmSecGrp;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmSecGrp }

procedure TdtmSecGrp.AddModuleToGrp(AppID: integer);
var
  tmpSql : string;
begin
  tmpSql := 'insert into SecurityFrm select AppID,'+
    ' Cast('+qryUserGrp.FieldByName('TypeKey').AsString+' as Integer)'+
    ',FrmID,ObjID,Cast(0 as SmallInt), Cast(1 as SmallInt) from GTFrmObj'+
    ' where AppID='+IntToStr(AppID)+' and UseObj=1';
  Screen.Cursor := crHourGlass;
  try
    RunQry(qryToUse,tmpSql,'E');
  finally
    Screen.Cursor := crDefault;
  end;
  qryAppID.Close;
  qryAppID.Open;
end;

procedure TdtmSecGrp.qryUserGrpBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('UserID').AsString    := dtmMain.CurrentID;
  DataSet.FieldByName('DateAdd').AsDateTime := Now;
end;

function TdtmSecGrp.AddNewUserGroup(NewGrp :string): integer;
begin
  RunQry(qryToUse,'select max(TypeKey)+1 from CodeTable where GroupKey=90000','O');
  Result := qryToUse.Fields[0].AsInteger;
  qryUserGrp.Insert;
  qryUserGrp.FieldByName('TypeKey').AsInteger    := Result;
  qryUserGrp.FieldByName('GroupKey').AsInteger   := 90000;
  qryUserGrp.FieldByName('Description').AsString := NewGrp;
  qryUserGrp.FieldByName('UserID').AsString      := dtmMain.CurrentID;
  qryUserGrp.Post;
  qryToUse.Close;
{  RunQuery(qryToUse,'insert into CodeTable values('+newKey+',90000,'''+
    NewGrp+''',0,'''+dtmMain.CurrentID+''','''+ForamtDateTime('mm/dd/yyyy',Date),'E');
}
end;

procedure TdtmSecGrp.CopyModuleToGrp(AppID :integer);
var
  i : integer;
begin
  qrySrcFrms.Parameters[0].Value := AppID;
  qrySrcFrms.Open;
  qryDestFrms.Open;
  gugProg.MaxValue := qrySrcFrms.RecordCount;
  qrySrcFrms.First;
  while not qrySrcFrms.EOF do
  begin
    qryDestFrms.Insert;
    for i := 0 to qrySrcFrms.FieldCount-1 do
      qryDestFrms.Fields[i].AsVariant := qrySrcFrms.Fields[i].AsVariant;
    qryDestFrms.FieldByName('UserGrp').AsInteger := qryUserGrp.FieldByName('TypeKey').AsInteger;
    qryDestFrms.Post;
    qrySrcFrms.Next;
    Application.ProcessMessages;
    gugProg.Progress := gugProg.Progress + 1;
  end;
  gugProg.Progress := gugProg.MaxValue;
  qrySrcFrms.Close;
  qryDestFrms.Close;
  //
  qryAppID.Close;
  qryAppID.Open;
end;

procedure TdtmSecGrp.LoadList(var lst: TStringList; DataSet: TDataSet;
  fldDesc, fldID: string);
begin
  lst.Clear;
  Screen.Cursor := crHourGlass;
  DataSet.DisableControls;
  try
    DataSet.First;
    while not DataSet.EOF do
    begin
      lst.Add(DataSet.FieldByName(fldDesc).AsString+'='+
        DataSet.FieldByName(fldID).AsString);
      DataSet.Next;
    end;
  finally
    Screen.Cursor := crDefault;
    DataSet.EnableControls;
  end;
end;

procedure TdtmSecGrp.SetDataStatus(Ready: boolean);
begin
  qryGTApps.Active    := Ready;
  qryUserGrp.Active   := Ready;
  qryAppID.Active     := Ready;
  qryFrmObjLU.Active  := Ready;
  qryFrmNameLU.Active := Ready;
  qryAppFrm.Active    := Ready;
  qryFrmObj.Active    := Ready;
end;

procedure TdtmSecGrp.DeleteGrp(Grp: integer);
begin
//
end;

procedure TdtmSecGrp.AppFrmUpdate(Access: Integer);
begin
  qryAppFrm.DisableControls;
  qryAppFrm.First;
  while not qryAppFrm.Eof do
  begin
    qryAppFrm.Edit;
    qryAppFrm.FieldByName('OBJE').AsInteger := Access;
    qryAppFrm.Post;
    qryAppFrm.Next;
  end;
  qryAppFrm.First;
  qryAppFrm.EnableControls;
end;

procedure TdtmSecGrp.FrmCompUpdate(Scope, Access: Integer);
begin
  qryFrmObj.DisableControls;
  qryFrmObj.First;
  while not qryAppFrm.Eof do
  begin
    qryFrmObj.Edit;
    qryFrmObj.FieldByName('OBJE').AsInteger := Access;
    qryFrmObj.Post;
    qryFrmObj.Next;
  end;
  qryFrmObj.First;
  qryFrmObj.EnableControls;
end;

end.
