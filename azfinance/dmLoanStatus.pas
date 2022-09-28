unit dmLoanStatus;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmLoanStatus = class(TDataModule)
    qryLegalStatus: TADOQuery;
    qryIsBadDebt: TADODataSet;
    cmdReviewLastStatus: TADOCommand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmLoanStatus: TdtmLoanStatus;

implementation

uses dmMain;

{$R *.dfm}

end.
