{===============================================================================
 Author         : Gerard Prins
 Date           : 9/9/2004
 Unit           :
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
unit uBureau;

interface

uses Windows, SysUtils, Controls, Forms, StdCtrls, ExtCtrls, Menus, Unit32, DB,
     uConst, ShellAPI, Dialogs;

function GetErrorMsg(ErrorCode : Integer) : String;
function CSRequestResponseFile(Username, Password, BranchCode, DestPath : String; JobID, RetFileFlag : Integer) : Integer;
function CSRequestJobStatus(Username, Password, BranchCode : String; JobID : Integer) : Integer;
function GetCSLoginInfo(LoginType : Integer) : String;
function CSSendBatch(Username, Password, BranchCode, ThePathFile,
                                      FileType,ENQ_Response_Format, origin : String) : integer;
function CSSendCurrent(p_UserName,p_Password,p_SrchID,p_SrchName,
                                p_SrchSurname,p_ResultPath,p_ResultFormat : String;
                                p_SearchType: integer; p_UnzipResult : Integer; p_ZipFilename : String): Integer;
function OpenEnqResult(EntID, BatchType, EnqDate : String) : String;
function GetNLREnqRefNo(EntID : String) : String;

procedure UpdateCSLoginInfo(TempDir, Username, Password, Branch, Server : String);


Const

  CSDir      = 1;
  CSUsername = 2;
  CSPassword = 3;
  CSBranch   = 4;

  CCEnq        = 1;
  NLREnq       = 2;
  ExperianEnq  = 3;
  CSNLREnq     = 4;
  CSExprianEnq = 5;
  NLRExperian  = 6;
  CSNLRExpEnq  = 7;

implementation


procedure UpdateCSLoginInfo(TempDir, Username, Password, Branch, Server : String);
begin
  WriteIni(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','General','TempZipDir', TempDir);
  WriteIni(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','Settings','Username',Username);
  WriteIni(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','Settings','Password',Password);
  WriteIni(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','Settings','Branch',Branch);
  WriteIni(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','General','Server',Server);
end;

function GetNLREnqRefNo(EntID : String) : String;
var
  Filename : TsearchRec;

function DoRefSearch : String;
var
  Scount : integer;
  s : String;
  f : TextFile;
begin
  assignfile(f, GetCSLoginInfo(CSDIR) + '\Archives\' + Filename.Name);
  reset(f);
  Scount := 0;
  while (not eof(f))and(Scount = 0) do
  begin
    readln(f,s);
    Scount := Pos('##START_ENQ_REF_NUMBER##', s);
    if Scount > 0 then
      Result := copy(s, SCount + 24, Pos('##END_ENQ_REF_NUMBER##', s) - Scount - 24);   
  end;
  CloseFile(f);
  ShowMessage(Result);
end;


begin
  if FindFirst(GetCSLoginInfo(CSDIR) + '\Archives\' + FormatDateTime('ddmmyyyy', Date) + '_Enq_' + EntID
     + '_NLR.HTML',FaAnyfile, Filename) = 0 then
  begin
    Result := DoRefSearch;
  end;

end;


function OpenEnqResult(EntID, BatchType, EnqDate : String) : String;
Var
  Filename : TSearchRec;

begin
  Result := '';
  if FindFirst(GetCSLoginInfo(CSDIR) + '\Archives\' + EnqDate + '_Enq_' + EntID + '_'+ BatchType
     + '.HTML',FaAnyfile, Filename) = 0 then
  begin
    ShellExecute(0, PCHAR('open'), PCHAR(GetCSLoginInfo(CSDir)+ '\Archives\' + Filename.Name), nil, nil, SW_SHOWNORMAL);
    Result := Filename.Name;
  end
end;


function GetErrorMsg(ErrorCode : Integer) : String;
begin
  Case ErrorCode of
    -201 : Result := 'Parameter Error';
    -202 : Result := 'Error Reading Registry';
    -203 : Result := 'Error connection to Compuscan Server';
    -204 : Result := 'Directory of ResultPath does not exist';
    -205 : Result := 'Unable to save file recieved from server';
    -206 : Result := 'Error unzipping file';
    -207 : Result := 'Response not a valid packed file';
    -208 : Result := 'Temporary Zip Directory does not exit';
    -209 : Result := 'Timeout reached on request';

    -301 : Result := 'Invalid Username or Password.';
    -302 : Result := 'Parameter Error.';
    -303 : Result := 'Error getting Enquiry IDs';
    -304 : Result := 'Could not find properties for Search Servlet';
    -305 : Result := 'Error zipping and encoding file';
    -306 : Result := 'Error building results';
    -307 : Result := 'Found no results, contact CompuScan';
    -308 : Result := 'Web session not valid';
    -309 : Result := 'Error generating Unique Enquiry ID';
    -310 : Result := 'Problems inserting Enquiry';
    -311 : Result := 'Error looking for Country Code / Branch Code';
    -312 : Result := 'Error combining results';
    -313 : Result := 'Error starting search threads';
    -314 : Result := 'Error retrieving IDs from threads';
    -315 : Result := 'No more Experian Consumer Enquiry Credits left. Please contact CompuScan (021) 883:2332.';
    -316 : Result := 'Problems looking for Experian Credits';
    -317 : Result := 'Experian link is down, please try again later.';
    -318 : Result := 'Trail CreditCheck branch has no more credits.';
    -319 : Result := 'Client not registered as an Experian client';
 end;



end;



function CSRequestResponseFile(Username, Password, BranchCode, DestPath : String; JobID, RetFileFlag : Integer) : Integer;

type TRequestResponseFile = function (Username, Password, BranchCode, DestPath : String; JobID, RetFileFlag : Integer) : Integer; stdcall;
var
 Handle  : THandle;
 RequestResponseFile : TRequestResponseFile;
begin
  Handle := LoadLibrary('CSBatchInterface.dll');
  try
    if Handle = 0 then
        raise Exception.Create('Erro loading Compuscan Batch Interface dll!')
    else
    begin
       RequestResponseFile := GetProcAddress(Handle, 'RequestResponseFile');
       if @ RequestResponseFile <> nil then
       begin
         try
           Result := RequestResponseFile (PChar(Username), PChar(Password),
                                                   PChar(BranchCode), PChar(DestPath), JobID, RetFileFlag);
         except
         end;                                          
         RequestResponseFile := nil;
       end;
    end;
  finally
    FreeLibrary(Handle);
  end;
end;

function CSRequestJobStatus(Username, Password, BranchCode : String; JobID : Integer) : Integer;

type TRequestJobStatus = function (p_UserName, p_Password, p_BranchCode : PChar; JobID : Integer) : integer; stdcall;
var
 Handle  : THandle;
 RequestJobStatus : TRequestJobStatus;
begin
  Handle := LoadLibrary('CSBatchInterface.dll');
  try
    if Handle = 0 then
        raise Exception.Create('Error loading Compuscan Batch Interface dll!')
    else
    begin
       RequestJobStatus := GetProcAddress(Handle, 'RequestJobStatus');
       if @ RequestJobStatus <> nil then
       begin
         try
           Result := RequestJobStatus (PChar(Username), PChar(Password),
                                                   PChar(BranchCode), JobID);
         except
         end;                                          
         RequestJobStatus := nil;
       end;
    end;
  finally
    FreeLibrary(Handle);
  end;
end;


function GetCSLoginInfo(LoginType : Integer) : String;
begin
  Case LoginType of
    1: Result := (ReadINIStr(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','General','TempZipDir'));
    2: Result := (ReadINIStr(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','Settings','Username'));
    3: Result := (ReadINIStr(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','Settings','Password'));
    4: Result := (ReadINIStr(ExtractFileDir(application.ExeName) +  '\EnqDLLSettings.ini','Settings','Branch'));
  end;
end;     


function CSSendBatch(Username, Password, BranchCode, ThePathFile,
                                      FileType,ENQ_Response_Format, origin : String) : integer;

type TSendBatchData = function (p_UserName, p_Password, p_BranchCode,
p_ThePathFile, p_FileType ,     p_ENQ_Response_Format, origin : PChar) : integer; stdcall;
var
 Handle  : THandle;
SendBatchData : TSendBatchData;
begin
  Handle := LoadLibrary('CSBatchInterface.dll');
  try
    if Handle = 0 then
        raise Exception.Create('Error loading Compuscan Batch Interface dll!')
    else
    begin
       SendBatchData := GetProcAddress(Handle, 'SendBatchData');
       if @ SendBatchData <> nil then
       begin
         try
           Result := SendBatchData (PChar(Username), PChar(Password),
                                                   PChar(BranchCode), PChar(ThePathFile),
                                                   PChar(FileType),PChar(ENQ_Response_Format),PChar(origin));
         except
         end;                                          
         SendBatchData := nil;
       end;
    end;
  finally
    FreeLibrary(Handle);
  end;
end;

function CSSendCurrent(p_UserName,p_Password,p_SrchID,p_SrchName,
                                p_SrchSurname,p_ResultPath,p_ResultFormat : String;
                                p_SearchType: integer; p_UnzipResult : Integer; p_ZipFilename : String): Integer;

type TdoOnlineEnquiry = function (p_UserName,p_Password,p_SrchID,p_SrchName,
                                  p_SrchSurname,p_ResultPath,p_ResultFormat : PChar;
                                  p_SearchType : integer; p_UnzipResult : Integer;
                                  p_ZipFilename : String) : integer; stdcall;

var
 Handle  : THandle;
 doOnlineEnquiry : TdoOnlineEnquiry;
begin
  Handle := LoadLibrary('CSOnlineEnq.dll');
  try
    if Handle = 0 then
        raise Exception.Create('Error loading Compuscan Enquiry dll!')
    else
    begin
       doOnlineEnquiry := GetProcAddress(Handle, 'doOnlineEnquiry');
       if @ doOnlineEnquiry <> nil then
       begin
         try
         Result := doOnlineEnquiry( PChar(p_UserName), PChar(p_Password), PChar(p_SrchID),
                                    PChar(p_SrchName), PChar(p_SrchSurname),
                                    PChar(p_ResultPath), PChar(p_ResultFormat), p_SearchType, p_UnzipResult, p_ZipFilename);
         except  
         end;
         doOnlineEnquiry := nil;
       end;
    end;
  finally
    FreeLibrary(Handle);
  end;
end;
end.
