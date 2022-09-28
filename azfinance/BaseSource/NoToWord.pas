unit NoToWord;
{===============================================================================
 Author  : Wicus Botha
 Date    : 07/08/1999
 Unit    : This component convert a given number to words.
           It can also insert words before the word number and
           after the word number. 
           Currency i.e. before="Rand ", after=" cents"
           Limit in input number = one hunderd million
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TNoToWord = class(TLabel)
  private
    { Private declarations }
    FNoToWord: integer;       // Value that will be put into words
    FInputVal: double;        // Float value to words - break into integers = FNoToWord
    FNoToWordResult: string;  // Result for FNoToWord - integer
    FInputValResult: string;  // Result for FInputVal - float
    FBeforeDecStr: string;    // Add-in for float value - before decimal
    FAfterDecStr: string;     // Add-in for float value - after decimal
    function NumberToWord:string;
    function GetWordForInput:string;
    function WordForOne(inOne:integer; ForTwo: boolean):string;
    function WordForTwo(inTwo: integer):string;
    function AddDesTen(inStrNo:string):string;
    function TakeOutZero(inStr: string): string;
    procedure SetInputVal(const Value: double);
    procedure SetNoToWord(const Value: integer);
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    // Direct assign of the integer
    property NoToWord : integer read FNoToWord write SetNoToWord;
    // Assign a float value
    property InputVal : Double read FInputVal write SetInputVal;
    property NoToWordResult : string read FNoToWordResult;
    property InputValResult : string read FInputValResult;
    property BeforeDecStr : string read FBeforeDecStr write FBeforeDecStr;
    property AfterDecStr  : string read FAfterDecStr write FAfterDecStr;
  end;

procedure Register;

implementation
{$R 'NoToWord.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TNoToWord]);
end;

{ TNoToWord }

procedure TNoToWord.SetInputVal(const Value: double);
begin
  FInputVal := Value;
  if FInputVal >= 100000000 then //one hunderd million
    Self.Caption    := 'error - no outside convertsion range'
  else
  begin
    FInputValResult := GetWordForInput;
    Self.Caption    := FInputValResult;
  end;
end;

procedure TNoToWord.SetNoToWord(const Value: integer);
begin
  FNoToWord := Value;
  if FInputVal >= 100000000 then //one hunderd million
    Self.Caption    := 'error - no outside convertsion range'
  else
  begin
    FNoToWordResult := NumberToWord;
    Self.Caption    := FNoToWordResult;
  end;  
end;

{WB 07/08/2000
 This function will convert the float number to words, by cutting it into
 two integers 1=before decimal, 2=after decimal
 And then use the normal function - NumberToWord}
function TNoToWord.GetWordForInput: string;
var
  TempInput : string;
begin
  Result := '';
  FNoToWord := Trunc(InputVal);
  Result := NumberToWord;
  Result := Trim(Result) +' '+ BeforeDecStr;
  TempInput := FloatToStr(InputVal);
  if Pos('.',TempInput) <> 0 then
  begin
    TempInput := Copy(TempInput,Pos('.',TempInput)+1,2);
    if Length(TempInput)=1 then
      TempInput := TempInput + '0';
    FNoToWord := StrToInt(TempInput);
    Result := Trim(Result) +' '+ NumberToWord;
  end
  else
    Result := Trim(Result) +' zero';
  Result := Trim(Result) +' '+ AfterDecStr;
end;

{WB 07/08/2000
 This function will convert the number to words}
function TNoToWord.NumberToWord: string;
var
  TempNo : string;
  OneTwo : integer;
begin
  Result := '';
  TempNo := IntToStr(FNoToWord);
  while Length(TempNo)>0 do
  begin
    OneTwo := 1;
    if Length(TempNo) in [8,5,2] then //If no in (million,thousand,tens)
    begin //dubble number words i.e. 50=Fithty
      OneTwo := 2;
      Result := Result + WordForTwo(StrToInt(Copy(TempNo,1,OneTwo)));
    end
    else //single number words i.e. 5=Five
      Result := Result + WordForOne(StrToInt(Copy(TempNo,1,OneTwo)),False);
    // Add the tensX word
    Result := Result + AddDesTen(TempNo);
    Delete(TempNo,1,OneTwo);      // After each loop cut the complete no part
    TempNo := TakeOutZero(TempNo);// Clear all leding '0'
  end;
end;

{WB 07/08/2000
 This function will add the tensX word to the number}
function TNoToWord.AddDesTen(inStrNo: string): string;
var
 DesTen : integer;
begin
  Result := '';
  DesTen := Length(inStrNo);
  // Add 10x word
  case DesTen of
    3,6: begin
           Result := ' hundred and ';
           if (DesTen<>6) and (Copy(inStrNo,DesTen-1,2)='00') then
             Result := ' hundred ';
           // Exception
           if (DesTen=6) and (Copy(inStrNo,2,2)='00') then
           begin
            if (Copy(inStrNo,DesTen-3,4)='0000') then
              Result := ' hundred thousand '
            else
              Result := ' hundred thousand and '
           end;
         end;
    4,5: begin
           Result := ' thousand ';
           if Copy(inStrNo,DesTen-2,1)='0' then
           begin
             if Copy(inStrNo,DesTen-1,2)<>'00' then
             //if (inStrNo[DesTen]<>'0') or (inStrNo[DesTen-1]<>'0') then
               Result := ' thousand and '
           end;
         end;
    7,8 : Result := ' million ';
    else
      Result := Result;
  end;
end;

{WB 07/08/2000
 Clear out all the '0' - 601 000 after each no to string }
function TNoToWord.TakeOutZero(inStr: string): string;
begin
  Result := inStr;
  while (Result<>'') and (Result[1]='0') do
    Delete(Result,1,1);
end;

{WB 07/08/2000
 This function will return the string value for a single number OR
 in dubble numbers the dubble string number}
function TNoToWord.WordForOne(inOne: integer; ForTwo: boolean): string;
begin
  // No in words
  case inOne of
    1:  Result := 'one';
    2:  Result := 'two';
    3:  begin
          if ForTwo then
            Result := 'thir'
          else
            Result := 'three';
        end;
    4:  Result := 'four';
    5:  begin
          if ForTwo then
            Result := 'fif'
          else
            Result := 'five';
        end;
    6:  Result := 'six';
    7:  Result := 'seven';
    8:  begin
          if ForTwo then
            Result := 'eigh' // no 't' to compromise for ..teen & ..ty 
          else
            Result := 'eight';
        end;
    9:  Result := 'nine';
    else
      Result := '';
  end; {case}
end;

{WB 07/08/2000
 This function will return the string value for two numbers - Thousands &
 Tens - i.e. 50423 = 50 Fithty and the 23 Twenty three
 inTwo  = the actaul number}
function TNoToWord.WordForTwo(inTwo: integer): string;
var
  TempOne : string;
begin
  TempOne := IntToStr(inTwo);
  case inTwo of
    // exceptions
    10: Result := 'ten';
    11: Result := 'eleven';
    12: Result := 'twelve';
    // tens with "teen" as suffix
    13..19: Result  := WordForOne(StrToInt(TempOne[2]),True)+ 'teen';
    // twenties with "twenty" as suffix
    20..29: Result  := 'twenty '+ WordForOne(StrToInt(TempOne[2]),False);
    // all other dubble numbers "ty" as suffix
    else
      begin
        Result  := WordForOne(StrToInt(TempOne[1]),True)+ 'ty ';
        //if Length(TempOne)>1 then
        Result  := Result + WordForOne(StrToInt(TempOne[2]),False);
      end;
  end; {case}
end;

end.
