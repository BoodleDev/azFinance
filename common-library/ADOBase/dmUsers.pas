unit dmUsers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32;

type
  TdtmUsers = class(TDataModule)
    qryLUUsrGrp: TADODataSet;
    qryUsrLst: TADODataSet;
    dtsUsrLst: TDataSource;
    qryUsrLstName: TStringField;
    qryUsrLstSurname: TStringField;
    qryUsrLstUserID: TStringField;
    qryUsrLstAppID: TIntegerField;
    qryLUApps: TADODataSet;
    qryUsrLstLUApp: TStringField;
    qryUsrLstUsrGrp: TIntegerField;
    qryUsrLstLUGroup: TStringField;
    qryToUse: TADOQuery;
    qryLUusers: TADODataSet;
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryLUusersBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetActiveQueries(Ready: Boolean);
    procedure ExeAQry(inSQL:string);
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmUsers }

procedure TdtmUsers.SetActiveQueries(Ready: Boolean);
begin
  qryUsrLst.Active    := Ready;
  qryLUUsrGrp.Active := Ready;
end;

procedure TdtmUsers.DataModuleDestroy(Sender: TObject);
begin
  SetActiveQueries(False);
end;

procedure TdtmUsers.ExeAQry(inSQL: string);
begin
  RunQry(qryToUse,inSQL,'E');
end;

procedure TdtmUsers.qryLUusersBeforeOpen(DataSet: TDataSet);
begin
  qryLUusers.Parameters[0].Value := qryUsrLst.FieldByName('AppID').AsInteger;
end;

end.
