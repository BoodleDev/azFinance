unit dmLoanFlags;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmLoanFlags = class(TDataModule)
    dsFlags: TADODataSet;
    dsGetCategory: TADODataSet;
    dsFlagHistory: TADODataSet;
    dtsFlagHistory: TDataSource;
    dsCurrentFlag: TADODataSet;
    cmdInsertFlag: TADOCommand;
    procedure dsFlagHistoryAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmLoanFlags: TdtmLoanFlags;

implementation

uses dmMain;

{$R *.dfm}

procedure TdtmLoanFlags.dsFlagHistoryAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(dsFlagHistory.FieldByName('CreateDate')).DisplayFormat := ShortDateTimeFormat;
end;

end.
