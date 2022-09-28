unit dmGraphs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32;

type
  TdtmGraphs = class(TDataModule)
    qryYMDetail: TADODataSet;
    decDataLoanType: TADOStoredProc;
    qryYMDetailYearInd: TSmallintField;
    qryYMDetailMonthInd: TStringField;
    qryYMDetailLCPayment: TBCDField;
    qryYMDetailLCInterest: TBCDField;
    qryYMDetailLDPayment: TBCDField;
    qryYMDetailLDInterest: TBCDField;
    qryYMDetailSeqNo: TIntegerField;
    qryYMDetailPayDif: TCurrencyField;
    qryYMDetailIntDif: TCurrencyField;
    spcSumLoanType: TADOStoredProc;
    spcArrearsStats: TADOStoredProc;
    spcLoanStatus: TADOStoredProc;
    spcSumLoanUse: TADOStoredProc;
    spcLoanPeriod: TADOStoredProc;
    spcArrearsStatsArrearsNo: TSmallintField;
    spcArrearsStatscntLoan: TIntegerField;
    spcArrearsStatssumLC: TBCDField;
    spcArrearsStatsArrearDays: TStringField;
    spcLoanStatuscntLoan: TIntegerField;
    spcLoanStatussumLC: TBCDField;
    spcLoanStatusLoanStatus: TStringField;
    decDellRate: TADOStoredProc;
    decDellRateLoanType: TStringField;
    decDellRateLoanBal: TBCDField;
    decDellRatePayIns: TBCDField;
    decDellRateCntLoan: TIntegerField;
    decDellRateDilRate: TBCDField;
    decDataLoanTypeLoanType: TStringField;
    decDataLoanTypeDescription: TStringField;
    decDataLoanTypeLoanPeriod: TSmallintField;
    decDataLoanTypeNoOfLoan: TIntegerField;
    decDataLoanTypeSumLoanCap: TBCDField;
    decDataLoanTypeSumArrAmt: TBCDField;
    decDataLoanTypeSumMthIns: TBCDField;
    decDellRateArrearsNo: TStringField;
    decDellRateArrNo: TIntegerField;
    qryYMDetailLCBal: TBCDField;
    qryYMDetailLCcnt: TSmallintField;
    qryYMDetailLDcnt: TSmallintField;
    spcLoanStatusStatus: TSmallintField;
    dtsYMDetail: TDataSource;
    qryYMDetailYMKey: TIntegerField;
    qryArrFreq: TADOStoredProc;
    qryArrFreqLoanType: TStringField;
    qryArrFreqArrNo: TStringField;
    qryArrFreqPayNo: TStringField;
    qryArrFreqSumArr: TBCDField;
    qryArrFreqSumLA: TBCDField;
    qryArrFreqcntLN: TIntegerField;
    procedure qryYMDetailCalcFields(DataSet: TDataSet);
    procedure spcSumLoanTypeBeforeOpen(DataSet: TDataSet);
    procedure spcLoanStatusCalcFields(DataSet: TDataSet);
    procedure spcArrearsStatsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetGraphDataReadyStatus(Status : boolean);
    procedure GetData(MeDT : TDateTime);
  end;

var
  dtmGraphs: TdtmGraphs;

implementation

uses dmMain, uLSConst, uLScentral;

{$R *.DFM}

procedure TdtmGraphs.qryYMDetailCalcFields(DataSet: TDataSet);
begin
  qryYMDetail.FieldByName('PayDif').AsCurrency :=
    qryYMDetail.FieldByName('LDPayment').AsCurrency -
    qryYMDetail.FieldByName('LCPayment').AsCurrency;
  qryYMDetail.FieldByName('IntDif').AsCurrency :=
    qryYMDetail.FieldByName('LDInterest').AsCurrency -
    qryYMDetail.FieldByName('LCInterest').AsCurrency;
end;

procedure TdtmGraphs.spcArrearsStatsCalcFields(DataSet: TDataSet);
begin
  spcArrearsStats.FieldByName('ArrearDays').AsString :=
    IntToStr(spcArrearsStats.FieldByName('ArrearsNo').AsInteger*30)+' days';
end;

procedure TdtmGraphs.spcLoanStatusCalcFields(DataSet: TDataSet);
begin
  GetLoanStatus(spcLoanStatus.FieldByName('Status').AsInteger);
end;

procedure TdtmGraphs.SetGraphDataReadyStatus(Status: boolean);
begin
  Screen.Cursor := crHourGlass;
  try
    spcSumLoanType.Active := Status;
    spcSumLoanUse.Active := Status;
    spcArrearsStats.Active := Status;
    spcLoanPeriod.Active := Status;
    spcLoanStatus.Active := Status;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmGraphs.spcSumLoanTypeBeforeOpen(DataSet: TDataSet);
begin
//  (DataSet as TADOStoredProc).Parameters[1].Value := dtmMain.CurBranchID;
  (DataSet as TADOStoredProc).Parameters[1].Value := 0;
end;

procedure TdtmGraphs.GetData(MeDT: TDateTime);
begin
  RunQry(dtmMain.qryToUse,'select MonthNo from lsMonthEnd where MonthEndDate='''+
    FormatDateTime('mm/dd/yyyy',MeDT)+'''','O');
  qryArrFreq.Close;
  qryArrFreq.Parameters[1].Value := dtmMain.qryToUse.Fields[0].AsInteger;
//  qryArrFreq.Open; - frm will open qry
end;

end.
