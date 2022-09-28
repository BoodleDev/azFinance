unit uADSI;

interface

uses
   Classes;

function ListAvailableDomains(aList: TStrings): Integer;
function GetCurrentDomain: string;
function ADsValidateUser(const aDomainName, aUsername, aPassword: 
WideString): Boolean;
function GetFullyQualifedUsername: string;
function GetComputerName: string;
function GetThreadUserName: string;

implementation

uses
   Windows, SysUtils, Registry, ActiveX;

type
   PWkstaInfo100 = ^TWkstaInfo100;
   _WKSTA_INFO_100 = record
     wki100_platform_id: DWORD;
     wki100_computername: LPWSTR;
     wki100_langroup: LPWSTR;
     wki100_ver_major: DWORD;
     wki100_ver_minor: DWORD;
   end;
   TWkstaInfo100 = _WKSTA_INFO_100;
   WKSTA_INFO_100 = _WKSTA_INFO_100;

   IADs = interface(IDispatch)
     ['{FD8256D0-FD15-11CE-ABC4-02608C9E7553}']
     function  Get_Name: WideString; safecall;
     function  Get_Class_: WideString; safecall;
     function  Get_GUID: WideString; safecall;
     function  Get_ADsPath: WideString; safecall;
     function  Get_Parent: WideString; safecall;
     function  Get_Schema: WideString; safecall;
     procedure GetInfo; safecall;
     procedure SetInfo; safecall;
     function  Get(const bstrName: WideString): OleVariant; safecall;
     procedure Put(const bstrName: WideString; vProp: OleVariant); safecall;
     function  GetEx(const bstrName: WideString): OleVariant; safecall;
     procedure PutEx(lnControlCode: Integer; const bstrName: WideString; 
vProp: OleVariant); safecall;
     procedure GetInfoEx(vProperties: OleVariant; lnReserved: Integer); 
safecall;
     property Name: WideString read Get_Name;
     property Class_: WideString read Get_Class_;
     property GUID: WideString read Get_GUID;
     property ADsPath: WideString read Get_ADsPath;
     property Parent: WideString read Get_Parent;
     property Schema: WideString read Get_Schema;
   end;

procedure EnumDomains(List: TStrings);

   procedure EnumFunc(NetResource: PNetResource);
   var
     Enum: THandle;
     Count, BufferSize: DWORD;
     Buffer: array[0..16384 div SizeOf(TNetResource)] of TNetResource;
     i: Integer;
   begin
     if WNetOpenEnum(RESOURCE_GLOBALNET, RESOURCETYPE_ANY, 
RESOURCEUSAGE_ALL, NetResource, Enum) = NO_ERROR then
     try
       Count := $FFFFFFFF;
       BufferSize := SizeOf(Buffer);
       while WNetEnumResource(Enum, Count, @Buffer, BufferSize) = 
NO_ERROR do
         for i := 0 to Count - 1 do begin
           if Buffer[i].dwDisplayType = RESOURCEDISPLAYTYPE_DOMAIN then
             List.Add(Buffer[i].lpRemoteName)
           else if (Buffer[i].dwUsage and RESOURCEUSAGE_CONTAINER) > 0 then
             EnumFunc(@Buffer[i]);
         end;
     finally
       WNetCloseEnum(Enum);
     end;
   end;

begin
   EnumFunc(nil);
end;

function NetWkstaGetInfo(Servername: PChar; Level: Cardinal; out BufPtr: 
Pointer): Cardinal; stdcall;
type
   TNetWkstaGetInfo = function(Servername: PChar; Level: Cardinal; out 
BufPtr: Pointer): Cardinal; stdcall;
var
   hLib: THandle;
   lNetWkstaGetInfo: TNetWkstaGetInfo;
begin
   Result := ERROR_NOT_SUPPORTED;

   hLib := GetModuleHandle('netapi32.dll');
   if hLib > 0 then begin
     lNetWkstaGetInfo := GetProcAddress(hLib, 'NetWkstaGetInfo');

     if Assigned(lNetWkstaGetInfo) then
       Result := lNetWkstaGetInfo(Servername, Level, BufPtr);
   end;
end;

function _GetCurrentDomain: string;
var
   Reg: TRegistry;
   pWI: PWkstaInfo100;
begin
   Result := '';

   if Win32Platform = VER_PLATFORM_WIN32_NT then begin
     if NetWkstaGetInfo(nil, 100, Pointer(pWI)) = 0 then
       Result := string(pWI.wki100_langroup);
   end else begin
     Reg := TRegistry.Create(KEY_READ);
     try
       Reg.RootKey := HKEY_LOCAL_MACHINE;
       if 
Reg.OpenKeyReadOnly('\System\CurrentControlSet\Services\MSNP32\NetworkProvider') 
then begin
         if Reg.ValueExists('AuthenticatingAgent') then
           Result := Reg.ReadString('AuthenticatingAgent');
         Reg.CloseKey;
       end;

       if (Result = '') and 
Reg.OpenKeyReadOnly('\System\CurrentControlSet\Services\VXD\VNETSUP') 
then begin
         if Reg.ValueExists('Workgroup') then
           Result := Reg.ReadString('Workgroup');
         Reg.CloseKey;
       end;
     finally
       Reg.Free;
     end;
   end;
end;

function ListAvailableDomains(AList: TStrings): Integer;
var
   Current: string;
begin
   AList.Clear;

   try
     EnumDomains(AList);
   except
   end;

   Current := GetCurrentDomain;

   if Current <> '' then begin
     Result := AList.IndexOf(Current);
     if Result = -1 then // shouldn't happen, but just in case
       Result := AList.Add(Current);
   end else
     Result := -1;
end;

function GetCurrentDomain: string;
begin
   try
     Result := _GetCurrentDomain;
   except
     Result := '';
   end;
end;

function ADsValidateUser(const aDomainName, aUsername, aPassword: 
WideString): Boolean;
const
   ADsLibName = 'activeds.dll';
   ADS_SECURE_AUTHENTICATION = $00000001;
type
   TADsOpenObject = function (
     lpszPathName: PWideChar;
     lpszUserName: PWideChar;
     lpszPassword: PWideChar;
     dwReserved: DWORD;
     const riid: TGUID;
     out pObject
   ): HRESULT; stdcall;
var
   hLib: THandle;
   lADsOpenObject: TADsOpenObject;
   Obj: IADs;
   Ret: HRESULT;
begin
   Result := False;

   hLib := LoadLibrary(PChar(ADsLibName));
   if hLib = 0 then
     raise Exception.CreateFmt('Unable to load required library %s.', 
[ADsLibName]);
   try
     lADsOpenObject := GetProcAddress(hLib, 'ADsOpenObject');
     if not Assigned(lADsOpenObject) then
       raise Exception.Create('Unable to find required ADSI api.');

     CoInitialize(nil);
     try
       Ret := lADsOpenObject(
         PWideChar('LDAP://' + aDomainName),
         PWideChar(aUsername),
         PWideChar(aPassword),
         ADS_SECURE_AUTHENTICATION,
         IADs,
         Obj
       );
       Obj := nil;

       Result := Succeeded(Ret);
     finally
       CoUninitialize;
     end;
   finally
     FreeLibrary(hLib);
   end;
end;

function GetComputerName: string;
var
   Buffer: PChar;
   BufferSize: DWORD;
begin
   BufferSize := MAX_COMPUTERNAME_LENGTH + 1;
   Buffer := AllocMem(BufferSize);
   try
     Windows.GetComputerName(Buffer, BufferSize);
     Result := string(Buffer);
   finally
     FreeMem(Buffer);
   end;
end;

function GetThreadUserName: string;
var
   Buffer: PChar;
   BufferSize: DWORD;
begin
   BufferSize := 128;
   Buffer := AllocMem(BufferSize);
   try
     Windows.GetUserName(Buffer, BufferSize);
     Result := string(Buffer);
   finally
     FreeMem(Buffer);
   end;
end;

function GetFullyQualifedUsername: string;
type
   TGetUserNameEx = function (NameFormat: Integer; lpNameBuffer: PChar; 
var nSize: Cardinal): LongBool; stdcall;
const
   NAME_SAM_COMPATIBLE = 2;
   SecurLib = 'secur32.dll';
var
   Buffer: PChar;
   BufferSize: DWORD;
   lGetUserNameEx: TGetUserNameEx;
   hLib: THandle;
   I: Integer;
begin
   Result := '';

   lGetUserNameEx := nil;
   hLib := LoadLibrary(PChar(SecurLib));
   if hLib > 0 then
     lGetUserNameEx := GetProcAddress(hLib, 'GetUserNameExA'); // this only exists in Win2k+

   if (hLib > 0) and Assigned(lGetUserNameEx) then begin
     // use provided api to retrieve formatted name
     try
       BufferSize := 128;
       Buffer := AllocMem(BufferSize);
       try
         for I := 1 to 2 do // maximum 2 attempts
           if not lGetUserNameEx(NAME_SAM_COMPATIBLE, Buffer, 
BufferSize) then begin
             if (GetLastError = ERROR_MORE_DATA) then
               ReallocMem(Buffer, BufferSize)
             else
               Break;
           end;

         Result := string(Buffer);
       finally
         FreeMem(Buffer);
       end;
     finally
       FreeLibrary(hLib);
     end;
   end else
     Result := GetComputerName + '\' + GetThreadUserName;
end;

end.

