unit clsBatchMove;
{===============================================================================
 Author  : Wicus Botha
 Date    : 23/08/1999
 Unit    : This is a generic batchmove object
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Db, DBTables, comctrls,
  DBClient, Unit32;

type
  TDataMove = Class
    lstErrors: TStringList;
    tblSource: TDataSet;
    tblDestination: TDataSet;
    lstSource: TStringList;
    lstDest: TStringList;
    NoOfKeys: Integer;
    strKeys: String;
    SearchFields: Variant;
    Progress : TProgressBar;
    procedure SetKeyStr;
    procedure SetSearchFields;
    procedure RunDataMove;
    procedure RunKeys;
    procedure RunLists;
    procedure Formulas(Counter : integer);
    constructor Create;
    destructor Destroy; override;
  private
    { Private declarations }
  public
    { Public declarations }
    lstCodes : TStringList;
    function RunDataCopy(SourceTable, DestTable: TDataSet;
      srcFields, destFields: TStringList; KeyFldNo: Integer;
      Stats: TProgressBar):TStringList;
  end;

var
  DataMove : TDataMove;

implementation

{ TDataMove }

procedure TDataMove.SetKeyStr;
var
  i : integer;
begin
  strKeys := '';
  if NoOfKeys <> 0 then
  begin
    strKeys := lstDest[0];
    for i := 1 to NoOfKeys-1 do
      strKeys := strKeys + ';' +lstDest[i];
  end;
end;

procedure TDataMove.SetSearchFields;
var
  i : integer;
  TempVar : variant;
begin
  if NoOfKeys <> 0 then
  begin
    if NoOfKeys > 1 then
    begin
      SearchFields := VarArrayCreate([0, NoOfKeys-1], varVariant);
      for i := 0 to NoOfKeys-1 do
      begin
        if lstSource[i][1] in ['~','%'] then
          SearchFields[i] := Copy(lstSource[i],2,Length(lstSource[i]))
        else
          SearchFields[i] := tblSource.FieldByName(lstSource[i]).Value;
      end;
    end
    else
    begin
      if lstSource[0][1] in ['~','%'] then
        SearchFields := Copy(lstSource[0],2,Length(lstSource[0]))
      else
        SearchFields := tblSource.FieldByName(lstSource[0]).Value;
    end;
 end;
end;

procedure TDataMove.RunDataMove;
begin
  lstErrors.Clear;  // Clear the error list
  Progress.Position := 0; // Set the progress bar to 0
  Progress.Max := tblSource.RecordCount; // Get Max for progress bar
  tblSource.First; // Set source pointer to first record
  SetKeyStr; // Set the key fields
  while not tblSource.Eof do
  begin
    SetSearchFields;  // Set all key fields values to see if record exists
    if tblDestination.Locate(strKeys,SearchFields,[loCaseInsensitive]) then
      tblDestination.Edit
    else
      tblDestination.Append;
//      SearchFields.Free;  //??????
      RunKeys;
      try
        RunLists;
        tblDestination.Post;
      except
        on E: Exception do
        begin
         tblDestination.Cancel;
         if lstSource[1][1]<>'%' then
           lstErrors.Add(tblSource.FieldByName(lstSource[0]).AsString+'   '+
           tblSource.FieldByName(lstSource[0]).AsString+'   '+
           ' Reason: '+E.Message);
        end;
      end;
    tblSource.Next;
    Progress.Position := Progress.Position + 1;
  end; {while}
  Progress.Position := Progress.Max;
end;

procedure TDataMove.RunKeys;
var
  i : integer;
begin
  if NoOfKeys <> 0 then
  begin
//    tblDestination.FieldByName(lstDest[0]).AsString :=
//      tblSource.FieldByName(lstSource[0]).AsString;
    for i := 0 to NoOfKeys-1 do
    begin
      if lstSource[i][1] in ['~','%'] then
        tblDestination.FieldByName(lstDest[i]).Value :=
          Copy(lstSource[i],2,Length(lstSource[i]))
      else
        tblDestination.FieldByName(lstDest[i]).Value :=
          tblSource.FieldByName(lstSource[i]).Value;
    end;
  end;
end;

procedure TDataMove.RunLists;
var
  i : integer;
begin
  for i := NoOfKeys to lstSource.Count-1 do
  begin
    if Copy(lstSource[i],1,1)='%' then
      Formulas(i)
    else
      if Copy(lstSource[i],1,1)='~' then
        tblDestination.FieldByName(lstDest[i]).Value :=
          Copy(lstSource[i],2,Length(lstSource[i]))
      else
        tblDestination.FieldByName(lstDest[i]).Value :=
          tblSource.FieldByName(lstSource[i]).Value;
  end;
end;

function TDataMove.RunDataCopy(SourceTable, DestTable: TDataSet;
  srcFields, destFields: TStringList; KeyFldNo: Integer;
  Stats: TProgressBar): TStringList;
begin
  Progress  := Stats;  // Progress bar to show Progress of batchmove
  tblSource := SourceTable; //Source table
  tblDestination := DestTable; //Destination table
  lstSource := srcFields;  //List of Source fields
  lstDest   := Destfields; //List of Destination fields
  NoOfKeys  := KeyFldNo;   //No of key fields
  try
    if not tblSource.Active then
      tblSource.Open;
    if not tblDestination.Active then
      tblDestination.Open;
    RunDataMove;  //Starting point of Batch move
  finally
    if not tblSource.Active then
      tblSource.Close;
    if not tblDestination.Active then
      tblDestination.Close;
  end;
  Result := lstErrors; // Error list
end;

constructor TDataMove.Create;
begin
  lstSource := TStringList.Create;
  lstDest   := TStringList.Create;
  lstErrors := TStringList.Create;
  lstCodes  := TStringList.Create;
  //Create Tables
end;

destructor TDataMove.Destroy;
begin
  //Free Tables
end;

procedure TDataMove.Formulas(Counter : integer);
var
  FormulaInd, FldName, strFldVal : string;
  FldVal : variant;
begin
  FldName := Copy(lstSource[Counter],3,Length(lstSource[Counter]));
  FldVal := tblSource.FieldByName(FldName).Value;
  FormulaInd := Copy(lstSource[Counter],2,1);
  try
    case FormulaInd[1] of
      'c': begin
             strFldVal := FldVal;
             FldVal := lstCodes.Values[strFldVal];
           end;
      's': begin
             strFldVal := FldVal;
             FldVal := UpperCase(strFldVal[1]);// Sex
           end;
    end;
    tblDestination.FieldByName(lstDest[Counter]).Value := FldVal;
  except
    tblDestination.FieldByName(lstDest[Counter]).Value := null;
  end;
end;

end.
