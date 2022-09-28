unit dmAccountFlag;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmAccountFlag = class(TDataModule)
    dsFlags: TADODataSet;
    cmdDisableFlag: TADOCommand;
    cmdEnableFlag: TADOCommand;
    cmdAddFlag: TADOCommand;
    dsCurrentFlags: TADODataSet;
    dtsCurrentFlags: TDataSource;
    dsHistoryFlags: TADODataSet;
    dtsHistroyFlags: TDataSource;
    cmdDeleteFlag: TADOCommand;
    dsSubFlags: TADODataSet;
    dtsSubFlags: TDataSource;
    dtsFlags: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmAccountFlag: TdtmAccountFlag;

implementation

uses dmMain;

{$R *.dfm}

end.
