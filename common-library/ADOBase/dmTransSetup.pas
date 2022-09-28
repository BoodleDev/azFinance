unit dmTransSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmTransSetup = class(TDataModule)
    qryTMaster: TADODataSet;
    dtsTMaster: TDataSource;
    qryTCodes: TADODataSet;
    qryNewCode: TADODataSet;
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

{ TdtmTransSetup }

procedure TdtmTransSetup.SetDataStatus(Ready: boolean);
begin
  qryTMaster.Active := Ready;
  qryTCodes.Active  := Ready;
end;

procedure TdtmTransSetup.SetDBName(conStr: WideString);
begin
  qryTMaster.ConnectionString := conStr;
  qryTCodes.ConnectionString  := conStr;
  qryNewCode.ConnectionString := conStr;
  SetDataStatus(True);
end;

procedure TdtmTransSetup.DataModuleDestroy(Sender: TObject);
begin
  SetDataStatus(False);
end;

procedure TdtmTransSetup.SetAppID(AppID: integer);
begin
  qryTMaster.Close;
  qryTMaster.Parameters[0].Value := AppID;
end;

end.
