unit Unit32;
{===============================================================================
 Author  : Wicus Botha
 Date    : 01/01/1999
 Unit    : This is a central unit with al functions and procedures that are
           commenly used.
           There are also some wrappers for Delphi functions - look the
           funtion MesDlg
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
interface

uses
  Forms, Sysutils, Winprocs, Wintypes, Graphics, Extctrls, Classes,
  DB, Grids, Controls, Dialogs, DBCtrls, Math, StdCtrls, Inifiles,
  dbClient, ComCtrls, DBTables, ADODB, fmBase_About;

var
  Key: array [0..3] of Byte = (3,9,5,2);

function ActualPMT(Rate, PV : Extended; LoanTerm, PayTime : integer; //Calc the actual PMT
   dStart,dFirstIns:TDate):Currency;
function Age(DateFrom, DateTo: TDate): string; //Calc a person's age
function AliasDir(alName: string): string; //Get an BDE alias directory
function AppDir: string; // directory ends in '..\' i.e. 'C:\Develop\'
function BoolToInt(Value: Boolean): Integer;
function CalcInterest(NrDays, Princ, IntRate: double): Currency; //Calc interst on balance
function CalcTotIntForLoanActual(inTerm:integer; dStart,dFirstIns :TDate;
  inCapital, inRate, inMthIns :double):Currency;
function DaysPerMonth(Yr, Mth: Word): Word;
//function CalcTotalInterestForNewLoan(inTerm:integer; dStart,dFirstIns :TDate;
//  inCapital, inRate, inMthIns :double):Currency;
function cCopyFiles(sSource, sDest: string) :boolean;  // Over write file
procedure CopyUpdate(UpdatePath, FilePath: String; Prompt: Boolean);
function CheckForUpdate(UpdatePath, FilePath: String): Boolean;
function CheckDataSetForPost(DataToCheck: TDataSet):boolean;
function DateAddMonth(dThedate:TDate;iMonthAdd:integer): string; //Returns Date string '01/MM/YYYY'
function DateToEndOfMonth(inDate:TDate):TDate;
function DecryptCode(ECode: String): String;
function DoubleQuote(s:string): string;
function EncryptCode(DCode: String): String;
function FormatReal(nm:extended): string;
function FunCode(inStr:string; edtv: boolean):string;
function MoreFunCode(inStr:string; edtv: boolean):string;
function GetDirOrFile(DirOrFile:string; GetDir:boolean):string;
function GetDriveSerialNumber(DriveLet: char) : DWORD;
function GetRemoteDriveSerialNumber(DrivePath: String) : DWORD;
function GetListBoxSelItem(Lbx : TCustomListBox):integer;
function GetNTLogin:string;
function GetPCName:string;
function IsNoMod10(inNo: string):boolean;
function IntToBool(Value: Integer): Boolean;
function MaxNumber(X,Y : integer):integer;
function MinNumber(X,Y : integer):integer;
function GetNewKey(NameStr,OldMax:string; iKeyL:integer):string;
function GetPayment(IntRate,rLoanAmt:real;iNPeriods,PayTime:integer):real;
function GetLicenseDetails(var SerialNo: Double; var License, AppID: Integer;
  var ExpDate: TDate; DCode: String): Boolean;
function GetLoanContractBal(IntRate,PayAmt:real;
  iPeriods,PayTime:integer; StartDate:TDateTime):real;
function GetStrToDate(DateStr,DateFrmt : string):TDate;
function GetDefColor(IniToRead,IDtoRead:string):Integer;
function GetWinDir: string;
//function GetMyPCName:string;
function LeftStr(s:string;l:integer)                       : string; //Returns the leftmost l characters of s
function MesDlg(sMessage :string; iWhat :char):TModalResult; //Shows MessageDlg
function NoOfDays(dFrom, dTo: TDate):integer;
function NoOfMonths(dFrom, dTo: TDate):integer;
function PadLeft(sToPad, sFiller: string; iTotLength: integer): string;
function PadRight(sToPad, sFiller: string; iTotLength: integer): string;
function ReadIniStr(sIniName, sSection, sIDent: string): string;
function ReadIniInt(sIniName, sSection, sIDent: string; DefVal:integer): integer;
function RightStr(s:string;l:integer)                      : string; //Returns the rightmost l characters of s
function RoundTo2Decimals(inAmt: Currency): Currency;
function RunModule(AppPath,Params : string): HWND; 
function SetDBDirectory(var theDataBase:TDatabase; iniFile,tblExists:string): boolean;
function ShowFrmModal(frmToShow :TFormClass): TModalResult;
function Spc(n:integer)                                    : string; //Returns s spaces
function TotalActaulInterestDiff(LoanTerm:integer;StartDate,FirstInst:TDate;
  inCapital, inRate, inMthIns :double):Currency;
function VerifyActivationCode(Code: String; RemoteDrive, AppID: Integer): Boolean;

procedure AfterOpenCurrency(DataSet: TDataSet);
procedure BuildDelimitedList(Delimiter, DelString: String; StringList: TStringList);
procedure CheckDataSet(DataToCheck: TDataSet);
procedure ClearCloseDataSet(DataSet: TDataSet);
procedure CreatePivotCDS(var cdsPivotRes: TClientDataSet; SrcDataSet: TDataSet;
  PrimaryFld,PivotFld,ValueFld: string; AddedFlds: TStringList);
procedure FilterDataSet(DataToFilter: TDataSet;sFilter:string);
procedure MoveToCurrent(TblName:TDataSet; sField:string; SendDate:TDateTime);
procedure OnlyOneApp;
procedure ReplaceMem(sFind, sRep: string; mMemo: TMemo);
procedure ReplaceREMem(sFind, sRep: string; reMemo: TRichEdit);
procedure RunApplication(AppPath : string);                          //run application
procedure RequeryOnRecord(DataSet: TADODataset; IndexField: string);
procedure RunQuery(qryToRun: TQuery; inSQL: string; OorE: char);
procedure RunQry(qryToRun :TADOQuery; inSQL :string; OorE :char);
procedure PivotDataIntoCDS(cdsPivotRes: TClientDataSet; SrcDataSet: TDataSet;
  PrimaryFld,PivotFld,ValueFld: string; AddedFlds: TStringList);
procedure SetDatabaseDir(var theDataBase:TDatabase; Path : string);
procedure SetIndexForDataSet(cdsDataSet: TClientDataSet; inFieldName: string;
  Accending :boolean);
procedure SortClientDataSet(inFieldName:string; Accending :boolean;
  var clnData : TClientDataSet);
procedure TileImage(imgTile : TImage; FormToTile : TForm);
procedure WriteIni(sIniName, sSection, sIDent, sToWrite: string);
procedure WriteIniInt(sIniName, sSection, sIDent: string; intToWrite :integer);
procedure WriteIniDefColor(sIniName, sIDent: string; DefColor: integer);
procedure ShowAbout;
procedure SetApplicationHelpFile(HelpFile: String);


implementation


procedure ShowAbout;
Var
  frmBase_About : TfrmBase_About;
begin
  frmBase_About := TfrmBase_About.Create(nil);
  try
    frmBase_About.ShowModal;
  finally
    frmBase_About.free;
  end;
end;

procedure SetApplicationHelpFile(HelpFile: String);
begin
  if FileExists(ChangeFileExt(HelpFile,'.chm')) then
    Application.HelpFile := ChangeFileExt(HelpFile,'.chm')
  else if FileExists(ChangeFileExt(HelpFile,'.hlp')) then
    Application.HelpFile := ChangeFileExt(HelpFile,'.hlp')
  else
    Application.HelpFile := ChangeFileExt(HelpFile,'.chm');
end;

function ActualPMT(Rate,PV :Extended; LoanTerm,PayTime :integer;
   dStart,dFirstIns:TDate):Currency;
var
  Diff : extended;
begin
  //0 = Begin & 1 = End
  if PayTime = 0 then
    Result := Payment((Rate/100)/12,LoanTerm,PV,0,ptStartOfPeriod)
  else
    Result := Payment((Rate/100)/12,LoanTerm,PV,0,ptEndOfPeriod);
  // Difference in PMT function int vs. Actual Interest
  Diff   := TotalActaulInterestDiff(LoanTerm,dStart,dFirstIns,PV,Rate,Result);
  while Diff > 0 do
  begin
    if Diff < 100 then
      Result := Result - 0.01
    else
    begin
      if Diff < 1000 then
        Result := Result - 0.10
      else
        if Diff < 15000 then
          Result := Result - 1.00
        else
          Result := Result - 10.00
    end;
    Diff := TotalActaulInterestDiff(LoanTerm,dStart,dFirstIns,PV,Rate,Result);
  end;
end;

function Age(DateFrom, DateTo: TDate): string;
var
  iFrom, iTo : integer;
  sAns       : string;
begin //gives the age for a from & to date
  try
    iFrom := StrToInt(FormatDateTime('yyyymmdd',DateFrom));//from date
    iTo   := StrToInt(FormatDateTime('yyyymmdd',DateTo));  //to date
    sAns  := IntToStr(iTo-iFrom);                          //dif in to - form
    if (iTo-iFrom) < 100000 then
      Result := Copy(sAns,1,1)  {if}
    else
      Result := Copy(sAns,1,2); {else}
    if DateFrom = 0 then Result := '';
  except
    Result := '';
  end;
end;

function AliasDir(alName: string): string;
//Returns Dir of Alias
var
  tsAliasP: TStringlist;
  sAlsDir: string;
begin
  sAlsDir  := '';
  tsAliasP := TStringList.Create;
  tsAliasP.Clear;
  Session.GetAliasParams(alName,tsAliasP);
  sAlsDir:=Copy(tsAliasP[0],6,Length(tsAliasP[0]));
  if sAlsDir[Length(sAlsDir)]<>'\' then sAlsDir:=sAlsDir+'\';
  tsAliasP.free;
  AliasDir:=sAlsDir;
end;

function AppDir: string; // directory ends in '..\' i.e. 'C:\Develop\'
//Returns directory of application
{var
  temps: string;
  x    : integer;
  found: boolean;
}
begin
  Result := ExtractFileDir(Application.ExeName)+'\';
{  found:=false;
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
}
end;

function BoolToInt(Value: Boolean): Integer;
begin
  if Value then
    Result := 1
  else
    Result := 0;
end;

{------------------------------------------------------------------------------}
{Do interest calculation given princepal,nr days,int rate}
{------------------------------------------------------------------------------}
function CalcInterest(NrDays, Princ, IntRate: double): Currency;
begin
  Result := (Princ*(IntRate/100)*(NrDays/365));
end;

function CalcTotIntForLoanActual(inTerm:integer; dStart,dFirstIns :TDate;
  inCapital, inRate, inMthIns :double):Currency;
var
   i : integer;
   CapitalBal, TotInt, IntPort : double;
   dFrom, dTo : TDate;
begin
   TotInt  := 0;
   // IntPort := 0;
   dFrom   := dStart;
   dTo     := dFirstIns;
   CapitalBal := inCapital;
   // Compound if Start & First ins date > 30 days
     // It will be more accurate to use func DateToMonthEnd, but will take too long ?
   while (dFrom+30) < dTo do
   begin
     TotInt := TotInt + CalcInterest(30,CapitalBal,inRate);
     CapitalBal := CapitalBal + CalcInterest(30,CapitalBal,inRate);
     dFrom := dFrom + 30;
   end;
   //
   for i := 1 to inTerm do
   begin
      IntPort := CalcInterest(dTo-dFrom,CapitalBal,inRate);
      TotInt := TotInt + IntPort;
      CapitalBal := CapitalBal - ABS(inMthIns) + IntPort;
      dFrom := dTo;
      dTo := IncMonth(dFrom,1);
   end;
   Result := TotInt;
end;

function DaysPerMonth(Yr, Mth: Word): Word;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[Mth];
  if (Mth = 2) and IsLeapYear(Yr) then
    Inc(Result); { leap-year Feb is special }
end;
{------------------------------------------------------------------------------}
function cCopyFiles(sSource, sDest: string) :boolean;  // Over write file
begin // Overwrite file
  Result := CopyFile(PChar(sSource),PChar(sDest),false);
end;

function CheckDataSetForPost(DataToCheck: TDataSet):boolean;
begin //Check Table state and Post table
  Result := (DataToCheck.State = dsEdit) or (DataToCheck.State = dsInsert);
end;

function DateAddMonth(dThedate :TDate; iMonthAdd : integer) : string;
//Returns Date string = '01/MM/YYYYY'
var
  sMonthYear : string;
begin                                //Get the new month and year
  sMonthYear   := FormatDateTime('mm/yyyy',IncMonth(dTheDate,iMonthAdd));
  DateAddMonth := '01/'+sMonthYear;  //Set the day part to '01' first day
end;

function DateToEndOfMonth(inDate:TDate):TDate;
begin
  case StrToInt(FormatDateTime('mm',inDate)) of
    // Months with 31 days
    1,3,5,7,8,10,12 : Result := StrToDate('31/'+FormatDateTime('mm/yyyy',inDate));
    // Months with 30 days
    4,6,9,11        : Result := StrToDate('30/'+FormatDateTime('mm/yyyy',inDate));
    // Months with 28/29 days
    2 : begin
          if IsLeapYear(StrToInt(FormatDateTime('yyyy',inDate))) then
             Result := StrToDate('29/'+FormatDateTime('mm/yyyy',inDate))
          else
             Result := StrToDate('28/'+FormatDateTime('mm/yyyy',inDate));
        end;
    else
      Result := Date;
  end; {case}
end;

function DoubleQuote(s:string) : string;
//Turns Single Quotes(') in s into Double Quotes('')
//Recursive!
var
   p: integer;
begin
  p:=pos(chr(39),s);  //'
  if p<>0 then
    DoubleQuote:=LeftStr(s,p)+''''+DoubleQuote(RightStr(s,length(s)-p))
  else
    DoubleQuote:=s;
end;

function FormatReal(nm:extended) : string;
//Converts nm into string with format 0.00
var
   ts: string;
begin
  str(nm:64:2,ts);
  FormatReal:=trim(ts);
end;

function FunCode(inStr:string; edtv: boolean):string;
var
  i, nc: integer;
begin
  Result := '';
  for i := 1 to Length(inStr) do
  begin
    if Odd(i) then
    begin
      if edtv then
        nc := Ord(inStr[i]) + 17
      else
        nc := Ord(inStr[i]) - 17
    end
    else
    begin
      if edtv then
        nc := Ord(inStr[i]) - 12
      else
        nc := Ord(inStr[i]) + 12;
    end;
    Result := Result+Chr(nc);
  end;
end;

function MoreFunCode(inStr:string; edtv: boolean):string;
var
  i, j, DtvTo, DtvTot : integer;
  TempStr, OddStr, EvenStr : string;
begin
  Result  := '';
  TempStr := '';
  OddStr  := '';
  EvenStr := '';
  // Do Etv
  if edtv then
  begin
    for i := 1 to Length(inStr) do
    begin
      if Odd(i) then
        OddStr := OddStr + inStr[i]
      else
        EvenStr := EvenStr + inStr[i]
    end;
    if Odd(Length(inStr)) then
      TempStr := OddStr+EvenStr
    else
      TempStr := EvenStr+OddStr;
    Randomize;
    for i := 1 to Length(inStr) do
    begin
      j := Random(150);
      if j < 2 then j := 10;
      Insert(Chr(j),TempStr,i*2)
    end;
    Result := FunCode(TempStr,True);
  end
  else // Do Dtv
  begin
    TempStr := FunCode(inStr,False);
    DtvTot := Trunc(Length(inStr)/2);
    for i := 1 to DtvTot do
    begin
      Delete(TempStr,i+1,1);
    end;
    if Odd(DtvTot) then
      DtvTo := Trunc(DtvTot/2)+ 1
    else
      DtvTo := Trunc(DtvTot/2);
    for i := 1 to DtvTo do
    begin
      if Odd(DtvTot) then
      begin
        Result :=  Result + TempStr[i];
        if (DtvTo+i) <= Length(TempStr) then
          Result := Result + TempStr[DtvTo+i];
      end
      else
      begin
        if (DtvTo+i) <= Length(TempStr) then
          Result := Result + TempStr[DtvTo+i];
        Result :=  Result + TempStr[i];
      end;
    end;
  end;
end;

function GetDirOrFile(DirOrFile:string; GetDir:boolean):string;
begin
  if GetDir then
    Result := ExtractFileDir(DirOrFile)+'\'
  else
    Result := ExtractFileName(DirOrFile)
end;

function GetDriveSerialNumber(DriveLet: char) : DWORD;  // 4 byte integer
var
  DriveSerNo : DWORD;
  VolFlags , iMCL  : DWORD;
  iRes : boolean;
begin
  iRes := GetVolumeInformation(PChar(DriveLet+':\'), nil, 0,
    @DriveSerNo, iMCL, VolFlags, nil, 0);
  if iRes then
    Result := DriveSerNo
  else
    Result := 0;
end;

function GetRemoteDriveSerialNumber(DrivePath: String) : DWORD;  // 4 byte integer
var
  DriveSerNo : DWORD;
  VolFlags , iMCL  : DWORD;
  iRes : boolean;
begin
  if Pos(':',DrivePath) > 0 then
    DrivePath := Copy(DrivePath,0,Pos(':',DrivePath)+1);
  iRes := GetVolumeInformation(PChar(DrivePath), nil, 0,
    @DriveSerNo, iMCL, VolFlags, nil, 0);
  if iRes then
    Result := DriveSerNo
  else
    Result := 0;
end;

function GetListBoxSelItem(Lbx : TCustomListBox):integer;
var
  i : integer;
begin
  Result := -1;
  for i := 0 to Lbx.Items.Count-1 do
  begin
    if Lbx.Selected[i] then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

function GetNTLogin:string;
var
  UNStr   : PChar;
  UNArray : array[0..15] of Char;
  UNSize  : DWord;
begin
  FillChar(UNArray,16,'0');
  UNStr  := UNArray;
  UNSize := 16;
  GetUserName(UNStr,UNSize);
  Result := UNArray;
end;

function GetPCName:string;
var
  UNStr   : PChar;
  UNArray : array[0..15] of Char;
  UNSize  : DWord;
begin
  FillChar(UNArray,16,'0');
  UNStr  := UNArray;
  UNSize := 16;
  GetComputerName(UNStr,UNSize);
  Result := UNArray;
end;

function IsNoMod10(inNo :string):boolean;
var
  i : integer;
  CardResult  : integer;
  MultiplyRes : string;
  EndString   : string;
  Multiply    : boolean;
begin
  Result := True;
  i := 1;
  while (i <= Length(inNo)) and (Result) do
  begin
    if not (inNo[i] in ['0'..'9']) then
      Result := False;
    Inc(i);
  end;
  //
  if Result then
  begin
    CardResult  := 0;
    MultiplyRes := '';
    EndString   := '';
    Multiply    := False;
    // Loop from right to left
    for i := Length(inNo) downto 1 do
    begin
      if Multiply then
        MultiplyRes := MultiplyRes + IntToStr(StrToInt(inNo[i])*2)
      else
        EndString := EndString + inNo[i];
      //Skip one char
      Multiply := not Multiply;
    end;
    //Concatonate results
    EndString := EndString + MultiplyRes;
    // Loop and add results
    for i := 1 to Length(EndString) do
      CardResult := CardResult + StrToInt(EndString[i]);
    //
    Result := CardResult Mod 10 = 0;
  end;
end;

function IntToBool(Value: Integer): Boolean;
begin
  Result := Value > 0;
end;

function MaxNumber(X,Y : integer):integer;
begin
  if X >= Y then
    Result := X
  else
    Result := Y;
end;

function MinNumber(X,Y : integer):integer;
begin
  if X <= Y then
    Result := X
  else
    Result := Y;
end;

function GetNewKey(NameStr,OldMax:string; iKeyL:integer):string;
var
   sValPart : string;
begin
  NameStr := Trim(NameStr);
  if Length(NameStr) > 2 then
  begin
    //Check for Spaces
    while Pos(' ',NameStr) > 0 do
      Delete(NameStr,Pos(' ',NameStr),1);
    NameStr := Copy(NameStr,1,3);
    if OldMax = '' then
      sValPart := PadLeft('1','0',iKeyL)//set new key
    else
      begin
        sValPart := IntToStr(StrToInt(Copy(OldMax,4,iKeyL))+1);//get number part
        if sValPart='1000000000' then
        begin //check for max value in range
          MesDlg('This range is full, can not generate next key.','E');
          Exit;                   //exit from procedure
        end; {if Max}
        sValPart  := PadLeft(sValPart,'0',iKeyL);//set new key
      end; {else NewKey <> ''}
    Result := NameStr + sValPart;
  end
  else
    begin
      Result := '';
      MesDlg('Could not generate new key given string incorrect length.','E');
    end;
end;

function GetPayment(IntRate,rLoanAmt:real;iNPeriods,PayTime:integer):real;
begin
  //Do payment calculation given int rate,loan amt,nr mths
  //0 = Begin
  //1 = End
  if PayTime = 0 then
    Result := Payment((IntRate/100)/12,iNPeriods,rLoanAmt,0,ptStartOfPeriod)
  else
    Result := Payment((IntRate/100)/12,iNPeriods,rLoanAmt,0,ptEndOfPeriod);
end;

function GetLoanContractBal(IntRate,PayAmt:real;
  iPeriods,PayTime:integer; StartDate:TDateTime):real;
var
  PeriodsLeft : Integer;
  PayBorE : TPaymentTime; // 1 = End and 0 = Begin
begin
  PeriodsLeft := iPeriods-NoOfMonths(StartDate,Date);
  if PayTime = 0 then
    PayBorE := ptStartOfPeriod
  else
    PayBorE := ptEndOfPeriod;                             //FutureValue
  Result := PresentValue((IntRate/100)/12,PeriodsLeft,PayAmt,0,PayBorE);
end;

function GetStrToDate(DateStr,DateFrmt : string):TDate;
var
  yr : string[4];
  mth: string[2];
  day: string[2];
  i : integer;
begin
  if Length(DateStr) <> Length(DateFrmt) then
    Result := 0
  else
  begin
    yr := '';
    mth:= '';
    day:= '';
    for i := 1 to Length(DateFrmt) do
    begin
      case DateFrmt[i] of
        'y','Y' : yr  := yr  + DateStr[i];
        'm','M' : mth := mth + DateStr[i];
        'd','D' : day := day + DateStr[i];
      end;
    end;
    try
      Result := EncodeDate(StrToInt(yr),StrToInt(mth),StrToInt(day));
    except
      Result := 0;
    end;
  end;
end;

function GetDefColor(IniToRead,IDtoRead:string):Integer;
var IniFileName : TIniFile;
begin
  IniFileName := TIniFile.Create(IniToRead);
  try
    try
      Result  := IniFileName.ReadInteger('Defaults',IDToRead,clBtnFace);
    except
      Result := clBtnFace;
    end;
  finally
    IniFileName.Free;
  end;
end;

function GetWinDir: string;
var
  WinDir : array[0..MAX_PATH] of char;
begin
  GetWindowsDirectory(WinDir,MAX_PATH);
  Result := WinDir;
end;
{
function GetMyPCName:string;
var
  PCName     : Array[0..100] of Char;
  SizePCname : DWord;
begin
  SizePCname := SizeOf(PCName);
  GetComputerName(PCName,SizePCname);
  Result := PCName;
end;
}

function LeftStr(s:string;l:integer) : string;
//Returns the leftmost l characters of s
begin
  if l < length(s) then
    LeftStr:=copy(s,1,l)
  else
    LeftStr:=s;
end;

function MesDlg(sMessage :string; iWhat :char):TModalResult; //Shows MessageDlg
begin
  case iWhat of
    'E' : Result := MessageDlg(sMessage,mtError,[mbOk],0);
    'F' : Result := MessageDlg(sMessage,mtConfirmation,mbYesNoCancel,0);
    'I' : Result := MessageDlg(sMessage,mtInformation,[mbOk],0);
    'C' : Result := MessageDlg(sMessage,mtConfirmation,[mbYes,mbNo],0);
    'W' : Result := MessageDlg(sMessage,mtWarning,[mbOk],0);
    'X' : Result := MessageDlg(sMessage,mtWarning,[mbYes,mbNo],0);
    else Result := mrNone;
  end;
end;

function NoOfDays(dFrom, dTo: TDate): integer;
begin
  Result := Trunc(dTo-dFrom);
end;

function NoOfMonths(dFrom, dTo: TDate):integer;
var
  iYear, iMonth : integer;
begin
  iYear  := StrToInt(FormatDateTime('yyyy',dTo)) - StrToInt(FormatDateTime('yyyy',dFrom));
  iMonth := StrToInt(FormatDateTime('mm',dTo)) - StrToInt(FormatDateTime('mm',dFrom));
  iYear  := iYear * 12;
  Result := iMonth + iYear;
end;

function PadLeft(sToPad, sFiller: string; iTotLength: integer): string;
begin
  if Length(sToPad) < iTotLength then
  begin
    while Length(sToPad) < iTotLength do
    begin
      sToPad := sFiller + sToPad;
    end; {while}
  end;
  Result := sToPad;
end;

function PadRight(sToPad, sFiller: string; iTotLength: integer): string;
begin
  if Length(sToPad) < iTotLength then
  begin
    while Length(sToPad) < iTotLength do
    begin
      sToPad := sToPad + sFiller;
    end; {while}
  end;
  Result := sToPad;
end;

function ReadIniStr(sIniName, sSection, sIDent: string): string;
var IniFileName : TIniFile;
begin //ReadIni File for String given - Section , ID entry
  IniFileName := TIniFile.Create(sIniName);
  Result  := IniFileName.ReadString(sSection,sIDent,'');
  IniFileName.Free;
//  IniFileName := nil;
end;

function ReadIniInt(sIniName, sSection, sIDent: string; DefVal:integer): integer;
var IniFileName : TIniFile;
begin //ReadIni File for String given - Section , ID entry
  IniFileName := TIniFile.Create(sIniName);
  Result  := IniFileName.ReadInteger(sSection,sIDent,DefVal);
  IniFileName.Free;
//  IniFileName := nil;
end;

function RightStr(s:string;l:integer) : string;
//Returns the rightmost l characters of s
begin
  if l<length(s) then
    RightStr:=copy(s,length(s)-l+1,l)
  else
    RightStr:=s;
end;

function RoundTo2Decimals(inAmt: Currency): Currency;
begin
  Result := Round(inAmt*100);
  Result := Int(Result);
  Result := Result/100;
end;

function SetDBDirectory(var theDataBase:TDatabase;
  iniFile,tblExists:string): boolean;
var
  DBdir : string;
begin
  DBdir := Trim(ReadIniStr(iniFile,'Path','Main'));
  if DBdir <> '' then
  begin
    if FileExists(DBdir+'\'+tblExists) then
    begin
      Result := True;
      SetDatabaseDir(theDataBase,ReadIniStr(iniFile,'Path','Main'));
    end
    else
      Result := False;
  end
  else
    Result := False;
end;

// WB 29/01/2004
function ShowFrmModal(frmToShow :TFormClass): TModalResult;
var
  frmTS : TForm;
begin
  frmTS := frmToShow.Create(nil);
  try
    Result := frmTS.ShowModal;
  finally
    frmTS.Free;
    // frmTS := nil; compiler not using code
  end;
end;

function Spc(n:integer) : string;
//Returns s spaces
var
  r : integer;
  ts: string;
begin
  ts:='';
  if n>0 then
  begin
    for r:=1 to n do
      ts:=ts+' ';
  end;
  spc:=ts;
end;

function TotalActaulInterestDiff(LoanTerm:integer;StartDate,FirstInst:TDate;
  inCapital, inRate, inMthIns :double):Currency;
begin
  Result := ABS(CalcTotIntForLoanActual(LoanTerm,StartDate,
    FirstInst,inCapital,inRate,inMthIns))-
    ABS((ABS(inMthIns)*LoanTerm) - inCapital);
end;

procedure AfterOpenCurrency(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldCount-1 do
  begin
    if DataSet.Fields[i].DataType = ftBCD then
      TBCDField(DataSet.Fields[i]).currency := true;
  end;
end;

procedure BuildDelimitedList(Delimiter, DelString: String; StringList: TStringList);
var
  Len: Integer;
begin
  StringList.Clear;
  Len := Length(Delimiter);
  while Pos(Delimiter,DelString) > 0 do
  begin
     StringList.Add(Copy(DelString, 1, Pos(Delimiter, DelString) - Len));
     Delete(Delstring,1, Pos(Delimiter,DelString) + Len - 1);
  end;
end;

procedure CheckDataSet(DataToCheck: TDataSet);
begin //Check Table state and Post table
  if (DataToCheck.State = dsEdit) or (DataToCheck.State = dsInsert) then
  begin
    DataToCheck.Post;
  end; {if State}
end;

procedure ClearCloseDataSet(DataSet: TDataSet);
begin
  if Assigned(DataSet) then
  begin
    FilterDataSet(DataSet,'');
    DataSet.Close;
  end;
end;

procedure CreatePivotCDS(var cdsPivotRes: TClientDataSet; SrcDataSet: TDataSet;
  PrimaryFld,PivotFld,ValueFld: string; AddedFlds: TStringList);
var
  CheckVal : Variant;
  i : integer;
begin
  CheckVal := null;
  cdsPivotRes.Close;
  cdsPivotRes.IndexName := '';
  cdsPivotRes.IndexDefs.Clear;
  cdsPivotRes.FieldDefs.Clear;
  cdsPivotRes.FieldDefs.Add(PrimaryFld,SrcDataSet.FieldByName(PrimaryFld).DataType,0,True);
  for i := 0 to AddedFlds.Count -1 do
  begin
    if SrcDataSet.FieldByName(AddedFlds[i]).DataType = ftString then
      cdsPivotRes.FieldDefs.Add(AddedFlds[i],ftWideString,SrcDataSet.FieldByName(AddedFlds[i]).Size*2,False)
    else
      cdsPivotRes.FieldDefs.Add(AddedFlds[i],SrcDataSet.FieldByName(AddedFlds[i]).DataType,0,False);
  end;
  SrcDataSet.First;
  //
  CheckVal := SrcDataSet.FieldByName(PivotFld).AsVariant;
  cdsPivotRes.FieldDefs.Add(SrcDataSet.FieldByName(PivotFld).AsString,
     SrcDataSet.FieldByName(ValueFld).DataType,0,False);
  SrcDataSet.Next;
  while (not SrcDataSet.EOF) and (CheckVal <> SrcDataSet.FieldByName(PivotFld).AsVariant) do
  begin
    cdsPivotRes.FieldDefs.Add(SrcDataSet.FieldByName(PivotFld).AsString,
       SrcDataSet.FieldByName(ValueFld).DataType,0,False);
    SrcDataSet.Next;
  end;
  cdsPivotRes.CreateDataSet;
  cdsPivotRes.IndexDefs.Add('i_Primary',PrimaryFld,[]);
  cdsPivotRes.Open;
  cdsPivotRes.IndexName := 'i_Primary';
end;

procedure FilterDataSet(DataToFilter: TDataSet;sFilter:string);
begin
//Filer any given table with given filter
//if filter ='' then set no filter
  DataToFilter.Filtered := false;
  DataToFilter.Filter   := sFilter;
  if sFilter <> '' then
    DataToFilter.Filtered := true;
end;

procedure MoveToCurrent(TblName: TDataSet; sField: string;
  SendDate: TDateTime);
begin //move given tbl to current effective date
  TblName.Last;
  while (TblName.FieldByName(sField).AsDateTime > SendDate)
      and (not TblName.BOF) do TblName.Prior;
end;

procedure OnlyOneApp;
var
  fMutex :THandle;
begin
  fMutex := 0;
  try
    fMutex := CreateMutex(nil,FALSE,@Application.Title[1]);
    if (GetLastError() = ERROR_ALREADY_EXISTS) or
        (WaitForSingleObject(fMutex,100) = WAIT_TIMEOUT) or
        (fMutex= 0) then
    begin
      ShowMessage('You can only have one instance of ' + Application.title +' running at one time.');
      Application.Terminate;
    end;
  finally
    ReleaseMutex(fMutex);
  end;
end;

procedure ReplaceMem(sFind, sRep: string; mMemo: TMemo);
var
  iSelPos : integer;
begin
  iSelPos := Pos(sFind, mMemo.Lines.Text);
  while iSelPos > 0 do
  begin
    mMemo.SelStart  := iSelPos - 1;
    mMemo.SelLength := Length(sFind);
    mMemo.SelText   := sRep;
    //  iSelPos := 0; take out WB 15/10/2003
    iSelPos := Pos(sFind, mMemo.Lines.Text);
  end;
end;

procedure ReplaceREMem(sFind, sRep: string; reMemo: TRichEdit);
var
 StartPos, ToEnd, FoundAt : integer;
begin
  if sRep='' then
    sRep := ' ';
  FoundAt := 0;
  while FoundAt <> -1 do
  begin
    if reMemo.SelLength <> 0 then
      StartPos := reMemo.SelStart + reMemo.SelLength
    else
      StartPos := 0;
      { ToEnd is the length from StartPos to the end of the text in the rich edit control }
    ToEnd := Length(reMemo.Text) - StartPos;
    FoundAt := reMemo.FindText(sFind, StartPos, ToEnd, []);
    if FoundAt <> -1 then
    begin
      reMemo.SelStart := FoundAt;
      reMemo.SelLength := Length(sFind);
      reMemo.SelText := sRep;
    end;
  end;
end;

procedure RunApplication(AppPath : string); //Run application given the path
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

function RunModule(AppPath,Params : string): HWND;
var
   StartInfo : TStartUpInfo;
   ProcInfo  : TProcessInformation;
begin
  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo ,SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartUpInfo);
  CreateProcess(nil,PChar(AppPath + ' ' + Params),
                nil, nil,
                False,
                Create_New_Process_Group+Normal_Priority_Class,
                nil, nil,
                StartInfo,
                ProcInfo);
  Result := ProcInfo.dwProcessId;
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;

procedure RequeryOnRecord(DataSet: TADODataset; IndexField: string);
var
  IndexValue: Variant;
  Row: Integer;
begin
  IndexValue := DataSet.FieldByName(IndexField).Value;
  if IndexValue = null then
    DataSet.Requery
  else
  begin
    Row := DataSet.RecNo;
    DataSet.Requery;
    if not DataSet.Locate(IndexField,IndexValue,[]) then
      if not (DataSet.Bof and DataSet.Eof) then
      begin
        if DataSet.Bof then
          DataSet.RecNo := Row
        else
          DataSet.RecNo := Row;
      end;
  end
end;

procedure RunQuery(qryToRun: TQuery; inSQL: string; OorE: char);
begin
  qryToRun.Close;
  qryToRun.SQL.Clear;
  qryToRun.SQL.Add(inSQL);
  if OorE = 'O' then
  begin
    qryToRun.Open;
    qryToRun.First;
  end
  else
    qryToRun.ExecSQL;
end;

procedure RunQry(qryToRun :TADOQuery; inSQL :string; OorE :char);
begin
  qryToRun.Close;
  qryToRun.SQL.Clear;
  qryToRun.SQL.Add(inSQL);
  if OorE = 'O' then
  begin
    qryToRun.Open;
    qryToRun.First;
  end
  else
    qryToRun.ExecSQL;
end;

procedure PivotDataIntoCDS(cdsPivotRes: TClientDataSet; SrcDataSet: TDataSet;
  PrimaryFld,PivotFld,ValueFld: string; AddedFlds: TStringList);
var
  CheckVal : Variant;
  i : integer;
begin
  if not cdsPivotRes.Active then
    CreatePivotCDS(cdsPivotRes,SrcDataSet,PrimaryFld,PivotFld,ValueFld,AddedFlds)
  else
    cdsPivotRes.EmptyDataSet;
  // end Create CDS
  // procedure PivotDataIntoCDS
  SrcDataSet.First;
  //
  CheckVal := null;
  while not SrcDataSet.EOF do
  begin
    if CheckVal <> SrcDataSet.FieldByName(PrimaryFld).AsVariant then
    begin
      CheckVal := SrcDataSet.FieldByName(PrimaryFld).AsVariant;
      cdsPivotRes.Insert;
      cdsPivotRes.FieldByName(PrimaryFld).AsVariant := SrcDataSet.FieldByName(PrimaryFld).AsVariant;
      if Assigned(AddedFlds) then
        for i := 0 to AddedFlds.Count -1 do
          cdsPivotRes.FieldByName(AddedFlds[i]).AsVariant := SrcDataSet.FieldByName(AddedFlds[i]).AsVariant;
    end;
    //
    cdsPivotRes.Edit;
    cdsPivotRes.FieldByName(SrcDataSet.FieldByName(PivotFld).AsString).AsVariant :=
       SrcDataSet.FieldByName(ValueFld).AsVariant;
    cdsPivotRes.Post;
    //
    SrcDataSet.Next;
  end;
  // end PivotData
end;

procedure SetDatabaseDir(var TheDataBase : TDatabase; Path : string);
begin
  if Assigned(TheDataBase) then
  begin
    TheDataBase.Connected := false;
    if trim(Path) <> '' then
    begin
      TheDataBase.AliasName  := '';
      TheDataBase.DriverName := 'STANDARD';
      TheDataBase.Params.Clear;
      TheDataBase.Params.Add('PATH='+Path);
      try
        TheDataBase.Connected := true;
      except
        TheDataBase.Connected := false;
      end;
    end;
  end; {con}
end;

procedure SetIndexForDataSet(cdsDataSet: TClientDataSet; inFieldName: string;
  Accending :boolean);
var
  idxno : integer;
  TheIndexName : string;
begin
  cdsDataSet.IndexDefs.Update;
  if Accending then
    TheIndexName := 'i_'+inFieldName
  else
    TheIndexName := 'i_'+inFieldName+'d';
  idxno := cdsDataSet.IndexDefs.IndexOf(TheIndexName);
  if idxno = -1 then
  begin
    if Accending then
      cdsDataSet.IndexDefs.Add(TheIndexName,inFieldName,[])
    else
      cdsDataSet.IndexDefs.Add(TheIndexName,inFieldName,
        [ixDescending,ixCaseInsensitive]);
  end;
  cdsDataSet.IndexName := TheIndexName;
end;

procedure SortClientDataSet(inFieldName:string; Accending :boolean;
  var clnData : TClientDataSet);
var
  idxno : integer;
  TheIndexName : string;
begin
  clnData.IndexDefs.Update;
  if Accending then
    TheIndexName := 'i_'+inFieldName
  else
    TheIndexName := 'i_'+inFieldName+'d';
  idxno := clnData.IndexDefs.IndexOf(TheIndexName);
  if idxno = -1 then
  begin
    if Accending then
      clnData.IndexDefs.Add(TheIndexName,inFieldName,[])
    else
      clnData.IndexDefs.Add(TheIndexName,inFieldName,
        [ixDescending,ixCaseInsensitive]);
  end;
  clnData.IndexName := TheIndexName;
end;

procedure TileImage(imgTile :TImage; FormToTile : TForm);
var
  x,y, w, h : integer;
begin
  w := imgTile.Picture.Bitmap.Width;  // Bitmap to tile Width
  h := imgTile.Picture.Bitmap.Height; // Bitmap to tile Height
  if w and h > 0 then     // Start tiling bitmap
  begin
    for x := 0 to (FormToTile.Width div w) do
      for y := 0 to (FormToTile.Height div h) do
        FormToTile.Canvas.Draw(x*w,y*h,imgTile.Picture.Bitmap);
  end
end;

procedure WriteIni(sIniName, sSection, sIDent, sToWrite: string);
var IniFileName : TIniFile;
begin //Write Ini-File String given - Section, ID entry, String to write
  IniFileName := TIniFile.Create(sIniName);
  IniFileName.WriteString(sSection,sIDent,sToWrite);
  IniFileName.Free;
//  IniFileName := nil;
end;

procedure WriteIniInt(sIniName, sSection, sIDent: string; intToWrite :integer);
var IniFileName : TIniFile;
begin
  IniFileName := TIniFile.Create(sIniName);
  IniFileName.WriteInteger(sSection,sIDent,intToWrite);
  IniFileName.Free;
//  IniFileName := nil;
end;

procedure WriteIniDefColor(sIniName, sIDent: string; DefColor: integer);
var IniFileName : TIniFile;
begin
  IniFileName := TIniFile.Create(sIniName);
  IniFileName.WriteInteger('Defaults',sIDent,DefColor);
  IniFileName.Free;
//  IniFileName := nil;
end;

procedure CopyUpdate(UpdatePath, FilePath: String; Prompt: Boolean);
var
  Filename: String;
begin
  if Prompt then
    Prompt := MesDlg('There is a new version on the server, copy update?','C') = mrYes
  else
    Prompt := True;

  if Prompt then
  begin
    try
      Screen.Cursor := crHourGlass;
      Filename := ExtractFileName(FilePath);
      CopyFile(PChar(FilePath),PChar(ChangeFileExt(FilePath, '.old')),False);
      CopyFile(PChar(UpdatePath + Filename),PChar(FilePath),False);
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

function CheckForUpdate(UpdatePath, FilePath: String): Boolean;
var
  FileCurDate, FileUpdDate : TDate;
  Filename: String;
begin
  Result := False;
  Filename := ExtractFileName(FilePath);
  if FileExists(UpdatePath + Filename) then
  begin
    FileCurDate := FileAge(FilePath);
    FileUpdDate := FileAge(UpdatePath + Filename);
    Result:=  FileUpdDate > FileCurDate;
  end;
end;

function EncryptCode(DCode: String): String;
var
  I: Integer;
  ECode: String;
begin
  for I := 1 to Length(DCode) do
  begin
    if (ord(DCode[I]) < 65) and (ord(DCode[I]) >= 48)then
    begin
      if ord(DCode[I]) + Key[I mod 4] > 57 then
        ECode := ECode + Chr(47 + ord(DCode[I]) + Key[I mod 4] - 57)
      else
        ECode := ECode + Chr(ord(DCode[I]) + Key[I mod 4]);
    end
    else
      ECode := ECode + DCode[I];
  end;
    Result := ECode;
end;

function DecryptCode(ECode: String): String;
var
  I: Integer;
  DCode: String;
begin
  for I := 1 to Length(ECode) do
  begin
    if (ord(ECode[I]) < 65) and (ord(ECode[I]) >= 48)then
    begin
      if ord(ECode[I]) - Key[I mod 4] < 48 then
        DCode := DCode + Chr(58 + ord(ECode[I]) - Key[I mod 4] - 48)
      else
        DCode := DCode+ Chr(ord(ECode[I]) - Key[I mod 4]);
    end
    else
      DCode := DCode + ECode[I];
  end;
  Result := DCode;
end;

function VerifyActivationCode(Code: String; RemoteDrive, AppID: Integer): Boolean;
var
  DCode, RanStr, AppCode: String;
  I, Index: Integer;
begin
  DCode := DecryptCode(Code);
  RanStr := Copy(DCode,1,2) + Copy(DCode,Length(DCode),1);
  for I := Length(RanStr) downto 1 do
  begin
    Index := StrToInt(RanStr[I]) + 2;
    AppCode := Copy(DCode,Index,1) + AppCode;
    Delete(DCode,Index,1);
  end;
  Delete(DCode,1,2);
  Delete(DCode,Length(DCode),1);
  Result := (AppID = StrToInt(AppCode)) and (RemoteDrive = StrToInt(DCode));
end;

function GetLicenseDetails(var SerialNo: Double; var License, AppID: Integer;
  var ExpDate: TDate; DCode: String): Boolean;
var
  RanStr, Lic, NoLic: String;
  J, Index,RanPos: Integer;
  Year, Month, Day, App: String;
begin
  Result := True;
  try
    DCode := DecryptCode(DCode);
    RanPos := 1;
    repeat
      RanPos := RanPos + Pos('-',Copy(DCode,RanPos,Length(DCode)-RanPos+1));
    until
      Pos('-',Copy(DCode,RanPos,Length(DCode)-RanPos+1)) = 0;

    RanStr := Copy(DCode,RanPos,Length(DCode)-RanPos+1);
    Delete(DCode,RanPos-1,Length(DCode)-RanPos+2);
    DCode := StringReplace(DCode,'-','',[rfReplaceAll, rfIgnoreCase]);

    J := Length(RanStr);
    repeat
      if Ord(RanStr[J - 1]) >= 65 then
      begin
        Index := StrToInt(RanStr[J-2] + RanStr[J]);
        J := J-3;
      end
      else
      begin
        Index := StrToInt(RanStr[J]);
        J := J - 1;
      end;
      Lic := Copy(DCode,Index,2) + Lic;
      Delete(DCode,Index,2);
    until
      J = 0;

    NoLic := Copy(Lic,1,2);
    Year := '20' + Copy(Lic,3,2);
    App := '1' + Copy(Lic,5,2);
    Day := Copy(Lic,7,2);
    Month := Copy(Lic,9,2);

    SerialNo := StrToFloat(DCode);
    License := StrToInt(NoLic);
    AppID := StrToInt(App);
    ExpDate := EncodeDate(StrToInt(Year),StrToInt(Month),StrToInt(Day));
  except
    SerialNo := 0;
    License := 0;
    AppID := 0;
    ExpDate := 0;
    Result := False;
  end;
end;

end.


