unit ucbxDBList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB;

type
  TcbxDBList = class(TComboBox)
  private
    { Private declarations }
    FOnChange: TNotifyEvent;
    lstDB : TStringList;
    FDataSet: TDataSet;
    FKeyVal: string;
    DataSts : boolean;
    FKeyField: string;
    FListField: string;
    procedure SetDataSet(const Value: TDataSet);
    procedure LoadDataIntoList;
    procedure LoadDBListIntoItems;
    procedure SetKeyField(const Value: string);
    procedure SetListField(const Value: string);
  protected
    { Protected declarations }
    procedure Change; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property OnChange;
    property KeyVal : string read FKeyVal;
    property KeyField : string read FKeyField write SetKeyField;
    property ListField : string read FListField write SetListField;
    property DataSet :TDataSet read FDataSet write SetDataSet;
    procedure LoadCBX;
  end;

procedure Register;

implementation
{$R 'ucbxDBList.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TcbxDBList]);
end;

{ TcbxDBList }

procedure TcbxDBList.SetKeyField(const Value: string);
begin
  FKeyField := Value;
end;

procedure TcbxDBList.SetListField(const Value: string);
begin
  FListField := Value;
end;

procedure TcbxDBList.Change;
begin
  FKeyVal := lstDB.Values[Self.Text];
  inherited Change;
  if Assigned(FOnChange) then FOnChange(Self);
end;

constructor TcbxDBList.Create(AOwner: TComponent);
begin
  inherited;
  Self.Style := csDropDownList;
  FKeyVal := '';
  if not (csDesigning in ComponentState) then
  begin
    lstDB := TStringList.Create;
  end;
end;

destructor TcbxDBList.Destroy;
begin
  inherited;
  lstDB.Free;
  lstDB := nil;
end;

procedure TcbxDBList.LoadCBX;
begin
  if Assigned(DataSet) then
  begin
    LoadDataIntoList;
    LoadDBListIntoItems;
  end;  
end;

procedure TcbxDBList.LoadDataIntoList;
var
  fldList : TStringList;
  i : integer;
  tmpStr : string;
begin
  Screen.Cursor := crHourGlass;
  // Load KeyFields into strings
  fldList := TStringList.Create;
  tmpStr := ListField;
  while Pos(';',tmpStr) <> 0 do
  begin
    fldList.Add(Copy(tmpStr,1,Pos(';',tmpStr)-1));
    Delete(tmpStr,1,Pos(';',tmpStr));
  end;
  if Length(tmpStr) <> 0 then
    fldList.Add(tmpStr);
  //
  lstDB.Clear;
  DataSts := DataSet.Active;
  DataSet.DisableControls;
  try
//    if DataSet.Active then
//      DataSet.Close;
    if not DataSet.Active then
      DataSet.Open;
    DataSet.First;
    while not DataSet.EOF do
    begin
      tmpStr := '';
      for i := 0 to fldList.Count -1 do
        tmpStr := tmpStr + DataSet.FieldByName(fldList[i]).AsString + ', ';
      //
      Delete(tmpStr,Length(tmpStr)-1,2);  
      lstDB.Add(tmpStr+'='+DataSet.FieldByName(KeyField).AsString);
      DataSet.Next;
    end;
  finally
    Screen.Cursor := crDefault;
    DataSet.EnableControls;
    DataSet.Active := DataSts;
    fldList.Free;
    // fldList := nil; compiler ignore
  end;
end;

procedure TcbxDBList.LoadDBListIntoItems;
var
  i : integer;
begin
  Self.Items.Clear;
  for i := 0 to lstDB.Count -1 do
  begin
    Self.Items.Add(lstDB.Names[i]);
  end;
  Self.ItemIndex := 0;
  FKeyVal := lstDB.Values[Self.Text];
end;

procedure TcbxDBList.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
end;

end.
