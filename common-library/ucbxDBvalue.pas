unit ucbxDBvalue;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, DB;

type
  TcbxDBvalue = class(TComboBox)
  private
    { Private declarations }
    FDataLink: TFieldDataLink;
    FValueLst: TStringList;
    function GetDataField : string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    procedure SetDataField(const value : string);
    procedure SetDataSource(Value: TDataSource);
    procedure DataChange(Sender: TObject);
    procedure UpdateData(Sender: TObject);
    procedure SetComboText(StrVal : string);
  protected
    { Protected declarations }
//    procedure Loaded; override;
    procedure Change; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    property Field : TField read getField;
  published
    { Published declarations }
    property DataField  : string read GetDataField  write SetDataField;
    property DataSource : TDataSource read GetDataSource write SetDataSource;
    property ValueList: TStringList read FValueLst write FValueLst;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TcbxDBvalue]);
end;

{ TcbxDBvalue }

procedure TcbxDBvalue.Change;
begin
  inherited Changed;
  Self.UpdateData(nil);
end;

constructor TcbxDBvalue.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink                 := TFieldDataLink.Create;
  FDataLink.Control         := Self;
  FDataLink.OnDataChange    := DataChange;
  FDataLink.OnUpdateData    := UpdateData;
  if not Assigned(FValueLst) then
    FValueLst := TStringList.Create;
end;

procedure TcbxDBvalue.DataChange(Sender: TObject);
begin
  if not (Style = csSimple) and DroppedDown then Exit;
//  if IntToStr(Self.Items.IndexOf(Self.Text)) <> FDataLink.Field.Text then
  if not FDataLink.Editing then
  begin
    if FDataLink.Field <> nil then
      SetComboText(FDataLink.Field.Text)
    else
      if csDesigning in ComponentState then
        SetComboText(Name)
      else
        SetComboText('');
  end;
end;

destructor TcbxDBvalue.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  FValueLst.Free;
  inherited Destroy;
end;

function TcbxDBvalue.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TcbxDBvalue.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TcbxDBvalue.GetField: TField;
begin
  Result := FDataLink.Field;
end;

{procedure TcbxDBvalue.Loaded;
begin
  inherited Loaded;
  if (csDesigning in ComponentState) then DataChange(Self);
end;}

procedure TcbxDBvalue.SetComboText(StrVal: string);
begin
  Self.ItemIndex := FValueLst.IndexOf(StrVal);
end;

procedure TcbxDBvalue.SetDataField(const value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TcbxDBvalue.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TcbxDBvalue.UpdateData(Sender: TObject);
begin
  FDataLink.Edit;
//  FDataLink.Field.Text := IntToStr(Self.ItemIndex);
  FDataLink.Field.Text := ValueList[Self.ItemIndex];
end;

end.
