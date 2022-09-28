unit dmProcBatch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32, uFinMath, Gauges;

type
  TdtmProcBatch = class(TDataModule)
    cmdSetBCStatus: TADOCommand;
    qryGetBCStatus: TADODataSet;
    qryGetLoanReCalc: TADODataSet;
    qryCntPayOut: TADODataSet;
    qryCntValDate: TADODataSet;
    cmdDoDefInt: TADOCommand;
    qryToUse: TADOQuery;
    cmdProcBatch1: TADOCommand;
    conLSproc: TADOConnection;
    cmdBeforePost: TADOCommand;
    cmdAfterPost: TADOCommand;
    qryValueD: TADODataSet;
    qryRates: TADODataSet;
    dtsValueD: TDataSource;
    qryLDS: TADODataSet;
    dtsLDS: TDataSource;
    cmdProcBatch: TADOCommand;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FCurBatchID : integer;
    CurBatchNo : string;
    FgugProg: TGauge;
    FDataConnection: String;
    function GetBCProcessStatus:integer;
    function GetPayOutCount: integer;
    function GetValDateCount: integer;
    procedure SetBCProcessStatus(inStatus: integer);
    procedure SetBatchNo;
    procedure SetCurBatchID(const Value: integer);
    procedure ProcessBatch;
    procedure AddValueDateTrans;
    procedure AddValDTransToBatch(TT,TC:integer; Amt,AmtP: Currency);
    procedure SetValueDStatus(Ready :boolean);
    procedure SetgugProg(const Value: TGauge);
    procedure SetGugProgress(inProg: integer);
    procedure SetDataConnection(const Value: String);
  public
    { Public declarations }
    property CurBatchID :integer read FCurBatchID write SetCurBatchID;
    property gugProg: TGauge read FgugProg write SetgugProg;
    property DataConnection: String read FDataConnection write SetDataConnection;
    function StartProcessBatchOkay:boolean;
    function ProcessCurrentBatch:boolean;
  end;

var
  dtmProcBatch: TdtmProcBatch;

implementation

uses dmMain, uLSConst;

{$R *.DFM}

{ TdtmProcBatch }

procedure TdtmProcBatch.SetValueDStatus(Ready: boolean);
begin
  qryValueD.Active := Ready;
  qryLDS.Active    := Ready;
  qryRates.Active := Ready;
end;

procedure TdtmProcBatch.AddValDTransToBatch(TT, TC: integer; Amt, AmtP: Currency);
begin
  RunQry(qryToUse,
    'insert into lsBatchTrans select BatchID,BatchNo,LoanID,EntityID,EntCode'+
    ','+IntToStr(TC)+','+IntToStr(TT)+
    ',Status,0,0,TransDate,EffectDate,ValueDate,PostDate,'+FloatToStr(Amt)+
    ','+FloatToStr(AmtP)+
    ',UserID,RefNo,RefNo2,Processed from lsBatchTrans where TransNo='+
    IntToStr(qryValueD.FieldByName('TransNo').AsInteger),'E');
end;

procedure TdtmProcBatch.AddValueDateTrans;
var
  IntAdj : Currency;
  FldToUse : string;
begin
  qryValueD.Parameters[0].Value := CurBatchID;
  SetValueDStatus(True);
  if Assigned(gugProg) then
    gugProg.MaxValue := GetValDateCount;
  qryValueD.First;
  while not qryValueD.EOF do
  begin
    FldToUse := 'IntRate';
    if qryValueD.FieldByName('TransType').AsInteger in [7,8,9,10] then
      FldToUse := 'DepositRate';
    // Get int adjustment
    IntAdj := uFinMath.GetIntOrBalUpTo(qryValueD.FieldByName('ValueDate').AsDateTime,
      qryValueD.FieldByName('EffectDate').AsDateTime,
      qryValueD.FieldByName('Amount').AsCurrency,
      qryRates,FldToUse,False);
    // Add int adjustment to batch
    if qryValueD.FieldByName('TransType').AsInteger in [1,4,6,11,13,16,23] then
      AddValDTransToBatch(13,1303,IntAdj,-1*IntAdj)
    else
      AddValDTransToBatch(14,1403,IntAdj,IntAdj);
    // if HP type account
    if qryLDS.FieldByName('LTaccT').AsInteger <= 10 then
    begin
      if qryValueD.FieldByName('TransType').AsInteger in [1,4,6,11,13,16,23] then
        AddValDTransToBatch(6,604,IntAdj,-1*IntAdj)
      else
        AddValDTransToBatch(5,504,IntAdj,IntAdj)
    end;
    qryValueD.Next;
    SetGugProgress(-1);
  end;
  SetValueDStatus(False);
end;

procedure TdtmProcBatch.DataModuleDestroy(Sender: TObject);
begin
  conLSproc.Connected := False;
end;

function TdtmProcBatch.GetBCProcessStatus: integer;
begin
  qryGetBCStatus.Parameters[0].Value := CurBatchID;
  qryGetBCStatus.Open;
  Result := qryGetBCStatus.Fields[0].AsInteger;
  qryGetBCStatus.Close
end;

function TdtmProcBatch.GetPayOutCount: integer;
begin
  qryCntPayOut.Parameters[0].Value := CurBatchID;
  qryCntPayOut.Open;
  Result := qryCntPayOut.Fields[0].AsInteger;
  qryCntPayOut.Close;
end;

function TdtmProcBatch.GetValDateCount: integer;
begin
  qryCntValDate.Parameters[0].Value := CurBatchID;
  qryCntValDate.Open;
  Result := qryCntValDate.Fields[0].AsInteger;
  qryCntValDate.Close;
end;

procedure TdtmProcBatch.ProcessBatch;
begin
  if GetValDateCount > 0 then
  begin
    // Do value dates
    AddValueDateTrans;
  end;
  if Assigned(gugProg) then
    gugProg.MaxValue := 100;
  // ProcessBatch
  // RunQry(qryToUse,'lsProcessBatch ' + IntToStr(CurBatchID) + ', '''+dtmMain.CurrentID+'''','E');
  // RunQry(dtmMain.qryToUse,'lsProcessBatch ' + IntToStr(CurBatchID) + ', '''+dtmMain.CurrentID+'''','E');
  cmdProcBatch.Parameters[1].Value := CurBatchID;
  cmdProcBatch.Parameters[2].Value := dtmMain.CurrentID;
  cmdProcBatch.Execute;
  SetGugProgress(60);
  if GetPayOutCount > 0 then
  begin
    // Add Defered interest - move to end else it is first on account
    cmdDoDefInt.Parameters[1].Value := CurBatchID;
    cmdDoDefInt.Execute;
    // Do ReCalc - rather do Val dates ????
  end;
  SetGugProgress(77);
  cmdAfterPost.Parameters[1].Value := CurBatchID;
  cmdAfterPost.Execute;
  SetGugProgress(100);
end;

function TdtmProcBatch.ProcessCurrentBatch:boolean;
begin
  Screen.Cursor := crHourGlass;
  conLSproc.Connected := True;
  // SetAmtPost --
  cmdBeforePost.Parameters[1].Value := CurBatchID;
  cmdBeforePost.Execute;
  // SetLoanStatus for first loan
  conLSproc.BeginTrans;
  try
    ProcessBatch;
    conLSproc.CommitTrans;
    Result := True;
  except
    Screen.Cursor := crDefault;
    conLSproc.RollbackTrans;
    RunQry(qryToUse,'update lsBatchControl set Status=15 where BatchID='+
      IntToStr(CurBatchID),'E');
    conLSproc.Connected := False;
    Result := False;
  end;
  conLSproc.Connected := False;
  Screen.Cursor := crDefault;
end;

procedure TdtmProcBatch.SetBatchNo;
begin
  RunQry(qryToUse,'select BatchNo from lsBatchControl where BatchID='+
    IntToStr(CurBatchID),'O');
  CurBatchNo := qryToUse.Fields[0].AsString;
  qryToUse.Close;
end;

procedure TdtmProcBatch.SetBCProcessStatus(inStatus: integer);
begin
  cmdSetBCStatus.Parameters[0].Value := inStatus;
  cmdSetBCStatus.Parameters[1].Value := CurBatchID;
  cmdSetBCStatus.Execute;
end;

procedure TdtmProcBatch.SetCurBatchID(const Value: integer);
begin
  FCurBatchID := Value;
  SetBatchNo;
end;

function TdtmProcBatch.StartProcessBatchOkay: boolean;
begin
  Result := GetBCProcessStatus = bsAccept;
  if Result then
    SetBCProcessStatus(bsInProc); // For in process
end;

procedure TdtmProcBatch.SetgugProg(const Value: TGauge);
begin
  FgugProg := Value;
  gugProg.Progress := 0;
end;

procedure TdtmProcBatch.SetGugProgress(inProg: integer);
begin
  if Assigned(gugProg) then
  begin
    if inProg = -1 then
      gugProg.Progress := gugProg.Progress + 1
    else
      gugProg.Progress := inProg;
  end;
end;

procedure TdtmProcBatch.SetDataConnection(const Value: String);
begin
  FDataConnection := Value;
  //Maybe check connection file
  conLSproc.Connected := False;
  conLSproc.ConnectionString := Value;
  conLSproc.Connected := True;
end;

end.
