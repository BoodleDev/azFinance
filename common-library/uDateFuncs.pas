unit uDateFuncs;

interface

uses SysUtils, StrUtils;

function GetDaySuffix(Day: Integer): String;
function GetWeekDayName(Day: Integer): String;

implementation

function GetDaySuffix(Day: Integer): String;
var
  Format: String;
  sDay: String;
begin
  sDay := IntToStr(Day);
  Format := 'th';
  if (Day <= 3) or (Day >= 21) then
  begin
    case StrToInt(RightStr(sDay,1)) of
      1: Format := 'st';
      2: Format := 'nd';
      3: Format := 'rd';
    end;
  end;
  Result := sDay + Format;
end;

function GetWeekDayName(Day: Integer): String;
begin
  case Day of
    1:  Result := 'Monday';
    2:  Result := 'Tuesday';
    3:  Result := 'Wednesday';
    4:  Result := 'Thursday';
    5:  Result := 'Friday';
    6:  Result := 'Saturday';
    7:  Result := 'Sunday';
  end;
end;

end.
