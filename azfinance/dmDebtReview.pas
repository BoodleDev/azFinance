unit dmDebtReview;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmDebtReview = class(TDataModule)
    dsAccount: TADODataSet;
    dtsAccount: TDataSource;
    cmdInsert: TADOCommand;
    cmdUpdate: TADOCommand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmDebtReview: TdtmDebtReview;

implementation

uses dmMain;

{$R *.dfm}

end.
