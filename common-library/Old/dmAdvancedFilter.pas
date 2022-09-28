unit dmAdvancedFilter;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmAdvancedFilter = class(TDataModule)
    dbData: TADOConnection;
    dsExecute: TADODataSet;
    dtsExecute: TDataSource;
    dsFields: TADODataSet;
    dsLookup: TADODataSet;
    dsFilterUser: TADODataSet;
    cmdRemoveFilterUser: TADOCommand;
    dsAdminFilter: TADODataSet;
    dtsAdminFilter: TDataSource;
    dsAdminFields: TADODataSet;
    dtsAdminFields: TDataSource;
    dsFilterCaption: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure dbDataAfterConnect(Sender: TObject);
    procedure dbDataAfterDisconnect(Sender: TObject);
    procedure dsExecuteAfterOpen(DataSet: TDataSet);
    procedure dsAdminFieldsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    lstString: TStringList;
    lstMoney: TStringList;
    lstDate: TStringList;
  end;

var
  dtmAdvancedFilter: TdtmAdvancedFilter;

implementation

{$R *.dfm}

procedure TdtmAdvancedFilter.DataModuleCreate(Sender: TObject);
begin
  lstString := TStringList.Create;
  lstString.Add('Contains=LIKE ''%@%''');
  lstString.Add('Equals== ''@''');
  lstString.Add('Begins With=LIKE ''@%''');
  lstString.Add('Ends With=LIKE ''%@''');
  lstString.Add('Not Contains=NOT LIKE ''%@%''');
  lstString.Add('Not Equals=<> ''@''');
  lstString.Add('One Of=IN @');
  lstString.Add('Not One Of=NOT IN @');

  lstMoney := TStringList.Create;
  lstMoney.Add('Equals==@');
  lstMoney.Add('Equal or More Than=>=@');
  lstMoney.Add('More Than=>@');
  lstMoney.Add('Equal or Less Than=<=@');
  lstMoney.Add('Less Than=<@');

  lstDate := TStringList.Create;
  lstDate.Add('Equals==''@''');
  lstDate.Add('Between=BETWEEN');
  lstDate.Add('Before=<''@''');
  lstDate.Add('On or Before=<=''@''');
  lstDate.Add('After=>''@''');
  lstDate.Add('On or After=>''@''');
end;

procedure TdtmAdvancedFilter.dbDataAfterConnect(Sender: TObject);
begin
  dsFields.Open;
end;

procedure TdtmAdvancedFilter.dbDataAfterDisconnect(Sender: TObject);
begin
  dsFields.Close;
end;

procedure TdtmAdvancedFilter.dsAdminFieldsNewRecord(DataSet: TDataSet);
begin
  dsAdminFields.FieldByName('FilterID').AsInteger := dsAdminFields.Parameters[0].Value;
end;

procedure TdtmAdvancedFilter.dsExecuteAfterOpen(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to dsExecute.FieldCount - 1 do
    if dsExecute.Fields[I].DataType = ftBCD then
      TBCDField(dsExecute.Fields[I]).currency := True;

end;

end.
