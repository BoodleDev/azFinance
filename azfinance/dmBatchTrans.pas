unit dmBatchTrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Variants, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32, DBClient, AutoCursor;

type
  TdtmBatchTrans = class(TDataModule)
    spcEntLoan: TADOStoredProc;
    qryBatchT: TADODataSet;
    qryBatchTTransNo: TAutoIncField;
    qryBatchTBatchID: TIntegerField;
    qryBatchTBatchNo: TStringField;
    qryBatchTLoanID: TIntegerField;
    qryBatchTTransCode: TIntegerField;
    qryBatchTTransType: TSmallintField;
    qryBatchTTransDate: TDateTimeField;
    qryBatchTEffectDate: TDateTimeField;
    qryBatchTAmount: TBCDField;
    qryBatchTUserID: TStringField;
    qryBatchTRefNo: TStringField;
    qryBatchTTransLookup: TStringField;
    qryBatchTEntCode: TStringField;
    qryBatchTValueDate: TDateTimeField;
    qryBatchTPostDate: TDateTimeField;
    qryBatchTAmtPost: TBCDField;
    qryBatchTRefNo2: TStringField;
    qryBatchTProcessed: TBooleanField;
    qryTransType: TADODataSet;
    qryTransTypeTransCode: TIntegerField;
    qryTransTypeTransType: TSmallintField;
    qryTransTypeDescription: TStringField;
    qryTransTypeDefaultVal: TBCDField;
    cmdDeleteBatch: TADOCommand;
    cmdAcceptBatch: TADOCommand;
    qryBatchControl: TADODataSet;
    qryGetCurBatches: TADODataSet;
    qryGetCloseBatches: TADODataSet;
    cmdUpdAcceptBatch: TADOCommand;
    qryGetTransForStatus: TADODataSet;
    qryGetUserDecBatch: TADODataSet;
    cmdSetNewBatchID: TADOCommand;
    cmdBatchMovDel: TADOCommand;
    cmdUpdNoteID: TADOCommand;
    qryBatchNote: TADODataSet;
    cmdGetBatchNo: TADOCommand;
    cmdSetBCStatus: TADOCommand;
    adoFeeTC: TADODataSet;
    adoLoanFees: TADODataSet;
    dtsEntLoan: TDataSource;
    dtsBatchNote: TDataSource;
    dtsBatchT: TDataSource;
    qryLDavlbal: TADODataSet;
    qryToUse: TADOQuery;
    spBBankDet: TADOStoredProc;
    cmdMoveDecline: TADOCommand;
    qryBatchTEntityID: TIntegerField;
    qryEntLoans: TADODataSet;
    dtsEntLoans: TDataSource;
    qryEntLoansEntityID: TIntegerField;
    qryEntLoansEntCode: TStringField;
    qryEntLoansLoanID: TAutoIncField;
    qryEntLoansLoanKey: TIntegerField;
    qryEntLoansName2: TStringField;
    qryEntLoansName: TStringField;
    qryEntLoansRegNo: TStringField;
    qryEntLoansRefFld1: TStringField;
    qryEntLoansLoanType: TStringField;
    qryEntLoansStatus: TSmallintField;
    qryEntLoansPayIns: TBCDField;
    qryEntLoansAmtToFin: TBCDField;
    qryEntLoansStartDate: TDateTimeField;
    qryEntLoansCashDep: TBCDField;
    qryEntLoansAvlBal: TBCDField;
    qryEntLoansRefNo: TStringField;
    qryEntLoansEmpID: TIntegerField;
    qryLoanStatus: TADODataSet;
    qryGetBatchType: TADOQuery;
    cdsImportMap: TClientDataSet;
    cdsImportMapImportField: TStringField;
    cdsImportMapDBField: TStringField;
    dtsImportMap: TDataSource;
    qryImportFields: TADODataSet;
    dtsImportFields: TDataSource;
    cdsImportMapDBLookup: TStringField;
    qryGetEntity: TADOQuery;
    cdsImportErrors: TClientDataSet;
    cdsImportErrorsRowNo: TIntegerField;
    cdsImportErrorsError: TStringField;
    dtsImportErrors: TDataSource;
    qryBatchTsLoanID: TStringField;
    qryGetLoanEntity: TADOQuery;
    dsLoanPayoutFees: TADODataSet;
    qryBatchTAccountNo: TStringField;
    cmdDeleteTransaction: TADOCommand;
    qryBatchTStatusColor: TStringField;
    qryEntLoansStatusColor: TStringField;
    qryEntLoansStatusDescription: TStringField;
    qryBatchTStatusDescription: TStringField;
    qryBatchTStatus: TIntegerField;
    procedure qryBatchTAfterInsert(DataSet: TDataSet);
    procedure qryBatchTBeforePost(DataSet: TDataSet);
    procedure qryBatchNoteBeforeOpen(DataSet: TDataSet);
    procedure qryBatchNoteAfterInsert(DataSet: TDataSet);
    procedure qryBatchNoteAfterEdit(DataSet: TDataSet);
    procedure qryBatchTAfterEdit(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure spBBankDetBeforeOpen(DataSet: TDataSet);
    procedure qryEntLoansAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FDefTransCode: integer;
    FDefTransType: integer;
    FCurBatchID: integer;
    FCurBatchNo: string;
    FNoOfCurBatch: integer;
    FCurBatchDate: TDate;
    FEntLoansComm: String;
//    FCaptureBatch: boolean;
    function GetDeclineBatchID(inUserID:string):integer;
//    function AddFeeForAutoPay:Currency;
//    function BTcheckAvlBal:boolean;
    procedure SetDefTransCode(const Value: integer);
    procedure AddLoanIDtoBatch;
    procedure AssignLoanValInBatch;
//    function AddPayoutLoanFees: Currency;
  public
    { Public declarations }
    property EntLoansComm: String read FEntLoansComm write FEntLoansComm;
    function GetBatchType(BatchID: Integer): Integer;
    function GetCurBatchID:integer;
    function GetCurBatchNo:string;
    function GetNewBatchNo(inUserID :string; inStatus, inType :integer):boolean;
    function SetBatchStatus(inStatus, BatchType :integer):boolean;
    function SetBatchCtrlAccept:boolean;
    function VerifyBadDebtStatus: Boolean;
    function VerifyNotBadDebtStatus: Boolean;
    function VerifyLoanID:boolean;
    function VerifyTransCode:boolean;
    function VerifyBTavlbal:boolean;
    function GetTransForStatus(inStatus:boolean):boolean;
    function MoveDeclineTrans(BatchID:integer):integer;
    procedure AddImportError(RowNo: Integer; Error: String);
    procedure GetCurBatches(BatchList:TStrings);
    procedure GetClosedBatches(BatchList:TStrings);
    procedure GetEntity(LoanID: Integer; var EntityID: Integer;
      var EntityCode: String);
    procedure GetLoanAndEntity(LoanRef: String; var LoanID,
      EntityID: Integer; var EntityCode: String);
    procedure SetActiveAll(Status: Boolean);
    procedure AddCurrentPersonToBatch(SelectedLoan: Boolean);
    procedure AddSuspenseToBatch;
    procedure DelCurrentBatch;
    procedure SetCurrentBatch(inBatchNo: string);
    procedure BatchMoveAndDelete;
    procedure SetNewBatchNo(inUserID:string);
    //Batches Accept & Decline
    procedure SetAllAcceptStatus(Accept:boolean);
    procedure SetCurrentAcceptStatus(Accept:boolean);
    procedure SetCurAcceptStsQry(Accept:integer);
    //Open Currenct batch
    procedure OpenCurrenctBatch; //Use in settlement so far
    property DefTransCode: integer read FDefTransCode write SetDefTransCode;
    property NoOfCurBatch: integer read FNoOfCurBatch write FNoOfCurBatch;
    property CurBatchDate: TDate read FCurBatchDate write FCurBatchDate;
    function DoAutoPayOuts: Boolean;
    procedure DoTransCodes(AllCodes:boolean);
  end;

var
  dtmBatchTrans: TdtmBatchTrans;

implementation

uses dmMain, uLSConst, uLScentral, uBase32;

{$R *.DFM}

{ TdtmBatchTrans }

procedure TdtmBatchTrans.DataModuleCreate(Sender: TObject);
begin
  CurBatchDate := Date;
  EntLoansComm := qryEntLoans.CommandText;
end;

procedure TdtmBatchTrans.SetActiveAll(Status: Boolean);
var
  Csr: IRecall;
begin
  Csr := TAutoCursor.Create;
  // if Queries are being activated then do BranchCode
    if Status then //Store proc is not active yet
      spcEntLoan.Parameters[1].Value := -1; //dtmMain.CurBranchID;
    spcEntLoan.Active      := Status;
    qryTransType.Active    := Status;
    qryBatchControl.Active := Status;
    if Status then
    begin
      DefTransCode  := -1;
      FDefTransType := -1;
    end;
end;

procedure TdtmBatchTrans.qryBatchTAfterInsert(DataSet: TDataSet);
begin
  //  qryBatchT.FieldByName('LoanID').AsInteger   := -1;
  qryBatchT.FieldByName('BatchID').AsInteger    := FCurBatchID;
  qryBatchT.FieldByName('BatchNo').AsString     := FCurBatchNo;
  //qryBatchT.FieldByName('TransCode').AsInteger  := DefTransCode;
  //  qryBatchT.FieldByName('TransType').AsInteger := FDefTransType;
  qryBatchT.FieldByName('TransDate').AsDateTime  := Date;
  qryBatchT.FieldByName('EffectDate').AsDateTime := CurBatchDate;
  // qryBatchT.FieldByName('AmtPost').AsCurrency := 0; default
  qryBatchT.FieldByName('UserID').AsString := dtmMain.CurrentID;
end;

procedure TdtmBatchTrans.SetDefTransCode(const Value: integer);
begin
  FDefTransCode := Value;
  if qryTransType.Locate('TransCode',FDefTransCode,[]) then
    FDefTransType := qryTransType.FieldByName('TransType').AsInteger;
end;

procedure TdtmBatchTrans.AddSuspenseToBatch;
begin
  qryBatchT.Append;
  qryBatchT.FieldByName('LoanID').AsInteger   := susCapture;
  qryBatchT.FieldByName('EntCode').AsString   := 'Suspense';
  qryBatchT.FieldByName('EntityID').AsInteger := susCapture;
  //DataSet.FieldByName('TransType').AsInteger :=
  //  StrToInt(Copy(IntToStr(DefTCode),1,Length(IntToStr(DefTCode))-2));
  qryBatchT.FieldByName('Amount').AsCurrency := 0;
  qryBatchT.Post;
end;

procedure TdtmBatchTrans.AddCurrentPersonToBatch(SelectedLoan: Boolean);
var
  DataSet: TDataSet;
begin
//  Screen.Cursor
  if SelectedLoan then
    DataSet := qryEntLoans
  else
    DataSet := spcEntLoan;

  qryBatchT.Append;
  qryBatchT.FieldByName('LoanID').AsInteger   := Dataset.FieldByName('LoanID').AsInteger;
  qryBatchT.FieldByName('EntCode').AsString   := Dataset.FieldByName('EntCode').AsString;
  qryBatchT.FieldByName('EntityID').AsInteger := Dataset.FieldByName('EntityID').AsInteger;
  qryBatchT.FieldByName('Status').AsInteger   := Dataset.FieldByName('Status').AsInteger;
  case FDefTransType of
    11,12 : qryBatchT.FieldByName('Amount').AsCurrency := Dataset.FieldByName('PayIns').AsCurrency;
    15,16,17 : begin
             qryBatchT.FieldByName('Amount').AsCurrency:= Dataset.FieldByName('LoanCapital').AsCurrency;
             qryBatchT.FieldByName('EffectDate').AsDateTime := Date;
               //Dataset.FieldByName('StartDate').AsDateTime;
            end;
    9 ,10 : begin
             qryBatchT.FieldByName('Amount').AsCurrency:= Dataset.FieldByName('CashDep').AsCurrency;
             qryBatchT.FieldByName('EffectDate').AsDateTime :=
               Dataset.FieldByName('StartDate').AsDateTime;
            end;
    else    begin
              if qryTransType.Locate('TransCode',DefTransCode,[]) then
                qryBatchT.FieldByName('Amount').AsCurrency   :=
                   qryTransType.FieldByName('DefaultVal').AsCurrency;
            end; {else}
  end; {case}
//  qryBatchT.FieldByName('ValueDate').AsDateTime := spcEntLoan.FieldByName('EffectDate').AsDateTime;
//  qryBatchT.FieldByName('PostDate').AsDateTime := spcEntLoan.FieldByName('EffectDate').AsDateTime;
  qryBatchT.FieldByName('RefNo').AsString  := Dataset.FieldByName('RefNo').AsString;
  //Dataset.FieldByName('RefFld1').AsString;
  qryBatchT.FieldByName('RefNo2').AsString := '';//Dataset.FieldByName('RefNo').AsString;
  qryBatchT.Post;
end;

procedure TdtmBatchTrans.DelCurrentBatch;
begin
  cmdDeleteBatch.Parameters[0].Value := FCurBatchID;
  cmdDeleteBatch.Execute;
  qryBatchT.Requery;
end;

function TdtmBatchTrans.GetNewBatchNo(inUserID:string; inStatus, inType :integer):boolean;
begin
  FCurBatchID := -1;
  FCurBatchNo := '';
  cmdGetBatchNo.Parameters[1].Value := inUserID;
  cmdGetBatchNo.Parameters[2].Value := inStatus;
  cmdGetBatchNo.Parameters[3].Value := inType;
  cmdGetBatchNo.Execute;
  FCurBatchID := cmdGetBatchNo.Parameters[4].Value;
  FCurBatchNo := 'B'+PadLeft(IntToStr(FCurBatchID),'0',8);
  if FCurBatchID = -1 then
  begin
    Result := False;
    MesDlg('Could not assign new batch number, try again.','E');
  end
  else
  begin
    Result := True;
    if qryBatchControl.Active then
      qryBatchControl.Requery;
  end;
end;

procedure TdtmBatchTrans.SetCurrentBatch(inBatchNo: string);
begin
  if qryBatchControl.Locate('BatchNo',inBatchNo,[]) then
  begin
    FCurBatchID := qryBatchControl.FieldByName('BatchID').AsInteger;
    FCurBatchNo := inBatchNo;
  end
  else
  begin
    FCurBatchID := -1;
    FCurBatchNo := '';
  end;
  qryBatchT.Close;
  qryBatchT.Parameters[0].Value := FCurBatchID;
  qryBatchT.Open;
end;

procedure TdtmBatchTrans.GetCurBatches(BatchList:TStrings);
begin
  BatchList.Clear;
  //Result.Sorted := True;
  qryGetCurBatches.Close;
  qryGetCurBatches.Parameters[0].Value := dtmMain.CurrentID;
  qryGetCurBatches.Parameters[1].Value := btUser;
  qryGetCurBatches.Open;
  qryGetCurBatches.First;
  while not qryGetCurBatches.EOF do
  begin
    BatchList.Add(qryGetCurBatches.Fields[0].AsString);
    qryGetCurBatches.Next;
  end;
  NoOfCurBatch := qryGetCurBatches.RecordCount;
  qryGetCurBatches.Close;
end;

procedure TdtmBatchTrans.GetClosedBatches(BatchList:TStrings);
begin
  BatchList.Clear;
//  qryGetCloseBatches.Parameters[0].Value := dtmMain.CurrentID;
  qryGetCloseBatches.Open;
  qryGetCloseBatches.First;
  while not qryGetCloseBatches.EOF do
  begin
    BatchList.Add(qryGetCloseBatches.Fields[0].AsString);
    qryGetCloseBatches.Next;
  end;
  qryGetCloseBatches.Close;
end;

function TdtmBatchTrans.SetBatchStatus(inStatus, BatchType :integer): boolean;
begin
  cmdSetBCStatus.Parameters[0].Value := inStatus;
  cmdSetBCStatus.Parameters[1].Value := BatchTYpe;
  cmdSetBCStatus.Parameters[2].Value := FCurBatchID;
  try
    cmdSetBCStatus.Execute;
    Result := True;
  except
    Result := False;
  end;
  qryBatchControl.Requery;
end;

function TdtmBatchTrans.SetBatchCtrlAccept: boolean;
begin
  cmdUpdAcceptBatch.Parameters[1].Value := FCurBatchID;
  cmdUpdAcceptBatch.Parameters[2].Value := dtmMain.CurrentID;
  try
    cmdUpdAcceptBatch.Execute;
    Result := True;
  except
    Result := False;
  end;
end;

procedure TdtmBatchTrans.BatchMoveAndDelete;
begin
  cmdBatchMovDel.Parameters[1].Value := FCurBatchID;
  cmdBatchMovDel.Execute;
end;

procedure TdtmBatchTrans.SetNewBatchNo(inUserID:string);
var
  CurBatchID, NewBatchID : integer;
begin
  CurBatchID := FCurBatchID;
  NewBatchID := GetDeclineBatchID(inUserID);
  if NewBatchID = -1 then
  begin
    GetNewBatchNo(inUserID,bsDecline,btUser);
    NewBatchID := FCurBatchID;
  end;
  // Update Batch with new batch number
  cmdSetNewBatchID.Parameters[0].Value := NewBatchID;
  cmdSetNewBatchID.Parameters[1].Value := 'B'+PadLeft(IntToStr(NewBatchID),'0',8);
  cmdSetNewBatchID.Parameters[2].Value := CurBatchID;
  cmdSetNewBatchID.Execute;
  // Update Batch Notes with new batch number
  cmdUpdNoteID.Parameters[0].Value := NewBatchID;
  cmdUpdNoteID.Parameters[1].Value := CurBatchID;
  cmdUpdNoteID.Execute;
end;

function TdtmBatchTrans.GetDeclineBatchID(inUserID: string):integer;
begin
  qryGetUserDecBatch.Close;
  qryGetUserDecBatch.Parameters[0].Value := inUserID;
  qryGetUserDecBatch.Open;
  qryGetUserDecBatch.First;
  if qryGetUserDecBatch.Fields[0].IsNull then
    Result := -1
  else
    Result := qryGetUserDecBatch.Fields[0].AsInteger;
  qryGetUserDecBatch.Close;
end;

procedure TdtmBatchTrans.SetAllAcceptStatus(Accept: boolean);
begin
  cmdAcceptBatch.Parameters[0].Value := Accept;
  cmdAcceptBatch.Parameters[1].Value := FCurBatchID;
  cmdAcceptBatch.Execute;
  //qryBatchT.Requery;
  RequeryOnRecord(qryBatchT,'TransNo');
end;

procedure TdtmBatchTrans.SetCurrentAcceptStatus(Accept: boolean);
begin
  if (spcEntLoan.Active) or
     (not(dtmBatchTrans.qryBatchT.FieldByName('LoanID').AsInteger < 0)) then
        spcEntLoan.Locate('LoanID',qryBatchT.FieldByName('LoanID').AsInteger,[]);

  qryBatchT.Edit;
  qryBatchT.FieldByName('Processed').AsBoolean := Accept;
  qryBatchT.Post;
end;

procedure TdtmBatchTrans.SetCurAcceptStsQry(Accept: integer);
begin
  RunQry(qryToUse,'update lsBatchTrans set Processed='+IntToStr(Accept)
    +' where TransNo='+qryBatchT.FieldByName('TransNo').AsString,'E');
end;

function TdtmBatchTrans.VerifyLoanID: boolean;
begin
  if (spcEntLoan.Locate('LoanID',qryBatchT.FieldByName('LoanID').AsInteger,[])) or
     (dtmBatchTrans.qryBatchT.FieldByName('LoanID').AsInteger < 0) then
    Result := True
  else
    Result := False
end;

function TdtmBatchTrans.VerifyTransCode: boolean;
begin
  if qryTransType.Locate('TransCode',qryBatchT.FieldByName('TransCode').AsInteger,[]) then
    Result := True
  else
    Result := False
end;

procedure TdtmBatchTrans.AssignLoanValInBatch;
begin
  qryBatchT.FieldByName('LoanKey').AsInteger := spcEntLoan.FieldByName('LoanKey').AsInteger;
  qryBatchT.FieldByName('LoanID').AsInteger  := spcEntLoan.FieldByName('LoanID').AsInteger;
end;

procedure TdtmBatchTrans.AddLoanIDtoBatch;
begin
  if spcEntLoan.Locate('EntCode;LoanKey',
    VarArrayOf([qryBatchT.FieldByName('EntCode').AsString,
    qryBatchT.FieldByName('LoanKey').AsInteger]),[]) then
  begin
    AssignLoanValInBatch;
  end
  else
  begin
    // this if & else is for Delphi 5 ADO.Locate Bug
    if (qryBatchT.FieldByName('EntCode').AsString=spcEntLoan.FieldByName('EntCode').AsString)
      and (qryBatchT.FieldByName('LoanKey').AsInteger=spcEntLoan.FieldByName('LoanKey').AsInteger)
      then
    begin
      AssignLoanValInBatch;
    end
    else
    begin // this must stay
      MesDlg('Could not find client in database:  '+qryBatchT.FieldByName('EntCode').AsString+
          ', loan: '+qryBatchT.FieldByName('LoanKey').AsString,'E');
      //qryBatchT.Cancel;
      Abort; //Stop all things
    end;
  end;
end;

procedure TdtmBatchTrans.qryBatchTBeforePost(DataSet: TDataSet);
begin
  if qryBatchT.FieldByName('TransCode').IsNull then
    qryBatchT.FieldByName('TransCode').AsInteger  := DefTransCode;

  if (not spcEntLoan.Locate('LoanID',qryBatchT.FieldByName('LoanID').AsInteger,[])) and
     (not dtmBatchTrans.qryBatchT.FieldByName('LoanID').AsInteger = susCapture) then
    MesDlg('Could not locate loan in capture list.','W');
  if qryTransType.Locate('TransCode',qryBatchT.FieldByName('TransCode').AsInteger,[]) then
  begin
    qryBatchT.FieldByName('TransType').AsInteger := qryTransType.FieldByName('TransType').AsInteger;
  end
  else
    qryBatchT.FieldByName('TransCode').AsInteger := -1;
  //
  if qryBatchT.FieldByName('LoanID').AsInteger = -10 then
    AddLoanIDtoBatch;
  //
  // Check effective date
  if qryBatchT.FieldByName('EffectDate').AsDateTime < dtmMain.CurME then
  begin
    MesDlg('Effective date must be greater than current month end date.','E');
    Abort;
  end;
  // Check value date
  if (not qryBatchT.FieldByName('ValueDate').IsNull) and
    (qryBatchT.FieldByName('ValueDate').AsDateTime <>
      qryBatchT.FieldByName('EffectDate').AsDateTime) then
  begin
    qryBatchT.FieldByName('EffectDate').AsDateTime := dtmMain.CurME;
    if (qryBatchT.FieldByName('ValueDate').AsDateTime > dtmMain.CurME) then
    begin
      MesDlg('Value date must be smaller than current month end date.','E');
      Abort;
    end;
  end;
  //Do check for nodebit transactions
  if (qryBatchT.FieldByName('Status').AsInteger = lnsNoDebits)
    and (qryBatchT.FieldByName('TransType').AsInteger in [3,5,12,14,15,17,18,19,20,22,24])  then
//    and (qryBatchT.FieldByName('TransType').AsInteger in [2,3,5,12,14,15,17,18,19,20,22,24])  then  VRS - CDS req.
  begin
    MesDlg('Debits can not be loaded to this account. Check the status.','E');
    Abort;
  end;

  //
{ do on verify batch only
  if qryBatchT.FieldByName('TransType').AsInteger = 15 then
  begin
    if qryBatchT.FieldByName('Amount').AsCurrency >
      spcEntLoan.FieldByName('AvlBal').AsCurrency then
    begin
      MesDlg('Cannot advance more than avl balance.','E');
      Abort;
    end;
  end;
}  
  // OLE error 80040E2F
end;

procedure TdtmBatchTrans.qryBatchNoteBeforeOpen(DataSet: TDataSet);
begin
  qryBatchNote.Parameters[0].Value := FCurBatchID;
end;

procedure TdtmBatchTrans.qryBatchNoteAfterInsert(DataSet: TDataSet);
begin
  qryBatchNote.FieldByName('BatchID').AsInteger := FCurBatchID;
  qryBatchNote.FieldByName('NoteNo').AsInteger := 0;
end;

procedure TdtmBatchTrans.qryBatchNoteAfterEdit(DataSet: TDataSet);
begin
  qryBatchNote.FieldByName('NoteDate').AsDateTime := Date;
  qryBatchNote.FieldByName('UserID').AsString := dtmMain.CurrentID;
end;

function TdtmBatchTrans.GetTransForStatus(inStatus:boolean): boolean;
begin
  qryGetTransForStatus.Close;
  qryGetTransForStatus.Parameters[0].Value := inStatus;
  qryGetTransForStatus.Parameters[1].Value := FCurBatchID;
  qryGetTransForStatus.Open;
  Result := qryGetTransForStatus.Fields[0].AsInteger <> 0;
  qryGetTransForStatus.Close;
end;

function TdtmBatchTrans.GetCurBatchID: integer;
begin
  Result := FCurBatchID;
end;

function TdtmBatchTrans.GetCurBatchNo: string;
begin
  Result := FCurBatchNo;
end;

procedure TdtmBatchTrans.OpenCurrenctBatch;
begin
  if FCurBatchID <> -1 then
  begin
    qryBatchT.Close;
    qryBatchT.Parameters[0].Value := FCurBatchID;
    qryBatchT.Open;
  end;
end;

procedure TdtmBatchTrans.qryBatchTAfterEdit(DataSet: TDataSet);
begin
//  if CaptureBatch then - first 2 grid cols in frmBatch are read only PSNkey,LoanKey
//    qryBatchT.FieldByName('LoanID').AsInteger := -1;
end;

{WB 15/03/2002
 Do auto batch for loan pay-outs
 - This will only happen for first time pay outs Status=P
 - What about ref only fees
}

//function TdtmBatchTrans.AddPayoutLoanFees: Currency;
//var
//  FeeAmt: Currency;
//begin
//  Result := 0;
//  //dsLoanPayoutFees.Close;
//  dsLoanPayoutFees.Parameters.ParamByName('LoanID').Value := spcEntLoan.FieldByName('LoanID').AsInteger;
//  if not dsLoanPayoutFees.Active then
//    dsLoanPayoutFees.Open
//  else
//    dsLoanPayoutFees.Requery();
//  dsLoanPayoutFees.First;
//  while not dsLoanPayoutFees.Eof do
//  begin
//    if dsLoanPayoutFees.FieldByName('Amount').AsCurrency >= 0 then
//      DefTransCode := dsLoanPayoutFees.FieldByName('TransCodeDebit').AsInteger
//    else
//      DefTransCode := dsLoanPayoutFees.FieldByName('TransCodeCredit').AsInteger;
//
//    FeeAmt := dsLoanPayoutFees.FieldByName('Amount').AsCurrency;
//
//    AddCurrentPersonToBatch(False);
//    qryBatchT.Edit;
//    qryBatchT.FieldByName('Amount').AsCurrency := ABS(FeeAmt);
//    qryBatchT.Post;
//
//    Result := Result + FeeAmt;
//
//    dsLoanPayoutFees.Next;
//  end;
//end;

//function TdtmBatchTrans.AddFeeForAutoPay: Currency;
//var
//  FeeAmt : Currency;
//  DoAdd: Boolean;
//begin
//  Result := 0.00;
//  adoLoanFees.Parameters[0].Value := spcEntLoan.FieldByName('LoanID').AsInteger;
//  adoLoanFees.Requery;
//  adoFeeTC.First;
//  while not adoFeeTC.EOF do
//  begin
//    DoAdd := False;
//    FeeAmt := adoLoanFees.FieldByName('Fee'+adoFeeTC.FieldByName('FeeID').AsString).AsCurrency;
//    if FeeAmt > 0.00 then
//    begin
//      if adoFeeTC.FieldByName('TransCode').AsInteger <> 0 then
//      begin
//        DefTransCode := adoFeeTC.FieldByName('TransCode').AsInteger;
//        DoAdd := True;
//      end;
//    end
//    else if FeeAmt < 0.00 then
//    begin
//      if adoFeeTC.FieldByName('TCodeCR').AsInteger <> 0 then
//      begin
//        DefTransCode := adoFeeTC.FieldByName('TCodeCR').AsInteger;
//        DoAdd := True;
//      end;
//    end;
//
//    if DoAdd then
//    begin
//      AddCurrentPersonToBatch(False);
//      qryBatchT.Edit;
//      qryBatchT.FieldByName('Amount').AsCurrency := ABS(FeeAmt);
//      qryBatchT.Post;
//      Result := Result + FeeAmt;
//    end;
//    adoFeeTC.Next;
//  end;
//end;

function TdtmBatchTrans.DoAutoPayOuts: Boolean;
var
  tmpTransT : integer;
//  FeeTot : Currency;
  MEError: Boolean;
begin
  MEError := False;
  tmpTransT := DefTransCode;
  adoFeeTC.Open;
  adoLoanFees.Close;
  adoLoanFees.Parameters[0].Value := spcEntLoan.FieldByName('LoanID').AsInteger;
  adoLoanFees.Open;
  try
    //qryBatchT.DisableControls;
    spcEntLoan.DisableControls;
    FilterDataSet(spcEntLoan,'Status='+IntToStr(lnsActPay) + ' or ' +
      'Status='+IntToStr(lnsApproved));
    spcEntLoan.First;
    while not spcEntLoan.EOF do
    begin
      DefTransCode := 1501;
      //if not(spcEntLoan.FieldByName('StartDate').AsDateTime < dtmMain.CurME) then
      if spcEntLoan.FieldByName('OpenDate').IsNull then
        AddCurrentPersonToBatch(False)
      else
        MEError := True;
      //FeeTot := AddFeeForAutoPay;

//      FeeTot := AddPayoutLoanFees;

      (*if qryBatchT.Locate('LoanID;TransCode',
        VarArrayOf([spcEntLoan.FieldByName('LoanID').AsInteger, 1501]),[]) then
      begin
        qryBatchT.Edit;
        qryBatchT.FieldByName('Amount').AsCurrency :=
          ABS(qryBatchT.FieldByName('Amount').AsCurrency-FeeTot);
        qryBatchT.Post;
      end;*)
      spcEntLoan.Next;
    end;
    if MEError then
    begin
      MesDlg('Auto pay outs loaded' + #13#13 + 'Note: Some loans could not ' +
        'be loaded because the current month end has exceeded the loan''s startdate', 'I') ;
      Result := false;
    end
    else
      Result := True;
  finally
    DefTransCode := tmpTransT;
    adoLoanFees.Close;
    adoFeeTC.Close;
    FilterDataSet(spcEntLoan,'');
    //qryBatchT.EnableControls;
    spcEntLoan.EnableControls;
  end;
end;

function TdtmBatchTrans.VerifyBTavlbal: boolean;
begin
  qryLDavlbal.Open;
  Result := qryLDavlbal.Fields[0].AsCurrency >=
    qryLDavlbal.Fields[1].AsCurrency;
  qryLDavlbal.Close;
end;

procedure TdtmBatchTrans.DoTransCodes(AllCodes: boolean);
begin
  qryTransType.CommandText :=
    'SELECT TransCode, TransType, Description, DefaultVal ' +
    'FROM Transsetup ' +
    'WHERE AppID = 100';
  if not AllCodes then
    qryTransType.CommandText := qryTransType.CommandText + ' AND NotUse = 0';
end;

procedure TdtmBatchTrans.spBBankDetBeforeOpen(DataSet: TDataSet);
begin
  spBBankDet.Parameters[1].Value := FCurBatchID;
end;

function TdtmBatchTrans.MoveDeclineTrans(BatchID: integer): integer;
begin
  cmdMoveDecline.Parameters[1].Value := BatchID;
  cmdMoveDecline.Execute;
  Result := cmdMoveDecline.Parameters[2].Value;
end;

procedure TdtmBatchTrans.qryEntLoansAfterOpen(DataSet: TDataSet);
begin
  TBCDField(DataSet.FieldByName('PayIns')).Currency := True;
  TBCDField(DataSet.FieldByName('AmtToFin')).Currency := True;
end;

function TdtmBatchTrans.VerifyBadDebtStatus: Boolean;
begin
  Result := True;
  qryLoanStatus.Open;
  if qryLoanStatus.FieldByName('Status').AsInteger = lnsBadDebt then
    Result := qryBatchT.FieldByName('TransType').AsInteger in [24,25,26,27];
  qryLoanStatus.Close;
end;

function TdtmBatchTrans.VerifyNotBadDebtStatus: Boolean;
begin
  Result := True;
  qryLoanStatus.Open;
  if qryLoanStatus.FieldByName('Status').AsInteger <> lnsBadDebt then
    Result := not (qryBatchT.FieldByName('TransType').AsInteger in [24,25,26,27]);
  qryLoanStatus.Close;
end;

function TdtmBatchTrans.GetBatchType(BatchID: Integer): Integer;
begin
  qryGetBatchType.Parameters[0].Value := BatchID;
  qryGetBatchType.Open;
  Result := qryGetBatchType.Fields[0].AsInteger;
  qryGetBatchType.Close;
end;

procedure TdtmBatchTrans.GetEntity(LoanID: Integer; var EntityID: Integer;
  var EntityCode: String);
begin
  qryGetEntity.Parameters[0].Value := LoanID;
  qryGetEntity.Open;
  EntityID := qryGetEntity.FieldByName('EntityID').AsInteger;
  EntityCode := qryGetEntity.FieldByName('EntCode').AsString;
  qryGetEntity.Close;
end;

procedure TdtmBatchTrans.GetLoanAndEntity(LoanRef: String; var LoanID: Integer;
  var EntityID: Integer; var EntityCode: String);
begin
  qryGetLoanEntity.Parameters[0].Value := LoanRef;
  qryGetLoanEntity.Open;
  LoanID := qryGetLoanEntity.FieldByName('LoanID').AsInteger;
  EntityID := qryGetLoanEntity.FieldByName('EntityID').AsInteger;
  EntityCode := qryGetLoanEntity.FieldByName('EntCode').AsString;
  qryGetLoanEntity.Close;
end;

procedure TdtmBatchTrans.AddImportError(RowNo: Integer; Error: String);
begin
  cdsImportErrors.Append;
  cdsImportErrors.FieldByName('RowNo').AsInteger := RowNo;
  cdsImportErrors.FieldByName('Error').AsString := Error;
  cdsImportErrors.Post;
end;

end.
