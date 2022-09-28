unit dmLoanMan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32, DBClient;

type
  TdtmLoanMan = class(TDataModule)
    UpdLoanStats: TADOCommand;
    qryLoanView: TADOStoredProc;
    qryLoanViewSurname: TStringField;
    qryLoanViewLoanType: TStringField;
    qryLoanViewLoanPeriod: TSmallintField;
    qryLoanViewIntRate: TBCDField;
    qryLoanViewTotInterest: TBCDField;
    qryLoanViewAccBal: TBCDField;
    qryLoanViewLoanBal: TBCDField;
    qryLoanViewAvlBal: TBCDField;
    qryLoanViewDepositBal: TBCDField;
    qryLoanViewArrearsBucket: TBCDField;
    qryLoanViewArrearsAmt: TBCDField;
    spcLoanStatus: TADOStoredProc;
    qryLoanViewTotCashAvl: TCurrencyField;
    spcLoanStatusLoanID: TIntegerField;
    spcLoanStatusLoanKey: TIntegerField;
    spcLoanStatusName: TStringField;
    spcLoanStatusLoanType: TStringField;
    spcLoanStatusStartDate: TDateTimeField;
    spcLoanStatusDateChanged: TDateTimeField;
    qryChkSettle: TADODataSet;
    qryLoanViewAmtToFin: TBCDField;
    qryLoanViewPayIns: TBCDField;
    spcLoanStatusPayIns: TBCDField;
    adoEmptyArrears: TADOCommand;
    qryLoanViewArrearsNo: TSmallintField;
    spcLoanStatusAccBal: TBCDField;
    qryLoanViewLastDPay: TDateTimeField;
    dtsLoanView: TDataSource;
    qryLoanViewEntCode: TStringField;
    qryLoanViewStatus: TSmallintField;
    qryLoanViewNoOfPay: TSmallintField;
    qryLoanViewExtendPrd: TSmallintField;
    dtsLoanStatus: TDataSource;
    spcLoanStatusEntCode: TStringField;
    spcLoanStatusRegNo: TStringField;
    spcLoanStatusStatus: TSmallintField;
    spcLoanStatusSurname: TStringField;
    spcLoanStatusAmtToFin: TBCDField;
    spcLoanStatusEntityID: TIntegerField;
    qryLoanViewLoanID: TIntegerField;
    qryMETotals: TADODataSet;
    qryCurrent: TADODataSet;
    qryLMonth: TADODataSet;
    cdsLoanBook: TClientDataSet;
    cdsLoanBookFldName: TStringField;
    cdsLoanBookDescription: TStringField;
    dtsLoanbook: TDataSource;
    qryCMonth: TADODataSet;
    qryMETotalsMEID: TIntegerField;
    qryMETotalsLoanID: TIntegerField;
    qryMETotalsEntityID: TIntegerField;
    qryMETotalsLoanCapital: TBCDField;
    qryMETotalsAmtToFin: TBCDField;
    qryMETotalsMthIns: TBCDField;
    qryMETotalsPayIns: TBCDField;
    qryMETotalsTotInterest: TBCDField;
    qryMETotalsCashDep: TBCDField;
    qryMETotalsTotSecAmt: TBCDField;
    qryMETotalsAccBal: TBCDField;
    qryMETotalsLoanBal: TBCDField;
    qryMETotalsDepositBal: TBCDField;
    qryMETotalsArrearsAmt: TBCDField;
    qryMETotalsAmountDue: TBCDField;
    qryMETotalsTotCRRec: TBCDField;
    qryMETotalsTotAddDC: TBCDField;
    qryMETotalsTotIntEarn: TBCDField;
    qryMETotalsTotDepInt: TBCDField;
    qryMETotalsDays30: TBCDField;
    qryMETotalsDays60: TBCDField;
    qryMETotalsDays90: TBCDField;
    qryMETotalsDays120: TBCDField;
    qryMETotalsMore150: TBCDField;
    qryCurrentLoanID: TIntegerField;
    qryCurrentEntityID: TIntegerField;
    qryCurrentLoanCapital: TBCDField;
    qryCurrentAmtToFin: TBCDField;
    qryCurrentMthIns: TBCDField;
    qryCurrentPayIns: TBCDField;
    qryCurrentTotInterest: TBCDField;
    qryCurrentCashDep: TBCDField;
    qryCurrentTotSecAmt: TBCDField;
    qryCurrentAccBal: TBCDField;
    qryCurrentLoanBal: TBCDField;
    qryCurrentDepositBal: TBCDField;
    qryCurrentArrearsAmt: TBCDField;
    qryCurrentAmountDue: TBCDField;
    qryCurrentTotCRRec: TBCDField;
    qryCurrentTotAddDC: TBCDField;
    qryCurrentTotIntEarn: TBCDField;
    qryCurrentTotDepInt: TBCDField;
    qryCurrentDays30: TStringField;
    qryCurrentDays60: TStringField;
    qryCurrentDays90: TStringField;
    qryCurrentDays120: TStringField;
    qryCurrentMore150: TStringField;
    qryLoanViewStatusName: TStringField;
    cdsLoanBookCurrent: TStringField;
    cdsLoanBookMETotals: TStringField;
    cdsLoanBookCurrMonth: TStringField;
    cdsLoanBookPrevMonth: TStringField;
    qryActionInd: TADODataSet;
    cdsToUpd: TClientDataSet;
    cdsToUpdLoanID: TIntegerField;
    cdsToUpdRefNo: TStringField;
    cdsToUpdEntCode: TStringField;
    cdsToUpdStatus: TIntegerField;
    cdsToUpdExists: TBooleanField;
    dtsToUpd: TDataSource;
    qryLoanLU: TADODataSet;
    qryLoanLUIDVal: TStringField;
    qryLoanLUEntityID: TIntegerField;
    qryLoanLUEntCode: TStringField;
    qryLoanLULoanType: TStringField;
    qryLoanLURegNo: TStringField;
    qryLoanLURefNo: TStringField;
    qryLoanLUStatus: TSmallintField;
    qryLoanSts: TADODataSet;
    procedure qryLoanViewCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCurrentAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FCurLoanView: integer;
    procedure SetActiveQueries(Ready: Boolean);
  public
    { Public declarations }
    property CurLoanView : integer read FCurLoanView write FCurLoanView;
    function SetLoanStatus(inStatus,inLoan: integer): boolean;
    procedure BuildActionIndList(StrList: TStrings);
    procedure ClearArrInfo;
    procedure SetupClientDataSet;
    procedure DoCDSInsert(FldName, Desc : String);
    procedure DoBulkUpDate(UpdVal: Variant);
  end;

var
  dtmLoanMan: TdtmLoanMan;

implementation

uses dmMain, uLSConst, dmLoanC, uLScentral;

{$R *.DFM}

{ TdtmLoanMan }

procedure TdtmLoanMan.ClearArrInfo;
begin
  adoEmptyArrears.Parameters[0].Value := spcLoanStatus.FieldByName('LoanID').AsInteger;
  adoEmptyArrears.Execute;
end;

procedure TdtmLoanMan.DataModuleCreate(Sender: TObject);
begin
  qryLoanView.Parameters[1].Value   := 1;//dtmMain.CurBranchID;
  spcLoanStatus.Parameters[1].Value := 1;//dtmMain.CurBranchID;
end;

procedure TdtmLoanMan.DoCDSInsert(FldName, Desc : String);
begin
  cdsLoanBook.Insert;
  cdsLoanBook.FieldbyName('FldName').AsString     := FldName;
  cdsLoanBook.FieldbyName('Description').AsString := Desc;

  if (FldName = 'LoanID') OR (FldName = 'EntityID') then
  begin
    cdsLoanBook.FieldbyName('Current').AsString   := FloatToStr(qryCurrent.FieldbyName(FldName).AsFloat);
    cdsLoanBook.FieldbyName('METotals').AsString  := FloatToStr(qryMETotals.FieldbyName(FldName).AsFloat);
    cdsLoanBook.FieldbyName('CurrMonth').AsString := FloatToStr(qryCurrent.FieldbyName(FldName).AsFloat
      - qryMETotals.FieldbyName(FldName).AsFloat);
    cdsLoanBook.FieldbyName('PrevMonth').AsString := FloatToStr(qryCMonth.FieldByName(FldName).AsFloat
      - qryLMonth.FieldByName(FldName).AsFloat);
  end
  else
  begin
  cdsLoanBook.FieldbyName('Current').AsString     :=
    FloatToStrF(qryCurrent.FieldbyName(FldName).AsFloat, ffCurrency, 15, 2);
  cdsLoanBook.FieldbyName('METotals').AsString    :=
    FloatToStrF(qryMETotals.FieldbyName(FldName).AsFloat, ffCurrency, 15, 2);
  cdsLoanBook.FieldbyName('CurrMonth').AsString   :=
    FloatToStrF(qryCurrent.FieldbyName(FldName).AsFloat
    - qryMETotals.FieldbyName(FldName).AsFloat, ffCurrency, 15, 2);
  cdsLoanBook.FieldbyName('PrevMonth').AsString :=
    FloatToStrF(qryCMonth.FieldByName(FldName).AsFloat
    - qryLMonth.FieldByName(FldName).AsFloat, ffCurrency, 15, 2);
  end;

  cdsLoanBook.Post;
end;

procedure TdtmLoanMan.qryLoanViewCalcFields(DataSet: TDataSet);
begin
  qryLoanView.FieldByName('TotCashAvl').AsCurrency :=
    qryLoanView.FieldByName('AvlBal').AsCurrency+
    ABS(qryLoanView.FieldByName('DepositBal').AsCurrency);
  DataSet.FieldByName('StatusName').AsString :=
    GetLoanStatus(DataSet.FieldByName('Status').AsInteger);
end;

procedure TdtmLoanMan.SetActiveQueries(Ready: Boolean);
begin
  qryCurrent.Active  := Ready;
  qryMETotals.Active := Ready;
  qryCMonth.Active   := Ready;
  qryLMonth.Active   := Ready;
end;

function TdtmLoanMan.SetLoanStatus(inStatus,inLoan: integer): boolean;
begin
  UpdLoanStats.Parameters[0].Value := inStatus;
  UpdLoanStats.Parameters[1].Value := dtmMain.CurrentID;
  UpdLoanStats.Parameters[2].Value := inLoan;
  try
    UpdLoanStats.Execute;
    Result := True
  except
    Result := False;
  end;
end;

procedure TdtmLoanMan.SetupClientDataSet;
begin
  cdsLoanBook.Close;
  cdsLoanBook.CreateDataSet;
  cdsLoanbook.Open;
  SetActiveQueries(True);
  DoCDsInsert('LoanID', 'Total number of loans');
  DoCDsInsert('EntityID', 'Total number of debtors');
  DoCDsInsert('LoanCapital', 'Loan capital');
  DoCDsInsert('AmtToFin', 'Amount financed');
  DoCDsInsert('MthIns', 'Monthly instalments');
  DoCDsInsert('PayIns', 'Payable instalments');
  DoCDsInsert('TotInterest', 'Total deferred interest');
  DoCDsInsert('CashDep', 'Cash deposits');
  DoCDsInsert('TotSecAmt', 'Total securities');
  DoCDsInsert('AccBal', 'Account balance outstanding');
  DoCDsInsert('LoanBal', 'Capital balance outstanding');
  DoCDsInsert('DepositBal', 'Deposits held balance');
  DoCDsInsert('ArrearsAmt', 'Arrears amount');
  DoCDsInsert('AmountDue', 'Amount due at date');
  DoCDsInsert('TotCRRec', 'Total credit received');
  DoCDsInsert('TotAddDC', 'Total additional Dt/Ct');
  DoCDsInsert('TotIntEarn', 'Total interest earned');
  DoCDsInsert('TotDepInt', 'Total deposit interest');
  DoCDsInsert('Days30', 'Total arrears (30 days)');
  DoCDsInsert('Days60', 'Total arrears (60 days)');
  DoCDsInsert('Days90', 'Total arrears (90 days)');
  DoCDsInsert('Days120', 'Total arrears (120 days)');
  DoCDsInsert('More150', 'Total arrears (150 days + )');
  cdsLoanBook.first;
end;

procedure TdtmLoanMan.qryCurrentAfterOpen(DataSet: TDataSet);
begin
  dtmLoanC.AfterOpenCurrency(DataSet);
end;

procedure TdtmLoanMan.BuildActionIndList(StrList: TStrings);
begin
  StrList.Clear;
  qryActionInd.Open;
  qryActionInd.First;
  while not qryActionInd.Eof do
  begin
    StrList.Add(qryActionInd.Fields[0].AsString + '=' +
      qryActionInd.Fields[1].AsString);
    qryActionInd.Next;
  end;
  qryActionInd.Close;
end;

procedure TdtmLoanMan.DoBulkUpDate(UpdVal: Variant);
begin
  try
    Screen.Cursor := crHourGlass;
    qryLoanSts.Open;
    cdsToUpd.DisableControls;
    cdsToUpd.First;
    while not cdsToUpd.Eof do
    begin
      qryLoanSts.Edit;
      qryLoanSts.FieldByName('Status').Value := UpdVal;
      qryLoanSts.Post;
      cdsToUpd.Edit;
      cdsToUpd.FieldByName('Status').Value := UpdVal;
      cdsToUpd.Post;
      cdsToUpd.Next;
    end;
  finally
    cdsToUpd.EnableControls;
    qryLoanSts.Close;
    Screen.Cursor := crDefault;
  end;
end;

end.
