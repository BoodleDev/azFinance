unit dmLegalSettlement;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmLegalSettlement = class(TDataModule)
    dbLegal: TADOConnection;
    dsLoan: TADODataSet;
    dsSettle: TADODataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmLegalSettlement: TdtmLegalSettlement;

implementation

{$R *.dfm}

end.
