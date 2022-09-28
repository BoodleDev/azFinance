unit DBgrdLookUp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DB;

type
  TDBgrdLookUp = class(TDBGrid)
  private
    { Private declarations }
    LookUpTimer: TTimer;
    CurrentLookup : string;
    FLookUpActive: boolean;
    FLookUpInterval: integer;
    FLookUpFld: string;
    procedure SetLookUpActive(const Value: boolean);
    procedure SetLookUpFld(const Value: string);
    procedure SetLookUpInterval(const Value: integer);
  protected
    { Protected declarations }
    procedure TimerEvent(Sender : TObject);// virtual
    procedure ColEnter; override;
    procedure ColExit; override;
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property LookUpActive : boolean read FLookUpActive write SetLookUpActive;
    property LookUpFld: string read FLookUpFld write SetLookUpFld;
    property LookUpInterval : integer read FLookUpInterval write SetLookUpInterval;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TDBgrdLookUp]);
end;

{ TDBgrdLookUp }

procedure TDBgrdLookUp.ColEnter;
begin
  inherited;
  if Assigned(SelectedField) and (SelectedIndex<>-1) then
  begin
    LookUpFld := SelectedField.FieldName;
    Columns[SelectedIndex].Title.Color := clTeal;
  end;
end;

procedure TDBgrdLookUp.ColExit;
begin
  inherited;
  if Assigned(SelectedField) and (SelectedIndex<>-1) then
  begin
    Columns[SelectedIndex].Title.Color := clBtnFace;
  end;
end;

constructor TDBgrdLookUp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ReadOnly := True;
  LookUpTimer := TTimer.Create(Self);
  LookUpTimer.Enabled := False;
  LookUpTimer.Interval:= 1000;
  LookUpTimer.OnTimer := TimerEvent;
  LookUpActive := False;
  LookUpInterval:= 2000;
end;

destructor TDBgrdLookUp.Destroy;
begin
  LookUpTimer.Enabled := FLookUpActive;
  if Assigned(LookUpTimer) then
  begin
    LookUpTimer.Free;
    LookUpTimer := nil;
  end;
  inherited Destroy;
end;

procedure TDBgrdLookUp.KeyPress(var Key: Char);
begin
  inherited;
  CurrentLookUp := CurrentLookUp + Key;
  if Assigned(DataSource.DataSet) then
  begin
    DataSource.DataSet.Locate(LookUpFld,CurrentLookUp,[loCaseInsensitive,loPartialKey]);
  end;
end;

procedure TDBgrdLookUp.TimerEvent(Sender: TObject);
begin
  CurrentLookUp := ''
end;

procedure TDBgrdLookUp.SetLookUpActive(const Value: boolean);
begin
  FLookUpActive := Value;
  LookUpTimer.Enabled := Value;
  //
  if (Value) and (Assigned(DataSource.DataSet)) then
  begin
    if SelectedIndex = 0 then
      SelectedIndex := 0;
    Columns[SelectedIndex].Title.Color := clTeal;
    LookUpFld := SelectedField.FieldName;
  end;
end;

procedure TDBgrdLookUp.SetLookUpFld(const Value: String);
begin
  FLookUpFld := Value;
end;

procedure TDBgrdLookUp.SetLookUpInterval(const Value: integer);
begin
  FLookUpInterval := Value;
  LookUpTimer.Interval := Value;
end;

end.
