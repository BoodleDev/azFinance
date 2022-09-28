unit dmSettle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32;

type
  TdtmSettle = class(TDataModule)
    UpdLoanDetails: TADOCommand;
    qryGetLDS: TADODataSet;
    qryAccBal: TADODataSet;
    qryLT: TADODataSet;
    qryLTrate: TADODataSet;
    qryCapBal: TADODataSet;
    dtsGetLDS: TDataSource;
    qryGetDepBal: TADODataSet;
    qryToUse: TADOQuery;
    qryLoanAcc: TADODataSet;
    qryCapBalD: TADODataSet;
    cmdGetBatchNo: TADOCommand;
    qryLastIntD: TADODataSet;
    dbSettle: TADOConnection;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FCurLoanID : integer;
    //
    CurBatchID : integer;
    CurBatchNo : string;
    dFrom : TDate;
    FSettleDate: TDate;
    function GetSettleBatchNo:boolean;
    procedure AddRecordToBatch(inTransCode,inTransType: integer;
      inAmount: Currency);
    function GetBalForData(DataSet : TADODataSet):Currency;
    function GetAccBal:Currency;
    function GetCapBalDate:Currency;
    procedure AddArrearsInterest;
    procedure UpdateLoanDetailsInfo(inSettleAmt:Currency);
    procedure ClearClientAccount(SettleAmt,Discount: Currency);
    procedure SetCurLoanID(const Value: integer);
    procedure SerFromDate;
  public
    { Public declarations }
    property CurLoanID : integer read FCurLoanID write SetCurLoanID;
    property SettleDate : TDate read FSettleDate write FSettleDate;
    function GetArrBucket: Currency;
    function GetCapitalBal: Currency;
    function GetDepBal: Currency;
    function ShowBatchNo:string;
    function GetLoanStatus:integer;
    function GetIntUpToDate:Currency;
    procedure SetInfoStatus(Ready: boolean);
    procedure SetSettlementBatchNo;
    procedure SettleThisLoan(LoanBal,IntToDate,ArrInt,DepBal,SettleFee,
      Discount :Currency);
    procedure SettleLoanMinus(LoanBal : Currency);
  end;

implementation

uses dmMain, uFinMath;

{$R *.DFM}

{ TdtmSettle }

procedure TdtmSettle.UpdateLoanDetailsInfo(inSettleAmt:Currency);
begin
  UpdLoanDetails.Parameters[0].Value := dtmMain.CurrentID;
  UpdLoanDetails.Parameters[1].Value := inSettleAmt;
  UpdLoanDetails.Parameters[2].Value := CurLoanID;
  UpdLoanDetails.Execute;
end;

procedure TdtmSettle.AddArrearsInterest;
begin                                      // HP = 0,1
  if qryGetLDS.FieldByName('ArrearsBucket').AsCurrency > 0.01 then
  begin
    if qryLT.FieldByName('ArrTransType').AsInteger = 3 then
      AddRecordToBatch(301,3,qryGetLDS.FieldByName('ArrearsBucket').AsCurrency)
    else
      AddRecordToBatch(401,4,qryGetLDS.FieldByName('ArrearsBucket').AsCurrency);
  end;
end;

procedure TdtmSettle.AddRecordToBatch(inTransCode,inTransType: integer;
  inAmount: Currency);
var
  tmpSQL : string;
begin
{   (TransNo,BatchID,BatchNo,LoanID,EntCode,LoanKey,TransCode,TransType,
    TransDate,EffectDate,ValueDate,PostDate,Amount,AmtPost,UserID,RefNo
    RefNo2,Processed)  }
  tmpSQL := 'insert into lsBatchTrans values('+IntToStr(CurBatchID)+','''+CurBatchNo+''','+
    IntToStr(CurLoanID)+','+qryGetLDS.FieldByName('EntityID').AsString +','''+
    qryGetLDS.FieldByName('EntCode').AsString+''','+
    IntToStr(inTransCode)+','+IntToStr(inTransType)+',0,0,0,'+
    ''''+FormatDateTime('mm/dd/yyyy',SettleDate)+''','+ //TransDate
    ''''+FormatDateTime('mm/dd/yyyy',SettleDate)+''','+ //EffectDate
    ''''+FormatDateTime('mm/dd/yyyy',SettleDate)+''','+ //ValueDate
    ''''+FormatDateTime('mm/dd/yyyy',SettleDate)+''','+ //PostDate
    FloatToStr(inAmount)+',0,'''+dtmMain.CurrentID+''',''Settle'','' ref'',0)';
   RunQry(qryToUse,tmpSQL,'E'); 
end;

function TdtmSettle.GetBalForData(DataSet: TADODataSet): Currency;
begin
  DataSet.Close;
  DataSet.Parameters[1].Value := qryGetLDS.FieldByName('LoanID').AsInteger;
  DataSet.Open;
  Result := DataSet.Fields[0].AsCurrency;
  DataSet.Close;
end;

function TdtmSettle.GetAccBal: Currency;
begin
  Result := GetBalForData(qryAccBal);
end;

function TdtmSettle.GetCapitalBal: Currency;
begin
  Result := GetBalForData(qryCapBal);
end;

function TdtmSettle.GetDepBal: Currency;
begin
  Result := GetBalForData(qryGetDepBal);
end;

procedure TdtmSettle.ClearClientAccount(SettleAmt,Discount: Currency);
var
  ArrInt : Currency;
begin
  ArrInt := GetAccBal-SettleAmt-Discount;
  if qryLT.FieldByName('ArrTransType').AsInteger = 3 then
    ArrInt := ArrInt + qryGetLDS.FieldByName('ArrearsBucket').AsCurrency;
  if ArrInt > 0 then
    AddRecordToBatch(603,6,ArrInt)
  else
    AddRecordToBatch(503,5,ABS(ArrInt));
end;

function TdtmSettle.GetLoanStatus: integer;
begin
  Result := qryGetLDS.FieldByName('Status').AsInteger;
end;

function TdtmSettle.GetSettleBatchNo: boolean;
begin
  CurBatchID := -1;
  CurBatchNo := '';
  cmdGetBatchNo.Parameters[1].Value := dtmMain.CurrentID;
  cmdGetBatchNo.Parameters[2].Value := 0;
  cmdGetBatchNo.Parameters[3].Value := 1;
  cmdGetBatchNo.Execute;
  CurBatchID := cmdGetBatchNo.Parameters[4].Value;
  CurBatchNo := 'B'+PadLeft(IntToStr(CurBatchID),'0',8);
  Result := True;
end;

procedure TdtmSettle.SetSettlementBatchNo;
begin
  if not GetSettleBatchNo then
  begin
    MesDlg('Could not get batch number for settlement.','E');
    Exit;
  end;
end;

procedure TdtmSettle.SettleThisLoan(LoanBal, IntToDate, ArrInt, DepBal,
  SettleFee, Discount: Currency);
var
  tmpSetAmt : Currency;
begin
  tmpSetAmt := LoanBal+IntToDate+ArrInt+SettleFee-Discount;
  if (tmpSetAmt) > 0.01 then
    AddRecordToBatch(1101,11, StrToFloat(FormatCurr('0.00',tmpSetAmt)));
  // Add Interest portion - as Interest - 14
  if IntToDate > 0.01 then
    AddRecordToBatch(1402,14,IntToDate);
  // Add Settelment fee to Batch
  if SettleFee > 0.01 then
    //AddRecordToBatch(2001,20,SettleFee);
    AddRecordToBatch(201,2,SettleFee);
  // Add Discount to Batch
  if Discount > 0.01 then
    AddRecordToBatch(101,1,Discount);
  // Clear Deposit account
  if DepBal < -0.01 then
    AddRecordToBatch(1001,10,DepBal);
  // Client account only
  // Add to Batch - Arrears interest - as 3 or 4 - Clear ArrearsBucket
  if qryGetLDS.FieldByName('LTaccT').AsInteger < 2 then
  begin
    AddArrearsInterest;
    // Calc last balance on Client Acc - (CurrentBal+ArrearsBucket-SettleAmount)
    ClearClientAccount(tmpSetAmt,Discount);
  end;
  // Update Loan info  - NOTE: Loan Summary build does include "Closed" loans
  // Set loan status as "S"
  UpdateLoanDetailsInfo(tmpSetAmt);
end;

function TdtmSettle.ShowBatchNo: string;
begin
  Result := CurBatchNo;
//  Result := dtmBatchTrans.GetCurrentBatchNo;
end;

procedure TdtmSettle.SettleLoanMinus(LoanBal : Currency);
var
  CABal : Currency;
begin
  AddRecordToBatch(201,2,ABS(LoanBal));
  CABal := GetAccBal+ABS(LoanBal);
  if CABal < 0 then
    AddRecordToBatch(503,5,CABal)
  else
    AddRecordToBatch(603,6,CABal);
  // Set loan status as "S"
  UpdateLoanDetailsInfo(0);
end;

procedure TdtmSettle.DataModuleDestroy(Sender: TObject);
begin
  SetInfoStatus(False);
end;

procedure TdtmSettle.SerFromDate;
begin
  qryLastIntD.Parameters[1].Value := CurLoanID;
  qryLastIntD.Open;
  dFrom := qryLastIntD.Fields[0].AsDateTime;
  qryLastIntD.Close;
end;

procedure TdtmSettle.SetCurLoanID(const Value: integer);
begin
  FCurLoanID := Value;
  qryGetLDS.Parameters[0].Value := CurLoanID;
  SerFromDate;
  SetInfoStatus(True);
end;

procedure TdtmSettle.SetInfoStatus(Ready: boolean);
begin
  qryGetLDS.Active := Ready;
  qryLT.Active     := Ready;
end;

function TdtmSettle.GetArrBucket: Currency;
begin
  if qryLT.FieldByName('ArrTransType').AsInteger = 4 then
    Result := -1*qryGetLDS.FieldByName('ArrearsBucket').AsCurrency
  else
    Result := 0.00;
end;

function TdtmSettle.GetCapBalDate: Currency;
begin
  qryCapBalD.Close;
  qryCapBalD.Parameters[1].Value := qryGetLDS.FieldByName('LoanID').AsInteger;
  qryCapBalD.Parameters[2].Value := dFrom;
  qryCapBalD.Open;
  Result := qryCapBalD.Fields[0].AsCurrency;
  qryCapBalD.Close;
end;

function TdtmSettle.GetIntUpToDate: Currency;
var
  IntTot : Currency;
begin
  if qryGetLDS.FieldByName('Status').AsInteger >= 70 then
    Result := 0
  else
  begin
    qryLTrate.Open;
    qryLoanAcc.Parameters[1].Value := CurLoanID;
    qryLoanAcc.Parameters[2].Value := dFrom;
    qryLoanAcc.Parameters[3].Value := SettleDate;
    qryLoanAcc.Open;
    IntTot := GetIntOrBalUpTo(dFrom,SettleDate,GetCapBalDate,qryLTrate,'IntRate',False);
    qryLoanAcc.First;
    while (not qryLoanAcc.EOF) and
      (qryLoanAcc.FieldByName('EffectDate').AsDateTime <= SettleDate) do
    begin
      //if type not in [x,y,z] then Next else - exclude trans from int
      //while type in [x,y,z] do Next;
  //    IntTot := IntTot + CalcIntForAmt(qryLoanAcc.FieldByName('EffectDate').AsDateTime,
      IntTot := IntTot + GetIntOrBalUpTo(qryLoanAcc.FieldByName('EffectDate').AsDateTime,
        SettleDate,qryLoanAcc.FieldByName('AmtPost').AsCurrency,qryLTrate,'IntRate',False);
      qryLoanAcc.Next;
    end;
    Result := IntTot;
    if Result < 0 then
      Result := 0;
    qryLoanAcc.Close;
    qryLTrate.Close;
  end;
end;


end.
