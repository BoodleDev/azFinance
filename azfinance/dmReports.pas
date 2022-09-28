unit dmReports;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Provider, DBClient, ADODB, ExportData;

type
  TdtmReports = class(TDataModule)
    cdsLSum: TClientDataSet;
    dspLoanSum: TDataSetProvider;
    dtsLSum: TDataSource;
    cdsDSum: TClientDataSet;
    dspDepSum: TDataSetProvider;
    dtsDSum: TDataSource;
    cdsTSum: TClientDataSet;
    dtsTSum: TDataSource;
    dspTSum: TDataSetProvider;
    spcLoanSum: TADOStoredProc;
    qryLUname: TADODataSet;
    spcArrControl: TADOStoredProc;
    spcDepositSum: TADOStoredProc;
    cdsLSumInstKey: TStringField;
    cdsLSumBranchKey: TStringField;
    cdsLSumFunderKey: TStringField;
    cdsLSumLoanType: TStringField;
    cdsLSumLoanCapital: TBCDField;
    cdsLSumMthIns: TBCDField;
    cdsLSumTotInterest: TBCDField;
    cdsLSumAvlBal: TBCDField;
    cdsLSumArrearsAmt: TBCDField;
    cdsLSumArrearsNo: TSmallintField;
    cdsLSumLoanBal: TBCDField;
    cdsLSumAccBal: TBCDField;
    cdsLSumStartDate: TDateTimeField;
    cdsLSumLastDPay: TDateTimeField;
    cdsLSumLastAmtPay: TBCDField;
    cdsLSumLOkey: TStringField;
    cdsLSumLoanPeriod: TSmallintField;
    cdsLSumBranchID: TIntegerField;
    cdsLSumFunderID: TIntegerField;
    cdsLSumLOID: TIntegerField;
    cdsLSumAmtToFin: TBCDField;
    cdsLSumPayIns: TBCDField;
    cdsLSumFee1: TBCDField;
    cdsLSumFee2: TBCDField;
    cdsLSumFee3: TBCDField;
    cdsLSumFee4: TBCDField;
    cdsLSumFee5: TBCDField;
    cdsLSumFee6: TBCDField;
    cdsLSumFeeToInsTot: TBCDField;
    cdsLSumAmountDue: TBCDField;
    cdsLSumFirstInsDate: TDateTimeField;
    cdsDSumLoanKey: TIntegerField;
    cdsDSumLoanType: TStringField;
    cdsDSumBranchKey: TStringField;
    cdsDSumInstKey: TStringField;
    cdsDSumCashDep: TBCDField;
    cdsDSumStartDate: TDateTimeField;
    cdsDSumDepositBal: TBCDField;
    cdsDSumFunderKey: TStringField;
    cdsDSumTotDepInt: TBCDField;
    cdsDSumAvlBal: TBCDField;
    cdsDSumLoanBal: TBCDField;
    cdsDSumAccBal: TBCDField;
    qryArrRep: TADODataSet;
    qryLinkLU: TADOQuery;
    cdsDSumBranchID: TIntegerField;
    cdsDSumFunderID: TIntegerField;
    cdsDSumAmtToFin: TBCDField;
    cdsDSumPayIns: TBCDField;
    ExportData1: TExportData;
    qryArrRepLoanId: TIntegerField;
    qryArrRepLoanType: TStringField;
    qryArrRepAmtToFin: TBCDField;
    qryArrRepTotInterest: TBCDField;
    qryArrRepLoanBal: TBCDField;
    qryArrRepAccBal: TBCDField;
    qryArrRepPayIns: TBCDField;
    qryArrRepLastDPay: TDateTimeField;
    qryArrRepArrearsAmt: TBCDField;
    qryArrRepArrearsNo: TSmallintField;
    qryArrRepPersonID: TIntegerField;
    qryArrRepSurname: TStringField;
    qryArrRepName: TStringField;
    qryArrRepPersonkey: TStringField;
    qryArrRepArrTotal: TBCDField;
    qryArrRepday30: TBCDField;
    qryArrRepday60: TBCDField;
    qryArrRepday90: TBCDField;
    qryArrRepday120: TBCDField;
    qryArrRepmore150: TBCDField;
    qryArrRepLastAmtPay: TBCDField;
    qryArrRepActiveInd: TStringField;
    cdsIntToDate: TClientDataSet;
    dspIntToDate: TDataSetProvider;
    dtsIntToDate: TDataSource;
    qryIntToDate: TADODataSet;
    qryIntMaxDate: TADODataSet;
    cdsIntToDateDateRun: TDateTimeField;
    cdsIntToDateAmount: TBCDField;
    cdsIntToDateIntForDay: TBCDField;
    qryPsnInd: TADOQuery;
    qryTransSum: TADODataSet;
    cdsTSumTsYM: TIntegerField;
    cdsTSumTsYear: TSmallintField;
    cdsTSumTsMonth: TStringField;
    cdsTSumTransType: TIntegerField;
    cdsTSumTransCode: TIntegerField;
    cdsTSumAmount: TBCDField;
    cdsLSumRegNo: TStringField;
    cdsLSumRefFld1: TStringField;
    cdsLSumStatus: TSmallintField;
    cdsLSumNoOfPay: TSmallintField;
    cdsLSumTotCRRec: TBCDField;
    cdsLSumTotAddDC: TBCDField;
    cdsLSumTotIntEarn: TBCDField;
    cdsLSumEmpID: TIntegerField;
    cdsDSumEntCode: TStringField;
    cdsDSumEmpID: TIntegerField;
    cdsDSumStatus: TSmallintField;
    cdsLSumSurname: TStringField;
    cdsDSumSurname: TStringField;
    qryLFeeD: TADODataSet;
    cdsTSumTransDescription: TStringField;
    cdsTSumDescription: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1EntityID: TIntegerField;
    ADOQuery1EntCode: TStringField;
    ADOQuery1Name: TStringField;
    cdsLSumEntCode: TStringField;
    cdsData: TClientDataSet;
    dspData: TDataSetProvider;
    dtsData: TDataSource;
    cdsLSumLoanID: TIntegerField;
    cdsLSumRefNo: TStringField;
    cdsDSumLoanID: TIntegerField;
    cdsDSumRefNo: TStringField;
    cdsLSumLink2: TIntegerField;
    cdsLSumLink1: TIntegerField;
    cdsLSumLink3: TIntegerField;
    cdsLSumLoanTypeInd: TIntegerField;
    cdsLSumLoanInd: TIntegerField;
    cdsLSumActionInd: TIntegerField;
    qryRepAtRisk: TADODataSet;
    qryRepAtRiskCOLUMN1: TStringField;
    qryRepAtRiskLoanCount: TIntegerField;
    qryRepAtRiskCapital: TBCDField;
    qryRepAtRiskLoanBal: TBCDField;
    qryRepAtRiskAccBal: TBCDField;
    qryRepAtRiskCap: TBCDField;
    qryMonthEndDates: TADODataSet;
    dtsMonthEndDates: TDataSource;
    qryProvisionExRatio: TADODataSet;
    cdsProvExpRatio: TClientDataSet;
    dspProvExpRatio: TDataSetProvider;
    dtsProvisionExRatio: TDataSource;
    dts: TDataSource;
    qryMonthEndDate: TADODataSet;
    qryMonthEndDateMonthNo: TSmallintField;
    qryMonthEndDateMonthEndDate: TDateTimeField;
    qryProvisionExRatioSUM: TBCDField;
    qryCOUNT: TADODataSet;
    qryProvisionExRatioMONTHNO: TSmallintField;
    qryProvisionExRatioMONTHENDDATE: TDateTimeField;
    qryProvisionExRatioCOUNT: TIntegerField;
    qryProvisionExRatioRATIO: TFloatField;
    qryProvisionExRatioPROVEXP: TCurrencyField;
    qryCOUNTCOUNT: TIntegerField;
    cdsProvExpRatioSUM: TBCDField;
    cdsProvExpRatioMONTHNO: TSmallintField;
    cdsProvExpRatioMONTHENDDATE: TDateTimeField;
    cdsProvExpRatioCOUNT: TIntegerField;
    cdsProvExpRatioRATIO: TFloatField;
    cdsProvExpRatioPROVEXP: TCurrencyField;
    qryAvGrossPortfolio: TADODataSet;
    dtsAvGrossPortfolio: TDataSource;
    qryWriteOffRatio: TADODataSet;
    dtsWriteOffRatio: TDataSource;
    qryWriteOffCount: TADODataSet;
    qryWriteOffCountNUMBER: TIntegerField;
    qryWriteOffRatioWRITEOFFAMOUNT: TBCDField;
    qryAvGrossPortfolioSUM: TBCDField;
    qryAvGrossPortfolioMONTHNO: TSmallintField;
    qryAvGrossPortfolioMONTHENDDATE: TDateTimeField;
    dtsWriteOffCount: TDataSource;
    qryAvGrossPortfolioCOUNT: TIntegerField;
    qryAvGrossPortfolioWRITEOFFAMOUNT: TFloatField;
    qryAvGrossPortfolioRATIO: TFloatField;
    qryMonthEndDatesMonthEndDate: TDateTimeField;
    qryMonthEndDatesMonthNo: TSmallintField;
    qryInstPay: TADODataSet;
    dtsInstPay: TDataSource;
    procedure spcLoanSumBeforeOpen(DataSet: TDataSet);
    procedure cdsLSumAfterOpen(DataSet: TDataSet);
    procedure cdsDSumAfterOpen(DataSet: TDataSet);
    procedure spcDepositSumBeforeOpen(DataSet: TDataSet);
    procedure spcArrControlBeforeOpen(DataSet: TDataSet);
    procedure cdsLSumBeforeOpen(DataSet: TDataSet);
    procedure cdsDSumBeforeOpen(DataSet: TDataSet);
    procedure cdsDSumAfterClose(DataSet: TDataSet);
    procedure cdsIntToDateAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryProvisionExRatioCalcFields(DataSet: TDataSet);
    procedure qryAvGrossPortfolioCalcFields(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FCurFilter: string;
    FReportTag: Integer;
    FReportGrp: Integer;
    FPrintDetail: Boolean;
    procedure SetLookUpDataSetStatus(inStatus: boolean);
  public
    { Public declarations }
    property PrintDetail : Boolean read FPrintDetail write FPrintDetail;
    property ReportTag : Integer read FReportTag write FReportTag;
    property ReportGrp : Integer read FReportGrp write FReportGrp;
    property CurFilter : string read FCurFilter write FCurFilter;
    function GetLUName(inKey: string):string;
    function FindID(LUValue:String):String; // FindForFilter
    Procedure GetDateParams;
    procedure GetWriteOffParams;
  end;

var
  dtmReports: TdtmReports;

implementation

uses dmMain, fmProvExpRatio, fmReportDates;

{$R *.DFM}

{ TdtmReports }

procedure TdtmReports.SetLookUpDataSetStatus(inStatus: boolean);
begin
//  qryInstLookUp.Active := inStatus;
//  qryBranchLU.Active := inStatus;
//  qryLinkLU.Active := inStatus;
end;

function TdtmReports.GetLUName(inKey: string):string;
begin
  qryLUname.Close;
  qryLUname.Parameters[0].Value := inKey;
  qryLUname.Open;
  Result := qryLUname.Fields[1].AsString+' - '+qryLUname.Fields[2].AsString;
  qryLUname.Close;
end;

procedure TdtmReports.spcLoanSumBeforeOpen(DataSet: TDataSet);
begin
//  spcLoanSumRep.Parameters[1].Value := dtmMain.CurBranchID;
  spcLoanSum.Parameters[1].Value := 1;
end;

procedure TdtmReports.cdsLSumAfterOpen(DataSet: TDataSet);
begin
  spcLoanSum.Close;
end;

procedure TdtmReports.cdsDSumAfterOpen(DataSet: TDataSet);
begin
  spcDepositSum.Close;
end;

procedure TdtmReports.spcDepositSumBeforeOpen(DataSet: TDataSet);
begin
//  spcDepositSumRep.Parameters[1].Value := dtmMain.CurBranchID;
  spcDepositSum.Parameters[1].Value := 1;
end;

procedure TdtmReports.spcArrControlBeforeOpen(DataSet: TDataSet);
begin
//  spcArrControl.Parameters[1].Value := dtmMain.CurBranchID;
  spcArrControl.Parameters[1].Value := 1;
end;

procedure TdtmReports.cdsLSumBeforeOpen(DataSet: TDataSet);
begin
  SetLookUpDataSetStatus(True);
end;

procedure TdtmReports.cdsDSumBeforeOpen(DataSet: TDataSet);
begin
  SetLookUpDataSetStatus(True);
end;

procedure TdtmReports.cdsDSumAfterClose(DataSet: TDataSet);
begin
  SetLookUpDataSetStatus(False);
end;

function TdtmReports.FindID(LUValue: String): String;
begin
  if qryLinkLU.Locate('EntCode',LUValue,[]) then
    Result := qryLinkLU.Fields[0].AsString
  else
    Result := '0';
end;

procedure TdtmReports.cdsIntToDateAfterOpen(DataSet: TDataSet);
var
  TempVal : Currency;
begin
  qryIntMaxDate.parameters[0].Value := qryIntToDate.Parameters[0].Value;
  qryIntMaxDate.Open;
  cdsIntToDate.First;
  while not cdsIntToDate.eof do
  begin
    If cdsIntToDate.RecNo >  1 then
    begin
      cdsIntToDate.Prior;
      TempVal := cdsIntToDate.FieldByName('Amount').AsCurrency;
      cdsIntToDate.Next;
      cdsIntToDate.Edit;
      cdsIntToDate.FieldByName('IntForDay').AsCurrency :=  cdsIntToDate.FieldByName('Amount').AsCurrency - TempVal;
      cdsIntToDate.Post;
    end
    else
    begin
      cdsIntToDate.Edit;
      cdsIntToDate.FieldByName('IntForDay').AsCurrency :=  cdsIntToDate.FieldByName('Amount').AsCurrency -
        qryIntMaxDate.Fields[0].AsCurrency;
      cdsIntToDate.Post;
    end;
    cdsIntToDate.Next;
  end;
  qryIntMaxDate.Close;
end;

procedure TdtmReports.DataModuleCreate(Sender: TObject);
begin
//  cdsProvExpRatio.CreateDataSet;
end;

procedure TdtmReports.DataModuleDestroy(Sender: TObject);
begin
  cdsProvExpRatio.Close;
end;

procedure TdtmReports.GetDateParams;
begin
  try
    qryProvisionExRatio.Close;
    qryProvisionExRatio.Parameters[0].Value := StartDate;
    qryProvisionExRatio.Parameters[1].Value := EndDate;
    qryProvisionExRatio.open;
  except
  end;
end;

procedure TdtmReports.qryProvisionExRatioCalcFields(DataSet: TDataSet);
begin
   qryCount.Close;
   qryCount.Parameters[0].Value := dtmReports.qryProvisionExRatio.FieldByName('MONTHNO').AsInteger;
   qryCount.Open;
   qryProvisionExRatio.FieldByName('RATIO').AsFloat := LoanProvAmount/dtmReports.qryProvisionExRatio.FieldByName('Sum').AsFloat*100/dtmReports.qryCount.FieldByName('COUNT').AsInteger;
   qryProvisionExRatio.FieldByName('PROVEXP').AsCurrency := LoanProvAmount;
end;

procedure TdtmReports.GetWriteOffParams;
begin
  dtmReports.qryWriteOffRatio.close;
  dtmReports.qryWriteOffCount.Close;
  dtmReports.qryAvGrossPortfolio.Close;
  dtmReports.qryWriteOffRatio.Parameters[0].Value := MonthEndStart;
  dtmReports.qryWriteOffRatio.Parameters[1].Value := MonthEndEnd;
  dtmReports.qryWriteOffCount.Parameters[0].Value := MonthEndStart;
//  dtmReports.qryWriteOffCount.Parameters[1].Value := MonthEndEnd;
  dtmReports.qryAvGrossPortfolio.Parameters[0].Value := MonthEndStart;
  dtmReports.qryAvGrossPortfolio.Parameters[1].Value := MonthEndEnd;
  dtmReports.qryWriteOffRatio.Open;
  dtmReports.qryWriteOffCount.Open;
  dtmReports.qryAvGrossPortfolio.Open;
end;

procedure TdtmReports.qryAvGrossPortfolioCalcFields(DataSet: TDataSet);
Var
  Count : Integer;
  WriteOffAmount : Double;
begin
  Try
    Count := qryWriteOffCount.FieldByName('NUMBER').AsInteger;
    WriteOffAmount := qryWriteOffRatio.FieldByName('WRITEOFFAMOUNT').AsFloat;

    qryAvGrossPortfolio.FieldByName('COUNT').AsInteger := Count;
    qryAvGrossPortfolio.FieldByName('WRITEOFFAMOUNT').AsFloat := WriteOffAmount;

    //Calculating the Ratio by dividing the write-off amount for a period by the av gross portfolio period
    qryAvGrossPortfolio.FieldByName('RATIO').AsFloat :=
        qryWriteOffRatio.FieldByName('WRITEOFFAMOUNT').AsFloat/qryAvGrossPortfolio.FieldByName('SUM').AsFloat*100;
  Except
  End;
end;

procedure TdtmReports.cdsDataAfterOpen(DataSet: TDataSet);
begin
  TBCDField(cdsData.FieldByName('AccBal')).Currency := True;
  TBCDField(cdsData.FieldByName('PayIns')).Currency := True;
  TBCDField(cdsData.FieldByName('LastAmtPay')).Currency := True;
  TBCDField(cdsData.FieldByName('ArrearsAmt')).Currency := True;
end;

end.
