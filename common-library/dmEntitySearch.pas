unit dmEntitySearch;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmEntitySearch = class(TDataModule)
    cnSearch: TADOConnection;
    dsSearchAll: TADODataSet;
    dsSearch: TADODataSet;
    dtsSearch: TDataSource;
    dtsSearchAll: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BeginSearch(IDNo, FirstName, LastName: String);
  end;

var
  dtmEntitySearch: TdtmEntitySearch;

implementation

{$R *.dfm}

procedure TdtmEntitySearch.BeginSearch(IDNo, FirstName, LastName: String);
begin
  dsSearchAll.Close;
  dsSearchAll.Parameters.ParamByName('IDNo').Value := IDNo;
  dsSearchAll.Parameters.ParamByName('FirstName').Value := FirstName;
  dsSearchAll.Parameters.ParamByName('LastName').Value := LastName;
  dsSearchAll.Open;

  dsSearch.Close;
  dsSearch.Parameters.ParamByName('IDNo').Value := IDNo;
  dsSearch.Parameters.ParamByName('FirstName').Value := FirstName;
  dsSearch.Parameters.ParamByName('LastName').Value := LastName;
  dsSearch.Open;
end;

end.
