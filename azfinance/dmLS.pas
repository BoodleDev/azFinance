unit dmLS;

interface

uses
  Windows, Messages, SysUtils, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, Db, ADODB, Provider, DBClient;

type
  TdtmLS = class(TDataModule)
    qryEntLoan: TADODataSet;
    dtsEntLoan: TDataSource;
    cdsAcc: TClientDataSet;
    cdsAccLoanID: TIntegerField;
    cdsAccTransCode: TIntegerField;
    cdsAccBatchNo: TStringField;
    cdsAccUserID: TStringField;
    cdsAccRefNo: TStringField;
    cdsAccTransDesc: TStringField;
    dtsAcc: TDataSource;
    dspAcc: TDataSetProvider;
    qryTransType: TADODataSet;
    qryCA: TADODataSet;
    cdsAccDebit: TBCDField;
    cdsAccCredit: TBCDField;
    cdsAccBal: TBCDField;
    cdsAccEffectDate: TDateTimeField;
    qryEntLoanLoanID: TIntegerField;
    qryEntLoanEntityID: TIntegerField;
    qryEntLoanEntCode: TStringField;
    qryEntLoanLoanType: TStringField;
    qryEntLoanLoanPeriod: TSmallintField;
    qryEntLoanAmtToFin: TBCDField;
    qryEntLoanPayIns: TBCDField;
    qryEntLoanIntRate: TBCDField;
    qryEntLoanTotInterest: TBCDField;
    qryEntLoanTotSecAmt: TBCDField;
    qryEntLoanStartDate: TDateTimeField;
    qryEntLoanFirstInsDate: TDateTimeField;
    qryEntLoanEndDate: TDateTimeField;
    qryEntLoanAccBal: TBCDField;
    qryEntLoanLoanBal: TBCDField;
    qryEntLoanAvlBal: TBCDField;
    qryEntLoanStatus: TSmallintField;
    qryEntLoanUserID: TStringField;
    qryEntLoanArrearsAmt: TBCDField;
    qryEntLoanNoOfPay: TSmallintField;
    qryEntLoanLastDPay: TDateTimeField;
    qryEntLoanLastAmtPay: TBCDField;
    qryEntLoanExtendPrd: TSmallintField;
    cdsAccTransType: TSmallintField;
    qryLA: TADODataSet;
    qryDep: TADODataSet;
    qryBulkState: TADODataSet;
    qryLT: TADODataSet;
    qryPersonInd: TADODataSet;
    qryBulkAcc: TADODataSet;
    qryBulkAccLoanID: TIntegerField;
    qryBulkAccTransType: TSmallintField;
    qryBulkAccTransCode: TIntegerField;
    qryBulkAccEffectDate: TDateTimeField;
    qryBulkAccBatchNo: TStringField;
    qryBulkAccUserID: TStringField;
    qryBulkAccRefNo: TStringField;
    qryBulkAccTransDesc: TStringField;
    qrySumBal: TADODataSet;
    qryBulkAccAmtPost: TBCDField;
    spLoanCons: TADOStoredProc;
    dtsLoanCons: TDataSource;
    spLoanConsStatus: TSmallintField;
    spLoanConsLoanPrd: TIntegerField;
    spLoanConsLoanCapital: TBCDField;
    spLoanConsAmtToFin: TBCDField;
    spLoanConsResidualAmt: TBCDField;
    spLoanConsMthIns: TBCDField;
    spLoanConsPayIns: TBCDField;
    spLoanConsTotInterest: TBCDField;
    spLoanConsCashDep: TBCDField;
    spLoanConsTotSecAmt: TBCDField;
    spLoanConsAccBal: TBCDField;
    spLoanConsLoanBal: TBCDField;
    spLoanConsAvLBal: TBCDField;
    spLoanConsDepositBal: TBCDField;
    spLoanConsArrearsAmt: TBCDField;
    spLoanConsAmountDue: TBCDField;
    spLoanConsLastAmtPay: TBCDField;
    spLoanConsExtendPrd: TIntegerField;
    spLoanConsFeeToInsTot: TBCDField;
    cdsBulkState: TClientDataSet;
    dspData: TDataSetProvider;
    dtsBulkState: TDataSource;
    qryEntLoanArrearsBucket: TBCDField;
    qryEntLoanRefNo: TStringField;
    qryOpenBal: TADOQuery;
    qryEntLoanLoanCapital: TBCDField;
    qryEntLoanLOID: TIntegerField;
    qryEntLoanFunderID: TIntegerField;
    qryNetPay: TADODataSet;
    qryGetNotes: TADODataSet;
    qryClientLU: TADODataSet;
    qryClientLUIdVal: TIntegerField;
    qryClientLUname: TStringField;
    qryClientLUname2: TStringField;
    dtsClientLU: TDataSource;
    qryCalcCons: TADODataSet;
    qryCalcConsname: TStringField;
    qryCalcConsname2: TStringField;
    qryCalcConsloanID: TAutoIncField;
    qryCalcConsStatus: TSmallintField;
    qryCalcConsPayIns: TBCDField;
    qryCalcConsEndDate: TDateTimeField;
    qryCalcConsAccBal: TBCDField;
    qryCalcConsEntityID: TIntegerField;
    qryCalcConsDateDif: TIntegerField;
    qryCalcConsFirstInsDate: TDateTimeField;
    dtsCalcCons: TDataSource;
    qryClntPaid: TADODataSet;
    qryClntPaidAmtPost: TBCDField;
    dtsClntPaid: TDataSource;
    qryCalcMonths: TADODataSet;
    qryCalcMonthsTotalMonths: TIntegerField;
    dtsCalcMonths: TDataSource;
    qryContracts: TClientDataSet;
    qryContractsLoan1: TStringField;
    qryContractsLoan2: TStringField;
    qryContractsInsAmt: TCurrencyField;
    dtsContracts: TDataSource;
    qryLeastInsMonth: TADODataSet;
    qryLeastInsMonthSmallestDate: TDateTimeField;
    qryStatusLoans: TADODataSet;
    qryEntLoanLoanNo: TIntegerField;
    qryEntLoanRecord: TStringField;
    qryEntLoanStrLoanPeriod: TStringField;
    qryEntLoanArrearsSettle: TBCDField;
    qryEntLoanCycleEndDay: TWordField;
    dsAgeRealTime: TADODataSet;
    dtsAgeRealTime: TDataSource;
    cdsAccValueDate: TDateTimeField;
    qryEntLoanNextDeduction: TDateTimeField;
    qryEntLoanPaymentsReceived: TBCDField;
    qryEntLoanInterestAccrued: TBCDField;
    qryEntLoanContractFees: TBCDField;
    qryEntLoanAddFeesLevied: TBCDField;
    qryEntLoanLegalFeesLevied: TBCDField;
    qryEntLoanclPayments: TStringField;
    qryEntLoanDelinquency: TIntegerField;
    dsLoanSummary: TADODataSet;
    dtsLoanSummary: TDataSource;
    dsLoanSummaryLoanStatus: TStringField;
    dsLoanSummaryStatusColor: TStringField;
    dsLoanSummaryLoanRef: TStringField;
    dsLoanSummaryLoanCapital: TBCDField;
    dsLoanSummaryAmtToFin: TBCDField;
    dsLoanSummaryTotInterest: TBCDField;
    dsLoanSummaryTotalFees: TBCDField;
    dsLoanSummaryTotalLoan: TBCDField;
    dsLoanSummaryInstalment: TBCDField;
    dsLoanSummaryLoanPeriodM: TSmallintField;
    dsLoanSummaryLoanType: TStringField;
    dsLoanSummaryOrderNo: TIntegerField;
    dsLoanSummaryStartDate: TDateTimeField;
    dsLoanSummaryCycleEndDay: TStringField;
    dsLoanSummaryIntRate: TStringField;
    dsAccountSummary: TADODataSet;
    dtsAccountSummary: TDataSource;
    dsAccountSummaryLoanStatus: TStringField;
    dsAccountSummaryStatusColor: TStringField;
    dsAccountSummaryLoanRef: TStringField;
    dsAccountSummaryInterest: TBCDField;
    dsAccountSummaryContractFees: TBCDField;
    dsAccountSummaryLegalFees: TBCDField;
    dsAccountSummaryPayments: TBCDField;
    dsAccountSummaryArrearsAmt: TBCDField;
    dsAccountSummaryPaymentDue: TBCDField;
    dsAccountSummaryLoanBal: TBCDField;
    dsAccountSummaryDelinquency: TIntegerField;
    dsAccountSummaryNextDueDate: TDateTimeField;
    dsAccountSummaryOrderNo: TIntegerField;
    dsAccountSummaryStartDate: TDateTimeField;
    dsLoanSummaryLoanID: TAutoIncField;
    dsAccountSummaryLoanID: TAutoIncField;
    dsFeeSummary: TADODataSet;
    dtsFeeSummary: TDataSource;
    cdsAccRefNo2: TStringField;
    dsCurrentRate: TADODataSet;
    dtsCurrentRate: TDataSource;
    dsAgeRealTimeYMKey: TStringField;
    dsAgeRealTimeEffectiveDate: TDateTimeField;
    dsAgeRealTimeMonthEndDate: TDateTimeField;
    dsAgeRealTimeInstalmentDue: TBCDField;
    dsAgeRealTimeAmountPaid: TBCDField;
    dsAgeRealTimeArrearsInterest: TBCDField;
    dsAgeRealTimeTotalDue: TBCDField;
    dsAgeRealTimeDays0: TBCDField;
    dsAgeRealTimeDays1: TBCDField;
    dsAgeRealTimeDays2: TBCDField;
    dsAgeRealTimeDays3: TBCDField;
    dsAgeRealTimeDays4: TBCDField;
    dsAgeRealTimeDays5: TBCDField;
    dsAgeRealTimeDays6: TBCDField;
    dsAgeRealTimeDays7: TBCDField;
    dsAgeRealTimeDays8: TBCDField;
    dsAgeRealTimeDays9: TBCDField;
    dsAgeRealTimeDays10: TBCDField;
    dsAgeRealTimeDays11: TBCDField;
    dsAgeRealTimeDays12: TBCDField;
    dsAgeRealTimeDays210: TBCDField;
    dsAgeRealTimeArrearsFeesActual: TBCDField;
    dsAgeRealTimeArrearsFees: TBCDField;
    dsAgeRealTimeArrearsInterestActual: TBCDField;
    dsAgeRealTimeInterestBucket: TBCDField;
    dsAgeRealTimeFeeBucket: TBCDField;
    dsAgeRealTimeAdditionalFees: TBCDField;
    dsAgeRealTimeMonthStartDate: TDateTimeField;
    dsAgeRealTimeCD: TIntegerField;
    dsAgeRealTimeCyclePeriod: TStringField;
    ADODataSet1: TADODataSet;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    BCDField12: TBCDField;
    BCDField13: TBCDField;
    BCDField14: TBCDField;
    BCDField15: TBCDField;
    BCDField16: TBCDField;
    BCDField17: TBCDField;
    BCDField18: TBCDField;
    BCDField19: TBCDField;
    BCDField20: TBCDField;
    BCDField21: TBCDField;
    BCDField22: TBCDField;
    BCDField23: TBCDField;
    BCDField24: TBCDField;
    DateTimeField3: TDateTimeField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    dsAgeMonthEnd: TADODataSet;
    dtsAgeMonthEnd: TDataSource;
    dsAgeMonthEndCycleKey: TIntegerField;
    dsAgeMonthEndEffectiveDate: TDateTimeField;
    dsAgeMonthEndPeriodStartDate: TDateTimeField;
    dsAgeMonthEndPeriodEndDate: TDateTimeField;
    dsAgeMonthEndInstalmentDue: TBCDField;
    dsAgeMonthEndAmountPaid: TBCDField;
    dsAgeMonthEndAdditionalFees: TBCDField;
    dsAgeMonthEndArrearsFeesActual: TBCDField;
    dsAgeMonthEndArrearsFees: TBCDField;
    dsAgeMonthEndArrearsInterestActual: TBCDField;
    dsAgeMonthEndArrearsInterest: TBCDField;
    dsAgeMonthEndTotalDue: TBCDField;
    dsAgeMonthEndInterestBucket: TBCDField;
    dsAgeMonthEndFeeBucket: TBCDField;
    dsAgeMonthEndCycle0: TBCDField;
    dsAgeMonthEndCycle1: TBCDField;
    dsAgeMonthEndCycle2: TBCDField;
    dsAgeMonthEndCycle3: TBCDField;
    dsAgeMonthEndCycle4: TBCDField;
    dsAgeMonthEndCycle5: TBCDField;
    dsAgeMonthEndCycle6: TBCDField;
    dsAgeMonthEndCycle7: TBCDField;
    dsAgeMonthEndCycle8: TBCDField;
    dsAgeMonthEndCycle9: TBCDField;
    dsAgeMonthEndCycle10: TBCDField;
    dsAgeMonthEndCycle11: TBCDField;
    dsAgeMonthEndCycle12: TBCDField;
    dsAgeMonthEndDelinquency: TWordField;
    dsAgeMonthEndCyclePeriod: TStringField;
    dsAgeRealTimeInitialAmount0: TBCDField;
    dsAgeRealTimeInitialAmount1: TBCDField;
    dsAgeRealTimeInitialAmount2: TBCDField;
    dsAgeRealTimeInitialAmount3: TBCDField;
    dsAgeRealTimeInitialAmount4: TBCDField;
    dsAgeRealTimeInitialAmount5: TBCDField;
    dsAgeRealTimeInitialAmount6: TBCDField;
    dsAgeRealTimeInitialAmount7: TBCDField;
    dsAgeRealTimeInitialAmount8: TBCDField;
    dsAgeRealTimeInitialAmount9: TBCDField;
    dsAgeRealTimeInitialAmount10: TBCDField;
    dsAgeRealTimeInitialAmount11: TBCDField;
    dsAgeRealTimeInitialAmount12: TBCDField;
    dsAgeRealTimePayBucket: TBCDField;
    dsAgeMonthEndPayBucket: TBCDField;
    dsArrearsAgeing: TADODataSet;
    dtsArrearsAgeing: TDataSource;
    dsArrearsAgeingYMKey: TStringField;
    dsArrearsAgeingEffectiveDate: TDateTimeField;
    dsArrearsAgeingMonthStartDate: TDateTimeField;
    dsArrearsAgeingMonthEndDate: TDateTimeField;
    dsArrearsAgeingInstalmentDue: TBCDField;
    dsArrearsAgeingAmountPaid: TBCDField;
    dsArrearsAgeingAdditionalFees: TBCDField;
    dsArrearsAgeingArrearsFeesActual: TBCDField;
    dsArrearsAgeingArrearsFees: TBCDField;
    dsArrearsAgeingArrearsInterestActual: TBCDField;
    dsArrearsAgeingArrearsInterest: TBCDField;
    dsArrearsAgeingTotalDue: TBCDField;
    dsArrearsAgeingInterestBucket: TBCDField;
    dsArrearsAgeingFeeBucket: TBCDField;
    dsArrearsAgeingPayBucket: TBCDField;
    dsArrearsAgeingCD: TIntegerField;
    dsArrearsAgeingDays0: TBCDField;
    dsArrearsAgeingDays1: TBCDField;
    dsArrearsAgeingDays2: TBCDField;
    dsArrearsAgeingDays3: TBCDField;
    dsArrearsAgeingDays4: TBCDField;
    dsArrearsAgeingDays5: TBCDField;
    dsArrearsAgeingDays6: TBCDField;
    dsArrearsAgeingDays7: TBCDField;
    dsArrearsAgeingDays8: TBCDField;
    dsArrearsAgeingDays9: TBCDField;
    dsArrearsAgeingDays10: TBCDField;
    dsArrearsAgeingDays11: TBCDField;
    dsArrearsAgeingDays12: TBCDField;
    dsArrearsAgeingInitialAmount0: TBCDField;
    dsArrearsAgeingInitialAmount1: TBCDField;
    dsArrearsAgeingInitialAmount2: TBCDField;
    dsArrearsAgeingInitialAmount3: TBCDField;
    dsArrearsAgeingInitialAmount4: TBCDField;
    dsArrearsAgeingInitialAmount5: TBCDField;
    dsArrearsAgeingInitialAmount6: TBCDField;
    dsArrearsAgeingInitialAmount7: TBCDField;
    dsArrearsAgeingInitialAmount8: TBCDField;
    dsArrearsAgeingInitialAmount9: TBCDField;
    dsArrearsAgeingInitialAmount10: TBCDField;
    dsArrearsAgeingInitialAmount11: TBCDField;
    dsArrearsAgeingInitialAmount12: TBCDField;
    dsArrearsAgeingDays72: TBCDField;
    dsArrearsAgeingArrearsAmount: TBCDField;
    dsAgeCycleEnd: TADODataSet;
    IntegerField2: TIntegerField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    BCDField25: TBCDField;
    BCDField26: TBCDField;
    BCDField27: TBCDField;
    BCDField28: TBCDField;
    BCDField29: TBCDField;
    BCDField30: TBCDField;
    BCDField31: TBCDField;
    BCDField32: TBCDField;
    BCDField33: TBCDField;
    BCDField34: TBCDField;
    BCDField35: TBCDField;
    BCDField36: TBCDField;
    BCDField37: TBCDField;
    BCDField38: TBCDField;
    BCDField39: TBCDField;
    BCDField40: TBCDField;
    BCDField41: TBCDField;
    BCDField42: TBCDField;
    BCDField43: TBCDField;
    BCDField44: TBCDField;
    BCDField45: TBCDField;
    BCDField46: TBCDField;
    BCDField47: TBCDField;
    BCDField48: TBCDField;
    WordField1: TWordField;
    StringField3: TStringField;
    dtsAgeCycleEnd: TDataSource;
    dsAgeMonthEndMonthEnd: TDateTimeField;
    dsAgeMonthEndMonthDue: TBCDField;
    dsAgeMonthEndArrears: TBCDField;
    dsArrearsAgeingCycleDue: TBCDField;
    qryEntLoanOpenDate: TDateTimeField;
    qryEntLoanRiskBand: TStringField;
    qryEntLoanCurrentRate: TBCDField;
    qryEntLoanOriginalRate: TBCDField;
    qryEntLoanStrRate: TStringField;
    qryEntLoanStrDelinquency: TStringField;
    dsArrearsAgeingStrCD: TStringField;
    ADODataSet2: TADODataSet;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    StringField6: TStringField;
    BCDField49: TBCDField;
    BCDField50: TBCDField;
    BCDField51: TBCDField;
    BCDField52: TBCDField;
    BCDField53: TBCDField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    DateTimeField9: TDateTimeField;
    BCDField54: TBCDField;
    BCDField55: TBCDField;
    BCDField56: TBCDField;
    SmallintField3: TSmallintField;
    StringField7: TStringField;
    BCDField57: TBCDField;
    SmallintField4: TSmallintField;
    DateTimeField10: TDateTimeField;
    BCDField58: TBCDField;
    SmallintField5: TSmallintField;
    BCDField59: TBCDField;
    StringField8: TStringField;
    BCDField60: TBCDField;
    BCDField61: TBCDField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    BCDField62: TBCDField;
    StringField11: TStringField;
    StringField12: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    DateTimeField11: TDateTimeField;
    StringField13: TStringField;
    WordField2: TWordField;
    BCDField63: TBCDField;
    BCDField64: TBCDField;
    BCDField65: TBCDField;
    BCDField66: TBCDField;
    BCDField67: TBCDField;
    DateTimeField12: TDateTimeField;
    BCDField68: TBCDField;
    BCDField69: TBCDField;
    BCDField70: TBCDField;
    BCDField71: TBCDField;
    BCDField72: TBCDField;
    BCDField73: TBCDField;
    BCDField74: TBCDField;
    BCDField75: TBCDField;
    BCDField76: TBCDField;
    BCDField77: TBCDField;
    StringField14: TStringField;
    IntegerField9: TIntegerField;
    DateTimeField13: TDateTimeField;
    StringField15: TStringField;
    BCDField78: TBCDField;
    BCDField79: TBCDField;
    StringField16: TStringField;
    StringField17: TStringField;
    qryEntLoanLTAccT: TSmallintField;
    qryEntLoanFlag1: TStringField;
    qryEntLoanFlag2: TStringField;
    qryEntLoanDebtReviewFlag: TStringField;
    qryEntLoanDebtReviewDate: TDateTimeField;
    qryEntLoanDebtReviewEnabled: TBooleanField;
    qryEntLoanAdminFlag: TStringField;
    qryEntLoanAdminDate: TDateTimeField;
    qryEntLoanAdminEnabled: TBooleanField;
    qryEntLoanFlagEnabled2: TBooleanField;
    qryEntLoanFlagEnabled1: TBooleanField;
    qryEntLoanDebtReviewApplicationDate: TDateTimeField;
    qryEntLoanDebtReviewExcluded: TBooleanField;
    qryEntLoanAdminApplicationDate: TDateTimeField;
    qryEntLoanAdminExcluded: TBooleanField;
    qryEntLoanLoanTypeName: TStringField;
    qryEntLoanLoanTypeDescription: TStringField;
    qryEntLoanLastPaid: TStringField;
    dsStatement: TADODataSet;
    dtsStatement: TDataSource;
    dsStatementLoanID: TIntegerField;
    dsStatementTransType: TSmallintField;
    dsStatementTransCode: TIntegerField;
    dsStatementTransaction: TStringField;
    dsStatementValueDate: TDateTimeField;
    dsStatementEffectDate: TDateTimeField;
    dsStatementDebit: TBCDField;
    dsStatementCredit: TBCDField;
    dsStatementBalance: TBCDField;
    dsStatementBatchNo: TStringField;
    dsStatementUserID: TStringField;
    dsStatementRefNo: TStringField;
    dsStatementRefNo2: TStringField;
    qryEntLoanHostID: TIntegerField;
    qryEntLoanBook: TStringField;
    qryIndemnity: TADOQuery;
    qryIndemnityPDF: TADOQuery;
    qryLoanQuote: TADOQuery;
    procedure cdsAccAfterOpen(DataSet: TDataSet);
    procedure qryEntLoanCalcFields(DataSet: TDataSet);
    procedure qryEntLoanBeforeOpen(DataSet: TDataSet);
    procedure dspAccGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure dsAgeRealTimeAfterOpen(DataSet: TDataSet);
    procedure dsLoanSummaryAfterScroll(DataSet: TDataSet);
    procedure dsFeeSummaryAfterOpen(DataSet: TDataSet);
    procedure dsAgeRealTimeCalcFields(DataSet: TDataSet);
    procedure dsAgeMonthEndCalcFields(DataSet: TDataSet);
    procedure dsArrearsAgeingCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    SummaryID: Integer;
    FTotDebit: Currency;
    FTotCredit: Currency;
    FRepAccHead: string;
    FOpenBal: Currency;
    procedure SetParams;
    procedure SetSummaryID(SetID: Integer);
  public
    { Public declarations }
    property OpenBal   : Currency read FOpenBal write FOpenBal;
    property TotDebit  : Currency read FTotDebit;
    property TotCredit : Currency read FTotCredit;
    property RepAccHead : string read FRepAccHead write FRepAccHead;
    procedure SetAccStatus(Ready: boolean; AccT: integer);
    procedure SetBulkStateStatus(Ready: boolean);
    procedure LoadLoanLst(var lst :TStringList);
    function CalcCons : String;
    function NumOfStatusLoans(EntityID, Status: Integer): Integer;
  end;

var
  dtmLS: TdtmLS;

implementation

uses dmMain, uLSConst, uLScentral, DateUtils;

{$R *.DFM}

(*
select Status,sum(LoanPeriod) as LoanPrd, sum(LoanCapital) as LoanCapital,
 sum(AmtToFin) as AmtToFin, sum(ResidualAmt) as ResidualAmt,
 sum(MthIns) as MthIns, sum(PayIns) as PayIns,
 sum(TotInterest) as TotInterest, sum(CashDep) as CashDep,
 sum(TotSecAmt) as TotSecAmt, sum(AccBal) as AccBal,
 sum(LoanBal) as LoanBal, sum(AvlBal) as AvLBal,
 sum(DepositBal) as DepositBal, sum(ArrearsAmt) as ArrearsAmt,
 sum(AmountDue) as AmountDue, sum(LastAmtPay) as LastAmtPay,
 sum(ExtendPrd) as ExtendPrd, sum(FeeToInsTot) as FeeToInsTot
from lsLoanDetail
where EntityID=3
group by Status
*)


function TdtmLS.CalcCons : String;
var
  TotalMths, i : Integer;
  Entinstallment : Real;
  RepTxt : String;
  InsDate : TDateTime;
  FirstInsDate : TDateTime;
  Fy,Fm,Fd : Word;
  Cy,Cm,Cd : Word;
  InsAmt : Real;
  MBegin, MEnd : TDateTime;
//  Filter : String;


begin
  RepTxt := '';
  SetParams;
  InsDate := qryLeastInsMonth.FieldByName('SmallestDate').AsDateTime;
  qryContracts.Close;
  qryContracts.CreateDataSet;
  DecodeDate(qryCalcCons.FieldByName('FirstInsDate').AsDateTime,Fy,Fm,Fd);
  DecodeDate(Date,Cy,Cm,Cd);
  FirstInsDate := EncodeDate(Cy,Cm,Fd);
  for i:=0 to qryCalcMonths.fieldbyname('TotalMonths').AsInteger do
  begin
    qryCalcCons.First;
    InsAmt := 0;
    while not qryCalcCons.Eof do
    begin
      TotalMths := qryCalcCons.FieldByName('DateDif').AsInteger;
      Entinstallment := qryCalcCons.FieldByName('AccBal').AsFloat / TotalMths;
      InsDate := IncMonth(FirstInsDate,i);
      if i = 0 then
      begin
        DecodeDate(InsDate,Fy,Fm,Fd);
        MBegin := EncodeDate(Fy,Fm,1);
        MEnd := MBegin;
        MEnd := IncMonth(MEnd,1);
        MEnd := MEnd - 1;
        qryClntPaid.Close;
        qryClntPaid.Parameters.ParamValues['LID'] := qryCalcCons.FieldByName('LoanID').AsInteger;
        qryClntPaid.Parameters.ParamValues['MBegin'] := formatdatetime('yyyymmdd',MBegin);
        qryClntPaid.Parameters.ParamValues['MEnd'] := formatdatetime('yyyymmdd',MEnd);
        qryClntPaid.Open;
      end;
      if (i  <= TotalMths) then
      begin
        if RepTxt <> '' then
          RepTxt := RepTxt + ',  ';
        if (qryClntPaid.FieldByName('AmtPost').AsCurrency >= 0)
        and (InsDate >= qryCalcCons.FieldByName('FirstInsDate').AsDateTime) then
        begin
          InsAmt := InsAmt + Entinstallment;
          RepTxt := RepTxt + inttostr(qryCalcCons.FieldByName('LoanID').AsInteger) + ': '
                 + CurrToStrF(Entinstallment,ffCurrency,2);// + ', ';
        end
        else
        begin
          if (qryClntPaid.FieldByName('AmtPost').AsCurrency < 0) then
          begin
             if Entinstallment > qryClntPaid.FieldByName('AmtPost').AsCurrency then
               Entinstallment := Entinstallment + qryClntPaid.FieldByName('AmtPost').AsCurrency;
             InsAmt := InsAmt + Entinstallment;
             RepTxt := RepTxt + inttostr(qryCalcCons.FieldByName('LoanID').AsInteger) + ': '
                 + CurrToStrF(Entinstallment,ffCurrency,2);
          end;
        end
      end;
      qryCalcCons.Next;
    end;           
    qryContracts.Open;
    qryContracts.Insert;
    qryContracts.FieldByName('Loan1').AsString := FormatDateTime('dd/mm/yyyy',InsDate);
    qryContracts.FieldByName('Loan2').AsString := RepTxt;
    qryContracts.FieldByName('InsAmt').AsCurrency := InsAmt;
    qryContracts.Post;
    RepTxt := '';
  end;
end;

procedure TdtmLS.cdsAccAfterOpen(DataSet: TDataSet);
begin
  dspAcc.DataSet.Close;
end;

procedure TdtmLS.SetAccStatus(Ready: boolean; AccT: integer);
begin
  if Ready then
  begin
    case AccT of
      acCA : begin
            dspAcc.DataSet := qryCA;
            FRepAccHead := 'Client statement';
          end;
      acLA : begin
            dspAcc.DataSet := qryLA;
            FRepAccHead := 'Client loan statement';
          end;
      acDA : begin
            dspAcc.DataSet := qryDep;
            FRepAccHead := 'Client deposit account';
          end;
    end;
  end;
  qryEntLoan.Active   := Ready;
  qryTransType.Active := Ready;
  cdsAcc.Active       := Ready;
end;

procedure TdtmLS.LoadLoanLst(var lst: TStringList);
begin
  lst.Clear;
  qryEntLoan.DisableControls;
  try
    qryEntLoan.First;
    while not qryEntLoan.EOF do
    begin
      lst.Add(qryEntLoan.FieldByName('RefNo').AsString + ' (' +
        qryEntLoan.FieldByName('LoanID').AsString + ')=' +
        qryEntLoan.FieldByName('LoanID').AsString);
      {lst.Add(qryEntLoan.FieldByName('EntCode').AsString+' - '+
         qryEntLoan.FieldByName('LoanID').AsString+'='+
         qryEntLoan.FieldByName('LoanID').AsString); }
      qryEntLoan.Next;
    end;
    if lst.Count=0 then
      lst.Add('None=0');
  finally
    qryEntLoan.EnableControls;
  end;
end;

procedure TdtmLS.SetBulkStateStatus(Ready: boolean);
begin
  qryBulkState.Active := Ready;
  cdsBulkState.Active := Ready;
  qryTransType.Active := Ready;
  qryBulkState.Close;
end;


procedure TdtmLS.SetParams;
begin
  qryCalcCons.Close;
  qryCalcCons.Parameters.ParamValues['EntID'] := dtmMain.qryEntDet.fieldbyname('EntityID').AsInteger;//qryClientLU.FieldByName('IdVal').AsInteger;
  qryCalcCons.Open;

  qryCalcMonths.Close;
  qryCalcMonths.Parameters.ParamValues['EntID'] := qryCalcCons.FieldByName('EntityID').AsInteger;
  qryCalcMonths.Open;

  qryLeastInsMonth.Close;
  qryLeastInsMonth.Parameters.ParamValues['EntID'] := qryCalcCons.FieldByName('EntityID').AsInteger;
  qryLeastInsMonth.Open;
end;

procedure TdtmLS.qryEntLoanCalcFields(DataSet: TDataSet);
var
  Delinquency: Integer;
  DebtReviewFlag: String;
  DebtReviewEnabled: Boolean;
  AdminFlag: String;
  AdminFlagEnabled: Boolean;
  LastPaid: String;
  LastAmountPaid: Currency;
  PeriodDays: String;
begin
  DataSet.FieldByName('Record').AsString := DataSet.FieldByName('LoanNo').AsString +
    ' of ' + IntToStr(DataSet.RecordCount);

  if qryEntLoan.FieldByName('LoanPeriod').AsInteger > 0 then
    PeriodDays := ' ('+ IntToStr(DaysBetween(qryEntLoan.FieldByName('StartDate').AsDatetime, qryEntLoan.FieldByName('EndDate').AsDatetime)) + ' Days)';

  qryEntLoan.FieldByName('StrLoanPeriod').AsString :=
    qryEntLoan.FieldByName('LoanPeriod').AsString + ' ' +
    GetInstFreqDesc(qryEntLoan.FieldByName('LTAccT').AsInteger, qryEntLoan.FieldByName('LoanPeriod').AsInteger) + PeriodDays;

  qryEntLoan.FieldByName('clPayments').AsString :=
    CurrToStrF(qryEntLoan.FieldByName('PaymentsReceived').AsCurrency, ffCurrency, 2) +
    ' (' + qryEntLoan.FieldByName('NoOfPay').AsString + ')';

  if qryEntLoan.FieldByName('IntRate').AsFloat = qryEntLoan.FieldByName('CurrentRate').AsFloat then
    qryEntLoan.FieldByName('StrRate').AsString := qryEntLoan.FieldByName('IntRate').AsString + '%'
  else
    qryEntLoan.FieldByName('StrRate').AsString := qryEntLoan.FieldByName('CurrentRate').AsString +
      '% (' + qryEntLoan.FieldByName('IntRate').AsString + '%)';

  Delinquency := qryEntLoan.FieldByName('Delinquency').AsInteger;

  if Delinquency >= 12 then
    qryEntLoan.FieldByName('StrDelinquency').AsString := '12+'
  else
    qryEntLoan.FieldByName('StrDelinquency').AsString := IntToStr(Delinquency);

  if not qryEntLoan.FieldByName('DebtReviewDate').IsNull then
  begin
    DebtReviewEnabled := qryEntLoan.FieldByName('DebtReviewEnabled').AsBoolean;
    if qryEntLoan.FieldByName('DebtReviewApplicationDate').IsNull then
      DebtReviewFlag := 'New'
    else
      DebtReviewFlag := qryEntLoan.FieldByName('DebtReviewApplicationDate').AsString;

    if qryEntLoan.FieldByName('DebtReviewExcluded').AsBoolean then
      DebtReviewFlag := DebtReviewFlag + ' (Excluded)';

  end
  else
  begin
    DebtReviewFlag := 'None';
    DebtReviewEnabled := False;
  end;

  if not qryEntLoan.FieldByName('AdminDate').IsNull then
  begin
    AdminFlagEnabled := qryEntLoan.FieldByName('AdminEnabled').AsBoolean;
    if qryEntLoan.FieldByName('AdminApplicationDate').IsNull then
      AdminFlag := 'New'
    else
      AdminFlag := qryEntLoan.FieldByName('AdminApplicationDate').AsString;

    if qryEntLoan.FieldByName('AdminExcluded').AsBoolean then
      AdminFlag := AdminFlag + ' (Excluded)';
  end
  else
  begin
    AdminFlag := 'None';
    AdminFlagEnabled := False;
  end;

  qryEntLoan.FieldByName('Flag1').AsString := DebtReviewFlag;
  qryEntLoan.FieldByName('FlagEnabled1').AsBoolean := DebtReviewEnabled;

  qryEntLoan.FieldByName('Flag2').AsString := AdminFlag;
  qryEntLoan.FieldByName('FlagEnabled2').AsBoolean := AdminFlagEnabled;

  LastAmountPaid := 0;

  if not qryEntLoan.FieldByName('LastAmtPay').IsNull then
    LastAmountPaid := qryEntLoan.FieldByName('LastAmtPay').AsCurrency;

  LastPaid := CurrToStrF(LastAmountPaid, ffCurrency, 2);

  if not qryEntLoan.FieldByName('LastDPay').IsNull then
    LastPaid := LastPaid + ' (' + FormatDateTime(ShortDateFormat, qryEntLoan.FieldByName('LastDPay').AsDateTime) + ')';

  qryEntLoan.FieldByName('LastPaid').AsString := LastPaid;
end;

function TdtmLS.NumOfStatusLoans(EntityID, Status: Integer): Integer;
begin
  qryStatusLoans.Parameters[0].Value := Status;
  qryStatusLoans.Parameters[1].Value := EntityID;
  qryStatusLoans.Open;
  Result := qryStatusLoans.Fields[0].AsInteger;
  qryStatusLoans.Close;
end;

procedure TdtmLS.qryEntLoanBeforeOpen(DataSet: TDataSet);
begin
  qryEntLoan.Parameters.ParamByName('prClose').Value := lnsClose;
  qryEntLoan.Parameters.ParamByName('prCancel').Value := lnsCancelled;
  qryEntLoan.Parameters.ParamByName('prDecline').Value := lnsDeclined;
end;

procedure TdtmLS.dspAccGetData(Sender: TObject; DataSet: TCustomClientDataSet);
var
  CurBal : Currency;
begin
  CurBal := 0;
  FTotDebit := 0;
  FTotCredit:= 0;
  DataSet.First;
  while not DataSet.EOF do
  begin
     CurBal := CurBal + DataSet.FieldByName('Debit').AsCurrency;
     if DataSet.FieldByName('Debit').AsCurrency > 0 then
       FTotDebit := FTotDebit+ DataSet.FieldByName('Debit').AsCurrency
     else
       FTotCredit := FTotCredit + DataSet.FieldByName('Debit').AsCurrency;
     //
     DataSet.Edit;
     if DataSet.FieldByName('Debit').AsCurrency > 0 then
       DataSet.FieldByName('Credit').Clear
     else
       DataSet.FieldByName('Debit').Clear;
     DataSet.FieldByName('Bal').AsCurrency := CurBal;
     DataSet.Post;
     DataSet.Next;
  end;
end;

procedure TdtmLS.dsAgeRealTimeAfterOpen(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to DataSet.FieldCount - 1 do
    if DataSet.Fields[I] is TBCDField then
      TBCDField(DataSet.Fields[I]).currency := True;
end;

procedure TdtmLS.dsLoanSummaryAfterScroll(DataSet: TDataSet);
begin
  SetSummaryID(DataSet.FieldByName('LoanID').AsInteger);
end;

procedure TdtmLs.SetSummaryID(SetID: Integer);
begin
  if SetID <> SummaryID then
  begin
    SummaryID := SetID;
    if SummaryID <> dsLoanSummary.FieldByName('LoanID').AsInteger then
      dsLoanSummary.Locate('LoanID', SummaryID, []);
    if SummaryID <> dsAccountSummary.FieldByName('LoanID').AsInteger then
      dsAccountSummary.Locate('LoanID', SummaryID, []);

    dsFeeSummary.Parameters[0].Value := SummaryID;
    dsFeeSummary.Requery;
  end;
end;

procedure TdtmLS.dsFeeSummaryAfterOpen(DataSet: TDataSet);
var
  I: Integer;
begin
  dsFeeSummary.FieldByName('OrderNo').Visible := False;
  for I := 1 to dsFeeSummary.Fields.Count - 1 do
    TBCDField(dsFeeSummary.Fields[I]).currency := True;
end;

procedure TdtmLS.dsAgeRealTimeCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Days210+').AsCurrency :=
    DataSet.FieldByName('Days7').AsCurrency +
    DataSet.FieldByName('Days8').AsCurrency +
    DataSet.FieldByName('Days9').AsCurrency +
    DataSet.FieldByName('Days10').AsCurrency +
    DataSet.FieldByName('Days11').AsCurrency +
    DataSet.FieldByName('Days12').AsCurrency;

  DataSet.FieldByName('CyclePeriod').AsString :=
    DataSet.FieldByName('MonthStartDate').AsString + ' - ' +
    DataSet.FieldByName('MonthEndDate').AsString;
end;

procedure TdtmLS.dsAgeMonthEndCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('CyclePeriod').AsString :=
    DataSet.FieldByName('PeriodStartDate').AsString + ' - ' +
    DataSet.FieldByName('PeriodEndDate').AsString;

  if DataSet = dsAgeMonthEnd then
  begin
    DataSet.FieldByName('MonthEnd').AsDateTime := DataSet.FieldByName('EffectiveDate').AsDateTime - 1;
    DataSet.FieldByName('Arrears').AsCurrency :=
      DataSet.FieldByName('Cycle1').AsCurrency +
      DataSet.FieldByName('Cycle2').AsCurrency +
      DataSet.FieldByName('Cycle3').AsCurrency +
      DataSet.FieldByName('Cycle4').AsCurrency +
      DataSet.FieldByName('Cycle5').AsCurrency +
      DataSet.FieldByName('Cycle6').AsCurrency +
      DataSet.FieldByName('Cycle7').AsCurrency +
      DataSet.FieldByName('Cycle8').AsCurrency +
      DataSet.FieldByName('Cycle9').AsCurrency +
      DataSet.FieldByName('Cycle10').AsCurrency +
      DataSet.FieldByName('Cycle11').AsCurrency +
      DataSet.FieldByName('Cycle12').AsCurrency;

    DataSet.FieldByName('MonthDue').AsCurrency := DataSet.FieldByName('Cycle0').AsCurrency +
      DataSet.FieldByName('Arrears').AsCurrency;
  end;
end;

procedure TdtmLS.dsArrearsAgeingCalcFields(DataSet: TDataSet);
var
  Delinquency: Integer;
begin
  DataSet.FieldByName('Days7+').AsCurrency :=
    DataSet.FieldByName('Days7').AsCurrency +
    DataSet.FieldByName('Days8').AsCurrency +
    DataSet.FieldByName('Days9').AsCurrency +
    DataSet.FieldByName('Days10').AsCurrency +
    DataSet.FieldByName('Days11').AsCurrency +
    DataSet.FieldByName('Days12').AsCurrency;

  DataSet.FieldByName('CycleDue').AsCurrency := DataSet.FieldByName('Days0').AsCurrency +
    DataSet.FieldByName('ArrearsAmount').AsCurrency;

  Delinquency := DataSet.FieldByName('CD').AsInteger;

  if Delinquency >= 12 then
    DataSet.FieldByName('StrCD').AsString := '12+'
  else
    DataSet.FieldByName('StrCD').AsString := IntToStr(Delinquency);
end;

end.

