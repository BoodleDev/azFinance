unit dmCodeTbl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmCodeTbl = class(TDataModule)
    qryTypeTbl: TADODataSet;
    qryCodeTbl: TADODataSet;
    qryNewCode: TADODataSet;
    dtsTypeTbl: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataStatus(Ready: boolean);
  public
    { Public declarations }
    procedure SetDBName(conStr : WideString);
    procedure SetAppID(AppID : integer);
  end;

implementation

{$R *.DFM}

{ TdtmCodeTbl }

procedure TdtmCodeTbl.SetDataStatus(Ready: boolean);
begin
  qryTypeTbl.Active := Ready;
  qryCodeTbl.Active := Ready;
end;

procedure TdtmCodeTbl.SetDBName(conStr: WideString);
begin
  qryTypeTbl.ConnectionString := conStr;
  qryCodeTbl.ConnectionString := conStr;
  qryNewCode.ConnectionString := conStr;
  SetDataStatus(True);
end;

procedure TdtmCodeTbl.DataModuleDestroy(Sender: TObject);
begin
  SetDataStatus(False);
  qryTypeTbl.Filter := '';
  qryTypeTbl.Filtered := False;
end;

procedure TdtmCodeTbl.SetAppID(AppID: integer);
begin
  qryTypeTbl.Close;
  qryTypeTbl.Parameters[0].Value := AppID;
end;

end.
