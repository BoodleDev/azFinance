unit dmEntity;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Unit32, ADODB, uCallDll;

type
  TdtmEntity = class(TDataModule)
    qryEntity: TADODataSet;
    dtsEntity: TDataSource;
    qryCodeStrc: TADODataSet;
    qryAddress: TADODataSet;
    dtsAddress: TDataSource;
    qryToUse: TADOQuery;
    qryEntCode: TADODataSet;
    dtsEntCode: TDataSource;
    dsCompanyContacts: TADODataSet;
    dtsCompanyContacts: TDataSource;
    procedure AllBeforePost(DataSet: TDataSet);
    procedure qryAddressAfterInsert(DataSet: TDataSet);
    procedure qryEntityBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FCurID: integer;
    FEntType: integer;
    FShowCodeMsg: boolean;
    FRelID: integer;
    FRecAmended: boolean;
    //FEntCTL: integer;
    function GetNewCode(ForWho: integer):string;
    function InsertNewEntity(inCode: string): Integer;
    function VerifyTelNo(inValue:string):boolean;
    procedure SetCurID(const Value: integer);
    procedure SetEntType(const Value: integer);
    procedure CheckAddresses;
    procedure VerifyIDno;
  public
    { Public declarations }
    property ShowCodeMsg : boolean read FShowCodeMsg write FShowCodeMsg;
    property CurID   : integer read FCurID write SetCurID;
    property EntType : integer read FEntType write SetEntType;
    property RelID   : integer read FRelID write FRelID;
    property RecAmended:boolean read FRecAmended write FRecAmended;
    //property EntCTL  : integer read FEntCTL write FEntCTL; used for main CAT del
    function AddNewEntity(AddEntityToApp: Boolean): Integer;
    function AddAppRelationship(EntID, AppID, LinkID,
      RelID: integer): boolean;
    function AddRelationship(EntID, LinkID, RelID: integer):boolean;
    function CheckAddressData(AdrType : integer):boolean;
    procedure DelAppRelation(EntID :integer);
    procedure DelRelationShip(EntID, LinkID, RelID: integer);
    procedure CompleteNewEnt(RegNo,N1,N2 : string);
    procedure SetEntStatus(EntID, newSts : integer);
    procedure ClrMandFld(var ObjOwner :TControl; GrpID :integer);
  end;

var
  dtmEntity: TdtmEntity;

implementation

uses dmMain, uConst, uCodeGen;

{$R *.DFM}

{ TdtmEntity }

procedure TdtmEntity.DataModuleCreate(Sender: TObject);
begin
  RecAmended := False;
  ShowCodeMsg := True;
  RelID := 0;
  //EntCTL := 110001;
//  qryEntity.Properties['Update Criteria'].value := adCriteriaKey; //uses AdoInt
end;

function TdtmEntity.InsertNewEntity(inCode: string): Integer;
begin
  Result := -1;
  Screen.Cursor := crHourGlass;
  try
    RunQry(qryToUse,'exec bsAddNewEnt '+IntToStr(EntType)+
      ','''+inCode+''','''+ dtmMain.CurrentID+'''','O');
    //Result := True;
    CurID  := qryToUse.Fields[0].AsInteger;// tmpInt;
    Result := CurID;
  except
    MesDlg('Code already been taken please try again','E');
    Screen.Cursor := crDefault;
  end;
  Screen.Cursor := crDefault;
end;

function TdtmEntity.GetNewCode(ForWho: integer): string;
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

function TdtmEntity.AddNewEntity(AddEntityToApp: Boolean): Integer;
var
  newCode : string;
begin
  Result := -1;
  newCode := GetNewCode(EntType);
  if Trim(newCode)<>'' then
  begin
    if ShowCodeMsg then
    begin
      if MesDlg('Accept new code as: '+newCode+' ?','C')= mrYes then
      begin
        Result := InsertNewEntity(newCode);
        if (Result > -1) and (AddEntityToApp) then
          try
            AddAppRelationship(CurID, AppID, 0,RelID);
          except
          end;
      end
      else
        qryEntity.Cancel;
    end
    else
      Result := InsertNewEntity(newCode);
  end
  else
    qryEntity.Cancel;
end;

procedure TdtmEntity.AllBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldList.IndexOf('UserID') <> -1 then
    DataSet.FieldByName('UserID').AsString := dtmMain.CurrentID;
end;

procedure TdtmEntity.qryAddressAfterInsert(DataSet: TDataSet);
begin
  qryAddress.FieldByName('EntityId').AsInteger := qryEntity.FieldByName('EntityId').AsInteger;
//  qryAddress.FieldByName('TypeID').AsInteger   := 0;
end;

procedure TdtmEntity.SetCurID(const Value: integer);
begin
  FCurID := Value;
  qryEntity.Close;
  qryEntity.Parameters[0].Value := FCurID;
  qryEntity.Open;
  EntType := qryEntity.FieldByName('EntType').AsInteger;

  dsCompanyContacts.Close;
  dsCompanyContacts.Parameters[0].Value := FCurID;
  dsCompanyContacts.Open;
end;

procedure TdtmEntity.SetEntType(const Value: integer);
begin                                                                                     
  FEntType := Value;
  qryAddress.Close;
  qryAddress.Parameters[1].Value := EntType;
end;

function TdtmEntity.VerifyTelNo(inValue: string): boolean;
begin
  Result := Trim(inValue) = '';
  if not Result then
    Result := Pos('-',inValue) <> 0;
  if not Result then
    MesDlg('Incorrect telephone number format, no area code.','E');
end;

procedure TdtmEntity.qryEntityBeforePost(DataSet: TDataSet);
begin
  if not VerifyTelNo(DataSet.FieldByName('TelNo1').AsString) then Abort;
  if not VerifyTelNo(DataSet.FieldByName('TelNo2').AsString) then Abort;
  if not VerifyTelNo(DataSet.FieldByName('TelNo3').AsString) then Abort;
//  DataSet.FieldByName('DateChange').AsDateTime := Now; triger on db
  AllBeforePost(DataSet);
  if DataSet.FieldByName('DefAdr').AsInteger > 0 then
    CheckAddresses;
  // Verify ID no
  if DataSet.FieldByName('EntType').AsInteger = PSNtype then
    VerifyIDno;
  RecAmended := True;
end;

function TdtmEntity.AddRelationship(EntID, LinkID, RelID: integer): boolean;
begin
  try
    RunQry(qryToUse,'insert into EntRelation (EntityID,LinkID,Relation,DateAdded,UserID)'+
      ' values('+IntToStr(EntID)+','+IntToStr(LinkID)+','+
       IntToStr(RelID)+',GetDate(),'''+dtmMain.CurrentId+''')','E');
    Result := True;
  except
    Result := False;
  end;
end;

function TdtmEntity.AddAppRelationship(EntID, AppID, LinkID, RelID: integer): boolean;
begin
  try
    RunQry(qryToUse,'insert into EntRelation (EntityID, AppID, LinkID, Relation,DateAdded,UserID)'+
      ' values(' + IntToStr(EntID) + ',' + IntToStr(AppID) + ',' + IntToStr(LinkID) + ',' +
       IntToStr(RelID)+',GetDate(),'''+dtmMain.CurrentId+''')','E');
    Result := True;
  except
    Result := False;
  end;
end;

procedure TdtmEntity.DelAppRelation(EntID: integer);
begin
  RunQry(qryToUse,'exec bsDelEntRelApp '+IntToStr(EntID)+','+IntToStr(AppID),'E');
end;

procedure TdtmEntity.DelRelationShip(EntID, LinkID, RelID: integer);
begin
  try
    Screen.Cursor := crHourGlass;
    RunQry(qryToUse,'delete from EntRelation '+
      'where EntityID='+IntToStr(EntID)+ //' and AppID='+IntToStr(AppID)+
      ' and LinkID='+IntToStr(LinkID)+' and Relation='+IntToStr(RelID),'E');
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmEntity.CompleteNewEnt(RegNo, N1, N2: string);
begin
  RunQry(qryToUse,'update EntityData set RegNo='''+
    RegNo+''', Name='''+N1+''', Name2='''+N2+''' where EntityID='+
    IntToStr(CurID),'E');
end;

function TdtmEntity.CheckAddressData(AdrType: integer):boolean;
begin
  RunQry(qryToUse,'exec bsCheckAdr '+IntToStr(CurID)+','+IntToStr(AdrType),'O');
  Result := qryToUse.Fields[0].AsInteger = 1;
end;

procedure TdtmEntity.CheckAddresses;
begin
  if not CheckAddressData(qryEntity.FieldByName('DefAdr').AsInteger) then
  begin
    if qryEntity.FieldByName('DefAdr').AsInteger = AdrPost then
      MesDlg('No postal address have been captured for the default address.','W')
    else
      if qryEntity.FieldByName('DefAdr').AsInteger = AdrPhys then
        MesDlg('No physical address have been captured for the default address.','W')
  end;
end;

procedure TdtmEntity.VerifyIDno;
begin
  if (FileExists(AppDir+'Lib\IDnoChk.dll')) then
  begin
    if not DllStrBool('Lib\IDnoChk.dll','IsNoValid',
      qryEntity.FieldByName('RegNo').AsString) then
      MesDlg(qryEntity.FieldByName('RegNo').AsString+' is not a valid Id number.','W');
  end;
end;

// WB 26/05/2003
procedure TdtmEntity.SetEntStatus(EntID, newSts: integer);
begin
  qryEntity.Close;
  CurID := EntID;
  qryEntity.Open;
  if (qryEntity.FieldByName('Status').AsInteger = 0) and (newSts = 10) then
    newSts := 0;
  //
  if qryEntity.FieldByName('Status').AsInteger <> newSts then
  begin
    qryEntity.Edit;
    qryEntity.FieldByName('Status').AsInteger := newSts;
    qryEntity.Post;
    RecAmended := False;
  end;
  qryEntity.Close;
end;

procedure TdtmEntity.ClrMandFld(var ObjOwner :TControl; GrpID :integer);
begin
//  qryFldC.Parameters[0].Value := GrpID;

end;

procedure TdtmEntity.DataModuleDestroy(Sender: TObject);
begin
  dsCompanyContacts.Close;
end;

end.
