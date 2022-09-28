unit dmSMSWizard;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmSMSWizard = class(TDataModule)
    cnSMS: TADOConnection;
    dsCategories: TADODataSet;
    dsTemplates: TADODataSet;
    dtsCategories: TDataSource;
    dtsTemplates: TDataSource;
    dsEntity: TADODataSet;
    qryLoans: TADOQuery;
    qryLoadTemplate: TADOQuery;
    cmdAddSMS: TADOCommand;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    FEntityID: Integer;
    FUserID: String;
    FRoleID: Integer;
    procedure SetEntityID(const Value: Integer);
    procedure SetUserID(const Value: String);
    procedure SetRoleID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    LoanList: TStringList;
    property EntityID: Integer read FEntityID write SetEntityID;
    property UserID: String read FUserID write SetUserID;
    property RoleID: Integer read FRoleID write SetRoleID;
    procedure GetTemplateCategories(List: TStrings);
  end;

var
  dtmSMSWizard: TdtmSMSWizard;
const
  ApplicationID = 100;

implementation

{$R *.dfm}

procedure TdtmSMSWizard.DataModuleDestroy(Sender: TObject);
begin
  dsEntity.Close;
  qryLoans.Close;
  FreeAndNil(LoanList);
end;

procedure TdtmSMSWizard.GetTemplateCategories(List: TStrings);
begin
  if not dsCategories.Active then
    dsCategories.Open;

  List.Clear;
  dsCategories.First;
  while not dsCategories.Eof do
  begin
    List.Add(dsCategories.FieldByName('Description').AsString);
    dsCategories.Next;
  end;
end;

procedure TdtmSMSWizard.SetEntityID(const Value: Integer);
begin
  FEntityID := Value;

  dsEntity.Close;
  dsEntity.Parameters[0].Value := EntityID;
  dsEntity.Open;

  LoanList.Clear;
  qryLoans.Parameters[0].Value := EntityID;
  qryLoans.Open;
  while not qryLoans.Eof do
  begin
    LoanList.Add(qryLoans.FieldByName('LoanRef').AsString);
    qryLoans.Next;
  end;
end;

procedure TdtmSMSWizard.SetUserID(const Value: String);
begin
  FUserID := Value;
end;

procedure TdtmSMSWizard.DataModuleCreate(Sender: TObject);
begin
  LoanList := TStringList.Create;
end;

procedure TdtmSMSWizard.SetRoleID(const Value: Integer);
begin
  FRoleID := Value;

  dsCategories.Parameters.ParamByName('RoleID').Value := RoleID;
end;

end.
