unit dmBatchSusp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32, DBClient;

type
  TdtmBatchSusp = class(TDataModule)
    qryTransType: TADODataSet;
    qrySuspTrans: TADODataSet;
    dtsSuspTrans: TDataSource;
    qryBatchHistory: TADODataSet;
    dtsBatchHistory: TDataSource;
    cdsLnAlloc: TClientDataSet;
    qryLoans: TADODataSet;
    cdsLnAllocTransNo: TIntegerField;
    cdsLnAllocLoanId: TIntegerField;
    dtsLnAlloc: TDataSource;
    cdsLnAllocRefNo: TStringField;
    cdsLnAllocEntCode: TStringField;
    cdsLnAllocAmount: TCurrencyField;
    cdsLnAllocEffectDate: TDateField;
    cdsLnAllocSuspCode: TIntegerField;
    cdsLnAllocLoanCode: TIntegerField;
    qryBatchTrans: TADODataSet;
    cmdSetLoanID: TADOCommand;
    cdsLnAllocValueDate: TDateTimeField;
    cmdProcessBatch: TADOCommand;
    cmdBeforePost: TADOCommand;
    qrySuspTransTransNo: TAutoIncField;
    qrySuspTransBatchId: TIntegerField;
    qrySuspTransBatchNo: TStringField;
    qrySuspTransLoanId: TIntegerField;
    qrySuspTransEntCode: TStringField;
    qrySuspTransTransCode: TIntegerField;
    qrySuspTransTransType: TSmallintField;
    qrySuspTransTransDate: TDateTimeField;
    qrySuspTransEffectDate: TDateTimeField;
    qrySuspTransValueDate: TDateTimeField;
    qrySuspTransAmount: TBCDField;
    qrySuspTransUserId: TStringField;
    qrySuspTransRefNo: TStringField;
    qrySuspTransRefNo2: TStringField;
    qrySuspTransProcessed: TBooleanField;
    qrySuspTransTransDesc: TStringField;
    qryBatchHistoryTransNo: TAutoIncField;
    qryBatchHistoryBatchId: TIntegerField;
    qryBatchHistoryBatchNo: TStringField;
    qryBatchHistoryLoanId: TIntegerField;
    qryBatchHistoryEntCode: TStringField;
    qryBatchHistoryTransCode: TIntegerField;
    qryBatchHistoryTransType: TSmallintField;
    qryBatchHistoryDescription: TStringField;
    qryBatchHistoryTransDate: TDateTimeField;
    qryBatchHistoryEffectDate: TDateTimeField;
    qryBatchHistoryValueDate: TDateTimeField;
    qryBatchHistoryPostDate: TDateTimeField;
    qryBatchHistoryAmount: TBCDField;
    qryBatchHistoryAmtPost: TBCDField;
    qryBatchHistoryUserId: TStringField;
    qryBatchHistoryRefNo: TStringField;
    qryBatchHistoryRefno2: TStringField;
    qryBatchHistoryProcessed: TBooleanField;
    cdsLnAllocRefNo2: TStringField;
    cdsLnAllocEntityID: TIntegerField;
    qrySuspTransEntityID: TIntegerField;
    qryCurBatches: TADODataSet;
    qrySuspBatches: TADODataSet;
    qryToUse: TADOQuery;
    qryBatchHistoryAllocated: TBooleanField;
    dtsLoans: TDataSource;
    qryAlTrans: TADODataSet;
    dtsAlTrans: TDataSource;
    qryAlBatches: TADODataSet;
    cmdClearBatch: TADOCommand;
    cmdDelAlTrans: TADOCommand;
    cdsMultiSusp: TClientDataSet;
    cdsMultiSuspLoanID: TIntegerField;
    cdsMultiSuspAmount: TCurrencyField;
    dtsMultiSusp: TDataSource;
    cdsMultiSuspEntCode: TStringField;
    cdsBatch: TClientDataSet;
    cdsBatchLoanID: TIntegerField;
    cdsBatchEntCode: TStringField;
    cdsBatchName: TStringField;
    cdsBatchSurname: TStringField;
    cdsBatchLoanType: TStringField;
    cdsBatchsStatus: TStringField;
    dtsBatch: TDataSource;
    cdsBatchLoanNo: TStringField;
    cdsBatchAmount: TBCDField;
    cdsBatchEntityID: TIntegerField;
    cdsBatchStatus: TIntegerField;
    qryLoans2: TADOQuery;
    qryAlTransTransNo: TAutoIncField;
    qryAlTransBatchID: TIntegerField;
    qryAlTransBatchNo: TStringField;
    qryAlTransLoanID: TIntegerField;
    qryAlTransEntityID: TIntegerField;
    qryAlTransEntCode: TStringField;
    qryAlTransLoanCode: TIntegerField;
    qryAlTransSuspCode: TIntegerField;
    qryAlTransStatus: TIntegerField;
    qryAlTransLinkID1: TIntegerField;
    qryAlTransLinkID2: TIntegerField;
    qryAlTransTransDate: TDateTimeField;
    qryAlTransEffectDate: TDateTimeField;
    qryAlTransValueDate: TDateTimeField;
    qryAlTransPostDate: TDateTimeField;
    qryAlTransAmount: TBCDField;
    qryAlTransAmtPost: TBCDField;
    qryAlTransUserID: TStringField;
    qryAlTransRefNo: TStringField;
    qryAlTransRefNo2: TStringField;
    qryAlTransProcessed: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrySuspTransAfterInsert(DataSet: TDataSet);
    procedure qrySuspTransAfterOpen(DataSet: TDataSet);
    procedure qryBatchHistoryAfterOpen(DataSet: TDataSet);
    procedure qryBatchHistoryCalcFields(DataSet: TDataSet);
    procedure cdsLnAllocAfterPost(DataSet: TDataSet);
    procedure qryAlBatchesBeforeOpen(DataSet: TDataSet);
    procedure qrySuspBatchesBeforeOpen(DataSet: TDataSet);
    procedure qryAlTransAfterPost(DataSet: TDataSet);
    procedure qryAlTransAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FAllocList: TStringList;
    FBatchID: Integer;
    FCurTransNo: Integer;
    FCurSBatchNo: String;
    FCurSBatchID: Integer;
    procedure SetTransCodes(TransType: Integer);
    procedure AddTransRec(LoanId,EntityID,TransCode: Integer;
      EntCode: String; Amount: Currency);
    procedure SetBatchID(const Value: Integer);
  public
    { Public declarations }
    DefSCode: Integer;
    DefLCode: Integer;
    DefBCode: Integer;
    LCodeList: TStringList;
    SCodeList: TStringList;
    BCodeList: TStringList;
    DefDate: TDate;
    property AllocList: TStringList read FAllocList write FAllocList;
    property BatchID: Integer read FBatchID write SetBatchID;
    procedure ClearBatch;
    property CurTransNo: Integer read FCurTransNo write FCurTransNo;
    property CurSBatchNo: String read FCurSBatchNo write FCurSBatchNo;
    property CurSBatchID: Integer read FCurSBatchID write FCurSBatchID;
    procedure AddSuspLoan(EffectDate: TDate);
    procedure ExecProcBatch;
    procedure GetTransList(List: TStrings; StrList: TStringList;
     TransType: Integer);
    procedure PostAllocTrans(EffectiveDate: TDateTime);
    procedure PostMultiAllocTrans;
    procedure ProcessSuspenseBatch;
    procedure RefreshBH;
    procedure SetAlocActive(Status: Boolean);
    procedure SetCurrBatch(BatchNo: String);
    procedure SetSuspLoanID(TransNo: Integer);
    procedure VerifyBatchDates;
    procedure GetBatches(BatchList: TStrings);
    function FindAlloc(TransNo: String): Boolean;
    function CheckForProcess: Boolean;
    function GetMultiSuspTotal: Currency;
  end;

var
  dtmBatchSusp: TdtmBatchSusp;

implementation

uses dmMain, dmBatchTrans, dmProcBatch;

{$R *.DFM}

procedure TdtmBatchSusp.DataModuleCreate(Sender: TObject);
begin
  AllocList := TStringList.Create;
  //cdsLnAlloc.CreateDataSet;
  SCodeList := TStringList.Create;
  LCodeList := TStringList.Create;
  BCodeList := TStringList.Create;
  cdsMultiSusp.CreateDataSet;
  cdsBatch.CreateDataSet;
  DefDate := Date;
end;

procedure TdtmBatchSusp.SetTransCodes(TransType: Integer);
begin
  qryTransType.Close;
  qryTransType.Parameters.ParamByName('TransType').Value := TransType;
  qryTransType.Open;
end;

procedure TdtmBatchSusp.GetTransList(List: TStrings; StrList: TStringList;
  TransType: Integer);
begin
  List.Clear;
  StrList.Clear;
  SetTransCodes(TransType);
  while not qryTransType.Eof do
  begin
    StrList.Add(qryTransType.FieldByName('Description').AsString + '=' +
      qryTransType.FieldByName('TransCode').AsString);
    List.Add(qryTransType.FieldByName('Description').AsString);
    qryTransType.Next;
  end;
  //qryTransType.Close;
end;

procedure TdtmBatchSusp.GetBatches(BatchList:TStrings);
begin
  BatchList.Clear;
  //Result.Sorted := True;
  qryAlBatches.Close;
  qryAlBatches.Open;
  qryAlBatches.First;
  while not qryAlBatches.EOF do
  begin
    BatchList.Add(qryAlBatches.Fields[1].AsString +'='+qryAlBatches.Fields[0].AsString);
    qryAlBatches.Next;
  end;
  //NoOfCurBatch := qryCurBatches.RecordCount;
  qryAlBatches.Close;
end;

procedure TdtmBatchSusp.qrySuspTransAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('BatchId').AsInteger := BatchID;
  DataSet.FieldByName('BatchNo').AsString := 'B' + PadLeft(IntToStr(BatchId),'0',8);
  DataSet.FieldByName('LoanID').AsInteger := -1;
  DataSet.FieldByName('EntityID').AsInteger := -1;
  DataSet.FieldByName('EntCode').AsString := 'Suspense';
  DataSet.FieldByName('TransType').AsInteger :=
    StrToInt(Copy(IntToStr(DefSCode),1,Length(IntToStr(DefSCode))-2));
  DataSet.FieldByName('TransCode').AsInteger := DefSCode;
  DataSet.FieldByName('TransDate').AsDateTime := Date;
  DataSet.FieldByName('EffectDate').AsDateTime := DefDate;
  DataSet.FieldByName('UserID').AsString := dtmMain.CurrentID;
  DataSet.FieldByName('Amount').AsCurrency := 0;
  DataSet.FieldByName('Processed').AsBoolean := False;
end;

procedure TdtmBatchSusp.SetCurrBatch(BatchNo: String);
begin
  if dtmBatchTrans.qryBatchControl.Locate('BatchNo',BatchNo,[]) then
    BatchID := dtmBatchTrans.qryBatchControl.FieldByName('BatchId').AsInteger
  else
    BatchID := 0;
end;

procedure TdtmBatchSusp.VerifyBatchDates;
begin
  qrySuspTrans.First;
  while not qrySuspTrans.Eof do
  begin
    if qrySuspTrans.FieldByName('EffectDate').AsDateTime < dtmMain.CurME then
    begin
      qrySuspTrans.Edit;
      qrySuspTrans.FieldByName('ValueDate').AsDateTime :=
        qrySuspTrans.FieldByName('EffectDate').AsDateTime;
      qrySuspTrans.FieldByName('EffectDate').AsDateTime := dtmMain.CurMe;
      qrySuspTrans.Post;
    end;
    qrySuspTrans.Next;
  end;
end;

procedure TdtmBatchSusp.qrySuspTransAfterOpen(DataSet: TDataSet);
begin
  TBCDField(DataSet.FieldByName('Amount')).Currency := True;
end;

procedure TdtmBatchSusp.AddSuspLoan(EffectDate: TDate);
begin
  if qryBatchTrans.Locate('TransNo',
    qryBatchHistory.FieldByName('TransNo').AsInteger, []) then
    qryBatchTrans.Edit
  else
    qryBatchTrans.Append;

  qryBatchTrans.FieldByName('LoanId').AsInteger := qryLoans.FieldByName('IDVal').AsInteger;
  qryBatchTrans.FieldByName('EntCode').AsString := qryLoans.FieldByName('EntCode').AsString;
  qryBatchTrans.FieldByName('RefNo').AsString   := qryLoans.FieldByName('RefNo').AsString;
  qryBatchTrans.FieldByName('Amount').AsCurrency := qryBatchHistory.FieldByName('Amount').AsCurrency;
  qryBatchTrans.FieldByName('EffectDate').AsDateTime := EffectDate;
  qryBatchTrans.FieldByName('SuspCode').AsInteger := DefSCode;
  qryBatchTrans.FieldByName('LoanCode').AsInteger := DefLCode;
  qryBatchTrans.Post;                                         
  //qryBatchTrans.FieldByName('LoanID').AsInteger := LoanID;
end;

procedure TdtmBatchSusp.qryBatchHistoryAfterOpen(DataSet: TDataSet);
begin
  TBCDField(DataSet.FieldByName('Amount')).Currency := True;
end;

procedure TdtmBatchSusp.PostAllocTrans(EffectiveDate: TDateTime);
{var
  I: Integer;}
var
  TransCode: Integer;
  Today: TDateTime;
begin
  CurTransNo := qryBatchHistory.FieldByName('TransNo').AsInteger;
  Today := GetServerDate;
  DefDate := Today;
  AddTransRec(-2,-1,DefSCode,'Suspense',qryBatchHistory.FieldByName('Amount').AsCurrency);
  cdsBatch.First;
  while not cdsBatch.Eof do
  begin
    //for I := 0  to
    if cdsBatch.FieldByName('Status').AsInteger = 40 then
    begin
      TransCode := DefBCode;
      DefDate := Today;
    end
    else
    begin
      TransCode := DefLCode;
      DefDate := EffectiveDate;
    end;
    AddTransRec(cdsBatch.FieldByName('LoanId').AsInteger,
      cdsBatch.FieldByName('EntityID').AsInteger,TransCode,
      cdsBatch.FieldByName('EntCode').AsString,cdsBatch.FieldByName('Amount').AsCurrency);
    cdsBatch.Next;
  end;
  //SetSuspLoanID(CurTransNo);
end;

procedure TdtmBatchSusp.PostMultiAllocTrans;
begin
  CurTransNo := qryBatchHistory.FieldByName('TransNo').AsInteger;
  AddTransRec(-2,-1,DefSCode,'Suspense',qryBatchHistory.FieldByName('Amount').AsCurrency);
  cdsMultiSusp.First;
  while not cdsMultiSusp.Eof do
  begin
    qryLoans.Locate('LoanId',cdsMultiSusp.FieldByName('LoanID').AsInteger,[]);
    AddTransRec(qryLoans.FieldByName('LoanId').AsInteger,
      qryLoans.FieldByName('EntityID').AsInteger,DefLCode,
      qryLoans.FieldByName('EntCode').AsString,cdsMultiSusp.FieldByName('Amount').AsCurrency);
    cdsMultiSusp.Next;
  end;
end;

procedure TdtmBatchSusp.AddTransRec(LoanId,EntityID,TransCode: Integer;
  EntCode: String; Amount: Currency);
begin
  qryBatchTrans.Append;
  qryBatchTrans.FieldByName('BatchId').AsInteger := CurSBatchID;
  qryBatchTrans.FieldByName('BatchNo').AsString  := CurSBatchNo;
  qryBatchTrans.FieldByName('LoanId').AsInteger  := LoanId;
  qryBatchTrans.FieldByName('EntityID').AsInteger := EntityID;
  qryBatchTrans.FieldByName('EntCode').AsString  := EntCode;
  qryBatchTrans.FieldByName('TransCode').AsInteger := TransCode;
  qryBatchTrans.FieldByName('TransType').AsInteger :=  Trunc(TransCode/100);
    //StrToInt(Copy(IntToStr(TransCode),1,Length(IntToStr(TransCode))-2));
  qryBatchTrans.FieldByName('TransDate').AsDateTime := Date;
  if DefDate < dtmMain.CurME then
  begin
    qryBatchTrans.FieldByName('EffectDate').AsDateTime := dtmMain.CurME;
    qryBatchTrans.FieldByName('ValueDate').AsDateTime := DefDate;
  end
  else
    qryBatchTrans.FieldByName('EffectDate').AsDateTime := DefDate;
  qryBatchTrans.FieldByName('PostDate').AsDateTime := Now;
  qryBatchTrans.FieldByName('Amount').AsCurrency := Amount;
  qryBatchTrans.FieldByName('UserID').AsString := dtmMain.CurrentId;
  qryBatchTrans.FieldByName('RefNo').AsString := qryBatchHistory.FieldByName('RefNo').AsString;
  qryBatchTrans.FieldByName('RefNo2').AsString := qryBatchHistory.FieldByName('RefNo2').AsString;
  qryBatchTrans.FieldByName('Processed').AsBoolean := True;
  qryBatchTrans.FieldByName('LinkID1').AsInteger := CurTransNo;
  qryBatchTrans.Post;
end;

procedure TdtmBatchSusp.SetSuspLoanID(TransNo: Integer);
begin
  cmdSetLoanID.Parameters[0].Value := TransNo;
  cmdSetLoanID.Execute;
end;

procedure TdtmBatchSusp.ExecProcBatch;
begin
  cmdProcessBatch.Parameters[0].Value := BatchID;
  cmdProcessBatch.Execute;
end;

procedure TdtmBatchSusp.SetBatchID(const Value: Integer);
begin
  FBatchID := Value;
  FilterDataSet(qrySuspTrans,'BatchId = ''' + IntToStr(BatchID) + '''');
end;

procedure TdtmBatchSusp.ProcessSuspenseBatch;
begin
  try
    Screen.Cursor := crHourGlass;
    cmdBeforePost.Parameters[1].Value := BatchID;
    cmdBeforePost.Execute;

    cmdProcessBatch.Parameters[1].Value := BatchID;
    cmdProcessBatch.Parameters[2].Value := dtmMain.CurrentID;
    cmdProcessBatch.Execute;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmBatchSusp.SetAlocActive(Status: Boolean);
begin
  qryBatchHistory.Active := Status;
  qryBatchTrans.Active := Status;
  qryLoans.Active := Status;
  qryAlTrans.Active := Status;
  dtmBatchTrans.qryBatchControl.Active := Status;
end;

function TdtmBatchSusp.FindAlloc(TransNo: String): Boolean;
begin
  Result := AllocList.IndexOf(TransNo) > -1;
end;

procedure TdtmBatchSusp.qryBatchHistoryCalcFields(DataSet: TDataSet);
begin
  qryBatchHistory.FieldByName('Allocated').AsBoolean :=
    FindAlloc(DataSet.FieldByName('TransNo').AsString);
end;

procedure TdtmBatchSusp.cdsLnAllocAfterPost(DataSet: TDataSet);
begin
  if not FindAlloc(qryBatchHistory.FieldByName('TransNo').AsString) then
  begin
    AllocList.Add(DataSet.FieldByName('TransNo').AsString);
    RefreshBH;
  end;
end;

procedure TdtmBatchSusp.RefreshBH;
var
  Row: Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    //IDVal := qryBatchHistory.FieldByName('TransNo').AsInteger;
    Row := qryBatchHistory.RecNo;
    qryBatchHistory.ReQuery;
    qryBatchHistory.RecNo := Row;
    //qryBatchHistory.Locate('TransNo',IDVal,[]);
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TdtmBatchSusp.CheckForProcess: Boolean;
var
  I: Integer;
  QryStr: String;
begin
  QryStr := 'Select TransNo from lsBatchHistory where ' +
    ' LoanID = -2 and TransNo in (';
  for I := 0 to AllocList.Count - 1 do
    QryStr := QryStr + AllocList.Strings[I] + ',';

  Delete(QryStr,Length(QryStr),1);
  QryStr := QryStr + ')';
  qryToUse.Close;
  qryToUse.SQl.Text := QryStr;
  qryToUse.Open;
  if qryToUse.RecordCount > 0 then
  begin
    Result := MesDlg('One or more transactions within this batch have already been ' +
      'processed by another user and will not be processed' + #13 +
      'Do you want to continue?','C') = mrYes;
  end
  else
    Result := True;

  if Result then
  begin
    qryToUse.First;
    while not qryToUse.Eof do
    begin
      //if cdsLnalloc.Locate('TransNo',qryToUse.Fields[0].AsInteger,[]) then
      //  DeleteAlloc;
      qryToUse.Next;
    end;
    qryBatchHistory.ReQuery;
  end;
end;

procedure TdtmBatchSusp.qryAlBatchesBeforeOpen(DataSet: TDataSet);
begin
  qryAlBatches.Parameters[0].Value := dtmMain.CurrentID;
end;

procedure TdtmBatchSusp.qrySuspBatchesBeforeOpen(DataSet: TDataSet);
begin
  qrySuspBatches.Parameters[0].Value := dtmMain.CurrentID;
end;

procedure TdtmBatchSusp.ClearBatch;
begin
  cmdClearBatch.Parameters[0].Value := CurSBatchID;
  cmdClearBatch.Execute;
  qryAlTrans.Requery;
  qryBatchHistory.ReQuery;
end;

procedure TdtmBatchSusp.qryAlTransAfterPost(DataSet: TDataSet);
begin
  qryBatchHistory.Requery;
end;

procedure TdtmBatchSusp.qryAlTransAfterDelete(DataSet: TDataSet);
begin
  qryBatchHistory.Requery;
end;

function TdtmBatchSusp.GetMultiSuspTotal: Currency;
begin
  Result := 0;
  {cdsMultiSusp.DisableControls;
  cdsMultiSusp.First;
  while not cdsMultiSusp.Eof do
  begin
    Result := Result + cdsMultiSusp.FieldByName('Amount').AsCurrency;
    cdsMultiSusp.Next;
  end;
  cdsMultiSusp.EnableControls;}

  cdsBatch.First;
  while not cdsBatch.Eof do
  begin
    Result := Result + cdsBatch.FieldByName('Amount').AsCurrency;
    cdsBatch.Next;
  end;
end;

end.
