unit uModCom;

interface

uses
  WinProcs, WinTypes, Messages, Classes;

function ObtainMappingHandle: THandle;
procedure CreateWinMessage;

var
  TheMsgVal: Word;
  TheMapHnd: THandle;
  TheHWnd: HWnd;

Const
  MaxMapLen  = 2000;
  wpString   = 1;
  wpValue    = 2;
  wpBitmap   = 3;
  wpShutDown = 4;
  wpOpen     = 5;
  wpShow     = 6;
  TheMsgConstant     = 'AZWinMessage';
  TheMappingConstant = 'AZMapConstant';

implementation

procedure CreateWinMessage;
begin
  TheMsgVal := RegisterWindowMessage(TheMsgConstant);
  TheMapHnd := ObtainMappingHandle;
end;

function ObtainMappingHandle: THandle;
begin
  Result := CreateFileMapping($FFFFFFFF,nil,PAGE_READWRITE,0,MaxMapLen,TheMappingConstant);
  if Result <> 0 then                                // Did it return a valid handle?
    if GetLastError = ERROR_ALREADY_EXISTS then      // Did it already exist?
      begin
        CloseHandle(Result);                         // Close this one - we will open existing one instead
        Result := OpenFileMapping(FILE_MAP_WRITE,False,TheMappingConstant);
      end;
end;

end.
