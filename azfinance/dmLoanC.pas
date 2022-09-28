unit dmLoanC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32, dmLoanCLU, Math, uLoanCalc, Variants, DBClient,
  Provider, DateUtils;

type
  TdtmLoanC = class(TDataModule)
    qryLoanDet: TADODataSet;
    qryLT: TADODataSet;
    dtsLoanDet: TDataSource;
    qryToUse: TADOQuery;
    dtsLT: TDataSource;
    qryLTrate: TADODataSet;
    qryLTFeeD: TADODataSet;
    qryLTFees: TADODataSet;
    qryLD3Pay: TADODataSet;
    dtsLD3Pay: TDataSource;
    qry3PayNextNo: TADODataSet;
    qry3PayTot: TADODataSet;
    qry3PayTotCOLUMN1: TBCDField;
    dts3PayTot: TDataSource;
    qryTrack: TADODataSet;
    dtsTrack: TDataSource;
    cmdCalc: TADOCommand;
    qryStatus: TADODataSet;
    dtsStatus: TDataSource;
    qryLUStatus: TADODataSet;
    qryLUStatusGroupKey: TIntegerField;
    qryLUStatusDescription: TStringField;
    qryLUStatusIDVal: TIntegerField;
    dtsLUStatus: TDataSource;
    cmdGetAff: TADOCommand;
    qryAllLU: TADODataSet;
    qryLUReasons: TADODataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    dtsLUReasons: TDataSource;
    qryLDStsChange: TADODataSet;
    dtsLDStsChange: TDataSource;
    qryLDStsChangeLoanID: TIntegerField;
    qryLDStsChangeDateChange: TDateTimeField;
    qryLDStsChangeStatus: TSmallintField;
    qryLDStsChangeUserID: TStringField;
    qryLTFix: TADODataSet;
    qryAppStatus: TADODataSet;
    qryIsBadDebt: TADODataSet;
    qryPrimeRate: TADODataSet;
    qryTrackLoanID: TIntegerField;
    qryTrackCtlID: TIntegerField;
    qryTrackChecked: TWordField;
    qryTrackCheckDate: TDateTimeField;
    qryTrackUserID: TStringField;
    qryTrackNotes: TStringField;
    qryTrackLUTrack: TStringField;
    qryTrackYesNo: TStringField;
    qryDocPath: TADODataSet;
    qryRestructured: TADODataSet;
    qryLoanDetLoanID: TAutoIncField;
    qryLoanDetEntityID: TIntegerField;
    qryLoanDetLoanKey: TIntegerField;
    qryLoanDetEntCode: TStringField;
    qryLoanDetLoanType: TStringField;
    qryLoanDetLTaccT: TSmallintField;
    qryLoanDetLoanPeriod: TSmallintField;
    qryLoanDetLoanPeriodM: TSmallintField;
    qryLoanDetLoanCapital: TBCDField;
    qryLoanDetAmtToFin: TBCDField;
    qryLoanDetResidualAmt: TBCDField;
    qryLoanDetMthIns: TBCDField;
    qryLoanDetPayIns: TBCDField;
    qryLoanDetIntRate: TBCDField;
    qryLoanDetTotInterest: TBCDField;
    qryLoanDetTotSecAmt: TBCDField;
    qryLoanDetInstPaid: TStringField;
    qryLoanDetStartDate: TDateTimeField;
    qryLoanDetFirstInsDate: TDateTimeField;
    qryLoanDetEndDate: TDateTimeField;
    qryLoanDetActualEndDate: TDateTimeField;
    qryLoanDetAccBal: TBCDField;
    qryLoanDetLoanBal: TBCDField;
    qryLoanDetAvlBal: TBCDField;
    qryLoanDetDepositBal: TBCDField;
    qryLoanDetDefIOn: TBooleanField;
    qryLoanDetStatus: TSmallintField;
    qryLoanDetLoanTypeInd: TIntegerField;
    qryLoanDetLOID: TIntegerField;
    qryLoanDetFunderID: TIntegerField;
    qryLoanDetBranchID: TIntegerField;
    qryLoanDetLink1: TIntegerField;
    qryLoanDetLink2: TIntegerField;
    qryLoanDetLink3: TIntegerField;
    qryLoanDetLink4: TIntegerField;
    qryLoanDetLink5: TIntegerField;
    qryLoanDetApprCtl: TIntegerField;
    qryLoanDetUserID: TStringField;
    qryLoanDetDateChanged: TDateTimeField;
    qryLoanDetArrearsAmt: TBCDField;
    qryLoanDetArrearsNo: TSmallintField;
    qryLoanDetAmountDue: TBCDField;
    qryLoanDetNoOfPay: TSmallintField;
    qryLoanDetLastDPay: TDateTimeField;
    qryLoanDetLastAmtPay: TBCDField;
    qryLoanDetExtendPrd: TSmallintField;
    qryLoanDetFeeToInsTot: TBCDField;
    qryLoanDetFee1: TBCDField;
    qryLoanDetFee2: TBCDField;
    qryLoanDetFee3: TBCDField;
    qryLoanDetFee4: TBCDField;
    qryLoanDetFee5: TBCDField;
    qryLoanDetFee6: TBCDField;
    qryLoanDetRegNo: TStringField;
    qryLoanDetRefNo: TStringField;
    qryLoanDetQryNo: TStringField;
    qryLoanDetAppAmt: TBCDField;
    qryLoanDetAppDate: TDateTimeField;
    qryLoanDetAprvDate: TDateTimeField;
    qryLoanDetLoanInd: TIntegerField;
    qryLoanDetActionInd: TIntegerField;
    qryLoanDetDebtDate: TDateTimeField;
    qryLoanDetCntrC: TWordField;
    qryLoanDetCurReason: TIntegerField;
    qryLoanDetLimitInt: TBCDField;
    qryLoanDetDocNo: TStringField;
    qryLoanDetRestructured: TStringField;
    qryDupDocs: TADOQuery;
    qryLoanDetLoanUse: TIntegerField;
    qryLoanDetUpdateUser: TStringField;
    qryLoanDetUpdateDate: TDateTimeField;
    qryTrackFMTCheckDate: TStringField;
    qryLoanDetFMTAprvDate: TStringField;
    qryLoanDetCreateDetails: TStringField;
    qryLoanDetUpdateDetails: TStringField;
    qryLoanDetCreateDate: TDateTimeField;
    cdsAFSettle: TClientDataSet;
    dtsAFSettle: TDataSource;
    dsAfSettle: TADODataSet;
    dspAfSettle: TDataSetProvider;
    cdsAFSettleSettleID: TAutoIncField;
    cdsAFSettleLoanID: TIntegerField;
    cdsAFSettleSettleLoanID: TIntegerField;
    cdsAFSettleSettleType: TSmallintField;
    cdsAFSettleThirdParty: TStringField;
    cdsAFSettleAmount: TBCDField;
    cdsAFSettleSettleDesc: TStringField;
    cdsAFSettleDescription: TStringField;
    dsAfLoans: TADODataSet;
    cdsAfLoans: TClientDataSet;
    dtsAfLoans: TDataSource;
    dsAfActions: TADODataSet;
    dtsAfActions: TDataSource;
    dspAfLoans: TDataSetProvider;
    cdsAfLoansLoanID: TIntegerField;
    cdsAfLoansInstalment: TBCDField;
    cdsAfLoansofAmount: TBCDField;
    cdsAfLoansofTerm: TIntegerField;
    cdsAfLoansofInstalment: TBCDField;
    cdsAfLoansofAction: TIntegerField;
    cdsAfLoansNotes: TMemoField;
    dsAfLoanLU: TADODataSet;
    dsAfLoanLULoanID: TAutoIncField;
    dsAfLoanLULoanType: TStringField;
    dsAfLoanLULoanCapital: TBCDField;
    dsAfLoanLUIntRate: TBCDField;
    dsAfLoanLULoanPeriod: TSmallintField;
    dsAfLoanLUFirstInsDate: TDateTimeField;
    dsAfLoanLUEndDate: TDateTimeField;
    dsOffers: TADODataSet;
    dtsOffers: TDataSource;
    dsOffersOfferID: TAutoIncField;
    dsOffersLoanID: TIntegerField;
    dsOffersAmount: TBCDField;
    dsOffersPeriod: TWordField;
    dsOffersInstalment: TBCDField;
    dsOffersStatus: TStringField;
    dsNoPayouts: TADODataSet;
    dsOffersOffer: TIntegerField;
    dsOfferPayouts: TADODataSet;
    dsOffersMatrix: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField4: TIntegerField;
    BCDField1: TBCDField;
    WordField1: TWordField;
    BCDField2: TBCDField;
    StringField2: TStringField;
    dsOfferStatus: TADODataSet;
    dsOffersStatusLU: TStringField;
    dsPayMatrix: TADODataSet;
    qryHasOffer: TADOQuery;
    dsOffersNetAmount: TBCDField;
    qryTotalPayouts: TADOQuery;
    dsOffersUpdateUser: TStringField;
    dsOffersUpdateDate: TDateTimeField;
    dsOffersUpdateDetails: TStringField;
    dsNoteSys: TADODataSet;
    dsEditNotes: TADODataSet;
    dtsEditNotes: TDataSource;
    dsEditNotesNoteID: TAutoIncField;
    dsEditNotesTablename: TStringField;
    dsEditNotesKeyValue: TStringField;
    dsEditNotesCategory: TIntegerField;
    dsEditNotesCreateUser: TStringField;
    dsEditNotesCreateDate: TDateTimeField;
    dsEditNotesUpdateDate: TDateTimeField;
    dsEditNotesDeleteDate: TDateTimeField;
    dsEditNotesNote: TMemoField;
    dsEditNotesPreview: TStringField;
    dsEditNotesNoteTime: TStringField;
    dsDDLoanStatus: TADODataSet;
    dtsDDLoanStatus: TDataSource;
    dsDDLoanStatusEffectiveDate: TDateTimeField;
    dsDDLoanStatusLoanStatus: TWordField;
    dsDDLoanStatusCreateUser: TStringField;
    dsDDLoanStatusCreateDate: TDateTimeField;
    dsDDLoanStatusStatusName: TStringField;
    dsOtherLoans: TADODataSet;
    dsStatusNotes: TADODataSet;
    dtsStatusNotes: TDataSource;
    dsAccBalance: TADODataSet;
    dsFixInstalment: TADODataSet;
    dsNoLoans: TADODataSet;
    dsPayouts: TADODataSet;
    dsLoanOffers: TADODataSet;
    qryLD3PayPayoutID: TAutoIncField;
    qryLD3PayLoanID: TIntegerField;
    qryLD3PayPayNo: TSmallintField;
    qryLD3PayAmount: TBCDField;
    qryLD3PayPayDate: TDateTimeField;
    qryLD3PayName: TStringField;
    qryLD3PayChequeNo: TStringField;
    qryLD3PayThirdInvNo: TStringField;
    qryLD3PayDescription: TStringField;
    qryLD3PayDateAdded: TDateTimeField;
    qryLD3PayUserID: TStringField;
    qryLD3PayAccepted: TIntegerField;
    qryLD3PayPayoutNo: TIntegerField;
    qryLD3PaySystem: TBooleanField;
    qryLD3PayUpdateDetails: TStringField;
    qryLD3PayUpdateDate: TDateTimeField;
    qryLD3PayUpdateUser: TStringField;
    qryLD3PayCreateUser: TStringField;
    dsOffersSystem: TBooleanField;
    dsOffersMatrixSystem: TBooleanField;
    qryLoanDetAppPeriod: TWordField;
    dsOffersVisible: TBooleanField;
    dsOfferInstal: TADOQuery;
    dsOfferLoan: TADODataSet;
    qryExpiredPayouts: TADOQuery;
    qryExpiredOption: TADOQuery;
    dsStatusChecks: TADODataSet;
    dsTrackingCheck: TADODataSet;
    qryLoanDetPreApproveDate: TDateTimeField;
    qryLoanDetPreApproveUser: TStringField;
    qryLoanDetPreApproved: TStringField;
    qryLoanDetCurrentReason: TStringField;
    qryLoanDetApproveUser: TStringField;
    qryPayouts: TADODataSet;
    dtsPayouts: TDataSource;
    qryLD3PayPayName: TStringField;
    dsBeneficiaries: TADODataSet;
    dsBeneficiariesEntCode: TStringField;
    dsBeneficiariesFirstName: TStringField;
    dsBeneficiariesLastName: TStringField;
    dsBeneficiariesIDNumber: TStringField;
    dsBeneficiariesBeneficiary: TStringField;
    dsBeneficiariesEntityID: TIntegerField;
    qryLD3PayThirdType: TIntegerField;
    qryLD3PayReference: TStringField;
    dsPayoutBank: TADODataSet;
    dtsPayoutBank: TDataSource;
    dsLoanTransfers: TADODataSet;
    dsLoanTransfersLoanID: TAutoIncField;
    dsLoanTransfersRefNo: TStringField;
    dsLoanTransfersLoanCapital: TBCDField;
    dsLoanTransfersLoanType: TStringField;
    dsLoanTransfersStatus: TStringField;
    dsPaySummary: TADODataSet;
    dtsPaySummary: TDataSource;
    dtsOfferPayouts: TDataSource;
    cmdAddStatusCheck: TADOCommand;
    qryLD3PayThirdRefNo: TStringField;
    qryLD3PayRefNo: TIntegerField;
    cmdAutoApprove: TADOCommand;
    dsBureau: TADODataSet;
    dsBureauAccountID: TAutoIncField;
    dsBureauEnquiryNo: TIntegerField;
    dsBureauAccountType: TStringField;
    dsBureauSource: TStringField;
    dsBureauSubscriber: TStringField;
    dsBureauAccountNo: TStringField;
    dsBureauStatus: TStringField;
    dsBureauOpenDate: TDateTimeField;
    dsBureauInstalment: TBCDField;
    dsBureauCurrentBalance: TBCDField;
    dsBureauPeriod: TStringField;
    dsBureauLastPayDate: TDateTimeField;
    dsBureauEnabled: TBooleanField;
    dsBureauEnqDate: TDateTimeField;
    dsBureauEnquiryType: TStringField;
    cmdDocLinked: TADOCommand;
    qryLD3PayDocumentID: TIntegerField;
    qryLD3PayAccountID: TIntegerField;
    dsBureauAccounts: TADODataSet;
    dtsBureauAccounts: TDataSource;
    dsBureauDisabled: TADODataSet;
    dtsBureauDisabled: TDataSource;
    dsQuotes: TADODataSet;
    dtsQuotes: TDataSource;
    cmdAddQuote: TADOCommand;
    dsQuoteOffers: TADODataSet;
    dtsQuoteOffers: TDataSource;
    dsPrintQuote: TADODataSet;
    dsCalcOptions: TADODataSet;
    dsWorkFlow: TADODataSet;
    dtsWorkFlow: TDataSource;
    dsPolicyRules: TADODataSet;
    dtsPolicyRules: TDataSource;
    cmdCalcOptions: TADOCommand;
    cmdProcessID: TADOCommand;
    dtsPrintQuote: TDataSource;
    dsPolicies: TADODataSet;
    dtsPolicies: TDataSource;
    dsCurrentStatus: TADODataSet;
    dtsCurrentStatus: TDataSource;
    cmdAddQuoteCall: TADOCommand;
    dsPrintBureau: TADODataSet;
    dtsPrintBureau: TDataSource;
    dsPayoutPages: TADODataSet;
    dsOffersEnabled: TBooleanField;
    cmdDisableOption: TADOCommand;
    qryLD3PayExpiryDate: TDateTimeField;
    dsDebtRecord: TADODataSet;
    dtsDebtRecord: TDataSource;
    dsBureauSettle: TStringField;
    dsLetterPreview: TADODataSet;
    dsLetterSumm: TADODataSet;
    dtsLetterSumm: TDataSource;
    qryLoanDetDoLimit: TBooleanField;
    qryLoanDetLimitAmount: TBCDField;
    qryLoanDetLimitPeriod: TIntegerField;
    qryLoanDetLimitDebt: TBooleanField;
    qryLoanDetFee7: TBCDField;
    dsMaxOption: TADODataSet;
    dsActiveOffers: TADODataSet;
    dtsActiveOffers: TDataSource;
    dsActivePayouts: TADODataSet;
    dtsActivePayouts: TDataSource;
    cmdNewQuoteOffer: TADOCommand;
    qryLoanDetApplicationScore: TIntegerField;
    qryLoanDetBureauScore: TIntegerField;
    qryLoanDetUserApplicationScore: TIntegerField;
    qryLoanDetUserBureauScore: TIntegerField;
    qryLoanDetUserMatrixScore: TBCDField;
    qryLoanDetMatrixScore: TBCDField;
    dsScorecard: TADODataSet;
    dtsScorecard: TDataSource;
    cmdPayOffers: TADOCommand;
    cmdDeletePay: TADOCommand;
    dsDocuments: TADODataSet;
    dtsDocuments: TDataSource;
    dsPages: TADODataSet;
    cmdOfferQuoted: TADOCommand;
    cmdDeleteOffer: TADOCommand;
    cmdPayoutQuoted: TADOCommand;
    dsBureauStatusCode: TStringField;
    cmdDocPath: TADOCommand;
    dsDocPath: TADODataSet;
    dsLoanFees: TADODataSet;
    dsLoanFeeDetail: TADODataSet;
    dtsLoanFeeDetail: TDataSource;
    cmdUpdateFee: TADOCommand;
    dsLoanTypeFees: TADODataSet;
    cmdUpdateOfferFee: TADOCommand;
    qryLoanDetCycleEndDay: TWordField;
    dsLoanFeeDetailFeeName: TStringField;
    dsLoanFeeDetailFeeType: TStringField;
    dsLoanFeeDetailAmount: TBCDField;
    dsPayrollRules: TADODataSet;
    dtsPayrollRules: TDataSource;
    cmdCheckAuthoristions: TADOCommand;
    cmdAddLoanFlags: TADOCommand;
    cmdCalcContractOptions: TADOCommand;
    cmdCalcLoanContract: TADOCommand;
    dsScorecardTU: TADODataSet;
    dtsScorecardTU: TDataSource;
    qryLoanDetScorecard: TStringField;
    dsLimitOptionReasons: TADODataSet;
    qryLoanDetLimitReason: TIntegerField;
    dtsLimitOptionReasons: TDataSource;
    dsManOptionReasons: TADODataSet;
    dtsManOptionReasons: TDataSource;
    cmdAcceptQuote: TADOCommand;
    cmdPreapproveProcess: TADOCommand;
    qryLoanDetIntermediaryID: TIntegerField;
    qryLoanDetCategory: TStringField;
    qryLoanDetCategoryID: TIntegerField;
    qryDocCount: TADOQuery;
    cmdInsertBureauA: TADOCommand;
    cmdDisableBureau: TADOCommand;
    cmdUpdateBureau: TADOCommand;
    cmdDisablePay: TADOCommand;
    qryLD3PayEnabled: TBooleanField;
    dsFraudEnquiry: TADODataSet;
    dtsFraudEnquiry: TDataSource;
    dsFraudNumber: TADODataSet;
    dsFraudOtherID: TADODataSet;
    dsFraudEmployment: TADODataSet;
    cmdCopyITC: TADOCommand;
    dsAuthoriseFlags: TADODataSet;
    dtsAuthoriseFlags: TDataSource;
    cmdAuthoriseFlag: TADOCommand;
    cmdAuthorisePolicy: TADOCommand;
    dsHandoverType: TADODataSet;
    dtsHandoverType: TDataSource;
    qryLoanDetHandoverTypeID: TIntegerField;
    dsVettingResult: TADODataSet;
    dtsVettingResult: TDataSource;
    cmdAddVettingResult: TADOCommand;
    cdsVetting: TClientDataSet;
    cdsVettingAccountVettingTaskID: TIntegerField;
    cdsVettingDescription: TStringField;
    cdsVettingRiskResultID: TIntegerField;
    cdsVettingRiskResult: TStringField;
    cdsVettingRiskResultDate: TDateTimeField;
    cdsVettingRiskResultUser: TStringField;
    dtsVetting: TDataSource;
    cdsVettingTaskResultID: TIntegerField;
    cdsVettingTaskResult: TStringField;
    cdsVettingTaskResultDate: TDateTimeField;
    cdsVettingTaskUser: TStringField;
    cdsVettingFraudResultID: TIntegerField;
    cdsVettingFraudResult: TStringField;
    cdsVettingFraudResultDate: TDateTimeField;
    cdsVettingFraudUser: TStringField;
    dsVetting: TADODataSet;
    cdsVettingTaskReadOnly: TBooleanField;
    cdsVettingRiskReadOnly: TBooleanField;
    cdsVettingFraudReadOnly: TBooleanField;
    cmdAddVettingTasks: TADOCommand;
    dsSubReasons: TADODataSet;
    dtsSubReasons: TDataSource;
    qryLoanDetStatusReasonID2: TIntegerField;
    dsVettingSummary: TADODataSet;
    dtsVettingSummary: TDataSource;
    qryLoanDetAccountFlagID: TAutoIncField;
    qryLoanDetFraudFlagDate: TDateTimeField;
    qryLoanDetFraudUser: TStringField;
    qryLoanDetFraudReason: TStringField;
    cdsVettingVettingTaskID: TIntegerField;
    dsStatusReason: TADODataSet;
    dtsStatusReason: TDataSource;
    dsStatusSubReason: TADODataSet;
    dtsStatusSubReason: TDataSource;
    dsAccountSubReason: TADODataSet;
    dtsAccountSubReason: TDataSource;
    cmdDeleteSubReason: TADOCommand;
    cmdApproveProcess: TADOCommand;
    qryLoanDetHostID: TIntegerField;
    cmdCheckRisk: TADOCommand;
    cmdSMSSend: TADOCommand;
    dsIssueQuote: TADODataSet;
    cmdInsertEmailNote: TADOCommand;
    cmdInsertSMSNote: TADOCommand;
    dsCommunication: TADODataSet;
    dtsCommunication: TDataSource;
    dsOffersOfferType: TStringField;
    qryLastFailedAHV: TADOQuery;
    qryNoAHV: TADOQuery;
    dsEventTracking: TADODataSet;
    dtsEventTracking: TDataSource;
    qryLoanDetBookID: TIntegerField;
    cmdEnableBureauAccount: TADOCommand;
    cmdDeleteNonBureauAccount: TADOCommand;
    qryConfigDV360URL: TADOQuery;
    cmdCheckFlags: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryLoanDetAfterInsert(DataSet: TDataSet);
    procedure qryLoanDetAfterEdit(DataSet: TDataSet);
    procedure qryLoanDetBeforePost(DataSet: TDataSet);
    procedure qryLD3PayAfterInsert(DataSet: TDataSet);
    procedure qryLD3PayAfterPost(DataSet: TDataSet);
    procedure qrySecuritiesAfterInsert(DataSet: TDataSet);
    procedure qrySecuritiesAfterPost(DataSet: TDataSet);
    procedure qryAssetsAfterInsert(DataSet: TDataSet);
    procedure qryLoanDetAfterOpen(DataSet: TDataSet);
    procedure AfterOpenCurrency(DataSet: TDataSet);
    procedure qryLoanDetAfterPost(DataSet: TDataSet);
    procedure qryTrackCalcFields(DataSet: TDataSet);
    procedure qryLoanDetBeforeOpen(DataSet: TDataSet);
    procedure qryLoanDetAfterClose(DataSet: TDataSet);
    procedure qryLoanDetCalcFields(DataSet: TDataSet);
    procedure qryLD3PayAfterOpen(DataSet: TDataSet);
    procedure cdsAFSettleCalcFields(DataSet: TDataSet);
    procedure cdsAFSettleNewRecord(DataSet: TDataSet);
    procedure cdsAfLoansAfterOpen(DataSet: TDataSet);
    procedure dsOffersBeforePost(DataSet: TDataSet);
    procedure dsOffersCalcFields(DataSet: TDataSet);
    procedure qryStatusAfterOpen(DataSet: TDataSet);
    procedure qryStatusAfterClose(DataSet: TDataSet);
    procedure qryStatusBeforePost(DataSet: TDataSet);
    procedure qryStatusCalcFields(DataSet: TDataSet);
    procedure qryLD3PayCalcFields(DataSet: TDataSet);
    procedure qryLD3PayBeforeEdit(DataSet: TDataSet);
    procedure qryLD3PayBeforePost(DataSet: TDataSet);
    procedure dsOffersBeforeEdit(DataSet: TDataSet);
    procedure dsOffersNewRecord(DataSet: TDataSet);
    procedure qryPayoutsBeforePost(DataSet: TDataSet);
    procedure qryPayoutsNewRecord(DataSet: TDataSet);
    procedure qryPayoutsAfterOpen(DataSet: TDataSet);
    procedure qryLoanDetNewRecord(DataSet: TDataSet);
    procedure qryPayoutsAfterInsert(DataSet: TDataSet);
    procedure dsBureauAccountsAfterOpen(DataSet: TDataSet);
    procedure dsQuotesAfterOpen(DataSet: TDataSet);
    procedure dsQuoteOffersAfterOpen(DataSet: TDataSet);
    procedure dsBureauAccountsNewRecord(DataSet: TDataSet);
    procedure qryLD3PayBeforeOpen(DataSet: TDataSet);
    procedure qryPayoutsBeforeClose(DataSet: TDataSet);
    procedure dsActiveOffersAfterOpen(DataSet: TDataSet);
    procedure dsActivePayoutsAfterOpen(DataSet: TDataSet);
    procedure dsVettingAfterOpen(DataSet: TDataSet);
    procedure cdsVettingBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FEntID: integer;
    FirstSave : boolean;
    EntCode : string;
    procedure GetLoanDates(StartDate: TDateTime; var FirstInstalDate: TDateTime;
      var FirstDeductDate: TDateTime);
    procedure SetEntID(const Value: integer);
    procedure SetLimitInt;
    function GetNext3PayNo:integer;
//    procedure InsertOtherLoanSettlements;
    procedure SetVettingFields;
  public
    { Public declarations }
    AllowOfferEdit: Boolean;
    property EntID : integer read FEntID write SetEntID;
    function CanAmendLoan:boolean;
    function CanAcceptLoan:boolean;
    function DoStatusCheck: Boolean;
    function DoTrackingCheck: Boolean;
    function DuplicateDocNos(DocNo: String): Boolean;
    function ErrorsForLoan: boolean;
    function GetDocumentCount(LoanID: Integer; DocType: String): Integer;
    function GetLinkDet(inID: integer):string;
    function HasOffer(OnlyAccepted: Boolean): Boolean;
    function OptionHasExpired(OfferID: Integer): Boolean;
    function OptionQuoted(OptionNo: Integer): Boolean;
    function IsLoanBadDebt: Boolean;
    function PayoutQuoted(PayoutID: Integer): Boolean;
    function ProcessesOutstanding(LoanID: Integer): Boolean;
    function CheckFlags(LoanID: Integer): Boolean;
    function LastFailedAHV(EntityID: Integer): Boolean;
    function NoActiveAHV(EntityID: Integer): Boolean;
    function ApproveProcessesOutstanding(LoanID: Integer): Boolean;
    function GetLinkDesc(LinkID : Integer) : String;
    procedure RefreshCreditVetting;
    procedure AddVettingTasks;
    procedure CalculateVettingFlags(LoanID: Integer);
    procedure SetLoanDetStatus(Ready : boolean);
    procedure SetLoanStatus(Status :integer);
    procedure SetLoanRate;
    procedure SetPayrollRules(PayrollID: Integer);
    procedure ClearLoanDetails;
    procedure CalculateCurrentLoan;
    procedure CalculateCurrentLoan2;
    procedure SetChecked(qryCurr: TDataSet; Chk :Byte);
    procedure EnterApprDate;
    procedure SetTabQueries(Ready: Boolean);
    procedure CalculateLoanOptions2(LoanID: Integer);
    procedure CalculateLoanOptions(LoanID: Integer);
    procedure GetMaxQuoteOptions(LoanID: Integer; var Amount: Currency;
      var Period: Integer);
    procedure UpdateLoanFlags(LoanID: Integer);
  end;

var
  dtmLoanC: TdtmLoanC;

implementation

uses dmMain, uLSConst, uLScentral, dmSettle, dmLS;

{$R *.DFM}

procedure TdtmLoanC.SetEntID(const Value: integer);
begin
  FEntID := Value;
  // Set EntCode
  RunQry(qryToUse,'select EntCode from EntityData where EntityID= '+IntToStr(EntID),'O');
  EntCode := qryToUse.Fields[0].AsString;
  //
  qryLoanDet.Close;
  qryLoanDet.Parameters[0].Value := FEntID;
  qryLoanDet.Open;
end;

procedure TdtmLoanC.DataModuleCreate(Sender: TObject);
begin
  dtmLoanCLU := TdtmLoanCLU.Create(Self);
  AllowOfferEdit := False;
end;

procedure TdtmLoanC.DataModuleDestroy(Sender: TObject);
begin
  SetLoanDetStatus(False);
  SetTabQueries(False);
  dtmLoanCLU.Free;
  dtmLoanCLU := nil;
end;

procedure TdtmLoanC.AfterOpenCurrency(DataSet: TDataSet);
begin
 { for i := 0 to DataSet.FieldCount-1 do
  begin
    if DataSet.Fields[i].DataType = ftBCD then
      TBCDField(DataSet.Fields[i]).currency := true;
  end;  }
end;

function TdtmLoanC.GetLinkDet(inID: integer): string;
begin
  RunQry(qryToUse,'select IsNull(EntCode,'''')+'' - ''+isNull(RTrim("Name"),'''')+'', ''+IsNull(RTrim(Name2),'''')+'+
    '''  tel.''+ IsNull(TelNo1,'''') from EntityData where EntityID= '+IntToStr(inID),'O');
  Result := qryToUse.Fields[0].AsString;
end;

procedure TdtmLoanC.SetLoanDetStatus(Ready: boolean);
begin
  qryLoanDet.Active       := Ready;
  qryLT.Active            := Ready;
  qryLTrate.Active        := Ready;
  qryLTFeeD.Active        := Ready;
  qryAllLU.Active         := Ready;
  qryLDStsChange.Active   := Ready;
  dsLetterSumm.Active     := Ready;

  dsDDLoanStatus.Active   := Ready;
  dsQuotes.Active         := Ready;
  dsQuoteOffers.Active    := Ready;
  dsPolicies.Active       := Ready;
  dsWorkFlow.Active       := Ready;
  dsBureauAccounts.Active := Ready;
  dsBureauDisabled.Active := Ready;
//  dsPolicyRules.Active    := Ready;
  dsCurrentStatus.Active  := Ready;
  qryStatus.Active        := Ready;

 { if not dsOffers.Active then
    dsOffers.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
  dsOffers.Active := Ready;  }
end;

procedure TdtmLoanC.qryLoanDetAfterEdit(DataSet: TDataSet);
begin
{  if CanAmendLoan then
    DataSet.FieldByName('Status').AsInteger := lnsInactive;}
end;

procedure TdtmLoanC.qryLoanDetAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('EntityID').AsInteger := EntID;;
  DataSet.FieldByName('EntCode').AsString   := EntCode;
  DataSet.FieldByName('Status').AsInteger   := lnsInactive;
  DataSet.FieldByName('EndDate').AsDateTime := Date;
  DataSet.FieldByName('AppDate').AsDateTime := Date;
end;

procedure TdtmLoanC.qryLoanDetBeforePost(DataSet: TDataSet);
begin
  FirstSave := DataSet.FieldByName('LoanID').IsNull;
  if qryLoanDet.State = dsInsert then
  begin
    DataSet.FieldByName('UserID').AsString := dtmMain.CurrentID;
    DataSet.FieldByName('CreateDate').AsDateTime := Now;
  end;
  DataSet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
  DataSet.FieldByName('UpdateDate').AsDateTime := Now;

  //DataSet.FieldByName('DateChanged').AsDateTime := Date; Trigger on table
  if DataSet.FieldByName('Status').AsInteger < lnsOpen then
  begin
    if DataSet.FieldByName('LTaccT').AsInteger >= ltactRevCr then
    begin
      DataSet.FieldByName('CntrC').AsInteger := 0;   
      DataSet.FieldByName('AmtToFin').AsCurrency := DataSet.FieldByName('LoanCapital').AsCurrency;
      DataSet.FieldByName('ResidualAmt').AsCurrency := 0;
    end;
    DataSet.FieldByName('AvlBal').AsCurrency := DataSet.FieldByName('AmtToFin').AsCurrency;
  end;
//  if dtmLoanC.ErrorsForLoan then
//    Abort;
end;

procedure TdtmLoanC.SetLoanStatus(Status :integer);
begin
  qryLoanDet.Edit;
  qryLoanDet.FieldByName('Status').AsInteger := Status;
  qryLoanDet.FieldByName('UpdateDate').AsDateTime := Now;
  qryLoanDet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
  qryLoanDet.Post;
end;

procedure TdtmLoanC.SetLoanRate;
begin
  if qryLoanDet.FieldByName('StartDate').IsNull then
    MoveToCurrent(qryLTrate,'EffectDate',Date)
  else
    MoveToCurrent(qryLTrate,'EffectDate',qryLoanDet.FieldByName('FirstInsDate').AsDateTime);
  //
  {if qryLT.FieldByName('LinkToRate').AsInteger = 0 then }
    qryLoanDet.FieldByName('IntRate').AsFloat := qryLTrate.FieldByName('IntRate').AsFloat;
 {else
    qryLoanDet.FieldByName('IntRate').AsFloat :=}
end;

function TdtmLoanC.ErrorsForLoan: boolean;
begin
  Result := (qryLoanDet.FieldByName('StartDate').AsDateTime < dtmMain.CurME);
  if Result then
  begin
    MesDlg('Start date is smaller than month end date.','E');
    Exit;
  end;
  Result := (qryLoanDet.FieldByName('FirstInsDate').AsDateTime < dtmMain.CurME);
  if Result then
  begin
    MesDlg('First instalment smaller than month end date.','E');
    Exit;
  end;
  Result := (qryLoanDet.FieldByName('FirstInsDate').AsDateTime <
    qryLoanDet.FieldByName('StartDate').AsDateTime);
  if Result then
  begin
    MesDlg('First instalment date is smaller than start date.','E');
    Exit;
  end;
  Result := not (qryLoanDet.FieldByName('LoanPeriod').AsInteger in
     ([qryLT.FieldByName('MinTerm').AsInteger..qryLT.FieldByName('MaxTerm').AsInteger]));
  if Result then
  begin
    MesDlg('Loan term is not within the range for this type of loan.','E');
    Exit;
  end;
  Result := (qryLoanDet.FieldByName('LoanCapital').AsCurrency < qryLT.FieldByName('MinAmt').AsInteger)
    or (qryLoanDet.FieldByName('LoanCapital').AsCurrency > qryLT.FieldByName('MaxAmt').AsInteger);
  if Result then
  begin
    MesDlg('Loan amount is not within the range for this type of loan.','E');
    Exit;
  end;
  {if StrToInt(FormatDateTime('dd',qryLoanDet.FieldByName('FirstInsDate').AsDateTime))>28 then
    MesDlg('Instalment day is not regular day.','W');  }
  if qryLoanDet.FieldByName('StartDate').AsDateTime > Date+30 then
    MesDlg('Start date is in future.','W');
end;

procedure TdtmLoanC.ClearLoanDetails;
var
  i : integer;
begin
  //Clear Loan Fees
  for i := 1 to 6 do
  begin
    qryLoanDet.FieldByName('Fee'+IntToStr(i)).AsCurrency := 0.00;
      end;
  qryLoanDet.FieldByName('MthIns').AsFloat := 0.00;
  qryLoanDet.FieldByName('PayIns').AsFloat := 0.00;
  //  if ClearCap then
  //    qryPersonLoans.FieldByName('LoanCapital').AsFloat := 0.00;
  qryLoanDet.FieldByName('AmtToFin').AsCurrency     := 0.00;
  qryLoanDet.FieldByName('AvlBal').AsCurrency       := 0.00;
  qryLoanDet.FieldByName('TotInterest').AsFloat     := 0.00;
  qryLoanDet.FieldByName('FeeToInsTot').AsCurrency  := 0.00;
end;

procedure TdtmLoanC.GetLoanDates(StartDate: TDateTime; var FirstInstalDate: TDateTime; var FirstDeductDate: TDateTime);
var
  I: Integer;
  MonthDays: Integer;
  PayFreq: String;
  PayDay: Integer;
  NoPays: Integer;
//  StartDate: TDateTime;
//  FirstDate: TDate;
  LastPayDate: TDateTime;
  Year, Month, Day: Word;
begin
  inherited;
  {if not dtmLS.qryEntLoan.FieldByName('LoanID').IsNull then
  begin }
    //StartDate := Date;
    FirstInstalDate := Date;
    PayFreq := dtmMain.qryEntDet.FieldByName('PayFreq').AsString;
    PayDay  := dtmMain.qryEntDet.FieldByName('PayDay').AsInteger;
    LastPayDate := dtmMain.qryEntDet.FieldByName('LastPayDate').AsDateTime;
    if PayFreq = 'M' then
    begin
      DecodeDate(Date,Year,Month,Day);
      FirstInstalDate := EncodeDate(Year, Month, Min(PayDay,DaysInAMonth(Year,Month)));
      while FirstInstalDate - StartDate <= 14 do
        FirstInstalDate := IncMonth(FirstInstalDate,1);
    end
    else if PayFreq = 'W' then
    begin
      NoPays := 0;
      for I := DayOfTheMonth(StartDate) + 7 to DaysInMonth(StartDate) do
        if DayOfTheWeek(StartOfTheMonth(StartDate) + I - 1) = PayDay then
        begin
          Inc(NoPays);
          if NoPays = 1 then
            FirstDeductDate := IncDay(StartOfTheMonth(StartDate),I - 1);
        end;

      if NoPays < 4 then
      begin
        FirstInstalDate := IncMonth(FirstInstalDate,1);
        {if FirstInstalDate - StartDate < 7 then
          FirstInstalDate := IncDay(FirstInstalDate, 7 - DaysBetween(FirstInstalDate,StartDate));}
        for I := 1 to DaysInMonth(FirstInstalDate) do
        if DayOfTheWeek(StartOfTheMonth(FirstInstalDate) + I - 1) = PayDay then
        begin
          FirstDeductDate := IncDay(StartOfTheMonth(FirstInstalDate),I - 1);
          Break;
        end;
      end;
    end
    else if PayFreq = 'T' then
    begin
      NoPays := 0;
      for I := DayOfTheMonth(StartDate) + 7 to DaysInMonth(StartDate) do
        if DayOfTheWeek(StartOfTheMonth(StartDate) + I - 1) = PayDay then
          if Odd(WeekOfTheYear(LastPayDate)) = Odd(WeekOfTheYear(StartOfTheMonth(StartDate) + I - 1)) then
          begin
            Inc(NoPays);
            if NoPays = 1 then
              FirstDeductDate := IncDay(StartOfTheMonth(StartDate),I - 1);
          end;

      if NoPays < 2 then
      begin
        FirstInstalDate := IncMonth(FirstInstalDate,1);
        for I := 1 to DaysInMonth(FirstInstalDate) do
        if DayOfTheWeek(StartOfTheMonth(FirstInstalDate) + I - 1) = PayDay then
        if Odd(WeekOfTheYear(LastPayDate)) = Odd(WeekOfTheYear(StartOfTheMonth(StartDate) + I - 1)) then
        begin
          FirstDeductDate := IncDay(StartOfTheMonth(FirstInstalDate),I - 1);
          Break;
        end;
      end;
    end;

    FirstInstalDate := EndOfTheMonth(FirstInstalDate);
    FirstInstalDate := StrToDate(FormatDateTime(ShortDateFormat,FirstInstalDate));

    if PayFreq = 'M' then
    begin
        MonthDays := DaysInMonth(FirstInstalDate);
        FirstDeductDate := IncDay(FirstInstalDate, Min(PayDay, MonthDays) - MonthDays);
    end;


    {qryLoanDet.FieldByName('StartDate').AsDateTime := StartDate;
    qryLoanDet.FieldByName('FirstInsDate').AsDateTime :=
      StrToDate(FormatDateTime(ShortDateFormat,FirstInstalDate));}

    {dtmMain.dbData.Execute('UPDATE lsLoanDetail SET StartDate = ''' +
      FormatDateTime('yyyy-mm-dd', StartDate) + ''', FirstInsDate = ''' +
      FormatDateTime('yyyy-mm-dd', FirstDate) + ''' WHERE LoanID = ' +
      dtmLS.qryEntLoan.FieldByName('LoanID').AsString + ' AND Status = 0');}
  //end;
end;

procedure TdtmLoanC.CalculateCurrentLoan2;
begin
   cmdCalcLoanContract.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
   cmdCalcLoanContract.Execute;

(*    for i := Low(LCalc.FeesI) to High(LCalc.FeesI) do
    begin
      cmdUpdateFee.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
      cmdUpdateFee.Parameters.ParamByName('FeeID').Value := LCalc.FeesI[i];
      cmdUpdateFee.Parameters.ParamByName('Amount').Value := LCalc.FeesV[i];
      cmdUpdateFee.Execute;
    end;
*)
    //SetLimitInt;
    dsLoanFeeDetail.Requery();
end;

procedure TdtmLoanC.CalculateCurrentLoan;
var
  LCalc : TLoanCalc;
  i : integer;
begin
  qryLTFix.Close;
  qryLTFix.Parameters[0].Value := qryLoanDet.FieldByName('LoanType').AsString;
  qryLTFix.Open;

  if qryLoanDet.State = dsBrowse then
  begin
    if qryLoanDet.FieldByName('LoanID').IsNull then
      qryLoanDet.Append
    else
      qryLoanDet.Edit;
  end;

  // DANIEL
  (*StartDate := Date;
  GetLoanDates(StartDate, InstalDate);
  qryLoanDet.FieldByName('StartDate').AsDateTime := StartDate;
  qryLoanDet.FieldByName('FirstInsDate').AsDateTime := InstalDate; *)

  if qryLoanDet.FieldByName('ResidualAmt').IsNull then
    qryLoanDet.FieldByName('ResidualAmt').AsCurrency := 0;
  LCalc := TLoanCalc.Create(Self);
  try

    dsLoanFees.Close;
    dsLoanFees.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
    dsLoanFees.Open;

    SetLength(LCalc.OffsetFees, dsLoanFees.Recordcount, 4);
    SetLength(LCalc.FeesI,   dsLoanFees.RecordCount);
    SetLength(LCalc.FeesT,   dsLoanFees.RecordCount);
    SetLength(LCalc.FeesV,   dsLoanFees.RecordCount);
    SetLength(LCalc.FeesPAV, dsLoanFees.RecordCount);
    SetLength(LCalc.FeesPAT, dsLoanFees.RecordCount);

    LCalc.ResetLoanCalc;

    {
     // Set Fees types Add to loan, yearly monthly ect.
     for i := Low(LCalc.FeesT) to High(LCalc.FeesT) do
       LCalc.FeesT[i] := qryLT.FieldByName('FeeT'+IntToStr(i + 1)).AsInteger;
     // Set Fee Per or Amt & Per or Amt Values
     }

     qryLTFees.Close;
     qryLTFees.Parameters[0].Value := qryLoanDet.FieldByName('LoanType').AsString;
     qryLTFees.Open;


     i := 0;
     dsLoanFees.First;
     while not dsLoanFees.Eof do
     //for i := 0 to 6 do
     begin
        LCalc.FeesI[i] := dsLoanFees.FieldByName('FeeID').AsInteger;
        LCalc.FeesT[i] := dsLoanFees.FieldByName('FeeTypeID').AsInteger;

       FilterDataSet(qryLTFees,'LTFeeID=' + dsLoanFees.FieldByName('FeeID').AsString);

       if not qryLTFees.Fields[0].IsNull then
       begin
         MoveToCurrent(qryLTFees,'EffectDate',Date);
         if Trim(qryLTFees.FieldByName('Type').AsString) <> '' then
           LCalc.FeesPAT[i] := qryLTFees.FieldByName('Type').AsString[1];
         LCalc.FeesPAV[i] := qryLTFees.FieldByName('PerOrAmt').AsCurrency;

         if Trim(qryLTFees.FieldByName('Type2').AsString) <> '' then
         begin
            LCalc.OffsetFees[i,0] := qryLTFees.FieldByName('Type2').AsString[1];
            LCalc.OffsetFees[i,1] := qryLTFees.FieldByName('Value2').AsFloat;
            LCalc.OffsetFees[i,2] := qryLTFees.FieldByName('Offset2').AsFloat;
            LCalc.OffsetFees[i,3] := qryLTFees.FieldByName('CapAmount').AsFloat;
         end
         else
         begin
            LCalc.OffsetFees[i,0] := '';
            LCalc.OffsetFees[i,1] := 0;
            LCalc.OffsetFees[i,2] := 0;
            LCalc.OffsetFees[i,3] := 0;
         end;
       end;

       dsLoanFees.Next;
       Inc(i);

     end;

     FilterDataSet(qryLTFees,'');
     qryLTFees.Close;
     //
     LCalc.Capital := qryLoanDet.FieldByName('LoanCapital').AsCurrency;
     LCalc.FirstInsDate := qryLoanDet.FieldByName('FirstInsDate').AsDateTime;
     case qryLoanDet.FieldByName('LTaccT').AsInteger of
        ltactHPWI, ltactHPAWI : LCalc.InsFreq := 52;
        ltactHPBI, ltactHPABI : LCalc.InsFreq := 26;
        else
          LCalc.InsFreq := 12;
     end;
     LCalc.IntRate := qryLoanDet.FieldByName('IntRate').AsFloat;
     if (qryLTFix.Locate('LoanType;LoanPeriod;LoanCapital',
       VarArrayOf([qryLoanDet.FieldByName('LoanType').AsString,
         qryLoanDet.FieldByName('LoanPeriod').AsInteger,
         qryLoanDet.FieldByName('LoanCapital').AsCurrency]),[]))
         and (LCalc.VarFeeI <> -1) then
       LCalc.LoanIns := qryLTFix.FieldByName('FixInstal').AsCurrency;
     //
     LCalc.StartDate := qryLoanDet.FieldByName('StartDate').AsDateTime;
     LCalc.Term := qryLoanDet.FieldByName('LoanPeriod').AsInteger;
////    VarType
     LCalc.CalculateLoan;

 {    if qryLoanDet.FieldByName('LoanID').IsNull then
       qryLoanDet.Append
     else
       qryLoanDet.Edit;
 }
     for i := Low(LCalc.FeesV) to High(LCalc.FeesV) do
       qryLoanDet.FieldByName('Fee' + IntToStr(i + 1)).AsCurrency := LCalc.FeesV[i];

    for i := Low(LCalc.FeesI) to High(LCalc.FeesI) do
    begin
      cmdUpdateFee.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
      cmdUpdateFee.Parameters.ParamByName('FeeID').Value := LCalc.FeesI[i];
      cmdUpdateFee.Parameters.ParamByName('Amount').Value := LCalc.FeesV[i];
      cmdUpdateFee.Execute;
    end;

    qryLoanDet.FieldByName('AmtToFin').AsCurrency     := LCalc.AmtToFin;
    qryLoanDet.FieldByName('CycleEndDay').AsInteger   := 31; //Last Day of Every Month
//   qryLoanDet.FieldByName('AvlBal').AsCurrency       := CleanAmtToFin; before post
    qryLoanDet.FieldByName('MthIns').AsCurrency       := LCalc.LoanIns;
    qryLoanDet.FieldByName('TotInterest').AsCurrency  := LCalc.TotInterest;
    qryLoanDet.FieldByName('PayIns').AsCurrency       := LCalc.PayIns;
    qryLoanDet.FieldByName('FeeToInsTot').AsCurrency  := LCalc.FeesToIns;
    qryLoanDet.FieldByName('LoanPeriodM').AsInteger   := LCalc.TermMth;
    qryLoanDet.FieldByName('EndDate').AsDateTime := LCalc.EndDate;
    SetLimitInt;
    qryLoanDet.Post;
    dsLoanFeeDetail.Requery();
  finally
    LCalc.Free;
  end;
end;

procedure TdtmLoanC.CalculateLoanOptions2(LoanID: Integer);
var
  StartDate, InstalDate, DeductDate: TDateTime;
begin
  dsCalcOptions.Close;
  dsCalcOptions.Parameters[0].Value := LoanID;
  dsCalcOptions.Open;
  dsCalcOptions.First;
  while not dsCalcOptions.Eof do
  begin
    dsCalcOptions.Edit;

    StartDate := Date;//dsCalcOptions.FieldByName('StartDate').AsDateTime;
    GetLoanDates(StartDate, InstalDate, DeductDate);
    dsCalcOptions.FieldByName('FirstInstalDate').AsDateTime := InstalDate;
    dsCalcOptions.FieldByName('FirstDeductDate').AsDateTime := DeductDate;
    dsCalcOptions.FieldByName('StartDate').AsDateTime := StartDate;
    
    if dsCalcOptions.FieldByName('ResidualAmount').IsNull then
      dsCalcOptions.FieldByName('ResidualAmount').AsCurrency := 0;

    dsCalcOptions.Post;

    dsCalcOptions.Next;
   end;
   dsCalcOptions.Close;

   cmdCalcContractOptions.Parameters[0].Value := LoanID;
   cmdCalcContractOptions.Execute;
end;

procedure TdtmLoanC.CalculateLoanOptions(LoanID: Integer);
var
  LCalc : TLoanCalc;
  i : integer;
  StartDate, InstalDate, DeductDate: TDateTime;
begin
  dsCalcOptions.Close;
  dsCalcOptions.Parameters[0].Value := LoanID;
  dsCalcOptions.Open;
  dsCalcOptions.First;
  while not dsCalcOptions.Eof do
  begin
    qryLTFix.Close;
    qryLTFix.Parameters[0].Value := dsCalcOptions.FieldByName('LoanType').AsString;
    qryLTFix.Open;

    dsCalcOptions.Edit;

    StartDate := dsCalcOptions.FieldByName('StartDate').AsDateTime;
    GetLoanDates(StartDate, InstalDate, DeductDate);
    dsCalcOptions.FieldByName('FirstInstalDate').AsDateTime := InstalDate;
    dsCalcOptions.FieldByName('FirstDeductDate').AsDateTime := DeductDate;

     if dsCalcOptions.FieldByName('ResidualAmount').IsNull then
       dsCalcOptions.FieldByName('ResidualAmount').AsCurrency := 0;
     LCalc := TLoanCalc.Create(Self);
     try
        // COMMENTED OUT BECAUSE THE CREATE METHOD ABOVE RESETS THEN LOAN CALC
       //LCalc.ResetLoanCalc;


       dsLoanTypeFees.Close;
       dsLoanTypeFees.Parameters[0].Value := dsCalcOptions.FieldByName('LoanType').AsString;
       dsLoanTypeFees.Open;

      SetLength(LCalc.OffsetFees, dsLoanTypeFees.Recordcount, 4);
      SetLength(LCalc.FeesI,   dsLoanTypeFees.RecordCount);
      SetLength(LCalc.FeesID,  dsLoanTypeFees.RecordCount);
      SetLength(LCalc.FeesT,   dsLoanTypeFees.RecordCount);
      SetLength(LCalc.FeesV,   dsLoanTypeFees.RecordCount);
      SetLength(LCalc.FeesPAV, dsLoanTypeFees.RecordCount);
      SetLength(LCalc.FeesPAT, dsLoanTypeFees.RecordCount);


      (*   REMOVED BY DANIEL 07/03/2008
       // SET FEES TYPE TO ADD TO LOAN (YEARLY,MONTHLY,ETC)
       for i := 1 to 7 do
         LCalc.FeesT[i] := dsCalcOptions.FieldByName('FeeT'+IntToStr(i)).AsInteger;

       // SET FEE PERCENT OR AMOUNT & PERCENT OR AMOUNT VALUES
       qryLTFees.Close;
       qryLTFees.Parameters[0].Value := dsCalcOptions.FieldByName('LoanType').AsString;
       qryLTFees.Open;
       *)

      i := 0;
      dsLoanTypeFees.First;
      while not dsLoanTypeFees.Eof do
      begin
         LCalc.FeesI[i] := dsLoanTypeFees.FieldByName('FeeID').AsInteger;
         LCalc.FeesID[i] := dsLoanTypeFees.FieldByName('LTFeeID').AsInteger;
         LCalc.FeesT[i] := dsLoanTypeFees.FieldByName('FeeTypeID').AsInteger;

         if Trim(dsLoanTypeFees.FieldByName('Type').AsString) <> '' then
           LCalc.FeesPAT[i] := dsLoanTypeFees.FieldByName('Type').AsString[1];
         LCalc.FeesPAV[i]   := dsLoanTypeFees.FieldByName('PerOrAmt').AsCurrency;

         if Trim(dsLoanTypeFees.FieldByName('Type2').AsString) <> '' then
         begin
            LCalc.OffsetFees[i,0] := dsLoanTypeFees.FieldByName('Type2').AsString[1];
            LCalc.OffsetFees[i,1] := dsLoanTypeFees.FieldByName('Value2').AsFloat;
            LCalc.OffsetFees[i,2] := dsLoanTypeFees.FieldByName('Offset2').AsFloat;
            LCalc.OffsetFees[i,3] := dsLoanTypeFees.FieldByName('CapAmount').AsFloat;
         end
         else
         begin
            LCalc.OffsetFees[i,0] := '';
            LCalc.OffsetFees[i,1] := 0;
            LCalc.OffsetFees[i,2] := 0;
            LCalc.OffsetFees[i,3] := 0;
         end;

         Inc(i);
         dsLoanTypeFees.Next;
       end;
       dsLoanTypeFees.Close;

       LCalc.Capital := dsCalcOptions.FieldByName('Amount').AsCurrency;
       LCalc.FirstInsDate := InstalDate;
       case qryLoanDet.FieldByName('LTaccT').AsInteger of
          ltactHPWI, ltactHPAWI : LCalc.InsFreq := 52;
          ltactHPBI, ltactHPABI : LCalc.InsFreq := 26;
          else
            LCalc.InsFreq := 12;
       end;

       LCalc.IntRate := dsCalcOptions.FieldByName('InterestRate').AsFloat;

       if (qryLTFix.Locate('LoanType;LoanPeriod;LoanCapital',
         VarArrayOf([dsCalcOptions.FieldByName('LoanType').AsString,
           dsCalcOptions.FieldByName('Period').AsInteger,
           dsCalcOptions.FieldByName('Amount').AsCurrency]),[]))
           and (LCalc.VarFeeI <> -1) then
         LCalc.LoanIns := qryLTFix.FieldByName('FixInstal').AsCurrency;
       //
       LCalc.StartDate := StartDate;
       LCalc.Term := dsCalcOptions.FieldByName('Period').AsInteger;


  ////    VarType
       LCalc.CalculateLoan;

       for i := Low(LCalc.FeesV) to High(LCalc.FeesV) do
         dsCalcOptions.FieldByName('Fee' + IntToStr(i + 1)).AsCurrency := LCalc.FeesV[i];

      for i := Low(LCalc.FeesI) to High(LCalc.FeesI) do
      begin
        cmdUpdateOfferFee.Parameters.ParamByName('OfferID').Value := dsCalcOptions.FieldByName('OfferID').AsInteger;
        cmdUpdateOfferFee.Parameters.ParamByName('FeeID').Value := LCalc.FeesID[i];
        cmdUpdateOfferFee.Parameters.ParamByName('Amount').Value := LCalc.FeesV[i];
        cmdUpdateOfferFee.Execute;
      end;

       dsCalcOptions.FieldByName('FinanceAmount').AsCurrency     := LCalc.AmtToFin;
  //   qryLoanDet.FieldByName('AvlBal').AsCurrency       := CleanAmtToFin; before post
       dsCalcOptions.FieldByName('MonthlyInstal').AsCurrency       := LCalc.LoanIns;
       dsCalcOptions.FieldByName('TotalInterest').AsCurrency  := LCalc.TotInterest;
       dsCalcOptions.FieldByName('PayableInstal').AsCurrency       := LCalc.PayIns;
       dsCalcOptions.FieldByName('TotalMonthlyFees').AsCurrency  := LCalc.FeesToIns;
       //dsCalcOptions.FieldByName('LoanPeriodM').AsInteger   := LCalc.TermMth;
       dsCalcOptions.FieldByName('EndDate').AsDateTime := LCalc.EndDate;

       // LOOK AT INCLUDED THIS FUNCTIONALITY LATER - INCLUDED IN SCHEDULER ALREADY HOWEVER
       // THIS MAY WORK BETTER OR WORSE
       //SetLimitInt;

       dsCalcOptions.Post;
     finally
       LCalc.Free;
     end;

     dsCalcOptions.Next;
   end;
   dsCalcOptions.Close;
end;

function TdtmLoanC.CanAmendLoan: boolean;
begin
  Result := qryLoanDet.FieldByName('Status').AsInteger < lnsOpen;
end;

procedure TdtmLoanC.qryLD3PayAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('PayNo').AsInteger := GetNext3PayNo;
  DataSet.FieldByName('CreateUser').AsString := dtmMain.CurrentID;
  DataSet.FieldByName('PayDate').AsDateTime   := Date;
end;

function TdtmLoanC.GetNext3PayNo: integer;
begin
  qry3payNextNo.Open;
  if qry3payNextNo.Fields[0].IsNull then
    Result := 1
  else
    Result := qry3payNextNo.Fields[0].AsInteger + 1;
  qry3payNextNo.Close;
end;

procedure TdtmLoanC.qryLD3PayAfterPost(DataSet: TDataSet);
begin
  qry3PayTot.Requery;
end;

procedure TdtmLoanC.qrySecuritiesAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('UserID').AsString      := dtmMain.CurrentID;
  DataSet.FieldbyName('DateAdded').AsDateTime := Now;
end;

procedure TdtmLoanC.qrySecuritiesAfterPost(DataSet: TDataSet);
begin
  cmdCalc.Parameters.ParamByName('@LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
  cmdCalc.Execute;
end;

procedure TdtmLoanC.SetChecked(qryCurr :TDataSet; Chk :Byte);
begin
  qryCurr.Edit;
  qryCurr.FieldByName('Checked').AsInteger    := Chk;
  qryCurr.FieldByName('CheckDate').AsDateTime := Now;
  qryCurr.FieldByName('UserID').AsString      := dtmMain.CurrentID;
  qryCurr.Post;
  RequeryOnRecord(TADODataSet(qryCurr), 'CtlID');
end;

function TdtmLoanC.CanAcceptLoan: boolean;
begin
  RunQry(qryToUse,'SELECT COUNT(LoanID) FROM lsLDSaddChk '+
    'WHERE LoanID= '+ IntToStr(qryLoanDet.FieldByName('LoanID').AsInteger) + ' ' +
    'AND Checked = 0','O');
  Result := qryToUse.Fields[0].AsInteger = 0;
  qryToUse.Close;
end;

procedure TdtmLoanC.qryAssetsAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('LoanID').AsInteger     := qryLoanDet.FieldByName('LoanID').AsInteger;
  DataSet.FieldByName('UserID').AsString      := dtmMain.CurrentID;
  Dataset.FieldByName('DateAdded').AsDateTime := Now;
end;

procedure TdtmLoanC.EnterApprDate;
begin
  qryLoanDet.Edit;
  qryLoanDet.FieldByName('AprvDate').AsDateTime := Now;
  qryLoanDet.Post;
end;

{ WB 18/02/2003 - To close all tab queries}
procedure TdtmLoanC.SetTabQueries(Ready: Boolean);
begin
  qryLD3Pay.Active     := Ready;
  qry3PayTot.Active    := Ready;
  qryStatus.Active     := Ready;
  qryLUStatus.Active   := Ready;
  qryTrack.Active      := Ready;
end;

procedure TdtmLoanC.qryLoanDetAfterOpen(DataSet: TDataSet);
begin
  AfterOpenCurrency(DataSet);
//  TBCDField(DataSet.FieldByName('IntRate')).currency := False;
end;

procedure TdtmLoanC.qryLoanDetAfterPost(DataSet: TDataSet);
begin
  if FirstSave then
    AddVettingTasks;
end;

//procedure TdtmLoanC.InsertOtherLoanSettlements;
//var
//  PayNo: Integer;
//  dtmSettle: TdtmSettle;
//  SettleAmount: Currency;
//  //Instalment: Currency;
//  //OfferID: Integer;
//begin
//  try
//    dtmSettle := TdtmSettle.Create(Self);
//    dtmSettle.dbSettle.Close;
//    dtmSettle.dbSettle.ConnectionString := dtmMain.dbData.ConnectionString;
//    dtmSettle.dbSettle.Open;
//
//    dsOtherLoans.Close;
//    dsOtherLoans.Parameters.ParamByName('EntityID').Value := qryLoanDet.FieldByName('EntityID').AsInteger;
//    dsOtherLoans.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
//    dsOtherLoans.Open;
//    dsOtherLoans.First;
//    PayNo := 1;
//
//    {dsFixInstalment.Parameters.ParamByName('Period').Value := qryLoanDet.FieldByName('LoanPeriod').AsInteger;//dsNoLoans.Fields[0].AsInteger;
//    dsFixInstalment.Parameters.ParamByName('LoanCapital').Value := qryLoanDet.FieldByName('LoanCapital').AsCurrency;
//    dsFixInstalment.Parameters.ParamByName('LoanType').Value := qryLoanDet.FieldByName('LoanType').AsString;
//    dsFixInstalment.Open;
//    Instalment := dsFixInstalment.Fields[0].AsCurrency;
//    dsFixInstalment.Close; }
//
//    dsPayouts.Close;
//    dsPayouts.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
//    dsPayouts.Open;
//    {dsLoanOffers.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
//    dsLoanOffers.Open; }
//    //OfferID := 0;
//
//    while not dsOtherLoans.Eof do
//    begin
//      dtmSettle.SetInfoStatus(False);
//      if dsOtherLoans.FieldByName('AdminFee').AsBoolean then
//        dtmSettle.SettleDate := GetServerDate + 10
//      else
//        dtmSettle.SettleDate := GetServerDate + 15;
//      dtmSettle.CurLoanID := dsOtherLoans.FieldByName('LoanID').AsInteger;
//      SettleAmount := dtmSettle.GetCapitalBal + dtmSettle.GetIntUpToDate +
//        dtmSettle.GetArrBucket + dtmSettle.GetDepBal;
//
//      if not dsOtherLoans.FieldByName('AdminFee').AsBoolean then
//        SettleAmount := SettleAmount + 100;
//
//      dsAccBalance.Parameters[0].Value := dtmSettle.CurLoanID;
//      dsAccBalance.Open;
//      if SettleAmount > dsAccBalance.Fields[0].AsCurrency then
//        SettleAmount := dsAccBalance.Fields[0].AsCurrency;
//      dsAccBalance.Close;
//
//      dsPayouts.Append;
//      dsPayouts.FieldByName('LoanID').AsInteger := qryLoanDet.FieldByName('LoanID').AsInteger;
//      dsPayouts.FieldByName('PayNo').AsInteger := PayNo;
//      dsPayouts.FieldByName('Amount').AsCurrency := SettleAmount;
//      dsPayouts.FieldByName('Name').AsString := 'Bruma Finance';
//      dsPayouts.FieldByName('ThirdRefNo').AsInteger := dsOtherLoans.FieldByName('LoanID').AsInteger;
//      dsPayouts.FieldByName('ThirdInvNo').AsString := 'SETTLEMENT';
//      dsPayouts.FieldByName('DateAdded').AsDateTime := GetServerDateTime;
//      dsPayouts.FieldByName('UserID').AsString := dtmMain.CurrentID;
//      dsPayouts.Post;
//
//      Inc(PayNo);
//      dsOtherLoans.Next;
//    end;
//    dsOtherLoans.Close;
//    dsPayouts.Close;
//    //dsLoanOffers.Close;
//  finally
//    FreeAndNil(dtmSettle);
//  end;
//end;

// VRS This will autoset the limit int amount.
procedure TdtmLoanC.SetLimitInt;
begin
  if qryLt.FieldByName('LimIntForm').AsString <> '' then
  begin
    runqry(qryToUse,'select '+ qryLt.FieldByName('LimIntForm').AsString +' from lsLoanDetail where '+
             ' LoanID = '+qryLoanDet.FieldByname('LoanID').AsString,'O');
    qryLoanDet.FieldByname('LimitInt').AsCurrency := qryToUse.Fields[0].AsCurrency;;
    qryToUse.Close;
  end;
end;

function TdtmLoanc.IsLoanBadDebt: Boolean;
begin
  Result := False;
  if qryLoanDet.FieldByName('Status').AsInteger = lnsBadDebt then
  begin
    qryIsBadDebt.Open;
    Result := qryIsBadDebt.Fields[0].AsInteger > 0;
    qryIsBadDebt.Close;
  end;
end;

function TdtmLoanC.GetLinkDesc(LinkID: Integer): String;
begin
  RunQry(qryToUse,'select Description from CodeTable where TypeKey = ' + IntToStr(LinkID),'O');
  Result := qryToUse.Fields[0].AsString;
  qryToUse.Close;
end;

procedure TdtmLoanC.qryTrackCalcFields(DataSet: TDataSet);
begin
  case qryTrack.FieldByName('Checked').AsInteger of
    0: qryTrack.FieldByName('YesNo').AsString := 'No';
    1: qryTrack.FieldByName('YesNo').AsString := 'Yes';
  end;
end;

procedure TdtmLoanC.qryLoanDetBeforeOpen(DataSet: TDataSet);
begin
  qryRestructured.Open;
end;

procedure TdtmLoanC.qryLoanDetAfterClose(DataSet: TDataSet);
begin
  qryRestructured.Close;
end;

procedure TdtmLoanC.qryLoanDetCalcFields(DataSet: TDataSet);
begin
  if qryRestructured.Active then
    if qryRestructured.Fields[0].AsInteger > 0 then
      qryLoanDet.FieldByName('Restructured').AsString := 'Restructured';

  if not qryLoanDet.FieldByName('UserID').IsNull then
    qryLoanDet.FieldByName('CreateDetails').AsString :=
      FormatDateTime('dddd, mmmm dd yyyy ''at'' hh:mm AM/PM ''by'' ',
      qryLoanDet.FieldByName('CreateDate').AsDateTime) +
      qryLoanDet.FieldByName('UserID').AsString;
     { qryLoanDet.FieldByName('UserID').AsString + ' ' +
      FormatDateTime('dd/mm/yyyy hh:mm', qryLoanDet.FieldByName('CreateDate').AsDateTime); }

  if not qryLoanDet.FieldByName('UpdateUser').IsNull then
    qryLoanDet.FieldByName('UpdateDetails').AsString :=
      FormatDateTime('dddd, mmmm dd yyyy ''at'' hh:mm AM/PM ''by'' ',
      qryLoanDet.FieldByName('UpdateDate').AsDateTime) +
      qryLoanDet.FieldByName('UpdateUser').AsString;
      {qryLoanDet.FieldByName('UpdateUser').AsString + ' ' +
      FormatDateTime('dd/mm/yyyy hh:mm', qryLoanDet.FieldByName('UpdateDate').AsDateTime);}

  if not qryLoanDet.FieldByName('AprvDate').IsNull then
    qryLoanDet.FieldByName('FMTAprvDate').AsString :=
      FormatDateTime('dd/mm/yyyy hh:mm', qryLoanDet.FieldByName('AprvDate').AsDateTime);

{  if not qryLoanDet.FieldByName('PreApproveDate').IsNull then
    qryLoanDet.FieldByName('PreApproved').AsString :=
      FormatDateTime('dddd, mmmm dd yyyy ''at'' hh:mm AM/PM ''by'' ',
      qryLoanDet.FieldByName('PreApproveDate').AsDateTime) +
      qryLoanDet.FieldByName('PreApproveUser').AsString;
 }
end;

procedure TdtmLoanC.qryLD3PayAfterOpen(DataSet: TDataSet);
begin
  TBCDField(qryLD3Pay.FieldByName('Amount')).currency := True;
end;

function TdtmLoanC.DuplicateDocNos(DocNo: String): Boolean;
begin
  try
    qryDupDocs.Parameters.ParamByName('prDocNo').Value := DocNo;
    qryDupDocs.Parameters.ParamByName('prLoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
    qryDupDocs.Open;
    Result := qryDupDocs.Fields[0].AsInteger > 0;
  finally
    qryDupDocs.Close;
  end
end;

procedure TdtmLoanC.cdsAFSettleCalcFields(DataSet: TDataSet);
var
  SettleDesc: String;
begin
  case cdsAFSettle.FieldByName('SettleType').AsInteger of
    1: SettleDesc := 'Loan Settlement';
    2: SettleDesc := 'Loan Arrears Settlement';
    3: SettleDesc := '3rd Party Settlement';
    else
      SettleDesc := 'Unknown';
  end;

  cdsAFSettle.FieldByName('SettleDesc').AsString := SettleDesc;
  if cdsAFSettle.FieldByName('SettleLoanID').IsNull then
    cdsAFSettle.FieldByName('Description').AsString := cdsAFSettle.FieldByName('ThirdParty').AsString
  else
    cdsAFSettle.FieldByName('Description').AsString := 'Loan ID ' +
      cdsAFSettle.FieldByName('SettleLoanID').AsString;
end;

procedure TdtmLoanC.cdsAFSettleNewRecord(DataSet: TDataSet);
begin
  cdsAFSettle.FieldByName('LoanID').AsInteger := dsAfSettle.Parameters[0].Value;
end;

procedure TdtmLoanC.cdsAfLoansAfterOpen(DataSet: TDataSet);
begin
  if cdsAfLoans.FieldByName('LoanID').IsNull then
  begin
    cdsAfLoans.Append;
    cdsAfLoans.FieldByName('LoanID').AsInteger := qryLoanDet.FieldByName('LoanID').AsInteger;
    cdsAfLoans.FieldByName('ofAmount').AsInteger := 0;
    cdsAfLoans.FieldByName('ofTerm').AsInteger := 0;
    cdsAfLoans.FieldByName('ofInstalment').AsInteger := 0;
    cdsAfLoans.FieldByName('ofAction').AsInteger := 0;
    cdsAfLoans.Post;
  end;
end;

procedure TdtmLoanC.dsOffersBeforePost(DataSet: TDataSet);
//var
  //AccType: String;
  //IncPayRoll: String;
begin
  dsOffers.FieldByName('LoanID').AsInteger := qryLoanDet.FieldByName('LoanID').AsInteger;
  dsOffers.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
  dsOffers.FieldByName('UpdateDate').AsDateTime := GetServerDateTime;

  {if not dsOffers.FieldByName('System').AsBoolean then
  begin
    dsOfferLoan.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
    dsOfferLoan.Open;

    dsOfferInstal.Parameters.ParamByName('LoanPeriod').Value := dsOffers.FieldByName('Period').AsInteger;
    dsOfferInstal.Parameters.ParamByName('LoanCapital').Value := dsOffers.FieldByName('Amount').AsCurrency;
    if dsOfferLoan.FieldByName('PayFreq').AsString = 'W' then
      AccType := 'AccType IN (5,6)'
    else if dsOfferLoan.FieldByName('PayFreq').AsString = 'T' then
      AccType := 'AccType IN (7,8)'
    else
      AccType := 'AccType NOT IN (5,6,7,8)';

    dsOfferInstal.SQL.Strings[52] := 'AND ' + AccType;

    if dsOfferLoan.FieldByName('Payroll').AsBoolean then
      IncPayroll := '='
    else
      IncPayroll := '<>';

    dsOfferInstal.SQL.Strings[53] := 'AND Category ' + IncPayroll + ' 100101002 ';
    dsOfferInstal.Open;

    if dsOfferInstal.RecordCount > 0 then
      dsOffers.FieldByName('Instalment').AsCurrency := dsOfferInstal.FieldByName('FixInstal').AsCurrency;
    dsOfferInstal.Close;
    dsOfferLoan.Close;
  end;  }
end;

procedure TdtmLoanC.dsOffersCalcFields(DataSet: TDataSet);
begin
  if dsOffers.State <> dsInsert then
  begin
    dsOffers.FieldByName('Offer').AsInteger := ABS(dsOffers.RecNo);
    dsOffers.FieldByName('UpdateDetails').AsString :=
      dsOffers.FieldByName('UpdateUser').AsString + ' ' +
      FormatDateTime('dd/mm/yyyy hh:mm',dsOffers.FieldByName('UpdateDate').AsDateTime);

    try
      qryTotalPayouts.Parameters[0].Value := dsOffers.FieldByName('OfferID').Value;
      qryTotalPayouts.Open;
      dsOffers.FieldByName('NetAmount').AsCurrency := dsOffers.FieldByName('Amount').AsCurrency -
        qryTotalPayouts.Fields[0].AsCurrency;
    finally
      qryTotalPayouts.Close;
    end;
  end;
end;

function TdtmLoanC.HasOffer(OnlyAccepted: Boolean): Boolean;
begin
  try
    if OnlyAccepted then
      qryHasOffer.SQL.Strings[3] := 'AND Status = ''A'''
    else
      qryHasOffer.SQL.Strings[3] := '';
      
    qryHasOffer.Open;
    Result := qryHasOffer.Fields[0].AsInteger > 0;
  finally
    qryHasOffer.Close;
  end;
end;

procedure TdtmLoanC.qryStatusAfterOpen(DataSet: TDataSet);
begin
  dsStatusNotes.Open;
  TDateTimeField(qryStatus.FieldByName('CheckDate')).DisplayFormat := ShortDateTimeFormat;
end;

procedure TdtmLoanC.qryStatusAfterClose(DataSet: TDataSet);
begin
  dsStatusNotes.Close;
end;

procedure TdtmLoanC.qryStatusBeforePost(DataSet: TDataSet);
begin
(*  if qryStatus.State = dsEdit then
  begin
    qryStatus.FieldByName('CheckDate').AsDateTime := Now;
    qryStatus.FieldByName('UserID').AsString      := dtmMain.CurrentID;
  end;*)
end;

procedure TdtmLoanC.qryStatusCalcFields(DataSet: TDataSet);
begin
 { if not qryStatus.FieldByName('CheckDate').IsNull then
    qryStatus.FieldByName('FMTCheckDate').AsString :=
      FormatDateTime('dd/mm/yyyy hh:mm',qryStatus.FieldByName('CheckDate').AsDateTime);
  }
end;

procedure TdtmLoanC.qryLD3PayCalcFields(DataSet: TDataSet);
begin
  if qryLD3Pay.State <> dsInsert then
  begin
    qryLD3Pay.FieldByName('PayoutNo').AsInteger := ABS(qryLD3Pay.RecNo);
    qryLD3Pay.FieldByName('UpdateDetails').AsString :=
      qryLD3Pay.FieldByName('UpdateUser').AsString + ' ' +
      FormatDateTime('dd/mm/yyyy hh:mm',qryLD3Pay.FieldByName('UpdateDate').AsDateTime);
  end;
end;

procedure TdtmLoanC.qryLD3PayBeforeEdit(DataSet: TDataSet);
begin
  if qryLD3Pay.FieldByName('System').AsBoolean then
    Abort;
end;

procedure TdtmLoanC.qryLD3PayBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('UpdateDate').AsDateTime := GetServerDateTime;
  DataSet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
end;

procedure TdtmLoanC.dsOffersBeforeEdit(DataSet: TDataSet);
begin
 { if (dsOffers.FieldByName('System').AsBoolean) and (not AllowOfferEdit) then
    Abort; }
end;

procedure TdtmLoanC.dsOffersNewRecord(DataSet: TDataSet);
begin
  dsOffers.FieldByName('Visible').AsBoolean := True;
end;

function TdtmLoanC.OptionHasExpired(OfferID: Integer): Boolean;
begin
  qryExpiredOption.Parameters.ParamByName('OfferID').Value := OfferID;
  qryExpiredOption.Open;
  Result := qryExpiredOption.Fields[0].AsInteger > 0;
  qryExpiredOption.Close;
end;

function TdtmLoanC.DoStatusCheck: Boolean;
begin
  dsStatusChecks.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
  dsStatusChecks.Open;
  Result := dsStatusChecks.Fields[0].AsInteger = 0;
  dsStatusChecks.Close;
end;

function TdtmLoanC.DoTrackingCheck: Boolean;
begin
  {dsTrackingCheck.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
  dsTrackingCheck.Open;
  Result := dsTrackingCheck.Fields[0].AsInteger = 0;
  dsTrackingCheck.Close;  }
  Result := True;
end;

procedure TdtmLoanC.qryPayoutsBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('UpdateDate').AsDateTime := Now;
  DataSet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
end;

procedure TdtmLoanC.qryPayoutsNewRecord(DataSet: TDataSet);
begin
  qryPayouts.FieldByName('LoanID').AsInteger := qryLoanDet.FieldByName('LoanID').AsInteger; 
  qryPayouts.FieldByName('System').AsBoolean := False;
end;

procedure TdtmLoanC.qryPayoutsAfterOpen(DataSet: TDataSet);
begin
  TBCDField(qryPayouts.FieldByName('Amount')).currency := True;
  TBCDField(qryPayouts.FieldByName('Instalment')).currency := True;

  dsDebtRecord.Open;
end;

procedure TdtmLoanC.qryLoanDetNewRecord(DataSet: TDataSet);
var
  StartDate, InstalDate, DeductDate: TDateTime;
begin
  StartDate := Today;
  GetLoanDates(StartDate, InstalDate, DeductDate);
  qryLoanDet.FieldByName('StartDate').AsDateTime := StartDate;
  qryLoanDet.FieldByName('FirstInsDate').AsDateTime := InstalDate;
end;

procedure TdtmLoanC.qryPayoutsAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('PayNo').AsInteger := GetNext3PayNo
end;

procedure TdtmLoanC.dsBureauAccountsAfterOpen(DataSet: TDataSet);
begin
  TBCDField(DataSet.FieldByName('CurrentBalance')).currency := True;
  TBCDField(DataSet.FieldByName('SettleAmount')).currency := True;
  TBCDField(DataSet.FieldByName('OriginalInstalment')).currency := True;
  TBCDField(DataSet.FieldByName('Instalment')).currency := True;
end;

procedure TdtmLoanC.dsQuotesAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(dsQuotes.FieldByName('CreateDate')).DisplayFormat := ShortDateTimeFormat;
  TDateTimeField(dsQuotes.FieldByName('StatusDate')).DisplayFormat := ShortDateTimeFormat;
  TDateTimeField(dsQuotes.FieldByName('SentDate')).DisplayFormat := ShortDateTimeFormat;
end;

procedure TdtmLoanC.dsQuoteOffersAfterOpen(DataSet: TDataSet);
begin
  TBCDField(dsQuoteOffers.FieldByName('Amount')).currency := True;
  TBCDField(dsQuoteOffers.FieldByName('Instalment')).currency := True;
  TBCDField(dsQuoteOffers.FieldByName('Payout')).currency := True;
  TBCDField(dsQuoteOffers.FieldByName('Settlements')).currency := True;
end;

procedure TdtmLoanC.dsBureauAccountsNewRecord(DataSet: TDataSet);
begin
  dsBureauAccounts.FieldByName('CreateUser').AsString := dtmMain.CurrentID;
  dsBureauAccounts.FieldByName('LoanID').AsInteger := qryLoanDet.FieldByName('LoanID').AsInteger;
end;

procedure TdtmLoanC.qryLD3PayBeforeOpen(DataSet: TDataSet);
begin
  qryLD3Pay.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
end;

procedure TdtmLoanC.qryPayoutsBeforeClose(DataSet: TDataSet);
begin
  dsDebtRecord.Close;
end;

procedure TdtmLoanC.GetMaxQuoteOptions(LoanID: Integer;
  var Amount: Currency; var Period: Integer);
begin
  dsMaxOption.Parameters[0].Value := LoanID;
  dsMaxOption.Open;
  Amount := dsMaxOption.FieldByName('Amount').AsCurrency;
  Period := dsMaxOption.FieldByName('Period').AsInteger;
  dsMaxOption.Close;
end;

procedure TdtmLoanC.dsActiveOffersAfterOpen(DataSet: TDataSet);
begin
  TBCDField(dsActiveOffers.FieldByName('Amount')).currency := True;
  TBCDField(dsActiveOffers.FieldByName('Instalment')).currency := True;
  TBCDField(dsActiveOffers.FieldByName('Settlements')).currency := True;
  TBCDField(dsActiveOffers.FieldByName('Payout')).currency := True;
end;

procedure TdtmLoanC.dsActivePayoutsAfterOpen(DataSet: TDataSet);
begin
  TBCDField(dsActivePayouts.FieldByName('Amount')).currency := True;
  TBCDField(dsActivePayouts.FieldByName('Instalment')).currency := True;
end;

function TdtmLoanC.OptionQuoted(OptionNo: Integer): Boolean;
begin
  cmdOfferQuoted.Parameters.ParamByName('OfferID').Value := OptionNo;
  cmdOfferQuoted.Execute;
  Result := cmdOfferQuoted.Parameters.ParamByName('NoQuotes').Value > 0;
end;

function TdtmLoanC.PayoutQuoted(PayoutID: Integer): Boolean;
begin
  cmdPayoutQuoted.Parameters.ParamByName('PayoutID').Value := PayoutID;
  cmdPayoutQuoted.Execute;
  Result := cmdPayoutQuoted.Parameters.ParamByName('NoQuotes').Value > 0;
end;

procedure TdtmLoanC.SetPayrollRules(PayrollID: Integer);
begin
  if (dsPayrollRules.Parameters[0].Value <> PayrollID) or (not dsPayrollRules.Active) then
  begin
    dsPayrollRules.Close;
    dsPayrollRules.Parameters[0].Value := PayrollID;
    dsPayrollRules.Open;
  end;
end;

procedure TdtmLoanC.UpdateLoanFlags(LoanID: Integer);
begin
  cmdAddLoanFlags.Parameters[0].Value := LoanID;
  cmdAddLoanFlags.Execute;
end;

procedure TdtmLoanC.CalculateVettingFlags(LoanID: Integer);
begin
  UpdateLoanFlags(LoanID);
  dsPolicies.Requery();

  dsAuthoriseFlags.Close;
  dsAuthoriseFlags.Open;
end;

function TdtmLoanC.ProcessesOutstanding(LoanID: Integer): Boolean;
begin
  cmdPreapproveProcess.Parameters.ParamByName('LoanID').Value := LoanID;
  cmdPreapproveProcess.Execute;

  Result := cmdPreapproveProcess.Parameters.ParamByName('ProcessCount').Value > 0;
end;


function TdtmLoanC.CheckFlags(LoanID: Integer): Boolean;
begin
  cmdCheckFlags.Parameters.ParamByName('LoanID').Value := LoanID;
  cmdCheckFlags.Execute;

  Result := cmdCheckFlags.Parameters.ParamByName('FailedFlags').Value > 0;
end;

function TdtmLoanC.LastFailedAHV(EntityID: Integer): Boolean;
begin
  qryLastFailedAHV.Close;
  qryLastFailedAHV.Parameters[0].Value := EntityID;
  qryLastFailedAHV.Open;

  if qryLastFailedAHV.FieldByName('IsSuccess').IsNull then
    Result := False
  else
    Result := not qryLastFailedAHV.FieldByName('IsSuccess').AsBoolean;

  qryLastFailedAHV.Close;
end;

function TdtmLoanC.NoActiveAHV(EntityID: Integer): Boolean;
begin
  qryNoAHV.Close;
  qryNoAHV.Parameters[0].Value := EntityID;
  qryNoAHV.Open;

  if qryNoAHV.FieldByName('IsSuccess').IsNull then
    Result := False
  else
    Result := not qryNoAHV.FieldByName('IsSuccess').AsBoolean;

  qryNoAHV.Close;
end;


function TdtmLoanC.ApproveProcessesOutstanding(LoanID: Integer): Boolean;
begin
  cmdApproveProcess.Parameters.ParamByName('LoanID').Value := LoanID;
  cmdApproveProcess.Execute;

  Result := cmdApproveProcess.Parameters.ParamByName('ProcessCount').Value > 0;
end;

function TdtmLoanC.GetDocumentCount(LoanID: Integer; DocType: String): Integer;
begin
  qryDocCount.Close;
  qryDocCount.Parameters.ParamByName('LoanID').Value := LoanID;
  qryDocCount.Parameters.ParamByName('DocType').Value := DocType;
  qryDocCount.Open;
  Result := qryDocCount.Fields[0].AsInteger;
  qryDocCount.Close;
end;

procedure TdtmLoanC.dsVettingAfterOpen(DataSet: TDataSet);
begin
  cdsVetting.Tag := 1;
  if cdsVetting.Active then
    cdsVetting.EmptyDataSet
  else
    cdsVetting.CreateDataSet;

  dsVetting.First;
  while not dsVetting.Eof do
  begin
    cdsVetting.Append;
    SetVettingFields;
    cdsVetting.Post;
    dsVetting.Next;
  end;
  cdsVetting.First;
  cdsVetting.Tag := 0;
end;

procedure TdtmLoanC.cdsVettingBeforePost(DataSet: TDataSet);
  procedure AddVettingResult(ResultTypeID: Integer; ResultField: String);
  begin
    if cdsVetting.FieldByName(ResultField).AsString <> dsVetting.FieldByName(ResultField).AsString then
    begin
      cmdAddVettingResult.Parameters.ParamByName('AccountVettingTaskID').Value := cdsVetting.FieldByName('AccountVettingTaskID').AsInteger;
      cmdAddVettingResult.Parameters.ParamByName('VettingResultTypeID').Value := ResultTypeID;
      cmdAddVettingResult.Parameters.ParamByName('VettingResultID').Value := cdsVetting.FieldByName(ResultField).AsInteger;
      cmdAddVettingResult.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
      cmdAddVettingResult.Execute;
    end;
  end;
begin
  if cdsVetting.Tag = 0 then
  begin
    dsVetting.Locate('AccountVettingTaskID', cdsVetting.FieldByName('AccountVettingTaskID').AsInteger, []);

    AddVettingResult(1, 'TaskResultID');
    AddVettingResult(2, 'RiskResultID');
    AddVettingResult(3, 'FraudResultID');

    RefreshCreditVetting;

    dsVettingSummary.Close;
    dsVettingSummary.Open;
  end;
end;

procedure TdtmLoanC.RefreshCreditVetting;
begin
  RequeryOnRecord(dtmLoanC.dsVetting, 'AccountVettingTaskID');
  SetVettingFields;
end;

procedure TdtmLoanC.SetVettingFields;
begin
  cdsVetting.FieldByName('AccountVettingTaskID').AsInteger := dsVetting.FieldByName('AccountVettingTaskID').AsInteger;
  cdsVetting.FieldByName('VettingTaskID').AsInteger := dsVetting.FieldByName('VettingTaskID').AsInteger;
  cdsVetting.FieldByName('Description').AsString := dsVetting.FieldByName('Description').AsString;
  
  if not dsVetting.FieldByName('TaskResultID').IsNull then
    cdsVetting.FieldByName('TaskResultID').AsInteger := dsVetting.FieldByName('TaskResultID').AsInteger;
  if not dsVetting.FieldByName('TaskResultDate').IsNull then
    cdsVetting.FieldByName('TaskResultDate').AsDateTime := dsVetting.FieldByName('TaskResultDate').AsDateTime;
  cdsVetting.FieldByName('TaskUser').AsString := dsVetting.FieldByName('TaskUser').AsString;
  if not dsVetting.FieldByName('RiskResultID').IsNull then
    cdsVetting.FieldByName('RiskResultID').AsInteger := dsVetting.FieldByName('RiskResultID').AsInteger;
  if not dsVetting.FieldByName('RiskResultDate').IsNull then
    cdsVetting.FieldByName('RiskResultDate').AsDateTime := dsVetting.FieldByName('RiskResultDate').AsDateTime;
  cdsVetting.FieldByName('RiskUser').AsString := dsVetting.FieldByName('RiskUser').AsString;
  if not dsVetting.FieldByName('FraudResultID').IsNull then
    cdsVetting.FieldByName('FraudResultID').AsInteger := dsVetting.FieldByName('FraudResultID').AsInteger;
  if not dsVetting.FieldByName('FraudResultDate').IsNull then
    cdsVetting.FieldByName('FraudResultDate').AsDatetime := dsVetting.FieldByName('FraudResultDate').AsDateTime;

  cdsVetting.FieldByName('FraudUser').AsString := dsVetting.FieldByName('FraudUser').AsString;
  cdsVetting.FieldByName('TaskReadOnly').AsBoolean := dsVetting.FieldByName('TaskReadOnly').AsBoolean;
  cdsVetting.FieldByName('RiskReadOnly').AsBoolean := dsVetting.FieldByName('RiskReadOnly').AsBoolean;
  cdsVetting.FieldByName('FraudReadOnly').AsBoolean := dsVetting.FieldByName('FraudReadOnly').AsBoolean;
end;


procedure TdtmLoanC.AddVettingTasks;
begin
  cmdAddVettingTasks.Parameters.ParamByName('@AccountID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
  cmdAddVettingTasks.Execute;
end;

end.
