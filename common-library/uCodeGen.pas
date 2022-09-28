unit uCodeGen;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, DBTables, ADODB, Dialogs, Unit32;

type
   TCodeGen = class(TObject)
    constructor Create;
    destructor Destroy; override;
  private
    { Private declarations }
    isStart, isCnt : integer;
    RunData  : boolean;
    UsrCancel: boolean;
    SQLKey   : string;
    ResKey   : string;
    FqryToUse: TDataSet;
    FfldName: string;
    FtblName: string;
    FusrInput: string;
    FCodeTmpl: string;
    FdefValues: string;
    FstartVal: string;
    function VerifyKey(inCode:string):boolean;
    function GetQueryValue:string;
    procedure SetRunQuery;
    procedure BuildSQLCode;
    procedure SetNewCode;
    procedure SetqryToUse(const Value: TDataSet);
    procedure SetUserInput;
  public
    { Public declarations }
    property CodeTmpl : string read FCodeTmpl write FCodeTmpl; // code template
    property defValues: string read FdefValues write FdefValues;
    property startVal : string read FstartVal write FstartVal;
    property tblName  : string read FtblName write FtblName;
    property fldName  : string read FfldName write FfldName;
    property usrInput : string read FusrInput write FusrInput;
    property qryToUse : TDataSet read FqryToUse write SetqryToUse;
    function GetNewCode:string;
  end;

implementation

{ TContractCalc }

constructor TCodeGen.Create;
begin
  // Properties
  CodeTmpl := '';
  defValues:= '';
  startVal := '';
  tblName  := '';
  fldName  := '';
  usrInput := '';
  qryToUse := nil;
end;

procedure TCodeGen.BuildSQLCode;
var
  i : integer;
  ixUsr : integer;
  ixDef : integer;
begin
  ixDef   := 1;
  ixUsr   := 1;
  isStart := 0;
  isCnt   := 0;
  SQLKey  := '';
  for i := 1 to Length(CodeTmpl) do
  begin
    case CodeTmpl[i] of
      'd' : begin
              SQLKey := SQLKey + LowerCase(defValues[ixDef]);
              Inc(ixDef);
            end;
      'D' : begin
              SQLKey := SQLKey + UpperCase(defValues[ixDef]);
              Inc(ixDef);
            end;
      'x' : begin
              SQLKey := SQLKey + LowerCase(usrInput[ixUsr]);
              Inc(ixUsr);
            end;
      'X' : begin
              SQLKey := SQLKey + UpperCase(usrInput[ixUsr]);
              Inc(ixUsr);
            end;
      's','S' : begin
                  if isStart = 0 then
                    isStart := i;
                  SQLKey := SQLKey + '%';
                  inc(isCnt);
                end;
    end;
  end;
  ResKey := SQLKey;
end;

function TCodeGen.GetQueryValue: string;
var
  tmpSQL : string;
begin
  qryToUse.Close;
  tmpSQL := 'select max('+fldName+') from '+tblName+' where '+fldName+' like '''+
    SQLKey+'''';
  if qryToUse is TQuery then
  begin
    TQuery(qryToUse).SQL.Clear;
    TQuery(qryToUse).SQL.Add(tmpSQL);
  end
  else
  begin
    TADODataSet(qryToUse).CommandText := tmpSQL;
  end;
  //
  qryToUse.Open;
  qryToUse.First;
  Result := qryToUse.Fields[0].AsString;
  qryToUse.Close;
end;

procedure TCodeGen.SetNewCode;
var
  newKey : string;
  newInt : integer;
begin
  //
  newKey := GetQueryValue;
  if Trim(newKey)='' then
    newInt := 1
  else
  begin
    try
      newInt := StrToInt(Copy(newKey,isStart,isCnt))+1;
    except
      newInt := 1;
    end;
  end;
  //
  if newInt < StrToInt(startVal) then
    newInt := StrToInt(startVal);
  //
  newKey := PadLeft(IntToStr(newInt),'0',isCnt);
  if Length(newKey) > isCnt then
  begin
    ResKey := '';
    MesDlg('This range is full, can not generate next key.','E');
  end
  else
  begin
    Delete(ResKey,isStart,isCnt);
    Insert(newKey,ResKey,isStart);
  end;
end;

procedure TCodeGen.SetRunQuery;
begin
  if (Pos('s',CodeTmpl)<>0) or (Pos('S',CodeTmpl)<>0) then
  begin
    // Check dataset assigned
    RunData := Assigned(qryToUse);
    if not RunData then
      MesDlg('No datasource / query has been assigned.','E')
    else
    begin // Check table name
      RunData := Trim(tblName)<>'';
      if not RunData then
        MesDlg('Table name missing.','E')
      else
      begin // Check field name
        RunData := Trim(fldName)<>'';
        if not RunData then
          MesDlg('Data fieldname missing.','E');
      end;
    end;
  end
  else
    RunData := True;
end;

function TCodeGen.VerifyKey(inCode: string): boolean;
var
  i : integer;
  iCntX : integer; // no of user inputs
  iCntD : integer;
  iCntS : integer;
  isChk : integer;
begin
  iCntD := 0;
  iCntX := 0;
  iCntS := 0;
  isChk := 0;
  for i := 1 to Length(inCode) do
  begin
    if inCode[i] in (['d','D']) then inc(iCntD);
    if inCode[i] in (['x','X']) then inc(iCntX);
    if inCode[i] in (['s','S']) then
    begin
      inc(iCntS);
      // 's' must follow
      if isChk = 0 then
        isChk := i
      else
      begin
        if i = (isChk +1) then
          isChk := i
        else
        begin
          Result := False;
          MesDlg('Seq numbers not used in sequence.','E');
          Exit;
        end; // else error
      end; // else <> 0
    end; // if code in s,S
  end;  // for loop
  // count 'd' = length 'd'
  Result := iCntD = Length(defValues);
  if not Result then
  begin
    MesDlg('Number of default values does not match, code template.','E');
    Exit;
  end;
  // count 'x' = length 'x'
  Result := iCntX = Length(usrInput);
  if not Result then
  begin
    MesDlg('Number of user input values does not match, code template.','E');
    Exit;
  end;
  // count 's' = length 's'
  Result := True;
  //
  if (Pos('s',CodeTmpl)<>0) or (Pos('S',CodeTmpl)<>0) then
    Result := iCntS >= Length(startVal);
  if not Result then
  begin
    MesDlg('Number starting bigger then code template value.','E');
    Exit;
  end;
end;

destructor TCodeGen.Destroy;
begin
  inherited Destroy;
end;

procedure TCodeGen.SetqryToUse(const Value: TDataSet);
begin
  FqryToUse := Value;
end;

function TCodeGen.GetNewCode: string;
begin
  Result := '';
  SetRunQuery;
  if RunData then
  begin
    SetUserInput;
    if UsrCancel then
      Exit;
    if VerifyKey(CodeTmpl) then
    begin
      BuildSQLCode;
      if isStart > 0 then
        SetNewCode;
      Result := ResKey;
    end;
  end;
end;

procedure TCodeGen.SetUserInput;
var
  i, iCntX : integer;
begin
  UsrCancel := False;
  iCntX := 0;
  for i := 1 to Length(CodeTmpl) do
  begin
    if CodeTmpl[i] in (['x','X']) then inc(iCntX);
  end;

  if (usrInput='') and (iCntX<>0) then
  begin
    I := 0;
    repeat
      if I > 0 then
      begin
        MesDlg('New code must be ' + IntToStr(iCntX)+' characters long','I');
        FusrInput := Copy(FusrInput,1,3);
      end;
      UsrCancel :=  not InputQuery('Enter new code','Please enter the new code?  '+
        '('+IntToStr(iCntX)+' characters).',FusrInput);
      Inc(I);
    until
      (Length(usrInput) = 3) or (UsrCancel = True);
      
    if UsrCancel then
    begin
      ResKey := '';
      FusrInput := '';
    end;
  end;
end;

end.
