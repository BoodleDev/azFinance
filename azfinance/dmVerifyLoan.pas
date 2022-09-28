unit dmVerifyLoan;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmVerifyLoan = class(TDataModule)
    qryAcceptQuote: TADODataSet;
    qrySignedQuote: TADOQuery;
    qryQuoteDate: TADOQuery;
    qryValidPayouts: TADOQuery;
    qryCheckFraudEnquiry: TADOQuery;
    qryOutdatedFraudEnquiry: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVerifyLoan: TdtmVerifyLoan;

implementation

uses dmMain;

{$R *.dfm}

end.
