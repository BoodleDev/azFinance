unit uCallDll;

interface

uses SysUtils, Windows, Dialogs;

type
  TStrBool = function(s:string):boolean; stdcall;

  function DllStrBool(DllName,DllFunc:string; inStr:string): Boolean;

implementation

function DllStrBool(DllName,DllFunc:string; inStr:string): Boolean;
var
  HInst : THandle;
  FPointer : TFarProc;
  DllFunct : TStrBool;
begin
  Result := False;
  HInst := LoadLibrary(PChar(DllName));
  if HInst > 0 then
    try
      FPointer := GetProcAddress(HInst,PChar(DllFunc));
      if FPointer <> nil then
      begin
        DllFunct := TStrBool(FPointer);
        Result := DllFunct(inStr);
      end;
    finally
      FreeLibrary(HInst);
    end
  else
    ShowMessage(DllName +' library not found.');
end;

end.
