unit dmEntRef;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Unit32, ADODB;

type
  TdtmEntRef = class(TDataModule)
    qryEntity: TADODataSet;
    dtsEntity: TDataSource;
    qryCodeStrc: TADODataSet;
    qryAddress: TADODataSet;
    dtsAddress: TDataSource;
    qryToUse: TADOQuery;
    qryEntCode: TADODataSet;
    dtsEntCode: TDataSource;
    procedure AllBeforePost(DataSet: TDataSet);
    procedure qryAddressAfterInsert(DataSet: TDataSet);
    procedure qryEntityBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    FCurID: integer;
    FEntType: integer;
    FShowCodeMsg: boolean;
    FRelID: integer;
    //FEntCTL: integer;
    function GetNewID:integer;
    function GetNewCode(ForWho: integer):string;
    function InsertNewEntity(inCode: string): boolean;
    function VerifyTelNo(inValue:string):boolean;
    procedure SetCurID(const Value: integer);
    procedure SetEntType(const Value: integer);
  private
    { Private declarations }
  public
    { Public declarations }
    property ShowCodeMsg : boolean read FShowCodeMsg write FShowCodeMsg;
    property CurID   : integer read FCurID write SetCurID;
    property EntType : integer read FEntType write SetEntType;
    property RelID   : integer read FRelID write FRelID;
    function AddNewEntity:boolean;
  end;

var
  dtmEntRef: TdtmEntRef;

implementation

uses dmMain, uConst, uCodeGen;

{$R *.DFM}

{ TdtmEntity }

procedure TdtmEntRef.DataModuleCreate(Sender: TObject);
begin
  ShowCodeMsg := True;
  RelID := 0;
end;

function TdtmEntRef.GetNewID: integer;
begin
  RunQry(qryToUse,'Select MAX(EntityID) from EntityData where EntType='+
    IntToStr(EntType),'O');
  //
  if qryToUse.Fields[0].IsNull then
    Result := EntType // PSNtype=1 & CPTtype=2
  else
    Result := qryToUse.Fields[0].AsInteger+2;
end;

function TdtmEntRef.InsertNewEntity(inCode: string): boolean;
var
  tmpInt : integer;
begin
  Screen.Cursor := crHourGlass;
  try
    tmpInt := GetNewID;
    RunQry(qryToUse,'insert into EntityData (EntityID,EntType,EntCode,Status,'+
      'DefAdr,DocAdr,DelAdr,UserAdd,DateAdded) values ('+
      IntToStr(tmpInt)+','+IntToStr(EntType)+','''+inCode+''',0,1,1,2,'''+
      dtmMain.CurrentID+''','''+FormatDateTime('mm/dd/yyyy hh:mm:ss',Now)+''')','E');
    Result := True;
    CurID  := tmpInt;
  except
    Result := False;
    MesDlg('Code already been taken please try again.','E');
    Screen.Cursor := crDefault;
  end;
  Screen.Cursor := crDefault;
end;

function TdtmEntRef.GetNewCode(ForWho: integer): string;
var
  OBJcode : TCodeGen;
begin
  FilterDataSet(qryCodeStrc,'TypeID='+IntToStr(ForWho));
  qryCodeStrc.Open;
  OBJcode := TCodeGen.Create;
  try
    OBJcode.CodeTmpl := qryCodeStrc.FieldByName('CodeTmpl').AsString;
    OBJcode.defValues:= qryCodeStrc.FieldByName('DefVals').AsString;
    OBJcode.startVal := qryCodeStrc.FieldByName('StartVal').AsString;
    OBJcode.tblName  := qryCodeStrc.FieldByName('TblName').AsString;
    OBJcode.fldName  := qryCodeStrc.FieldByName('FldName').AsString;
    OBJcode.qryToUse := qryToUse;
    Result := OBJcode.GetNewCode;
  finally
    OBJcode.Free;
  end;
  qryCodeStrc.Close;
end;

function TdtmEntRef.AddNewEntity:boolean;
var
  newCode : string;
begin
  Result  := False;
  newCode := GetNewCode(EntType);
  if Trim(newCode)<>'' then
  begin
    if ShowCodeMsg then
    begin
      if MesDlg('Accept new code as: '+newCode+' ?','C')= mrYes then
        Result := InsertNewEntity(newCode)
      else
        qryEntity.Cancel;
    end
    else
      Result := InsertNewEntity(newCode);
  end
  else
    qryEntity.Cancel;
end;

procedure TdtmEntRef.AllBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldList.IndexOf('UserID') <> -1 then
    DataSet.FieldByName('UserID').AsString := dtmMain.CurrentID;
end;

procedure TdtmEntRef.qryAddressAfterInsert(DataSet: TDataSet);
begin
  qryAddress.FieldByName('EntityId').AsInteger := qryEntity.FieldByName('EntityId').AsInteger;
  qryAddress.FieldByName('EntType').AsInteger  := EntType;
end;

procedure TdtmEntRef.SetCurID(const Value: integer);
begin
  FCurID := Value;
  qryEntity.Close;
  qryEntity.Parameters[0].Value := FCurID;
  qryEntity.Open;
  {qryEntCode.Close;
  qryEntCode.Parameters[0].Value := EntCTL;
  qryEntCode.Open;}
end;

procedure TdtmEntRef.SetEntType(const Value: integer);
begin
  FEntType := Value;
  qryAddress.Close;
  qryAddress.Parameters[1].Value := EntType;
end;

function TdtmEntRef.VerifyTelNo(inValue: string): boolean;
begin
  Result := Trim(inValue) = '';
  if not Result then
    Result := Pos('-',inValue) <> 0;
  if not Result then
    MesDlg('Incorrect telephone number format, no area code.','E');
end;

procedure TdtmEntRef.qryEntityBeforePost(DataSet: TDataSet);
begin
  if not VerifyTelNo(DataSet.FieldByName('TelNo1').AsString) then Abort;
  if not VerifyTelNo(DataSet.FieldByName('TelNo2').AsString) then Abort;
  if not VerifyTelNo(DataSet.FieldByName('TelNo3').AsString) then Abort;
  DataSet.FieldByName('DateChange').AsDateTime := Now;
  AllBeforePost(DataSet);
end;

end.
