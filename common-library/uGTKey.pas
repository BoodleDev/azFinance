unit uGTKey;

interface

uses
  Windows, Sysutils, Controls, Forms, Dialogs, Unit32, uDateCode;

type
   TAppKey = class(TObject)
   constructor Create;
   destructor Destroy; override;
  private
    { Private declarations }
    FIniToUse: string;
    FKeyDate: TDate;
    FKeyValid: boolean;
    HDnoStr  : string;
    FShowKeyMsg: boolean;
    function GetFileVal:integer;
    procedure WriteFileVal(inVal: integer);
  public
    { Public declarations }
    property KeyValid : boolean read FKeyValid;
    property KeyDate: TDate read FKeyDate;
    property IniToUse: string read FIniToUse write FIniToUse;
    property ShowKeyMsg: boolean read FShowKeyMsg write FShowKeyMsg;
    procedure VerifySystem;
    function EnterNewKey:boolean;
  end;

implementation

{ TAppKey }

constructor TAppKey.Create;
begin
  inherited;
  HDnoStr := IntToStr(GetDriveSerialNumber('C'));
  FShowKeyMsg := False;
end;

destructor TAppKey.Destroy;
begin
  inherited Destroy;
end;

function TAppKey.EnterNewKey:boolean;
var
  tmpKey : string;
  iTry : integer;
begin
  Result := False;
  iTry   := 3;
  //Get and Check HDno
  if Trim(HDnoStr) = '' then
  begin
    MesDlg('System error in generating unique number.','E');
    iTry   := 0;
    Result := False;
  end;
  //Ask for new key
  while iTry > 0 do
  begin
    tmpKey := InputBox('Enter key - inputs left ('+IntToStr(iTry)+')',
      'Please enter your key?   Product ID: '+HDnoStr ,'');
    iTry := iTry - 1;
    if Trim(tmpKey)<>'' then // cancel button on input box
    begin
      if IsValidKeyRev(HDnoStr,tmpKey) and
        (GetFileVal < GetKeyDate(GetDateDeCodeRev(HDnoStr,tmpKey))) then
      begin
        Result := True;
        WriteIni(IniToUse,'Keys','CurrentKey',tmpKey);
        WriteFileVal(36489);
        iTry   := 0;
      end
      else
      begin
        MesDlg('You did not enter a valid key, try again.','E');
        Result := False;
      end;
    end
    else
    begin
      Result := False;
      iTry   := 0;
    end;
  end;
end;

function TAppKey.GetFileVal:integer;
begin
  Result := ReadIniInt(
    String(Char(87)+Char(105)+Char(110)+Char(46)+Char(105)+Char(110)+Char(105)),// Win.ini
    String(Char(77)+Char(97)+Char(105)+Char(108)), // Mail
    String(Char(79)+Char(76)+Char(69)+Char(83)+Char(105)+Char(122)+Char(101)),// OLESize
    0);
end;

procedure TAppKey.WriteFileVal(inVal: integer);
begin
  WriteIniInt(
    String(Char(87)+Char(105)+Char(110)+Char(46)+Char(105)+Char(110)+Char(105)),// Win.ini
    String(Char(77)+Char(97)+Char(105)+Char(108)), // Mail
    String(Char(79)+Char(76)+Char(69)+Char(83)+Char(105)+Char(122)+Char(101)),// OLESize
    inVal);
end;

procedure TAppKey.VerifySystem;
var
  AppDate  : TDate;
  tempKey  : string;
//  HDnoStr  : string;
begin
//  HDnoStr  := IntToStr(GetDriveSerialNumber('C'));
  FKeyDate := 2;
  AppDate  := FileDateToDateTime(FileAge(Application.ExeName));
  // Check system date
  FKeyValid := Date > (AppDate-90);
  //
  if KeyValid then
  begin
    // Check local Key
    tempKey   := ReadIniStr(IniToUse,'Keys','CurrentKey');
    FKeyValid := IsValidKeyRev(HDnoStr,tempKey);
    if KeyValid then
    begin
      FKeyDate  := GetKeyDate(GetDateDeCodeRev(HDnoStr,tempKey));
      FKeyValid := (Date > GetFileVal) and (Date < KeyDate);
    end;
  end;
  //
  if FKeyValid then
  begin
    if ShowKeyMsg then
      MesDlg('Your key will be valid until: '+DateToStr(KeyDate),'I');
  end
  else
  begin
    if ShowKeyMsg then
      MesDlg('Your key has expired. Please enter your new key.','I');
    WriteFileVal(Trunc(KeyDate));
  end;
end;

end.
