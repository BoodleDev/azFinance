unit GetEdtFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, EdtFilter;

type
  TqType = (tqAnd,tqOr);
  TGetEdtFilter = class(TLabel)
  private
    { Private declarations }
    FActive: boolean;
    FFilterResult: string;
    FfeType: TqType;
    procedure SetActive(const Value: boolean);
    procedure SetfeType(const Value: TqType);
    procedure BuildFilter(const Value: string);
    procedure BuildAndSetFilter;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Active : boolean read FActive write SetActive;
    property FilterResult : string read FFilterResult;
    property feType : TqType read FfeType write SetfeType;
//    property DataSetToFilter
  end;

procedure Register;

implementation
{$R 'GetEdtFilter.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TGetEdtFilter]);
end;

{ TGetEdtFilter }

procedure TGetEdtFilter.BuildAndSetFilter;
var
  i : integer;
begin
  FFilterResult := '';
  for i := 0 to Self.Parent.ControlCount-1 do
  begin
    if (Self.Parent.Controls[i] is TEdtFilter) then
    begin
      if (Self.Parent.Controls[i] as TEdtFilter).feActive then
        BuildFilter((Self.Parent.Controls[i] as TEdtFilter).feFilterStr);
    end;
  end;
  FActive := False;
end;

procedure TGetEdtFilter.BuildFilter(const Value: string);
var
  AndOR : String;
begin
  AndOR := ' AND ';
  if FfeType = tqOR then
  AndOR := ' OR ';
  if Value <> '' then
  begin
    if FFilterResult <> '' then
      FFilterResult := FFilterResult + ANDOR + Value
    else
      FFilterResult := Value;
  end;
end;

constructor TGetEdtFilter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
    Height := 20;
    Width  := 20;
    Caption := 'GetEditFilter V 2';
    Visible := False;
end;


procedure TGetEdtFilter.SetActive(const Value: boolean);
begin
  FActive := Value;
  if FActive then
  begin
    BuildAndSetFilter;
  end;
end;


procedure TGetEdtFilter.SetfeType(const Value: TqType);
begin
  FfeType := Value
end;

end.
