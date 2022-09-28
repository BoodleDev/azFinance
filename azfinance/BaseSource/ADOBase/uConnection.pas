unit uConnection;

interface

uses Classes;

function UpdateConnectionString(CurConnection: WideString;
  Name,Value: String): String;

implementation

function UpdateConnectionString(CurConnection: WideString;
  Name,Value: String): String;
var
  ConnectList: TStringList;
  I, J: Integer;
begin
  J := 1;
  ConnectList := TStringList.Create;
  for I := 0 to Length(CurConnection) do
  begin
    if CurConnection[I] = ';' then
    begin
      ConnectList.Add(Copy(CurConnection,J,I-J));
      J := I + 1;
    end;
  end;
  ConnectList.Values[Name] := Value;
  for I := 0 to ConnectList.Count - 1 do
    Result := Result + ConnectList.Strings[I] + ';';
  Delete(Result,Length(Result),1);
end;

end.


 