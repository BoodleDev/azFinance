unit ADOImportExport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, db,
  ADODB;

type
  TExecuteType = (IEImport,IEExport);

type
  TADOImportExport = class(TComponent)
  private
    Connection: TADOConnection;
    DataSet: TADODataSet;
    FFilename: String;
    FDelimter: string;
    FDatasource: TDatasource;
    procedure SetFilename(const Value: String);
    procedure SetDelimter(const Value: string);
    procedure SetDatasource(const Value: TDatasource);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute(ExecuteType: TExecuteType): Boolean;
  published
    { Published declarations }
    property Filename: String read FFilename write SetFilename;
    property Delimter: string read FDelimter write SetDelimter;
    property Datasource: TDatasource read FDatasource write SetDatasource;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TADOImportExport]);
end;

{ TImportExport }

function TADOImportExport.Execute(ExecuteType: TExecuteType): Boolean;
begin
  Result := True;
end;

procedure TADOImportExport.SetDatasource(const Value: TDatasource);
begin
  FDatasource := Value;
  if Assigned(Datasource.DataSet) then
  begin
    DataSet := TADODataSet(Datasource.DataSet);
    Connection := DataSet.Connection;
  end;
end;

procedure TADOImportExport.SetDelimter(const Value: string);
begin
  FDelimter := Value;
end;

procedure TADOImportExport.SetFilename(const Value: String);
begin
  FFilename := Value;
end;

end.
 