unit UpdExe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IniFiles;


type
  TUpdExe = class(TComponent)
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
    { Private declarations }
    FIniUsed: string;
    FCheckForNew: boolean;
    procedure SetCheckForNew(const Value: boolean);
    procedure CheckForNewVersion;
    // Dups of Unit32
    function ReadIniStr(sIniName, sSection, sIDent: string): string;
    procedure WriteIni(sIDent, sToWrite: string; iToWrite: integer;
      WriteStr: boolean);
    function AppDir: string; // directory ends in '..\' i.e. 'C:\Develop\'
    procedure RunApplication(AppPath : string); //Run application given the path
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property IniUsed : string read FIniUsed write FIniUsed;
    property CheckForNew: boolean read FCheckForNew write SetCheckForNew;
  end;

procedure Register;

implementation
{$R 'UpdExe.dcr'}

const
  StoreIni   = 'GTApps.ini';

procedure Register;
begin
  RegisterComponents('GrayTech', [TUpdExe]);
end;

{ TUpdExe }

procedure TUpdExe.CheckForNewVersion;
var
  UpdPath, ExeName : string;
  fileUpdDate, fileCurDate : TDate;
begin
  UpdPath := Trim(ReadIniStr(StoreIni,'Path','UpdateDir'));
  ExeName := Application.ExeName;
  // Take out only exe name "App.exe"
  while Pos('\',ExeName)<>0 do
    Delete(ExeName,1,Pos('\',ExeName));
  //
  if FileExists(UpdPath+'\'+ExeName) then
  begin
    fileCurDate := FileAge(AppDir+'\'+ExeName);
    fileUpdDate := FileAge(UpdPath+'\'+ExeName);
    if fileCurDate < fileUpdDate then
    begin
      if MessageDlg('There is a new version on the server, copy update?',
        mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        WriteIni('ExeToUpd',ExeName,0,True);
        WriteIni('ExeHandle','',Application.Handle,False);
        RunApplication(AppDir+'\CopyApp.exe'); // Check if file exists in Check
        Application.Terminate;
      end;
   end;
  end
  else
    MessageDlg('Could not find update path.',mtWarning,[mbOk],0);
  //
  FCheckForNew := False;
end;

constructor TUpdExe.Create(AOwner: TComponent);
begin
  inherited;// Create(Owner);  // Initialize inherited parts
  FIniUsed := StoreIni;
end;

destructor TUpdExe.Destroy;
begin
  inherited;

end;

procedure TUpdExe.SetCheckForNew(const Value: boolean);
begin
  FCheckForNew := Value;
  if FCheckForNew then
  begin
    if FileExists(AppDir+'CopyApp.exe') then
      CheckForNewVersion;
{    else
    begin
      if ShowNoCopyApp then
        MesDlg('Can not self update, copy app does not exist.','W');
    end;}
  end;
end;

function TUpdExe.ReadIniStr(sIniName, sSection, sIDent: string): string;
var
  IniFileName : TIniFile;
begin //ReadIni File for String given - Section , ID entry
  IniFileName := TIniFile.Create(sIniName);
  Result  := IniFileName.ReadString(sSection,sIDent,'');
  IniFileName.Free;
end;

procedure TUpdExe.WriteIni(sIDent, sToWrite: string; iToWrite: integer;
  WriteStr: boolean);
var
  IniFileName : TIniFile;
begin //Write Ini-File String given - Section, ID entry, String to write
  IniFileName := TIniFile.Create(StoreIni);
  if WriteStr then
    IniFileName.WriteString('Path',sIDent,sToWrite)
  else
    IniFileName.WriteInteger('Path',sIDent,iToWrite);
  IniFileName.Free;
end;

function TUpdExe.AppDir: string;
//Returns directory of application
var
  temps: string;
  x    : integer;
  found: boolean;
begin
  found:=false;
  temps:=Application.ExeName;
  x:=length(temps);
  while (not(found)) and (x<>0) do begin
    if temps[x]='\' then begin
      found:=true;
    end
    else begin
      dec(x);
    end;
  end;
  if found then
  begin
    Result := copy(temps,1,x);
  end
  else
  begin
    Result := temps;
  end;
end;

procedure TUpdExe.RunApplication(AppPath: string);
var
   StartInfo : TStartUpInfo;
   ProcInfo  : TProcessInformation;
begin
  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo ,SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartUpInfo);
  CreateProcess(nil,PChar(AppPath),
                nil, nil,
                False,
                Create_New_Process_Group+Normal_Priority_Class,
                nil, nil,
                StartInfo,
                ProcInfo);
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;

end.


