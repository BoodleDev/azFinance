{azFinance - B.OS}
unit dmMain;
{===============================================================================
 Author  : Wicus Botha
 Date    : 01/07/2000
 Unit    : Main datamodule for App, usually most forms use this DM
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants,
  ImgList, Unit32, FileCtrl, DBGrids, DBGrdClr, ADODB, Db, UpdExe, DBGrdCF, ConnectionStringBuilder, fmSqlReport;

type
  TdtmMain = class(TDataModule)
    dbData: TADOConnection;
    qrySysCpyInfo: TADODataSet;
    qryLogin: TADOStoredProc;
    qryToUse: TADOQuery;
    qryPSNLu: TADODataSet;
    qryCPYLu: TADODataSet;
    qryEntID: TADODataSet;
    qryEntDet: TADODataSet;
    qryPSNLuIdVal: TIntegerField;
    qryPSNLuEntCode: TStringField;
    qryPSNLuName: TStringField;
    qryPSNLuTelNo1: TStringField;
    qryPSNLuTelNo3: TStringField;
    dtsPSNLu: TDataSource;
    dtsEntDet: TDataSource;
    dtsEntID: TDataSource;
    qryCPYLuIdVal: TIntegerField;
    qryCPYLuEntCode: TStringField;
    qryCPYLuName: TStringField;
    qryCPYLuName2: TStringField;
    qryCPYLuTelNo1: TStringField;
    dtsCPYLu: TDataSource;
    qryMEdate: TADODataSet;
    qryPSNLuRegNo: TStringField;
    qryPSNLuRefFld1: TStringField;
    qryPSNLuRefFld2: TStringField;
    qryEntNote: TADODataSet;
    dtsEntNote: TDataSource;
    spCntRE: TADOStoredProc;
    qryLSerLU: TADODataSet;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    qryCodeLU: TADODataSet;
    qryCodeLUIDVal: TIntegerField;
    qryCodeLUDescription: TStringField;
    qryNoteLU: TADODataSet;
    qryUpdatePath: TADOQuery;
    qryIsAdmin: TADODataSet;
    qryViewBureau: TADODataSet;
    dsGetDate: TADODataSet;
    imglstMain: TImageList;
    qryDocFolder: TADOQuery;
    qryReportPath: TADOQuery;
    qryWorkLU: TADODataSet;
    dtsWorkLU: TDataSource;
    qryWorkLUEntityID: TIntegerField;
    qryWorkLUEntCode: TStringField;
    qryWorkLURefNo: TStringField;
    qryWorkLUDescription: TStringField;
    qryWorkLUStartDate: TDateTimeField;
    qryWorkLULoanID: TIntegerField;
    dsWorkProcess: TADODataSet;
    qryWorkLUProcessID: TIntegerField;
    qryLastWork: TADOQuery;
    qryNewWork: TADOQuery;
    qryWorkLUCurrentLoan: TStringField;
    dsWorkNotify: TADODataSet;
    dtsWorkNotify: TDataSource;
    cmdNotifyDoc: TADOCommand;
    cmdNotifyNote: TADOCommand;
    qryWorkLURecordID: TIntegerField;
    cmdFindWork: TADOCommand;
    qryWorkLUSubProcess: TStringField;
    qryWorkLUNewDocument: TIntegerField;
    qryWorkLUNewNote: TIntegerField;
    qryWorkLUNewAHV: TIntegerField;
    qryWorkLUNotifications: TIntegerField;
    qryWorkLUOrderDate: TStringField;
    qryUserKey: TADOQuery;
    qryWorkLUStatus: TStringField;
    qryWorkLUCreateDate: TDateTimeField;
    qryWorkLULastNoteDate: TDateTimeField;
    qryWorkLUWorkflowID: TIntegerField;
    qryUserDepartment: TADOQuery;
    LoanQuery: TADOQuery;
    dtsLoan: TDataSource;
    qryWorkLU_old: TADODataSet;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField2: TIntegerField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    IntegerField5: TIntegerField;
    StringField9: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    IntegerField10: TIntegerField;
    qryLoan: TADODataSet;
    qryConfig: TADOStoredProc;
    dtsVersion: TDataSource;
    qryVersion: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dbDataAfterConnect(Sender: TObject);
    procedure qryLoginBeforeOpen(DataSet: TDataSet);
    procedure qryEntNoteAfterInsert(DataSet: TDataSet);
    procedure qryEntNoteBeforeOpen(DataSet: TDataSet);
    procedure qryWorkLUAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FBackGroundSrc: string;
    FScrPnlColor: TColor;
    FRecBarColor: TColor;
    FGrdColor: TColor;
    FFixGrdColor: TColor;
    FSysCpyDetail: String;
    FSysCpyName: String;
    FCurrentID: string;
    FOddGrdColor: TColor;
    FUsrGrp: integer;
    FCurME: TDate;
    FNoteCat: Integer;
    FNlrTransType : Integer;
    FUpdatePath: String;
    FIsAdmin: Boolean;
    FConnectionString: String;
    FUserKey: Integer;
    FDepartmentName: String;
    FSubDepartmentID: Integer;
    FDepartment: String;
    FSubDepartment: String;
    function GetNextNoteNo:integer;
    procedure SetSysCpyInfo;
    procedure SetCurMEDate;
    procedure SetUpdatePath;
    procedure SetCurrentID(const Value: string);
    procedure SetIsAdmin(const Value: Boolean);
    procedure SetDocFolder;
    procedure SetReportFolder;
    function GetWindowsTempFolder: String;
//    procedure SetConnectionString(const Value: String);
    procedure SetUserKey(const Value: Integer);
    procedure SetDepartment(UserID: Integer);
    procedure SetSubDepartmentID(const Value: Integer);
  public
    { Public declarations }
    property UpdatePath: String read FUpdatePath write FUpdatePath;
    property BackGroundSrc:string read FBackGroundSrc write FBackGroundSrc;
    property ScrPnlColor : TColor read FScrPnlColor write FScrPnlColor;
    property RecBarColor : TColor read FRecBarColor write FRecBarColor;
    property GrdColor : TColor read FGrdColor write FGrdColor;
    property FixGrdColor : TColor read FFixGrdColor write FFixGrdColor;
    property OddGrdColor : TColor read FOddGrdColor write FOddGrdColor;
    property CurrentID : string read FCurrentID write SetCurrentID;
    property UserKey: Integer read FUserKey write SetUserKey;
    property IsAdmin: Boolean read FIsAdmin write SetIsAdmin;
    property UsrGrp : integer read FUsrGrp;
    property SysCpyName: String read FSysCpyName;
    property SysCpyDetail: String read FSysCpyDetail;
    property CurME :TDate read FCurME;
    property NoteCat : Integer read FNoteCat write FNoteCat;
    property NlrTransType : Integer read FNlrTransType write FNlrTransType;
    property ConnectionString: String read FConnectionString write FConnectionString;
    property SubDepartmentID: Integer read FSubDepartmentID write SetSubDepartmentID;
    property DepartmentName: String read FDepartmentName write FDepartmentName;
    property Department: String read FDepartment write FDepartment;
    property SubDepartment: String read FSubDepartment write FSubDepartment;
    function GetRECnt: integer;
    function GetLUEntityID(inType : string):integer;
    function GetLUCode(GrpKey : integer):integer;
    procedure LoadModuleModal(Filename,FormName, Process: String);
    procedure SetCpyQueries(Ready : Boolean);
    procedure SetPSNQueries(Ready : Boolean);
    procedure SetHomeLogin;
    procedure SetLUData(Ready: boolean);
    procedure SetCurLogin;
    procedure SetGrdColors(inGrid: array of TDBGrid); overload;
    procedure SetGrdColors(inGrid: TDBGrid); overload;
    procedure CompleteNewEnt(inID: integer);
    procedure GetSqlReportsConfig;
  end;

function GetArrearsAmount(LoanID: Integer; EffectDate: TDate): Real; external 'Loan.dll';
function GetServerDate: TDateTime;
function GetServerDateTime: TDateTime;
function GetNoOfPayments(LoanID: Integer): Integer; external 'Loan.dll';
procedure GetLastPayment(LoanID: Integer; var LastAmount: Currency; var LastDate: TDateTime); external 'Loan.dll';
procedure ShowSqlReport(Path, Param: string);

var
  dtmMain: TdtmMain;
  PersonalFolder: String;
  ApplName: String;
  VarList: TStringList;
  ShortDateTimeFormat: String;
  DocProcess: String;
  ReportFolder: String;
  TempFolder: String;
  AttachFolder: String;
  ArrearsAgeDate: TDateTime;
  CurrentLoanID: Integer;
  SmartDoxConnStr: string;
  RptServerURL: string;
  RptPath: string;

implementation

uses uConst, uBase32;

{$R *.DFM}

function GetServerDate: TDateTime;
begin
  with dtmMain do
  begin
    try
      dsGetDate.Open;
      Result := StrToDate(FormatDateTime(ShortDateFormat, dsGetDate.Fields[0].AsDateTime));
    finally
      dsGetDate.Close;
    end;
  end;
end;

function GetServerDateTime: TDateTime;
begin
  with dtmMain do
  begin
    try
      dsGetDate.Open;
      Result := dsGetDate.Fields[0].AsDateTime;
    finally
      dsGetDate.Close;
    end;
  end;
end;

{ TdtmMain }

procedure TdtmMain.DataModuleCreate(Sender: TObject);
var
  csb: TConnectionStringBuilder;
begin
  ShortDateFormat := 'dd/mm/yyyy';
  ShortTimeFormat := 'hh:mm AM/PM';
  ShortDateTimeFormat := ShortDateFormat + ' ' + ShortTimeFormat;
  DateSeparator := '/';

{$IFDEF DB_LOCAL}
  ConnectionString :=  'Data Source=localhost;User ID=sa;Password=sa123!@#;Initial Catalog=Boodle;Provider=SQLOLEDB.1;Persist Security Info=True';
{$ENDIF}

{$IFDEF DB_DEV}
  ConnectionString :=  'Data Source=10.11.0.119\DEV01;User ID=sa;Password=sa123!@#;Initial Catalog=Boodle;Provider=SQLOLEDB.1;Persist Security Info=True';
{$ENDIF}


{$IFDEF DB_QA}
  ConnectionString := 'Data Source=10.11.0.137;User ID=sa;Password=sa#@!321;Initial Catalog=Boodle;Provider=SQLOLEDB.1;Persist Security Info=True';
{$ENDIF}

{$IFDEF DB_PROD}
   ConnectionString := 'Password=B00d13l04n5!!;Data Source=sql.boodle.co.za\PCS;Initial Catalog=Boodle;Persist Security Info=True;User ID=boodleloans;';
// cORRECT FOR sMARTdOX =>  CONNECTION="Password=B00d13l04n5!!;Data Source=sql.boodle.co.za;Initial Catalog=Boodle;Persist Security Info=True;User ID=boodleloans;" UID=313 AID=915951 APPID=100 EID=738212 DIALOG=0 ATTACH=0 ATTID=0 AONLY=0  DID=5 TID=1 P1=1220854
{$ENDIF}

//=======================================================================================
//
// DB_PARAMSTR is the correct $DEFINE to use when compiling for release to Production
//
//=======================================================================================

{$IFDEF DB_PARAMSTR}
  if not (ParamStr(3) = '') then
    ConnectionString :=  ParamStr(3);
{$ENDIF}

    dbData.Connected := False;
    dbData.ConnectionString := ConnectionString;//'FILE NAME='+AppDir+'GT.udl';
    dbData.Connected := True;

    csb := TConnectionStringBuilder.Create();
    try
      csb.ConnectionString := dbData.ConnectionString;
      SmartDoxConnStr := csb.SmartDoxConnectionString;
    finally
      csb.Free;
    end;

    SetCurMEDate;
    SetUpdatePath;
    SetDocFolder;
    SetReportFolder;

    TempFolder := GetWindowsTempFolder;

    ArrearsAgeDate := Date;
end;



procedure TdtmMain.dbDataAfterConnect(Sender: TObject);
begin
  SetSysCpyInfo;
  RunQry(qryToUse,'set NOCount ON','E');
end;

procedure TdtmMain.SetCurMEDate;
begin
  qryMEdate.Open;
  FCurME := IncMonth(qryMEdate.Fields[0].AsDateTime,-1);
  FCurME := DateToEndOfMonth(FCurME);
  qryMEdate.Close;
  //Christianl - For forcing a post of lsBatchTrans created but not posted by SWeistra - Once off only - the last line must be commented out before release.
//  FCurMe := StrToDate('31/03/2014')
end;

procedure TdtmMain.SetSysCpyInfo;
begin
  qrySysCpyInfo.Open;
  FSysCpyName   := qrySysCpyInfo.FieldByName('CompanyName').AsString;
  FSysCpyDetail :=
     Trim(qrySysCpyInfo.FieldByName('Address1').AsString)+' '+
     Trim(qrySysCpyInfo.FieldByName('Address2').AsString)+' '+
     Trim(qrySysCpyInfo.FieldByName('Address3').AsString)+' '+
     Trim(qrySysCpyInfo.FieldByName('Address4').AsString)+' '+
     Trim(qrySysCpyInfo.FieldByName('AddressCode').AsString)+'; '+
     Trim(qrySysCpyInfo.FieldByName('TelNo').AsString)+', '+
     Trim(qrySysCpyInfo.FieldByName('FaxNo').AsString)+', '+
     Trim(qrySysCpyInfo.FieldByName('Email').AsString);
  qrySysCpyInfo.Close;
end;

procedure TdtmMain.qryLoginBeforeOpen(DataSet: TDataSet);
begin
  qryLogin.Parameters[1].Value := AppID;
end;

procedure TdtmMain.SetCurLogin;
begin
  FCurrentID := qryLogin.FieldByName('UserId').AsString;
  FUsrGrp    := qryLogin.FieldByName('UsrGrp').AsInteger;
  SetLoginDT(True,FCurrentID);
end;

procedure TdtmMain.SetCpyQueries(Ready: Boolean);
begin
//
end;

procedure TdtmMain.SetPSNQueries(Ready : Boolean);
begin
//
end;

procedure TdtmMain.SetLUData(Ready: boolean);
begin
  //qryPSNLu.Active := Ready;
  //qryCPYLu.Active := Ready;
  qryEntID.Active := Ready;
  qryEntDet.Active:= Ready;
  if Ready then
  begin
    qryWorkLU.Parameters[0].Value := CurrentID;
    //qryEntID.Locate('EntityID',qryPSNLU.FieldByName('IDVal').AsInteger,[]);
  end;
  qryWorkLU.Active := Ready;
end;

procedure TdtmMain.SetGrdColors(inGrid: TDBGrid);
begin
  inGrid.FixedColor := FixGrdColor;
  inGrid.Color      := GrdColor;
  if (inGrid is TDBGrdClr) or (inGrid is TDBGrdCF) then
    TDBGrdClr(inGrid).OddColor := OddGrdColor;
end;

procedure TdtmMain.SetGrdColors(inGrid: array of TDBGrid);
var
  I: Integer;
  Grid: TDBGrid;
begin
  for I := Low(inGrid) to High(inGrid) do
  begin
    Grid := inGrid[I];
    Grid.FixedColor := FixGrdColor;
    Grid.Color      := GrdColor;
    if (Grid is TDBGrdClr) or (Grid is TDBGrdCF) then
      TDBGrdClr(Grid).OddColor := OddGrdColor;
  end;
end;

procedure TdtmMain.DataModuleDestroy(Sender: TObject);
begin
  if Trim(FCurrentID) <> '' then
    SetLoginDT(False,FCurrentID);
  dbData.Connected := False;
end;

procedure TdtmMain.CompleteNewEnt(inID: integer);
begin
  qryEntID.Close;
  qryEntID.Open;
  qryEntID.Locate('EntityID',inID,[]);
end;

procedure TdtmMain.qryEntNoteAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('EntityID').AsInteger  := qryEntID.FieldByName('EntityID').AsInteger;
  DataSet.FieldByName('NoteNo').AsInteger    := GetNextNoteNo;
  DataSet.FieldByName('AppID').AsInteger     := AppID;
  DataSet.FieldByName('NoteDate').AsDateTime := Date;
  DataSet.FieldByName('RemindMe').AsDateTime := Now;
  DataSet.FieldByName('UserID').AsString     := CurrentID;
  DataSet.FieldByName('NoteCat').AsInteger   := NoteCat;
end;
                              
function TdtmMain.GetNextNoteNo: integer;
begin
  RunQry(qryToUse,'select Max(NoteNo)+1 from EntNotes where EntityID='+
    qryEntID.FieldByName('EntityID').AsString,'O');
    // +' and AppID='+IntToStr(AppID),'O');
  if qryToUse.Fields[0].IsNull then
    Result := 1
  else
    Result := qryToUse.Fields[0].AsInteger;
end;

procedure TdtmMain.qryEntNoteBeforeOpen(DataSet: TDataSet);
begin
  qryEntNote.Parameters[0].Value := qryEntID.FieldByName('EntityID').AsInteger;
end;

function TdtmMain.GetRECnt: integer;
begin
  spCntRE.Close;
  spCntRE.Parameters[1].Value := dtmMain.CurrentID;
  spCntRE.Parameters[2].Value := AppID; // AppID
  spCntRE.Open;
  Result := spCntRE.Fields[0].AsInteger;
  spCntRE.Close;
end;

function TdtmMain.GetLUEntityID(inType: string): integer;
begin
  qryLSerLU.Close;
  qryLSerLU.CommandText := 'select EntityID as IdVal, EntCode, Name,Name2,TelNo1'+
    ' from EntityData where EntityID in (select EntityID from EntRelation '+
    ' where LinkID=0 and Relation in ('+inType+')) and Status =20';
  qryLSerLU.Open;
  Result := ShowLU(qryLSerLU,'Look up entity.');
  qryLSerLU.Close;
end;

function TdtmMain.GetLUCode(GrpKey: integer): integer;
begin
  qryCodeLU.Close;
  qryCodeLU.Parameters[0].Value := GrpKey;
  qryCodeLU.Open;
  Result := ShowLU(qryCodeLU,'Look up code.');
  qryCodeLU.Close;
end;

procedure TdtmMain.SetHomeLogin;
begin
  //Development only!
  if ParamStr(1) = '' then
    begin
{$IFDEF DB_DEV}
      CurrentID := 'StarkB';
      FUsrGrp := 100;
{$ENDIF}
    end
  else
    begin
      CurrentID := ParamStr(1);
      FUsrGrp    := StrToInt(ParamStr(2));
    end;
  SetLoginDT(True,FCurrentID);

  SetDepartment(UserKey);
end;



procedure TdtmMain.SetUpdatePath;
begin
  qryUpdatePath.Open;
  UpdatePath := qryUpdatePath.Fields[0].AsString;
  qryUpdatePath.Close;
end;

procedure TdtmMain.SetReportFolder;
begin
  qryReportPath.Open;
  ReportFolder := qryReportPath.Fields[0].AsString;
  AttachFolder := qryReportPath.Fields[1].AsString;
  qryReportPath.Close;
end;

procedure TdtmMain.SetCurrentID(const Value: string);
begin
  FCurrentID := Value;
  qryIsAdmin.Parameters.ParamByName('prUserID').Value := CurrentID;
  qryIsAdmin.Parameters.ParamByName('prAppID').Value := AppID;
  qryIsAdmin.Open;
  IsAdmin := qryIsAdmin.Fields[0].AsBoolean;
  qryIsAdmin.Close;

  qryUserKey.Parameters[0].Value := CurrentID;
  qryUserKey.Open;
  UserKey := qryUserKey.Fields[0].AsInteger;
  qryUserKey.Close;
end;

procedure TdtmMain.SetIsAdmin(const Value: Boolean);
begin
  FIsAdmin := Value;
end;

procedure TdtmMain.LoadModuleModal(Filename, FormName, Process: String);
var
  FormClass: TPersistentClass;
  FormScroll: TCustomForm;
  HandlePack: HModule;
  ExecF: procedure(const Form: TCustomForm; const V1: TStringList);
begin
  // try to load the package
  HandlePack := LoadPackage(ExtractFilePath(ParamStr(0)) + Filename);
  if HandlePack > 0 then
  begin
    FormClass := GetClass(Formname);
    //if Assigned(FormClass) then
    if FormClass <> nil then
    begin
      FormScroll := TComponentClass(FormClass).Create(Application) as TCustomForm;//FormClass.Create(Application);
      try
        @ExecF := GetProcAddress(HandlePack, PAnsiChar(Process));
        if Assigned(ExecF) then
          ExecF(FormScroll, VarList);

        FormScroll.ShowModal;
        
      finally
        FreeAndNil(FormScroll);
      end;
    end
    else
      ShowMessage ('Form class not found');

    UnloadPackage (HandlePack);
  end
  else
    ShowMessage ('Package not found');

end;

procedure TdtmMain.SetDocFolder;
begin
  qryDocFolder.Open;
  DocProcess := qryDocFolder.Fields[0].AsString + 'Process\';
  qryDocFolder.Close;
end;

procedure TdtmMain.SetDepartment(UserID: Integer);
begin
  qryUserDepartment.Close;
  qryUserDepartment.Parameters[0].Value := UserID;
  qryUserDepartment.Open;
  try
    Department      := qryUserDepartment.FieldByName('DepartmentName').AsString;
    SubDepartment   := qryUserDepartment.FieldByName('SubDepartmentName').AsString;
    SubDepartmentID := qryUserDepartment.FieldByName('SubDepartmentID').AsInteger;
    DepartmentName  := Department + ' - ' + SubDepartment;
  finally
    qryUserDepartment.Close;
  end
end;

procedure TdtmMain.qryWorkLUAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(qryWorkLU.FieldByName('StartDate')).DisplayFormat := ShortDateTimeFormat;
end;

function TdtmMain.GetWindowsTempFolder: String;
var
   lng: DWORD;
   thePath: string;
begin
  SetLength(thePath, MAX_PATH) ;
  lng := GetTempPath(MAX_PATH, PChar(thePath)) ;
  SetLength(thePath, lng) ;
  Result := thePath;
end;

//procedure TdtmMain.SetConnectionString(const Value: String);
//begin
//  FConnectionString := Value;
//end;

procedure TdtmMain.SetUserKey(const Value: Integer);
begin
  FUserKey := Value;
end;

procedure TdtmMain.SetSubDepartmentID(const Value: Integer);
begin
  FSubDepartmentID := Value;
end;

procedure ShowSqlReport(Path, Param: string);
begin
  with TfrmSqlReport.Create(Application) do
  begin
    ReportServerURL := RptServerUrl;
    ReportPath := RptPath + Path;
    ReportParamStr := Param;
    Execute();
  end;
end;

procedure TdtmMain.GetSqlReportsConfig;
begin

 with qryConfig do
  begin
    //Parameters[1].Value := 'rpt_ServerUrl';
    //ExecProc;
    //RptServerURL := Parameters[2].Value;
    RptServerURL := 'http://10.11.0.118/ReportServer';
{$IFDEF SOAP_QA}
    //Parameters[1].Value := 'rpt_Path_QA';
    //ExecProc;
    //RptPath :='?' + Parameters[2].Value;
    RptPath :='?' + '/AZFinance/Boodle/';
{$ENDIF}
{$IFDEF SOAP_PROD}
    //Parameters[1].Value := 'rpt_Path';
    //ExecProc;
    //RptPath :='?' + Parameters[2].Value;
    RptPath :='?' + '/AZFinance/Boodle/';
{$ENDIF}
  end;

end;

end.
