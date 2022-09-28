unit dmUserSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Unit32, ADODB;

type
  TdtmUserSetup = class(TDataModule)
    qryUsers: TADODataSet;
    qryUAG: TADODataSet;
    qryGrpAppLU: TADODataSet;
    dtsUAG: TDataSource;
    dtsUsers: TDataSource;
    qryToUse: TADOQuery;
    qryGrpAppLUIDVal: TIntegerField;
    qryGrpAppLUAppID: TIntegerField;
    qryGrpAppLUApplication: TStringField;
    qryGrpAppLUDescription: TStringField;
    qryUserGroups: TADODataSet;
    qryGroupApps: TADODataSet;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryUsersNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RefreshUAG;
  public
    { Public declarations }
    procedure SetUserDetStatus(Ready :boolean);
    procedure AddCurUsrGrpApp;
    procedure DelUsrGrpApp(DoAll :boolean);
  end;

//var
//  dtmUserSetup: TdtmUserSetup;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmUserSetup.AddCurUsrGrpApp;
begin
{  RunQry(qryToUse,'insert into SecurityUAG values('''+
    qryUsers.FieldByName('UserID').AsString+''','+
    qryGrpAppLU.FieldByName('AppID').AsString+','+
    qryGrpAppLU.FieldByName('IDVal').AsString+')','E');}
  dtmMain.dbData.Execute(
    'INSERT INTO UserGroups VALUES (' +
    QuotedStr(qryUsers.FieldByName('UserID').AsString) + ',' +
    qryGroupApps.FieldByName('GroupID').AsString + ',' +
    'getdate(),' + QuotedStr(dtmMain.CurrentID) + ')');
  qryUserGroups.Requery;
  qryGroupApps.Requery;
//  RefreshUAG;
end;

procedure TdtmUserSetup.DataModuleCreate(Sender: TObject);
begin
  qryUsers.Open;
end;

procedure TdtmUserSetup.DataModuleDestroy(Sender: TObject);
begin
  qryUsers.Close;
end;

procedure TdtmUserSetup.DelUsrGrpApp(DoAll :boolean);
var
  tmpSQL : string;
begin
{  tmpSQL := 'delete from SecurityUAG where UserID='''+
    qryUsers.FieldByName('UserID').AsString+'''';
  if not DoAll then
    tmpSQL := tmpSQL +' and AppID='+qryUAG.FieldByName('AppID').AsString;
}

  tmpSQL := 'DELETE FROM UserGroups WHERE UserID=' +
    QuotedStr(qryUsers.FieldByName('UserID').AsString);
  if not DoAll then
    tmpSQL := tmpSQL + ' AND UserGroup = ' +
    qryUserGroups.FieldByName('GroupID').AsString;

  RunQry(qryToUse,tmpSQL,'E');
  qryGroupApps.Requery;
  qryUserGroups.Requery;
  //RefreshUAG;
end;

procedure TdtmUserSetup.RefreshUAG;
begin
  qryUAG.DisableControls;
  try
    qryUAG.Close;
    qryUAG.Open;
    qryGrpAppLU.Close;
    qryGrpAppLU.Open;
  finally
    qryUAG.EnableControls;
  end;
end;

procedure TdtmUserSetup.SetUserDetStatus(Ready :boolean);
begin
  if Ready then
  begin
    qryGrpAppLU.Parameters[0].Value := qryUsers.FieldByName('UserID').AsString;
    qryGroupApps.Parameters[0].Value := qryUsers.FieldByName('UserID').AsString;
    qryUserGroups.Parameters[0].Value := qryUsers.FieldByName('UserID').AsString;
  end;
  qryUserGroups.Active := Ready;
  qryUAG.Active := Ready;
  qryGrpAppLU.Active := Ready;
  qryGroupApps.Active := Ready;
end;

procedure TdtmUserSetup.qryUsersNewRecord(DataSet: TDataSet);
begin
  qryUsers.FieldByName('UserPass').AsString := 'a';
end;

end.


