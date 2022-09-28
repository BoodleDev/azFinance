unit UnitPlus;

interface

uses Windows, Classes, Controls, SysUtils, Math, DBStyleGrid;

procedure DBGridColumnsResize(DBGrid: TDBStyleGrid);

function LoadModuleModal(sModuleFile, sFormClass, sProcess: String;
  Vars: TStringList): TModalResult;

implementation

procedure DBGridColumnsResize(DBGrid: TDBStyleGrid);
var
  I: Integer;
  ColWidth: Integer;
begin
  ColWidth := 0;
  for I := 0 to DBGrid.Columns.Count - 1 do
    ColWidth := ColWidth + DBGrid.Columns[I].Width;

  for I := 0 to DBGrid.Columns.Count - 1 do
    DBGrid.Columns[I].Width := Ceil((DBGrid.Columns[I].Width/ColWidth) *
      (DBGrid.ClientWidth - 15));
end;

function LoadModuleModal(sModuleFile, sFormClass, sProcess: String;
  Vars: TStringList): TModalResult;
var
  ExecF: function (const V1: TStringList): TModalResult;
  HandlePack: HModule;
begin
  Result := mrNone;
  HandlePack := LoadPackage(ExtractFilePath(ParamStr(0)) + sModuleFile);
  if HandlePack <> 0 then
    try
      @ExecF := GetProcAddress(HandlePack, PAnsiChar(sProcess));
      if Assigned(ExecF) then
        Result := ExecF(Vars);
    finally
      UnloadPackage(HandlePack);
      //HandlePack := 0;
    end;
end;

end.
 