unit uTrialApp;

interface

uses
  Windows, Sysutils, Controls, Forms, Unit32;

type
   TTrialApp = class(TObject)
   constructor Create;
   destructor Destroy; override;
  private
    { Private declarations }
    AppID: integer;
    WinDir: string;
    ShortDate : string;
    ShortTime : string;
    function GetSysFile:string;
    function GetDriver:string;
    function GetWinFile:string;
    function IsAppValid:boolean;
    procedure CreateWCGfile;
    procedure WriteLock;
    procedure WriteExpDate;
  public
    { Public declarations }
    class function CheckAppKey: Boolean;
    class function CheckIfAppValid(inAppID: integer):boolean;
  end;

implementation

{ TAppValid }

class function TTrialApp.CheckIfAppValid(inAppID: integer):boolean;
var
  AppValid : TTrialApp;
begin
  AppValid := TTrialApp.Create;
  try
    AppValid.AppID := inAppID;
    Result := AppValid.IsAppValid;
    if not Result then
    begin
      MesDlg('Your trial period is over','I');
//      Application.Terminate;
    end;
  finally
    AppValid.Free;
  end;
end;

class function TTrialApp.CheckAppKey: Boolean;
begin
  Result := false;
end;

constructor TTrialApp.Create;
var
  iLength: Integer;
//  pWinDir : PChar;
begin
  AppID := 0;
  ShortDate := ShortDateFormat;
  ShortTime := ShortTimeFormat;
  ShortDateFormat := 'dd/mm/yyyy';
  ShortTimeFormat := 'hh:mm:ss tt';
  // Initialize Variable
  iLength := 255;
  setLength(WinDir, iLength);
  iLength := GetWindowsDirectory(PChar(WinDir), iLength);
  setLength(WinDir, iLength);
  if not FileExists(WinDir+GetWinFile) then
  begin
    try
      CreateWCGfile;
    except
      MesDlg('Could not write to disk.','E');
      Application.Terminate;
    end;
  end;
end;

procedure TTrialApp.CreateWCGfile;
var
  CurSysDT : TSystemTime;
  NewDT    : TSystemTime;
begin
  DateTimeToSystemTime(Now,CurSysDT);
  try
    DateTimeToSystemTime(37126.151888889,NewDT); // 14/10/1996 03:38 AM
    SetLocalTime(NewDT);
    WriteIni(WinDir+GetWinFile,GetSysFile,GetDriver,
      WinDir+'\'+GetSysFile+'\'+GetSysFile+'.drv');
  finally
    SetLocalTime(CurSysDT);
  end;
end;

destructor TTrialApp.Destroy;
begin
  ShortDateFormat := ShortDate;
  ShortTimeFormat := ShortTime;
  inherited Destroy;
end;

function TTrialApp.GetDriver: string;
begin // driver
  Result :=Char(100)+Char(114)+Char(105)+Char(118)+Char(101)+Char(114);
end;

function TTrialApp.GetSysFile: string;
begin //system
  Result := Char(115)+Char(121)+Char(115)+Char(116)+Char(101)+Char(109);
end;

function TTrialApp.GetWinFile: string;
begin //'\system\win.cfg'
  Result := '\'+GetSysFile+'\'+Char(119)+Char(105)+Char(110)+
    Char(46)+Char(99)+Char(102)+Char(103);
end;

function TTrialApp.IsAppValid: boolean;
var
  expDate : Integer;
  locked  : Integer;
begin
  Result  := True;
  expDate := ReadIniInt(WinDir+GetWinFile,GetSysFile,'buffer'+IntToStr(AppID),0);
  if expDate = 0 then
  begin
    try
      WriteExpDate;
    except
      MesDlg('Could not write to disk.','E');
      Application.Terminate;
    end;
  end
  else
  begin
    locked := ReadIniInt(WinDir+GetWinFile,GetSysFile,GetDriver+IntToStr(AppID),0);
    if locked > 1 then // app has been locked
      Result := False
    else
    begin // write app lock
      if (expDate+30 < Date) or (expDate-30 > Date) then
      begin
        WriteLock;
        Result := False;
      end;
    end;
 end;
end;

procedure TTrialApp.WriteExpDate;
var
  CurSysDT : TSystemTime;
  NewDT    : TSystemTime;
  CurDate  : TDate;
begin
  DateTimeToSystemTime(Now,CurSysDT);
  CurDate := Date;
  try
    DateTimeToSystemTime(35352.151888889,NewDT); //'14/10/1996 03:38 AM'
    SetLocalTime(NewDT);
    WriteIniInt(WinDir+GetWinFile,GetSysFile,'buffer'+IntToStr(AppID),Trunc(CurDate));
  finally
    SetLocalTime(CurSysDT);
  end;
end;

procedure TTrialApp.WriteLock;
var
  CurSysDT : TSystemTime;
  NewDT    : TSystemTime;
begin
  DateTimeToSystemTime(Now,CurSysDT);
  try
    DateTimeToSystemTime(35352.151888889,NewDT); //'14/10/1996 03:38 AM'
    SetLocalTime(NewDT);
    WriteIniInt(WinDir+GetWinFile,GetSysFile,GetDriver+IntToStr(AppID),AppID*1024);
  finally
    SetLocalTime(CurSysDT);
  end;
end;

end.
