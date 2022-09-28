unit dmSecurity;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmSecurity = class(TDataModule)
    dsRole: TADODataSet;
    dsAccess: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    FRole: string;
    FRoleID: Integer;
    procedure SetRole(const Value: string);
    procedure SetRoleID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property RoleID: Integer read FRoleID write SetRoleID;
    property Role: string read FRole write SetRole;
    function AllowAccess(RightID: Integer): Boolean;
  end;

var
  dtmSecurity: TdtmSecurity;

implementation

uses dmMain;

{$R *.dfm}

{ TdtmSecurity }

procedure TdtmSecurity.SetRole(const Value: string);
begin
  FRole := Value;
end;

procedure TdtmSecurity.SetRoleID(const Value: Integer);
begin
  FRoleID := Value;
end;

procedure TdtmSecurity.DataModuleCreate(Sender: TObject);
begin
  dsRole.Parameters[0].Value := dtmMain.CurrentID;
  dsRole.Open;

  RoleID := dsRole.FieldByName('RoleID').AsInteger;
  Role := dsRole.FieldByName('Description').AsString;

  dsRole.Close;
end;

function TdtmSecurity.AllowAccess(RightID: Integer): Boolean;
begin
  dsAccess.Parameters.ParamByName('RoleID').Value := RoleID;
  dsAccess.Parameters.ParamByName('RightID').Value := RightID;
  dsAccess.Open;

  Result := dsAccess.FieldByName('Access').AsBoolean;

  dsAccess.Close;
end;

end.
