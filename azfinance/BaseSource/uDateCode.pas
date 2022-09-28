unit uDateCode;

interface

uses
  Sysutils;

  // Do Etv
  function MakeOddEvenEvenOddStr(inStr: string; inEOind: integer):string;
  function GetNewDateVal(inCurrentDate:integer; inClientCode:string):string;
  function HalfHalfHDno(inNewStr:string; edtv: boolean):string;
  function CodeIntToChars(inCodeStr:string; maxChr : integer):string;
  function GetDateCode(inHDno, inClientCode : string;
    inDateVal :integer):string;
  //Do Dtv
  function UnMakeOddEvenEvenOddStr(inStr: string; inEOind: integer):string;
  function SumAndDoOEEOstr(inStr: string):string;
  function ReplaceLettersBackToNo(inStr: string):string;
  function GetDateDeCode(inHDno, inStr : string):string;
  //Global functions
  function GetBeforeEC:string;
  function GetValidKeySum:boolean;
  function GetKeyDate(inStr:string):Double;
  function IsValidKey(inHDno, inStr:string):Boolean;
  //
  function GetDateCodeRev(inHDno, inClientCode :string;
    inDateVal :integer):string;
  function GetDateDeCodeRev(inHDno, inStr : string):string;
  function IsValidKeyRev(inHDno, inStr:string):Boolean;
  //
  function ReverseKey(inStr: string):string;

implementation

var
  ValidKeySum : boolean;
  HDnoStr   : string;
//  BeforeEC  : string;

function GetBeforeEC:string;
begin
//  Result := BeforeEC;
end;
function GetValidKeySum:boolean;
begin
  Result := ValidKeySum;
end;

{ ---------------------- Etv - Begin -------------------------------- }
function MakeOddEvenEvenOddStr(inStr: string; inEOind : integer):string;
var
  i, EOconj : integer;
  TempStr, OddStr, EvenStr : string;
begin
  //3654801532,37
  for i := 1 to Length(inStr) do
  begin
    if Odd(i) then
      OddStr := OddStr + inStr[i] //35813
    else
      EvenStr := EvenStr + inStr[i] //64052
  end;
  if inEOind = -1 then
    EOconj := Length(inStr)
  else
    EOconj := inEOind;
  // 37
  if Odd(EOconj) then
    TempStr := OddStr+EvenStr //35813+64052
  else
    TempStr := EvenStr+OddStr;//64052+35813
  Result := TempStr;
end;

function GetNewDateVal(inCurrentDate:integer; inClientCode:string):string;
var
  DateAddOn, NewStr, SumStr : string;
  i, iSum : integer;
begin
  Randomize;
  // First add 3 random to end of date
{  DateAddOn := '';
  for i := 1 to 3 do
  begin
    DateAddOn := DateAddOn + IntToStr(Random(9));
  end;
}
  // 36548 + 015
  DateAddOn := IntToStr(inCurrentDate)+inClientCode;
  // Get sum of new str
  iSum := 0;
  for i := 1 to Length(DateAddOn) do  // 36548015 = 32
    iSum := iSum + StrToInt(DateAddOn[i]);
  SumStr := IntToStr(iSum); //32
  NewStr := DateAddOn + SumStr; //= 3654801532
  // Do odd even on newStr with sum Newstr // 32+3+2 = 37
  iSum := iSum + StrToInt(SumStr[1]) + StrToInt(SumStr[2]);
  //  BeforeEC := NewStr;    // 3654801532,37
  Result := MakeOddEvenEvenOddStr(NewStr,iSum);
end;

function HalfHalfHDno(inNewStr:string; edtv: boolean):string;
var
  Div2, HDno1H, HDno2H : integer;
  NewStr1H, NewStr2H   : integer;
  TempLeft, TempRight  : string;
begin
  //1026571983,  //**107796074317
  Div2 := Trunc(Length(HDnoStr)/2); //10=5
  HDno1H := StrToInt(Copy(HDnoStr,1,Div2)); //10265
  HDno2H := StrToInt(Copy(HDnoStr,Div2+1,Length(HDnoStr))); //71983
  Div2 := Trunc(Length(inNewStr)/2); //10=5
  NewStr1H := StrToInt(Copy(inNewStr,1,Div2));//35813   //**107796
  NewStr2H := StrToInt(Copy(inNewStr,Div2+1,Length(inNewStr)));//64052 //**074317
  if edtv then
  begin
    TempLeft := IntToStr(NewStr1H+HDno2H);//35813 + 71983 = 107796
    TempRight:= IntToStr(NewStr2H+HDno1H);//64052 + 10265 = 074317
    if Length(TempLeft)<6 then
      TempLeft := '0'+TempLeft;
    if Length(TempRight)<6 then
      TempRight := '0'+TempRight;
    Result := TempLeft+TempRight;//107796+074317
  end
  else         //107796-71983 =35813   + 074317-10265 = 64052 )=3581364052
    Result := IntToStr(NewStr1H-HDno2H)+IntToStr(NewStr2H-HDno1H)
end;

function CodeIntToChars(inCodeStr:string; maxChr: integer):string;
var
  iCntChr, iStrPos, ChrVal : integer;
  ReplaceChr, ResultStr : string;
begin
  ResultStr := ''; //10 77 96 07 43 17
  if maxChr > Length(inCodeStr) then
    maxChr := Length(inCodeStr);
  iCntChr := 0;
  iStrPos := 1;
  while iStrPos <= Length(inCodeStr) do
  begin
    ReplaceChr := '';
    ChrVal := StrToInt(inCodeStr[iStrPos]+inCodeStr[iStrPos+1]);
    case ChrVal of
      97..122 : ReplaceChr := Char(ChrVal);
      65..90  : ReplaceChr := Char(ChrVal);
    end;
    if ReplaceChr = '' then
      ResultStr := ResultStr + inCodeStr[iStrPos]+inCodeStr[iStrPos+1]
    else
      ResultStr := ResultStr + ReplaceChr;
    iStrPos := iStrPos + 2;
    if iCntChr >= maxChr then
      iStrPos := Length(inCodeStr) + 100;
  end;
  Result := ResultStr;
  //10m96074317
end;

function GetDateCode(inHDno, inClientCode :string;
  inDateVal :integer):string;
{inHDno = PC hard drive no, inClientCode = InstID on ClientDB eg.(015),
 inDateVal = expire Date value}
begin
  HDnoStr := inHDno; //1026571983
  Result := GetNewDateVal(inDateVal,inClientcode); //36548, 015
  Result := HalfHalfHDno(Result,True); //107796+074317
  Result := CodeIntToChars(Result,5); //10m96074317
end;
{ ---------------------- Etv - End -------------------------------- }

{ ---------------------- Dtv - Begin -------------------------------- }
function UnMakeOddEvenEvenOddStr(inStr: string; inEOind: integer):string;
var
  TempStr, TotalStr : string;
  i, iInc, DtvTot : integer;
begin
  // 3581364052,37
  TempStr := inStr;
  TotalStr := inStr;
  DtvTot := Trunc(Length(inStr)/2); //5
  TempStr := Copy(inStr,1,DtvTot); //35813
  Delete(TotalStr,1,DtvTot);  //64052
  iInc := 0;
  for i := 1 to Length(TempStr) do
  begin
    if Odd(inEOind) then
      Insert(TempStr[i],TotalStr,i+iInc)
    else
      Insert(TempStr[i],TotalStr,i+1+iInc);
    Inc(iInc);
  end;
 Result := TotalStr; //3654801532
end;

function SumAndDoOEEOstr(inStr: string):string;
var
  i, iSum, iCheckSum : integer;
  CheckStr : string;
begin
  //3581364052 = 37
  iSum := 0;
  for i := 1 to Length(inStr) do
    iSum := iSum + StrToInt(inStr[i]);
  Result := UnMakeOddEvenEvenOddStr(inStr,iSum); //3581364052,37 = 3654801532
  // Check result
  iSum := 0;
  CheckStr := Result; // 36548015=32
  iCheckSum := StrToInt(Copy(CheckStr,Length(CheckStr)-1,2));
  Delete(CheckStr,Length(CheckStr)-1,2);
  for i := 1 to Length(CheckStr) do
    iSum := iSum + StrToInt(CheckStr[i]);
  if iCheckSum <> iSum then
    ValidKeySum := False
  else
    ValidKeySum := True;
end;

function ReplaceLettersBackToNo(inStr: string):string;
var
  i, ChrVal : integer;
begin
  //10m96074317
  i := 1;
  while i <> Length(inStr)+1 do
  begin
    ChrVal := Ord(inStr[i]);
    case ChrVal of
      65..122 : begin
                  Delete(inStr,i,1);
                  Insert( IntToStr(ChrVal),inStr,i );
                end;
    end; {case}
    i:= i + 1;
  end;
  Result := inStr;
  //107796074317
end;

function GetDateDeCode(inHDno, inStr : string):string;
begin
  HDnoStr := inHDno;
  try
    Result := ReplaceLettersBackToNo(inStr);//10m96074317
    Result := HalfHalfHDno(Result,False); //3581364052
    Result := SumAndDoOEEOstr(Result); //36548015=32
  except
    ValidKeySum := False;
  end;
end;
{ ---------------------- Dtv - End -------------------------------- }

function GetKeyDate(inStr:string):Double;
begin
  try
    Result := StrToFloat(Copy(inStr,1,5));
  except
    Result := 0;
  end;
end;

function IsValidKey(inHDno, inStr:string):Boolean;
begin
  GetDateDeCode(inHDno, inStr);
  Result := ValidKeySum;
end;

// AZ KEY
function GetDateCodeRev(inHDno, inClientCode :string;
  inDateVal :integer):string;
{inHDno = PC hard drive no, inClientCode = InstID on ClientDB eg.(015),
 inDateVal = expire Date value}
begin
  HDnoStr := inHDno; //1026571983
  Result := GetNewDateVal(inDateVal,inClientcode); //36548, 015
  Result := HalfHalfHDno(Result,True); //107796+074317
  Result := ReverseKey(Result);// ReverseKey
  Result := CodeIntToChars(Result,5); //10m96074317
end;

function GetDateDeCodeRev(inHDno, inStr : string):string;
begin
  HDnoStr := inHDno;
  try
    Result := ReplaceLettersBackToNo(inStr);//10m96074317
    Result := ReverseKey(Result);// UnReverseKey
    Result := HalfHalfHDno(Result,False); //3581364052
    Result := SumAndDoOEEOstr(Result); //36548015=32
  except
    ValidKeySum := False;
  end;
end;

function IsValidKeyRev(inHDno, inStr:string):Boolean;
begin
  GetDateDeCodeRev(inHDno, inStr);
  Result := ValidKeySum;
end;

function ReverseKey(inStr: string):string;
var
  i : integer;
begin
  Result := '';
  for i := Length(inStr) downto 1 do
    Result := Result + inStr[i];
end;

end.
