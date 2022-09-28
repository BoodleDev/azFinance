unit dmEmployer;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmEmployer = class(TDataModule)
    dsSearch: TADODataSet;
    dtsSearch: TDataSource;
    dsSearchEntityID: TIntegerField;
    dsSearchRegNo: TStringField;
    dsSearchFullname: TStringField;
    dsSearchWordsMatched: TIntegerField;
    dsSearchCompanyName: TStringField;
    dsSearchTradingName: TStringField;
    dsClient: TADODataSet;
    dtsClient: TDataSource;
    dsEmploymentConfirmation: TADODataSet;
    dtsEmploymentConfirmation: TDataSource;
    dsEmployer: TADODataSet;
    dtsEmployer: TDataSource;
    dsClientAccounts: TADODataSet;
    dtsClientLoans: TDataSource;
    dsSearchCompanyCode: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmEmployer: TdtmEmployer;

implementation

uses dmMain;

{$R *.dfm}

end.
