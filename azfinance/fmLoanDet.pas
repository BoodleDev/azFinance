unit fmLoanDet;

interface

uses
  Windows, Messages, SysUtils, MODI_TLB, variants, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask, ComCtrls, ToolWin, fmDBBase, Buttons,
  Unit32, DB, Menus, dtpDB, Grids, DBGrids, DBGrdClr, fmLookup, DBGrdCF,
  ADOgrdCFS, ucbxDBList, NoEdit, dmLetter, dbDateTimePicker, ShellApi,
  ADODB, uNoteSys, ImgList, DBStyleGrid, Inifiles, StrUtils, fmPreviewDoc,
  ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd,
  ppReport, ppPrnabl, ppCtrls, ppStrtch, ppCTMain, ppParameter, ppSubRpt,
  ppPageBreak, ppMemo, ppModule, raCodMod, ppBarCod, ppRichTx, ppVar, ppTypes,
  ppPDFDevice, uLSConst, ppRegion, uBureau, fmResultOptions, ShDocVw, ActiveX,
  OleCtrls, ieview, imageenview, iemview, hyieutils, ievect, imageenio,
  xmldom, XMLIntf, msxmldom, XMLDoc, fmEmailPreview, fmSMSMessage, ConnectionStringBuilder, uDV360;


type
  TfrmLoanDet = class(TForm)
    ppmReports               : TPopupMenu;
    Status1                  : TMenuItem;
    Tracking1                : TMenuItem;
    Securities1              : TMenuItem;
    Affordability1           : TMenuItem;
    N1                       : TMenuItem;
    ImageList1               : TImageList;
    ImageList2               : TImageList;
    ImageList3               : TImageList;
    ppmPayout                : TPopupMenu;
    LoanTransfer1            : TMenuItem;
    Beneficiary1             : TMenuItem;
    OnceOff1                 : TMenuItem;
    LoanSettlement1          : TMenuItem;
    ImageList4               : TImageList;
    ImageList5               : TImageList;
    pnlStatusUpdate          : TPanel;
    tlbStatusUpdate          : TToolBar;
    ToolButton2              : TToolButton;
    btnPreapproveLoan        : TToolButton;
    ToolButton4              : TToolButton;
    btnApproveLoan           : TToolButton;
    ToolButton11             : TToolButton;
    btnDeclineLoan           : TToolButton;
    ToolButton13             : TToolButton;
    btnCancelLoan            : TToolButton;
    ToolButton15             : TToolButton;
    Panel5                   : TPanel;
    lblRestructured          : TDBText;
    btnOK                    : TButton;
    btnCancel1               : TButton;
    Panel10                  : TPanel;
    CoolBar5                 : TCoolBar;
    ToolBar4                 : TToolBar;
    btnCalcLoan              : TToolButton;
    btnAffordability         : TToolButton;
    ToolButton3              : TToolButton;
    btnReports               : TToolButton;
    btnReST                  : TToolButton;
    Panel11                  : TPanel;
    pnlLoanStatus            : TPanel;
    dlgExport                : TSaveDialog;
    plBureau                 : TppDBPipeline;
    ppmQuotation             : TPopupMenu;
    Quotation1               : TMenuItem;
    QuotationCallScript1     : TMenuItem;
    RecordedCalls1           : TMenuItem;
    btnReviewLoan            : TToolButton;
    ToolButton5              : TToolButton;
    btnApply                 : TButton;
    imlTools                 : TImageList;
    btnMyWork                : TButton;
    imgY                     : TImage;
    imgN                     : TImage;
    imgCancel                : TImage;
    imgUser                  : TImage;
    imgLink                  : TImage;
    imgSystem                : TImage;
    ppmQuotationSend         : TPopupMenu;
    viaFax1                  : TMenuItem;
    viaEmail1                : TMenuItem;
    pcLoan                   : TPageControl;
    tsLoan                   : TTabSheet;
    Label41                  : TLabel;
    Label42                  : TLabel;
    Label44                  : TLabel;
    lblLnPrdInd              : TLabel;
    lblLnAmt                 : TLabel;
    lblFee1                  : TLabel;
    Label74                  : TLabel;
    lblFee2                  : TLabel;
    Label86                  : TLabel;
    dbtLnType                : TDBText;
    Label3                   : TLabel;
    dbtStartDate             : TDBText;
    lblLoanUse               : TLabel;
    lblLoanInd               : TLabel;
    dbtFInsDate              : TDBText;
    dbtLPeriod               : TDBText;
    dbtCapital               : TDBText;
    dbtFee1                  : TDBText;
    dbtFee2                  : TDBText;
    lblFee3                  : TLabel;
    dbtFee3                  : TDBText;
    lblFee4                  : TLabel;
    dbtFee4                  : TDBText;
    lblFee5                  : TLabel;
    dbtFee5                  : TDBText;
    lblFee6                  : TLabel;
    dbtFee6                  : TDBText;
    lblAddTo1                : TLabel;
    lblAddTo2                : TLabel;
    lblAddTo3                : TLabel;
    lblAddTo5                : TLabel;
    lblAddTo4                : TLabel;
    lblAddTo6                : TLabel;
    Label5                   : TLabel;
    Label15                  : TLabel;
    Label22                  : TLabel;
    Label23                  : TLabel;
    edtEnd                   : TDBText;
    Label24                  : TLabel;
    dbtResVal                : TDBText;
    dbtRefNo                 : TDBText;
    lblLTaccT                : TLabel;
    lblLoanInd2              : TLabel;
    lblActInd                : TLabel;
    lblInd1                  : TLabel;
    lblInd2                  : TLabel;
    lblAmountApp             : TLabel;
    dblblAmtApplied          : TDBText;
    Label37                  : TLabel;
    lblRegion                : TLabel;
    Label39                  : TLabel;
    lblIndustry              : TLabel;
    Image1                   : TImage;
    Label20                  : TLabel;
    txtAppDate               : TDBText;
    Label1                   : TLabel;
    Label2                   : TLabel;
    Label45                  : TLabel;
    lblCategory              : TDBText;
    edtLoanPeriod            : TDBEdit;
    edtCapBor                : TDBEdit;
    edtStartdate             : TDBEdit;
    lcbLoanInd               : TDBLookupComboBox;
    lcbLoanUse               : TDBLookupComboBox;
    edtFirstDate             : TDBEdit;
    pnlLDS                   : TPanel;
    Bevel6                   : TBevel;
    pnlAddFee                : TPanel;
    Bevel3                   : TBevel;
    pnlLoanDet               : TPanel;
    lblTotLine               : TLabel;
    Label12                  : TLabel;
    dbtTotAmtFin             : TDBText;
    Label47                  : TLabel;
    Label63                  : TLabel;
    dbtTotInt                : TDBText;
    Label4                   : TLabel;
    lblTotLoan               : TLabel;
    Label43                  : TLabel;
    dbtMthIns                : TDBText;
    Label10                  : TLabel;
    dbtIntsPay               : TDBText;
    Label8                   : TLabel;
    Label11                  : TLabel;
    lblRate                  : TLabel;
    Label33                  : TLabel;
    lblAClmt2                : TLabel;
    edtRefNo                 : TDBEdit;
    edtResVal                : TDBEdit;
    cmbLoanInd               : TDBLookupComboBox;
    cmbActInd                : TDBLookupComboBox;
    dbAmtApp                 : TDBEdit;
    DBLookupComboBox1        : TDBLookupComboBox;
    DBLookupComboBox2        : TDBLookupComboBox;
    edtActionC               : TDBEdit;
    DBEdit4                  : TDBEdit;
    dtpAppDate               : TDBDateTimePicker;
    edtStats                 : TDBEdit;
    grdLoanFees              : TDBGrid;
    edtCategory              : TDBEdit;
    tsSec                    : TTabSheet;
    Label14                  : TLabel;
    dbtTotSec                : TDBText;
    Label6                   : TLabel;
    btnViewLO                : TSpeedButton;
    btnViewFunder            : TSpeedButton;
    Label9                   : TLabel;
    Label16                  : TLabel;
    Label17                  : TLabel;
    Label18                  : TLabel;
    btnViewCollect           : TSpeedButton;
    btnViewAttorney          : TSpeedButton;
    btnViewStaff             : TSpeedButton;
    lblLloid                 : TLabel;
    lblLfund                 : TLabel;
    lblLdc                   : TLabel;
    lblLatt                  : TLabel;
    lblLsm                   : TLabel;
    lblDebtDate              : TLabel;
    txtDebtDate              : TDBText;
    Label29                  : TLabel;
    Label30                  : TLabel;
    Label31                  : TLabel;
    Label32                  : TLabel;
    lblACTAvl                : TLabel;
    lblACCLns                : TLabel;
    lblACNAvl                : TLabel;
    lblACLlmt                : TLabel;
    lblLoanReg               : TLabel;
    dbtRegno                 : TDBText;
    lblLoanQry               : TLabel;
    DBText1                  : TDBText;
    DBText2                  : TDBText;
    Label35                  : TLabel;
    btnDelLO                 : TSpeedButton;
    btnDelFunder             : TSpeedButton;
    btnDelCollect            : TSpeedButton;
    btnDelAttorney           : TSpeedButton;
    btnDelStaff              : TSpeedButton;
    Label40                  : TLabel;
    btnViewBranch            : TSpeedButton;
    lblBranch                : TLabel;
    btnDelBranch             : TSpeedButton;
    btnLinkLO                : TSpeedButton;
    btnLinkFunder            : TSpeedButton;
    btnLinkCollect           : TSpeedButton;
    btnLinkAttorney          : TSpeedButton;
    btnLinkStaff             : TSpeedButton;
    btnLinkBranch            : TSpeedButton;
    Label38                  : TLabel;
    btnViewIntermediary      : TSpeedButton;
    lblIntermediary          : TLabel;
    btnDeleteIntermediary    : TSpeedButton;
    btnLinkIntermediary      : TSpeedButton;
    rgpInstPaid              : TDBRadioGroup;
    edtQryNo                 : TDBEdit;
    pnlDep                   : TPanel;
    Bevel1                   : TBevel;
    pnlLink                  : TPanel;
    Bevel2                   : TBevel;
    pnlAffSum                : TPanel;
    Bevel5                   : TBevel;
    edtRegno                 : TDBEdit;
    DBEdit1                  : TDBEdit;
    tsStatus                 : TTabSheet;
    pnlStatus                : TPanel;
    Panel2                   : TPanel;
    lblSNotes                : TLabel;
    ComboBox1                : TComboBox;
    btnInsertNote            : TBitBtn;
    cmbStatusNotes           : TDBLookupComboBox;
    grdStatus                : TDBGrid;
    memSNotes                : TDBMemo;
    DBEdit3                  : TDBEdit;
    PageControl1             : TPageControl;
    tsVerificationNotes      : TTabSheet;
    CoolBar8                 : TCoolBar;
    ToolBar8                 : TToolBar;
    btnNewVerificationsNotes : TToolButton;
    btnEditVerificationNotes : TToolButton;
    rdtVerificationNotes     : TRichEdit;
    tsAuthorisations         : TTabSheet;
    pnlAuthorisations        : TPanel;
    edtTaskSuccessID         : TDBEdit;
    PageControl4             : TPageControl;
    tsAuthorisationNotes     : TTabSheet;
    CoolBar10                : TCoolBar;
    ToolBar10                : TToolBar;
    btnNewAuthorisationNote  : TToolButton;
    btnEditAuthorisationNote : TToolButton;
    rdtAuthorisationsNotes   : TRichEdit;
    tsWorkflow               : TTabSheet;
    grdWorkFlow              : TDBGrid;
    ts3RdPay                 : TTabSheet;
    lblLetterCount           : TDBText;
    GroupBox2                : TGroupBox;
    Panel6                   : TPanel;
    CoolBar4                 : TCoolBar;
    ToolBar5                 : TToolBar;
    btnNewPayout             : TToolButton;
    btnEditPayout            : TToolButton;
    btnDeletePayout          : TToolButton;
    btnManagerEdit           : TToolButton;
    grdPayouts               : TDBGrid;
    stsPayouts               : TStatusBar;
    GroupBox3                : TGroupBox;
    Panel7                   : TPanel;
    grdPaySummary            : TDBGrid;
    edtThirdType             : TDBEdit;
    tsApproval               : TTabSheet;
    DBEdit2                  : TDBEdit;
    pcApproval               : TPageControl;
    tsOptions                : TTabSheet;
    CoolBar1                 : TCoolBar;
    ToolBar1                 : TToolBar;
    btnAcceptOffer           : TToolButton;
    btnDeleteOffer           : TToolButton;
    btnCancelOffers          : TToolButton;
    ToolButton1              : TToolButton;
    chkHiddenOptions         : TCheckBox;
    grdOffers                : TDBGrid;
    grdMatrix                : TStringGrid;
    Panel1                   : TPanel;
    edtOfferID               : TDBEdit;
    CoolBar7                 : TCoolBar;
    ToolBar7                 : TToolBar;
    btnRecalculate           : TToolButton;
    btnDisableOption         : TToolButton;
    btnDeleteOption          : TToolButton;
    btnApplyLimits           : TToolButton;
    ToolButton7              : TToolButton;
    btnManualOption          : TToolButton;
    ToolButton6              : TToolButton;
    pnlLimits                : TPanel;
    Label25                  : TLabel;
    Label26                  : TLabel;
    Label34                  : TLabel;
    edtLimitAmount           : TDBEdit;
    edtLimitPeriod           : TDBEdit;
    chkLimitDebt             : TDBCheckBox;
    cmbLimitOptionReason     : TDBLookupComboBox;
    tsPreApprovalNotes       : TTabSheet;
    CoolBar2                 : TCoolBar;
    ToolBar2                 : TToolBar;
    btnNewNote               : TToolButton;
    btnAmendNote             : TToolButton;
    rdtPreApprovalNotes      : TRichEdit;
    tsSecurities             : TTabSheet;
    pnlSec                   : TPanel;
    grdSec                   : TDBGrdClr;
    pnlBottom                : TPanel;
    lblDescription           : TLabel;
    lblType                  : TLabel;
    lblOwnerName             : TLabel;
    lblSecNo                 : TLabel;
    dbtS5                    : TDBText;
    dbtS6                    : TDBText;
    dbSecurity               : TDBText;
    cmbType                  : TDBLookupComboBox;
    edtOwner                 : TDBEdit;
    edtSecNo                 : TDBEdit;
    memDescription           : TDBMemo;
    pnlValues                : TPanel;
    lblVal                   : TLabel;
    lblValDate               : TLabel;
    lblVal2                  : TLabel;
    lblVal2Date              : TLabel;
    lblCurrVal               : TLabel;
    lblFutureVal             : TLabel;
    Bevel4                   : TBevel;
    dbtS1                    : TDBText;
    dbtS2                    : TDBText;
    dbtS3                    : TDBText;
    dbtS4                    : TDBText;
    dtpVal2Date              : TdtpDB;
    dtpValDate               : TdtpDB;
    edtVal                   : TDBEdit;
    edtValDate               : TDBEdit;
    edtVal2                  : TDBEdit;
    edtVal2Date              : TDBEdit;
    btnSendToT               : TBitBtn;
    edtSecRecID              : TDBEdit;
    tsAssets                 : TTabSheet;
    pnlAssets                : TPanel;
    pnlABottom               : TPanel;
    lblAssetType             : TLabel;
    lblDescr                 : TLabel;
    dbAsset                  : TDBText;
    cmbAssetType             : TDBLookupComboBox;
    memDescr                 : TDBMemo;
    edtRecID                 : TDBEdit;
    pnlRef                   : TPanel;
    lblYearModel             : TLabel;
    lblSupplierRef           : TLabel;
    lblSerialNo              : TLabel;
    lblDelNoteNo             : TLabel;
    lblDelDate               : TLabel;
    lblSoldDate              : TLabel;
    dbtAst1                  : TDBText;
    dbtAst2                  : TDBText;
    dbtAst3                  : TDBText;
    dbtAst4                  : TDBText;
    dbtAst5                  : TDBText;
    dbtAst6                  : TDBText;
    dtpDelDate               : TdtpDB;
    dtpSoldDate              : TdtpDB;
    edtSupplierRef           : TDBEdit;
    edtYearModel             : TDBEdit;
    edtSerialNo              : TDBEdit;
    edtDelNoteNo             : TDBEdit;
    edtSoldDate              : TDBEdit;
    edtDelDate               : TDBEdit;
    grdAssets                : TDBGrdClr;
    tsQuotations             : TTabSheet;
    Splitter1                : TSplitter;
    grdQuotes                : TDBGrid;
    grdQuoteOffers           : TDBGrid;
    CoolBar6                 : TCoolBar;
    ToolBar6                 : TToolBar;
    btnAcceptQuote           : TToolButton;
    btnRejectQuote           : TToolButton;
    btnCancelQuote           : TToolButton;
    btnResendQuote           : TToolButton;
    btnExportQuote           : TToolButton;
    btnOpen                  : TToolButton;
    btnSendQuote             : TToolButton;
    edtQuotationID           : TDBEdit;
    PageControl2             : TPageControl;
    tsQuoteNotes             : TTabSheet;
    CoolBar9                 : TCoolBar;
    ToolBar9                 : TToolBar;
    btnNewQuoteNote          : TToolButton;
    btnEditQuoteNote         : TToolButton;
    rdtQuoteNotes            : TRichEdit;
    tsLnStatus               : TTabSheet;
    Label13                  : TLabel;
    Label36                  : TLabel;
    btnChangeStatus          : TSpeedButton;
    grdStatusHistory         : TDBGrdClr;
    edtStatusName            : TEdit;
    tsSummary                : TTabSheet;
    tsBureau                 : TTabSheet;
    GroupBox5                : TGroupBox;
    Label28                  : TLabel;
    cmbEnquiryHistory        : TComboBox;
    grdEnquiryHistory        : TDBGrid;
    GroupBox6                : TGroupBox;
    grdScorecard             : TDBGrid;
    grdScorecard1            : TDBGrid;
    tsVetting                : TTabSheet;
    grpDeclined              : TGroupBox;
    Label7                   : TLabel;
    Label19                  : TLabel;
    Label21                  : TLabel;
    edtDateDeclined          : TDBEdit;
    edtUserDeclined          : TDBEdit;
    DBLookupComboBox3        : TDBLookupComboBox;
    PageControl3             : TPageControl;
    tsFlags                  : TTabSheet;
    grdPolicies              : TDBGrid;
    tsPayrollRules           : TTabSheet;
    grdPayrollRules          : TDBGrid;
    tsAllNotes               : TTabSheet;
    CoolBar11                : TCoolBar;
    ToolBar11                : TToolBar;
    btnNewNoteAll            : TToolButton;
    btnEditNoteAll           : TToolButton;
    rdtAllNotes              : TRichEdit;
    tsRates                  : TTabSheet;
    imgLocked                : TImage;
    grdRates                 : TDBGrid;
    clbRates                 : TCoolBar;
    tlbRates                 : TToolBar;
    btnNewRate               : TToolButton;
    btnCancelRate            : TToolButton;
    BitBtn1                  : TBitBtn;
    tsFees                   : TTabSheet;
    tcFees                   : TTabControl;
    grdFees                  : TDBGrid;
    imgFail                  : TImage;
    imgPass                  : TImage;
    imgInformation           : TImage;
    tsFraud                  : TTabSheet;
    GroupBox1                : TGroupBox;
    Panel3                   : TPanel;
    WebBrowser1              : TWebBrowser;
    tsDocuments              : TTabSheet;
    pnlDocuments             : TPanel;
    grdDocuments             : TDBGrid;
    pnlImageDock             : TPanel;
    pnlImage                 : TPanel;
    ImageEnVect1             : TImageEnVect;
    prgImage                 : TProgressBar;
    imnMulti                 : TImageEnMView;
    clbNavigate              : TCoolBar;
    tlbPreview               : TToolBar;
    btnPrint                 : TToolButton;
    btnZoomIn                : TToolButton;
    btnZoomOut               : TToolButton;
    btnAffordability2        : TToolButton;
    btnDebt                  : TToolButton;
    CoolBar12                : TCoolBar;
    ToolBar12                : TToolBar;
    btnReIndexDocument       : TToolButton;
    btnDeleteDocument        : TToolButton;
    edtDocumentID            : TDBEdit;
    btnZoom                  : TToolButton;
    ppmZoom                  : TPopupMenu;
    FittoPage1               : TMenuItem;
    PageWidth1               : TMenuItem;
    PageHeight1              : TMenuItem;
    N251                     : TMenuItem;
    N501                     : TMenuItem;
    N751                     : TMenuItem;
    N1001                    : TMenuItem;
    N1501                    : TMenuItem;
    N2001                    : TMenuItem;
    N5001                    : TMenuItem;
    XMLDoc                   : TXMLDocument;
    tsAccountFlags           : TTabSheet;
    pcAccountFlags           : TPageControl;
    tsCurrentFlags           : TTabSheet;
    tsHistoryFlags           : TTabSheet;
    grdCurrentFlags          : TDBGrid;
    CoolBar14                : TCoolBar;
    ToolBar14                : TToolBar;
    grdHistoryFlags          : TDBGrid;
    imlAccountFlags          : TImageList;
    CoolBar15                : TCoolBar;
    ToolBar15                : TToolBar;
    btnDeleteFlag            : TToolButton;
    btnMaintainFlag          : TToolButton;
    GroupBox4                : TGroupBox;
    grdBureauPolicy          : TDBGrid;
    imgLimited               : TImage;
    CoolBar16                : TCoolBar;
    ToolBar16                : TToolBar;
    btnAuthoriseVettingFlags : TToolButton;
    imgFailOverride          : TImage;
    CheckBox1                : TCheckBox;
    cmbHandoverType          : TDBLookupComboBox;
    hdrVetting               : THeaderControl;
    grdVetting               : TDBGrid;
    cmbCreditVetting         : TDBLookupComboBox;
    ppmVetting               : TPopupMenu;
    None1                    : TMenuItem;
    Accept1                  : TMenuItem;
    Accept2                  : TMenuItem;
    imlCreditVetting         : TImageList;
    Image2                   : TImage;
    imgUnchecked             : TImage;
    imgChecked               : TImage;
    btnAddRequest            : TToolButton;
    Label27                  : TLabel;
    tlbFraud                 : TToolBar;
    btnMarkFraud             : TToolButton;
    pnlFraudClient           : TPanel;
    lstStatusSubReasons      : TDBLookupListBox;
    pcFraud                  : TPageControl;
    tsFraudBureau2           : TTabSheet;
    CoolBar13                : TCoolBar;
    ToolBar13                : TToolBar;
    btnBureau2_Enquiry       : TToolButton;
    grdFraudEnquiries        : TDBGrid;
    tsFraudBureau3           : TTabSheet;
    CoolBar3                 : TCoolBar;
    ToolBar3                 : TToolBar;
    btnBureau3_Enquiry       : TToolButton;
    grdFraudBureau           : TDBGrid;
    tsFraudAuthentication    : TTabSheet;
    grdFraudAuthentication   : TDBGrid;
    grpFraud                 : TGroupBox;
    Label46                  : TLabel;
    Label48                  : TLabel;
    Label49                  : TLabel;
    DBEdit5                  : TDBEdit;
    DBEdit6                  : TDBEdit;
    DBEdit7                  : TDBEdit;
    CoolBar17                : TCoolBar;
    ToolBar17                : TToolBar;
    btnNewAuthentication     : TToolButton;
    btnViewAuthentication    : TToolButton;
    btnViewBureau3           : TToolButton;
    btnViewBureau2           : TToolButton;
    tsCommunication          : TTabSheet;
    dbgEmailComm             : TDBGrid;
    tbComms                  : TToolBar;
    btnViewCommunication     : TToolButton;
    ToolButton8              : TToolButton;
    btnAcceptBureau3         : TToolButton;
    btnDisableAuthentication : TToolButton;
    bureau3Enable            : TDBEdit;
    enableAuthentication     : TDBEdit;
    tsTracking               : TTabSheet;
    grdTracking              : TDBGrid;
    btnRotate: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure edtCapBorEnter(Sender: TObject);
    procedure btnCalcLoanClick(Sender: TObject);
    procedure edtStartdateChange(Sender: TObject);
    procedure lcbLoanTypeClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReStClick(Sender: TObject);
    procedure edt3TotAmtChange(Sender: TObject);
    procedure ts3RdPayHide(Sender: TObject);
    procedure btnNewStsClick(Sender: TObject);
    procedure grdStatusDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdStatusCellClick(Column: TColumn);
    procedure btnTCheckClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure edtStatsChange(Sender: TObject);
    procedure grdAssetsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure tsLnStatusShow(Sender: TObject);
    procedure edtActionCChange(Sender: TObject);
    procedure btnReportsClick(Sender: TObject);
    procedure Securities1Click(Sender: TObject);
    procedure Tracking1Click(Sender: TObject);
    procedure Affordability1Click(Sender: TObject);
    procedure Status1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure tsLoanMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure edtRegnoEnter(Sender: TObject);
    procedure btnDelLOClick(Sender: TObject);
    procedure btnDelFunderClick(Sender: TObject);
    procedure btnDelCollectClick(Sender: TObject);
    procedure btnDelAttorneyClick(Sender: TObject);
    procedure btnDelStaffClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnDelBranchClick(Sender: TObject);
    procedure btnLinkBranchClick(Sender: TObject);
    procedure btnLinkLOClick(Sender: TObject);
    procedure btnLinkFunderClick(Sender: TObject);
    procedure btnLinkCollectClick(Sender: TObject);
    procedure btnLinkAttorneyClick(Sender: TObject);
    procedure btnLinkStaffClick(Sender: TObject);
    procedure btnViewBranchClick(Sender: TObject);
    procedure btnViewLOClick(Sender: TObject);
    procedure btnViewFunderClick(Sender: TObject);
    procedure btnViewCollectClick(Sender: TObject);
    procedure btnViewAttorneyClick(Sender: TObject);
    procedure btnViewStaffClick(Sender: TObject);
    procedure grdStatusMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SecuritySetup1Click(Sender: TObject);
    procedure btnAffordabilityClick(Sender: TObject);
    procedure cmbLoanUseDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure cmbActionChange(Sender: TObject);
    procedure cmbIndustryChange(Sender: TObject);
    procedure tsApprovalShow(Sender: TObject);
    procedure tsApprovalHide(Sender: TObject);
    procedure grdMatrixDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure DBEdit2Change(Sender: TObject);
    procedure grdOffersCellClick(Column: TColumn);
    procedure grdOffersDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdOffersColEnter(Sender: TObject);
    procedure grdOffersColExit(Sender: TObject);
    procedure grdMatrixMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnAcceptOfferClick(Sender: TObject);
    procedure btnNewOfferClick(Sender: TObject);
    procedure btnAmendOfferClick(Sender: TObject);
    procedure btnDeleteOfferClick(Sender: TObject);
    procedure btnCancelOffersClick(Sender: TObject);
    procedure btnNewNoteClick(Sender: TObject);
    procedure btnAmendNoteClick(Sender: TObject);
    procedure edtRefNoExit(Sender: TObject);
    procedure cmbStatusNotesDropDown(Sender: TObject);
    procedure btnInsertNoteClick(Sender: TObject);
    procedure grdPayoutsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ToolButton1Click(Sender: TObject);
    procedure btnTaskUncheckClick(Sender: TObject);
    procedure chkHiddenOptionsClick(Sender: TObject);
    procedure btnChangeStatusClick(Sender: TObject);
    procedure btnVerifyClick(Sender: TObject);
    procedure grdPayoutsColExit(Sender: TObject);
    procedure tsSummaryShow(Sender: TObject);
    procedure btnEditReasonClick(Sender: TObject);
    procedure btnApproveLoanClick(Sender: TObject);
    procedure btnPreApproveLoanClick(Sender: TObject);
    procedure btnCancelLoanClick(Sender: TObject);
    procedure btnNewPayoutClick(Sender: TObject);
    procedure LoanSettlement1Click(Sender: TObject);
    procedure btnEditPayoutClick(Sender: TObject);
    procedure edtThirdTypeChange(Sender: TObject);
    procedure edtCapBorExit(Sender: TObject);
    procedure tsTrackShow(Sender: TObject);
    procedure ts3RdPayShow(Sender: TObject);
    procedure btnDeletePayoutClick(Sender: TObject);
    procedure grdPayoutsDblClick(Sender: TObject);
    procedure edtOfferIDChange(Sender: TObject);
    procedure OnceOff1Click(Sender: TObject);
    procedure btnRejectQuoteClick(Sender: TObject);
    procedure btnAcceptQuoteClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancel1Click(Sender: TObject);
    procedure edtQuotationIDChange(Sender: TObject);
    procedure btnRecalculateClick(Sender: TObject);
    procedure btnResendQuoteClick(Sender: TObject);
    procedure tsVettingShow(Sender: TObject);
    procedure tsVettingResize(Sender: TObject);
    procedure grdPoliciesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ToolButton6Click(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure Quotation1Click(Sender: TObject);
    procedure QuotationCallScript1Click(Sender: TObject);
    procedure ppmQuotationPopup(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure btnExportQuoteClick(Sender: TObject);
    procedure grdQuoteOffersDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnReviewLoanClick(Sender: TObject);
    procedure btnDisableOptionClick(Sender: TObject);
    procedure btnApplyLimitsClick(Sender: TObject);
    procedure btnCancelQuoteClick(Sender: TObject);
    procedure tsQuotationsShow(Sender: TObject);
    procedure btnManagerEditClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure LoanTransfer1Click(Sender: TObject);
    procedure btnNewVerificationsNotesClick(Sender: TObject);
    procedure btnEditVerificationNotesClick(Sender: TObject);
    procedure tsAllNotesShow(Sender: TObject);
    procedure btnNewNoteAllClick(Sender: TObject);
    procedure btnEditNoteAllClick(Sender: TObject);
    procedure DataCapturing1Click(Sender: TObject);
    procedure btnNewQuoteNoteClick(Sender: TObject);
    procedure btnEditQuoteNoteClick(Sender: TObject);
    procedure btnEditDebtNotesClick(Sender: TObject);
    procedure tsBureauShow(Sender: TObject);
    procedure cmbEnquiryHistoryChange(Sender: TObject);
    procedure grdEnquiryHistoryDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdEnquiryHistoryDblClick(Sender: TObject);
    procedure tsBureauResize(Sender: TObject);
    procedure Beneficiary1Click(Sender: TObject);
    procedure btnManualOptionClick(Sender: TObject);
    procedure tsDocumentsShow(Sender: TObject);
    procedure edtDocumentIDChange(Sender: TObject);
    procedure grdDocumentsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPrintClick(Sender: TObject);
    procedure btnZoomInClick(Sender: TObject);
    procedure btnDeleteOptionClick(Sender: TObject);
    procedure btnDebtClick(Sender: TObject);
    procedure btnMyWorkClick(Sender: TObject);
    procedure grdRatesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCancelRateClick(Sender: TObject);
    procedure btnNewRateClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tcFeesChange(Sender: TObject);
    procedure grdPayrollRulesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tsAuthorisationsShow(Sender: TObject);
    procedure btnNewAuthorisationNoteClick(Sender: TObject);
    procedure btnEditAuthorisationNoteClick(Sender: TObject);
    procedure grdAuthorisationsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdAuthorisationsCellClick(Column: TColumn);
    procedure btnDeleteDocumentClick(Sender: TObject);
    procedure btnReIndexDocumentClick(Sender: TObject);
    procedure btnLinkIntermediaryClick(Sender: TObject);
    procedure btnViewIntermediaryClick(Sender: TObject);
    procedure btnDeleteIntermediaryClick(Sender: TObject);
    procedure btnSendQuoteClick(Sender: TObject);
    procedure tsFraudShow(Sender: TObject);
    procedure imnMultiImageSelect(Sender: TObject; idx: Integer);
    procedure ImageEnVect1Click(Sender: TObject);
    procedure FittoPage1Click(Sender: TObject);
    procedure PageWidth1Click(Sender: TObject);
    procedure PageHeight1Click(Sender: TObject);
    procedure N5001Click(Sender: TObject);
    procedure btnZoomClick(Sender: TObject);
    procedure grdFraudEnquiriesDblClick(Sender: TObject);
    procedure btnBureau2_EnquiryClick(Sender: TObject);
    procedure btnMaintainFlagClick(Sender: TObject);
    procedure tsAccountFlagsShow(Sender: TObject);
    procedure btnDeleteFlagClick(Sender: TObject);
    procedure tsHistoryFlagsShow(Sender: TObject);
    procedure btnAuthoriseVettingFlagsClick(Sender: TObject);
    procedure grdVettingCellClick(Column: TColumn);
    procedure grdVettingDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdVettingKeyPress(Sender: TObject; var Key: Char);
    procedure cmbCreditVettingKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbCreditVettingEnter(Sender: TObject);
    procedure btnAddRequestClick(Sender: TObject);
    procedure edtTaskSuccessIDChange(Sender: TObject);
    procedure btnMarkFraudClick(Sender: TObject);
    procedure edtAccountFlagIDChange(Sender: TObject);
    procedure btnDeclineLoanClick(Sender: TObject);
    procedure grdFraudBureauDblClick(Sender: TObject);
    procedure btnBureau3_EnquiryClick(Sender: TObject);
    procedure btnViewBureau2Click(Sender: TObject);
    procedure btnViewBureau3Click(Sender: TObject);
    procedure grdFraudAuthenticationDblClick(Sender: TObject);
    procedure btnNewAuthenticationClick(Sender: TObject);
    procedure tsCommunicationShow(Sender: TObject);
    procedure btnViewCommunicationClick(Sender: TObject);
    procedure dbgEmailCommDblClick(Sender: TObject);
    procedure btnAcceptBureau3Click(Sender: TObject);
    procedure btnDisableAuthenticationClick(Sender: TObject);
    procedure bureau3EnableChange(Sender: TObject);
    procedure enableAuthenticationChange(Sender: TObject);
    procedure tsTrackingShow(Sender: TObject);
    procedure btnRotateClick(Sender: TObject);
  private
    { Private declarations }
    HintWin: THintWindow;
    dtmLetter : TdtmLetter;
    FLoanID: integer;
    CurrentTab: TTabSheet;
    NetAvl : Currency;
    FCurrStatus: Integer;
    FOnlyRead: Boolean;
    FViewUsernames: Boolean;
    FCanEditRiskTasks: Boolean;
    FCanEditFraudTasks: Boolean;
    FCanEditAuthorisationsTasks: Boolean;
    procedure SetViewUsernames(const Value: Boolean);
    procedure SetVettingSummary;
    procedure ShowBureauWebResults;
    procedure PrintQuotation(Sender: TObject);
    procedure PrintBoodleQuotation(Sender: TObject);
    procedure SendBrumaQuotation(SendEmail: String);
    procedure SetCurrStatus(const Value: Integer);
    property CurrStatus: Integer read FCurrStatus write SetCurrStatus;
    property ViewUsernames: Boolean read FViewUsernames write SetViewUsernames;
    property CanEditAuthorisationsTasks: Boolean read FCanEditAuthorisationsTasks write FCanEditAuthorisationsTasks;
    property CanEditRiskTasks: Boolean read FCanEditRiskTasks write FCanEditRiskTasks;
    property CanEditFraudTasks: Boolean read FCanEditFraudTasks write FCanEditFraudTasks;
    procedure SetStatusUpdate(CanUpdate: Boolean);
    procedure ClearLoanDetails(CleanCap: boolean);
    procedure SetTotLoanLbl;
    procedure SetLoanFeeDesc;
    procedure SetLoanFeeAddTo;
    procedure DoLinkLU(RelType, FldName :string; lbl :TLabel);
    procedure SetScreenCanAmend(Amd :boolean);
    procedure SetLoanAccTypeSettings;
    procedure ReStrucLoan;

    procedure SetLimitOnAff;
    procedure CompareInstalToLimit;
    procedure CheckItem(DataSet: TDataSet; Chk :Byte);
    procedure PaintGrdType(grd: TDBGrid; Rect: TRect; inType: integer);
    procedure PaintGrdChkB(grd: TDBGrid; Rect: TRect; Chked: integer); overload;
    procedure PaintGrdChkB(grd: TDBGrid; Rect: TRect; Checked: Boolean); overload;
    procedure ShowLink(EntityID: Integer);
    procedure DeleteLink(FLabel: TLabel; FieldName: String);
    procedure UpdateOffers(DataSet: TDataSet);
    procedure CreateMatrix(UsePayouts: Boolean);
    procedure SetOnlyRead(const Value: Boolean);
    procedure CreateQuote;
    procedure VoiceRecordClick(Sender: TObject);
    procedure ShowResultOptions(QueryType: Integer);
    procedure ShowBureauResults(sResult: WideString);
    procedure ShowBureauResultsXML(sResult: WideString);
    procedure ShowBureauFraudResultsXML;
  protected
    { Protected declarations }
    frmPreviewTabDoc: TfrmPreviewDoc;
    DocPath: String;
    procedure SetLoanID(const Value: integer); virtual;
  public
    { Public declarations }
    isAmd : boolean;
    procedure SetScreenLbls;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;
    property LoanID :integer read FLoanID write SetLoanID; // -1 new loan
    procedure ShowBoxes(ShowStatus : boolean);
  end;

implementation

uses uBase32, dmMain, Math, uLScentral, dmLoanC,
  fmLDStruc, dmLoanCLU, uReports, dmAffordability, rptLoanAgree, dmLS,
  fmLoanAgree, dmEntRef, fmEntDetS, fmAffordability,
  dmAffordCalc, dmSecFrm, fmVerifyLoan, DateUtils, fmLoanApproval,
  fmLoanStatus, fmDeclineReason, fmPayoutDetail, fmThirdPartySettle,
  fmAcceptOption, fmBureauAccount, fmRejectQuote,
  fmPayLoanSettle, dmPayouts, fmPayLoanTransfer, dmBureau,
  fmManualOptionWizard, dmQuotations, fmLoanViewDoc, fmDebtObligations,
  fmMyWork, dmLoanRates, fmLoanNewRate, dmLoanFees, fmWait, fmSend,
  fmDocumentReindex, fmSendFax, dmFraud, fmAccountFlagMaintain,
  dmAccountFlag, fmLoanAuthoriseFlag, dmSecurity, Types, fmWorkAddRequest,
  dmWorkFlow, fmAddAccountFlag, fmDeclineCancelLoan, FPMEnquiryService,
  fmLoanAuthenticationDetail;
{$R *.DFM}

procedure TfrmLoanDet.FormCreate(Sender: TObject);
begin
  dtmLetter := TDtmLetter.create(self);
  dtmLoanC := TdtmLoanC.Create(Self);
  dtmPayouts := TdtmPayouts.Create(Self);
  dtmLoanC.EntID := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
  dtmLoanC.SetLoanDetStatus(True);
  ViewUsernames := dtmSecurity.AllowAccess(200);
  btnDeleteFlag.Visible := dtmSecurity.AllowAccess(163);
  btnAuthoriseVettingFlags.Visible := dtmSecurity.AllowAccess(201);
  btnMarkFraud.Visible := dtmSecurity.AllowAccess(209);
  btnViewBureau2.Visible := dtmSecurity.AllowAccess(235);
  btnViewBureau3.Visible := dtmSecurity.AllowAccess(236);
  btnAcceptBureau3.Visible := dtmSecurity.AllowAccess(259);
  btnDisableAuthentication.Visible := dtmSecurity.AllowAccess(260);

  tsFraudAuthentication.TabVisible := dtmSecurity.AllowAccess(234);
  tsCommunication.TabVisible := dtmSecurity.AllowAccess(254);
  btnViewCommunication.Visible := dtmSecurity.AllowAccess(255);
  btnChangeStatus.Visible := dtmSecurity.AllowAccess(300);

  CanEditAuthorisationsTasks := dtmSecurity.AllowAccess(205);
  CanEditRiskTasks := dtmSecurity.AllowAccess(206);
  CanEditFraudTasks := dtmSecurity.AllowAccess(207);

  //Create datamodules needed for this form
  dtmQuotations := TdtmQuotations.Create(Self);

  CurrentTab := tsLoan;
  HintWin := THintWindow.Create(Self);
  HintWin.Color := clInfoBk;

  pcLoan.ActivePage := tsLoan;
  dtmLoanC.qryLoanDet.Open;
  dtmLoanC.dsLoanFeeDetail.Open;
  dtmLoanC.dsLimitOptionReasons.Open;
  dtmLoanC.qryLUReasons.Open;
  dtmLoanC.dsSubReasons.Open;
  dtmLoanC.dsAccountSubReason.Open;
  dtmLoanC.dsCommunication.Open;

  dtmLoanC.cmdGetAff.Parameters[1].Value := dtmLoanC.EntID;
  dtmLoanC.cmdGetAff.Execute;
  lblACTAvl.Caption := FloatToStrF(dtmLoanC.cmdGetAff.Parameters[2].Value,ffCurrency,15,2);
  lblACCLns.Caption := FloatToStrF(dtmLoanC.cmdGetAff.Parameters[3].Value,ffCurrency,15,2);
  SetLimitOnAff;
  lblLnPrdInd.Caption := GetInstFreqDesc(dtmLoanC.qryLT.FieldByName('AccType').AsInteger);

  dtmLetter := TdtmLetter.create(self);
  dtmLetter.qryLoanAgree.Open;

  dtmAccountFlag := TdtmAccountFlag.Create(Self);


  dtmLoanC.qryDocPath.Open;

  ImageEnVect1.FitToWidth;

  //dtmSecFrm.SetForm(Self);

 { dtmLoanC.dsOffers.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
  dtmLoanC.dsOffers.Open; }

{  LoadDBLookup(cmbLoanUse,dtmLoanCLU.qryLoanUse,'TypeKey','Description');
  LoadDBLookup(cmbAction,dtmLoanCLU.qryLUActInd,'TypeKey','Description');
  LoadDBLookup(cmbIndicator,dtmLoanCLU.qryLoanInd2,'TypeKey','Description');
  LoadDBLookup(cmbSubAction,dtmLoanCLU.qryLoanInd,'TypeKey','Description');
  //The Industry and Region lookups seem to be mixed - need to review and verify
  LoadDBLookup(cmbRegion,dtmLoanCLU.qryLUIndustry,'TypeKey','Description');
  LoadDBLookup(cmbIndustry,dtmLoanCLU.qryLURegion,'TypeKey','Description');}

  {lblCreateBy.Parent := stsLoan;
  lblCreateUser.Parent := stsLoan;
  lblCreateBy.Left := 2;
  lblCreateBy.Top  := 3;
  lblCreateUser.Left := lblCreateBy.Left + lblCreateBy.Width + 2;
  lblCreateUser.Top  := lblCreateBy.Top;
  lblUpdateBy.Parent := stsLoan;
  lblUpdateUser.Parent := stsLoan;
  lblUpdateBy.Top := lblCreateBy.Top;
  lblUpdateBy.Left := lblCreateUser.Left + lblCreateUser.Width + 10;
  lblUpdateUser.Top := lblCreateBy.Top;
  lblUpdateUser.Left := lblUpdateBy.Left + lblUpdateBy.Width + 2;  }
end;

procedure TfrmLoanDet.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Config: TInifile;
begin
  inherited;
  Config := TIniFile.Create(PersonalFolder + '\' + ApplName + '.ini');
  Config.WriteBool('Affordability','ShowHiddenOptions',chkHiddenOptions.Checked);
  FreeAndNil(Config);

  dtmLoanC.dsOfferPayouts.Close;
  dtmLoanC.dsOffersMatrix.Close;
  dtmLoanC.dsPayMatrix.Close;
  dtmLoanC.dsOffers.Close;
  dtmLoanC.dsBureauAccounts.Close;
  dtmLoanC.dsQuotes.Close;
  dtmLoanC.dsScorecard.Close;
  dtmLoanC.dsScorecardTU.Close;
  dtmLoanC.dsAuthoriseFlags.Close;
  dtmLoanC.dsHandoverType.Close;
  dtmLoanC.qryLUReasons.Close;
  dtmLoanC.dsSubReasons.Close;
  dtmLoanC.dsAccountSubReason.Close;
  dtmLoanC.dsEventTracking.Close;

  //if Assigned(dtmFraud) then
    //dtmFraud.dsEnquiries.Close;
  dtmLoanC.dsFraudEnquiry.Close;

  FilterDataSet(dtmLoanC.qryLoanDet,'');
  dtmLoanC.qryDocPath.Close;
  dtmLoanC.dsLimitOptionReasons.Close;
  dtmLoanC.qryLoanDet.Close;
  dtmLoanC.dsLoanFeeDetail.Close;
  dtmLoanC.dsVettingSummary.Close;
  dtmLoanC.dsVetting.Close;
  dtmLoanC.dsVettingResult.Close;
  dtmLoanC.dsCommunication.Close;

  if dtmLoanC.dsDocuments.Active then
  begin
    dtmLoanC.dsDocuments.Close;
    dtmLoanC.dsPages.Close;
    dtmLoanC.dsDocuments.AfterScroll := nil;
  end;

  if Assigned(frmDebtObligations) then
  begin
    FreeAndNil(frmDebtObligations);
  end;

  if Assigned(frmPreviewTabDoc) then
  begin
    frmPreviewTabDoc.Close;
    FreeAndNil(frmPreviewTabDoc);
  end;

  FreeAndNil(dtmQuotations);
  FreeAndNil(dtmLoanRates);
  FreeAndNil(dtmLoanFees);
  FreeAndNil(dtmPayouts);
  FreeAndNil(dtmLoanC);

  dtmAccountFlag.dsCurrentFlags.Close;
  dtmAccountFlag.dsHistoryFlags.Close;
  FreeAndNil(dtmAccountFlag);

  if Assigned(dtmBureau) then
  begin
    dtmBureau.dsFailedPolicy.Close;
    dtmBureau.qryEntity.Close;
    dtmBureau.qryEnqHistory.Close;
    FreeAndNil(dtmBureau);
  end;

  if Assigned(dtmFraud) then
  begin
    dtmFraud.dsEnquiries.Close;
    dtmFraud.dsFraudBureau.Close;
    dtmFraud.dsAuthentication.Close;
    FreeAndNil(dtmFraud);
  end;
end;

procedure TfrmLoanDet.SetLoanID(const Value: integer);
begin
  FLoanID := Value;
  if LoanID = -1 then
    dtmLoanC.qryLoanDet.Append
  else
    FilterDataSet(dtmLoanC.qryLoanDet,'LoanID='+IntToStr(LoanID));

  dtmPayouts.LoanID := LoanID;

  uNoteSys.Tablename := 'lsLoanDetail';
  uNoteSys.UserID := dtmMain.CurrentID;
  uNoteSys.KeyValue := IntToStr(LoanID);
  uNoteSys.Connection := dtmMain.dbData;
  uNoteSys.Categories := '110004015';
  uNoteSys.RichEdit := rdtQuoteNotes;
  DisplayNotes(False);
  tsVerificationNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';

  {Self.Caption := 'Loan Details - (Score: ' +
    dtmLoanC.qryLoanDet.FieldByName('ExpertScore').AsString + ')';   }

  btnMyWork.Visible := dtmMain.qryWorkLU.Locate('LoanID', Value, []);

  dtmLoanC.qryStatus.Close;
  dtmLoanC.qryStatus.Parameters[0].Value := LoanId;//qryLoanDet.FieldByName('LoanID').AsInteger;
  dtmLoanC.qryStatus.Open;

  dtmLoanC.dsBureauDisabled.Close;
  dtmLoanC.dsBureauDisabled.Parameters[0].Value := LoanID;
  dtmLoanC.dsBureauDisabled.Open;

  dtmLoanC.dsCommunication.Close;
  dtmLoanC.dsCommunication.Parameters[0].Value := LoanID;
  dtmLoanC.dsCommunication.Open;

  if Assigned(dtmLoanRates) then
    FreeAndNil(dtmLoanRates);

  if Assigned(dtmLoanFees) then
    FreeAndNil(dtmLoanFees);

  CreateLoanRates(LoanID);
  CreateLoanFees(LoanID);
  SetCurrStatus(CurrStatus);

  tcFees.Tabs.Clear;
  while not dtmLoanFees.dsFees.Eof do
  begin
    tcFees.Tabs.Add(dtmLoanFees.dsFees.FieldByName('FeeName').AsString);
    dtmLoanFees.dsFees.Next;
  end;
end;

procedure TfrmLoanDet.SetScreenLbls;
begin

   
  if dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('IntermediaryID').AsInteger) <> ''
    then btnLinkIntermediary.Visible :=  dtmSecurity.AllowAccess(305);

  // set link ID det
  lblLloid.Caption    := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('LOID').AsInteger);
  lblIntermediary.Caption := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('IntermediaryID').AsInteger);
  lblLfund.Caption    := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('FunderID').AsInteger);
  lblBranch.Caption   := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('BranchID').AsInteger);
  lblLdc.Caption      := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('Link1').AsInteger);
  lblLatt.Caption     := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('Link2').AsInteger);
  lblLsm.Caption      := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName('Link3').AsInteger);
  lblRegion.Caption   := dtmLoanC.GetLinkDesc(dtmLoanC.qryLoanDet.FieldByName('Link4').AsInteger);
  lblIndustry.Caption := dtmLoanC.GetLinkDesc(dtmLoanC.qryLoanDet.FieldByName('Link5').AsInteger);

  lblLTaccT.Caption := GetLTtypeDesc(dtmLoanC.qryLoanDet.FieldByName('LTaccT').AsInteger);
  // Set non db labels
  lblLoanUse.Caption := lcbLoanUse.Text;
  lblLoanInd.Caption := lcbLoanInd.Text;
  lblInd1.Caption    := cmbActInd.Text;
  lblInd2.Caption    := cmbLoanInd.Text;
  //lblAprvA.Caption   := cmbApprCtl.Text;

  //
  lblRate.Caption := FloatToStrF(dtmLoanC.qryLoanDet.FieldByName('IntRate').AsFloat,
    ffFixed,5,2)+' %';
end;

{WB 31/01/2000
 Set form to either view only or new/amended loan details}
procedure TfrmLoanDet.ShowBoxes(ShowStatus: boolean);
var
  i : integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TDBEdit then
    begin
      TDBEdit(Components[i]).ReadOnly := not ShowStatus;
      if ShowStatus then
        TDBEdit(Components[i]).Color := clWindow
      else
        TDBEdit(Components[i]).Color := clBtnFace;
    end
    else if Components[i] is TEdit then
    begin
      TEdit(Components[i]).ReadOnly := not ShowStatus;
      if ShowStatus then
        TEdit(Components[i]).Color := clWindow
      else
        TEdit(Components[i]).Color := clBtnFace;
    end
    else if Components[I] is TDBLookupComboBox then
    begin
      TDBLookupComboBox(Components[I]).ReadOnly := not ShowStatus;
      if ShowStatus then
        TDBLookupComboBox(Components[I]).Color := clWindow
      else
        TDBLookupComboBox(Components[I]).Color := clBtnFace;
    end
    else if Components[I] is TDBComboBox then
    begin
      TDBComboBox(Components[I]).ReadOnly := not ShowStatus;
      if ShowStatus then
        TDBComboBox(Components[I]).Color := clWindow
      else
        TDBComboBox(Components[I]).Color := clBtnFace;
    end
    else if Components[I] is TComboBox then
    begin
      TComboBox(Components[I]).Enabled := ShowStatus;
      if ShowStatus then
        TComboBox(Components[I]).Color := clWindow
      else
      TComboBox(Components[I]).Color := clBtnFace;
    end
    else if Components[I] is TDateTimePicker then
    begin
      TDateTimePicker(Components[I]).Enabled := ShowStatus;
      if ShowStatus then
        TDateTimePicker(Components[I]).Color := clWindow
      else
        TDateTimePicker(Components[I]).Color := clBtnFace;
    end
    else if Components[I] is TDBMemo then
    begin
      TDBMemo(Components[I]).ReadOnly := not ShowStatus;
      if ShowStatus then
        TDBMemo(Components[I]).Color := clWindow
      else
        TDBMemo(Components[I]).Color := clBtnFace;
    end
    else if Components[I] is TDBRadioGroup then
      TDBRadioGroup(Components[I]).ReadOnly := not ShowStatus
    else if Components[I] is TToolButton then
    begin
      if not (TToolButton(Components[I]).Parent.Name = 'tlbStatusUpdate') then
      TToolButton(Components[I]).Enabled := ShowStatus;
    end;
      
//    else if Components[I] is TSpeedButton then
//      TSpeedButton(Components[I]).Visible := False;
  end;
  // Radio buttons
  rgpInstPaid.ReadOnly := not ShowStatus;
  // Link buttons
  btnDelBranch.Visible    := ShowStatus;//SetVisible(Self,btnDelBranch.Name,ShowStatus);
  btnLinkBranch.Visible   := ShowStatus;//SetVisible(Self,btnLinkBranch.Name,ShowStatus);
  btnDelLO.Visible        := ShowStatus;//SetVisible(Self,btnDelLO.Name,ShowStatus);
  btnLinkLO.Visible       := ShowStatus;//SetVisible(Self,btnLinkLO.Name,ShowStatus);
  btnDelFunder.Visible    := ShowStatus;//SetVisible(Self,btnDelFunder.Name,ShowStatus);
  btnLinkFunder.Visible   := ShowStatus;//SetVisible(Self,btnLinkFunder.Name,ShowStatus);
  btnDelCollect.Visible   := ShowStatus;//SetVisible(Self,btnDelCollect.Name,ShowStatus);
  btnLinkCollect.Visible  := ShowStatus;//SetVisible(Self,btnLinkCollect.Name,ShowStatus);
  btnDelAttorney.Visible  := ShowStatus;//SetVisible(Self,btnDelAttorney.Name,ShowStatus);
  btnLinkAttorney.Visible := ShowStatus;//SetVisible(Self,btnLinkAttorney.Name,ShowStatus);
  btnDelStaff.Visible     := ShowStatus;//SetVisible(Self,btnDelStaff.Name,ShowStatus);
  btnLinkStaff.Visible    := ShowStatus;//etVisible(Self,btnLinkStaff.Name,ShowStatus);

  btnNewNote.Enabled      := ShowStatus;
  btnAmendNote.Enabled    := ShowStatus;

  btnNewRate.Enabled := True;

  btnChangeStatus.Enabled := ShowStatus;

  btnSendToT.Enabled := ShowStatus;

  //btnApproveLoan.Enabled := ShowStatus;
  //btnDeclineLoan.Enabled := ShowStatus;
  //btnReviewLoan.Enabled := ShowStatus;


  btnReports.Enabled := ShowStatus;

  btnAffordability.Enabled := True; //Always enable affordability button as this opens another form
  btnOpen.Enabled := True;
  btnExportQuote.Enabled := True;
  btnPrint.Enabled := dtmSecurity.AllowAccess(253);
  btnViewCommunication.Enabled := True;
  btnZoom.Enabled := True;
  btnZoomIn.Enabled := True;
  btnZoomOut.Enabled := True;
  btnSendQuote.Enabled := True;
  btnRotate.Enabled := True;

  if not OnlyRead then
  begin
    btnChangeStatus.Enabled := True;
    btnNewAuthorisationNote.Enabled := True;
    btnEditAuthorisationNote.Enabled := True;
    btnNewQuoteNote.Enabled := True;
    btnEditQuoteNote.Enabled := True;
    btnNewNote.Enabled := True;
    btnNewNoteAll.Enabled := True;
    btnEditNoteAll.Enabled := True;
    btnReIndexDocument.Enabled := True;
    btnBureau2_Enquiry.Enabled := True;
    btnBureau3_Enquiry.Enabled := True;
    btnNewAuthentication.Enabled := True;
    btnViewBureau2.Enabled := True;
    btnViewBureau3.Enabled := True;
    btnMaintainFlag.Enabled := True;
    btnDeleteFlag.Enabled := True;

    cmbHandoverType.ReadOnly := False;
    cmbHandoverType.Color := clWindow;

    cmbCreditVetting.ReadOnly := False;
    cmbCreditVetting.Color := clWindow;

    btnMarkFraud.Enabled := True;
  end;

  SetStatusUpdate(ShowStatus);
end;

procedure TfrmLoanDet.SetLoanFeeDesc;
begin
  if dtmLoanC.qryLTFeeD.Locate('TypeKey',1,[]) then
    lblFee1.Caption := dtmLoanC.qryLTFeeD.FieldByName('Description').AsString;
  if dtmLoanC.qryLTFeeD.Locate('TypeKey',2,[]) then
    lblFee2.Caption := dtmLoanC.qryLTFeeD.FieldByName('Description').AsString;
  if dtmLoanC.qryLTFeeD.Locate('TypeKey',3,[]) then
    lblFee3.Caption := dtmLoanC.qryLTFeeD.FieldByName('Description').AsString;
  if dtmLoanC.qryLTFeeD.Locate('TypeKey',4,[]) then
    lblFee4.Caption := dtmLoanC.qryLTFeeD.FieldByName('Description').AsString;
  if dtmLoanC.qryLTFeeD.Locate('TypeKey',5,[]) then
    lblFee5.Caption := dtmLoanC.qryLTFeeD.FieldByName('Description').AsString;
  if dtmLoanC.qryLTFeeD.Locate('TypeKey',6,[]) then
    lblFee6.Caption := dtmLoanC.qryLTFeeD.FieldByName('Description').AsString;
  if dtmLoanC.qryLTFeeD.Locate('TypeKey',7,[]) then
    lblFee5.Caption := dtmLoanC.qryLTFeeD.FieldByName('Description').AsString;
end;

procedure TfrmLoanDet.SetLoanFeeAddTo;
begin
  lblAddTo1.Caption := GetFeeTypeInd(dtmLoanC.qryLT.FieldByName('FeeT1').AsInteger);
  lblAddTo2.Caption := GetFeeTypeInd(dtmLoanC.qryLT.FieldByName('FeeT2').AsInteger);
  lblAddTo3.Caption := GetFeeTypeInd(dtmLoanC.qryLT.FieldByName('FeeT3').AsInteger);
  lblAddTo4.Caption := GetFeeTypeInd(dtmLoanC.qryLT.FieldByName('FeeT4').AsInteger);
  lblAddTo5.Caption := GetFeeTypeInd(dtmLoanC.qryLT.FieldByName('FeeT5').AsInteger);
  lblAddTo6.Caption := GetFeeTypeInd(dtmLoanC.qryLT.FieldByName('FeeT6').AsInteger);
  lblAddTo5.Caption := GetFeeTypeInd(dtmLoanC.qryLT.FieldByName('FeeT7').AsInteger);
end;

procedure TfrmLoanDet.SetScreenCanAmend(Amd :boolean);
begin
  if not Amd then
    lblLnPrdInd.Caption := GetInstFreqDesc(dtmLoanC.qryLoanDet.FieldByName('LTAccT').AsInteger);
        
  //lcbLoanType.Visible   := Amd;
  edtStartdate.Visible  := Amd;
  edtFirstDate.Visible  := Amd;
  edtCapBor.Visible     := Amd;
  edtResVal.Visible     := Amd;
  edtLoanPeriod.Visible := Amd;
//  btnCalcLoan.Visible   := Amd;
  edtRefNo.Visible      := Amd;
  dtpAppDate.Visible    := Amd;
  //edtAppAmt.Visible     := Amd;
  //cmbApprCtl.Visible    := Amd;
  //dbcReason.Visible     := Amd;
  //btnAffordability.Visible := SetVisible(Self,btnAffordability.Name,Amd);

  //btnReSt.Visible       := Amd;
end;

{--------------------- Set screen cosmetics - end -----------------------------}

{WB 31/01/2000 - This calculates the missing components of the loan}
procedure TfrmLoanDet.btnCalcLoanClick(Sender: TObject);
begin
  inherited;
 { if CurrStatus = lnsInactive then
  begin      }
    CheckDataSet(dtmLoanC.qryLoanDet);
    if not dtmLoanC.ErrorsForLoan then
    begin
      Screen.Cursor := crHourGlass;
      try
        dtmLoanC.CalculateCurrentLoan;
        RequeryOnRecord(dtmLoanC.qryLoanDet,'LoanID');
        CompareInstalToLimit;
        SetTotLoanLbl;
      finally
        Screen.Cursor := crDefault;
      end;
    end;
 // end;
end;

procedure TfrmLoanDet.SetLimitOnAff;
begin
  NetAvl := (dtmLoanC.cmdGetAff.Parameters[2].Value-
    dtmLoanC.cmdGetAff.Parameters[3].Value)*
    dtmLoanC.qryLT.FieldByName('AffPerc').AsFloat/100;
  lblACNAvl.Caption := FloatToStrF(dtmLoanC.cmdGetAff.Parameters[2].Value-
    dtmLoanC.cmdGetAff.Parameters[3].Value,ffCurrency,15,2);
  lblACLlmt.Caption := FloatToStrF(NetAvl,ffCurrency,15,2);
  lblAClmt2.Caption := lblACLlmt.Caption;
end;

{WB 31/01/2000 - On the Combobox CloseUp find the choosen LoanType}
procedure TfrmLoanDet.FormShow(Sender: TObject);
var
  Config: TIniFile;
begin
  inherited;
  Config := TIniFile.Create(PersonalFolder + '\' + ApplName + '.ini');
  if chkHiddenOptions.Enabled then
    chkHiddenOptions.Checked := Config.ReadBool('Affordability','ShowHiddenOptions',True);
  FreeAndNil(Config);

  //if lcbLoanType.Visible then
  //  lcbLoanType.SetFocus;
  SetTotLoanLbl;
  SetLoanFeeDesc;
  SetLoanFeeAddTo;
  //if lcbLoanType.Visible then
  if edtCapBor.Visible then
    SetScreenCanAmend(dtmLoanC.CanAmendLoan);

  if btnReST.Visible then
    btnReST.Visible := dtmLoanC.qryLoanDet.FieldByName('LTaccT').AsInteger<2;//HP only

  // LEFT OUT FOR THE NEW QUOTING FACILITY
  
 (* if CurrStatus = lnsInactive then
    if not dtmLoanC.qryLoanDet.FieldByName('LoanID').IsNull then
      btnCalcLoan.Click;
 *)

 { frmPreviewTabDoc := TfrmPreviewDoc.Create(Self);
  frmPreviewTabDoc.Parent := tsDocuments;
  frmPreviewTabDoc.pnlTools.Hide;
  frmPreviewTabDoc.Align := alClient;
  frmPreviewTabDoc.LoanID := LoanID;
  frmPreviewTabDoc.Show;
  frmPreviewTabDoc.BorderStyle := bsNone;   }

  dtmSecFrm.SetForm(Self);

  SetLoanAccTypeSettings;
end;

{WB 31/01/2000 - If other info of the loan than this below changes, reset this info}
procedure TfrmLoanDet.ClearLoanDetails(CleanCap: boolean);
begin
  dtmLoanC.ClearLoanDetails;
  SetTotLoanLbl;
end;

{WB 31/01/2000
 If the Capital borrowed changes clear the monthly installment to recalculate it}
procedure TfrmLoanDet.edtCapBorEnter(Sender: TObject);
begin
  inherited;
(*//**  if not FReadOnly then
  begin
    dtmLoanC.qryLoanDet.Edit;
    dtmLoanC.ClearLoanDetails;
    {try
      if edtCapBor.Text <> '' then
        dtmLoanC.qryLoanDet.FieldByName('LoanCapital').AsFloat := StrToFloat(edtCapBor.Text);
    except
      dtmLoanC.qryLoanDet.FieldByName('LoanCapital').AsFloat := 0;
    end;
    }
    SetTotLoanLbl;
  end;
  *)
end;

{WB 31/01/2000 - Add loan components to set total loan label}
procedure TfrmLoanDet.SetTotLoanLbl;
begin
  lblTotLoan.Caption := CurrToStrF(
    dtmLoanC.qryLoanDet.FieldByName('AmtToFin').AsCurrency+
    dtmLoanC.qryLoanDet.FieldByName('TotInterest').AsCurrency,
    ffCurrency,2);
end;

procedure TfrmLoanDet.edtStartdateChange(Sender: TObject);
begin
  inherited;
  if CheckDataSetForPost(dtmLoanC.qryLoanDet) then
    ClearLoanDetails(True);
end;

procedure TfrmLoanDet.dtpStartCloseUp(Sender: TObject);
begin
  inherited;
  if dtmLoanC.qryLoanDet.FieldByName('LTaccT').AsInteger >= ltactHPWI then
  begin
    if dtmLoanC.qryLoanDet.FieldByName('LTaccT').AsInteger in [ltactHPWI,ltactHPAWI] then
      dtmLoanC.qryLoanDet.FieldByName('FirstInsDate').AsDateTime :=
        dtmLoanC.qryLoanDet.FieldByName('StartDate').AsDateTime + 7
    else
      dtmLoanC.qryLoanDet.FieldByName('FirstInsDate').AsDateTime :=
        dtmLoanC.qryLoanDet.FieldByName('StartDate').AsDateTime + 14;
  end;
end;

procedure TfrmLoanDet.SetLoanAccTypeSettings;
begin
  // Set accT labels
  lblLTaccT.Caption := GetLTtypeDesc(dtmLoanC.qryLT.FieldByName('AccType').AsInteger);
  if dtmLoanC.qryLT.FieldByName('AccType').AsInteger <= ltactAsset then
    lblLnAmt.Caption := 'Capital borrowed'
  else
    lblLnAmt.Caption := 'Credit limit';
  //
  edtLoanPeriod.Enabled := False;
  edtResVal.Enabled := False;
  case dtmLoanC.qryLT.FieldByName('AccType').AsInteger of
    ltactRevCrT : dtmLoanC.qryLoanDet.FieldByName('LoanPeriod').AsInteger :=
      dtmLoanC.qryLT.FieldByName('RCTerm').AsInteger; // RC LT term fix
    ltactRevCrB : dtmLoanC.qryLoanDet.FieldByName('LoanPeriod').AsInteger := 0; // RC balance term=0
    else
    begin
      edtLoanPeriod.Enabled := True;
      edtResVal.Enabled     := True;
    end;
  end;
  lblLnPrdInd.Caption := GetInstFreqDesc(dtmLoanC.qryLT.FieldByName('AccType').AsInteger);
end;

procedure TfrmLoanDet.lcbLoanTypeClick(Sender: TObject);
begin
  inherited;
(*  if not OnlyRead then
  begin
    dtmLoanC.SetLoanRate;
    dtmLoanC.qryLoanDet.FieldByName('LTaccT').AsInteger :=
      dtmLoanC.qryLT.FieldByName('AccType').AsInteger;
    dtmLoanC.qryLoanDet.FieldByName('LoanCapital').AsCurrency :=
      dtmLoanC.qryLT.FieldByName('MinAmt').AsInteger;
    dtmLoanC.qryLoanDet.FieldByName('LoanPeriod').AsInteger :=
      dtmLoanC.qryLT.FieldByName('MinTerm').AsInteger;
    //
    lblRate.Caption := FloatToStrF(dtmLoanC.qryLoanDet.FieldByName('IntRate').AsFloat,
      ffFixed,5,2)+' %';
    SetLoanAccTypeSettings;
    ClearLoanDetails(False);
    SetLoanFeeDesc;
    SetLoanFeeAddTo;
    //
    SetLimitOnAff;

    btnCalcLoan.Click;
  end;*)
end;

procedure TfrmLoanDet.btnDeleteClick(Sender: TObject);
begin
  inherited;
  // must not do anything
end;

procedure TfrmLoanDet.DoLinkLU(RelType, FldName :string; lbl :TLabel);
var
  LUres : integer;
begin
  LUres := dtmMain.GetLUEntityID(RelType);
  //if (LUres <> -1) or (LUres <> Null) then
  if LUres > -1 then
  begin
    if not(dtmLoanC.qryLoanDet.State in [dsEdit,dsInsert]) then
      dtmLoanC.qryLoanDet.Edit;
    dtmLoanC.qryLoanDet.FieldByName(FldName).AsInteger := LUres;
    //dtmLoanC.qryLoanDet.Post;
    lbl.Caption := dtmLoanC.GetLinkDet(dtmLoanC.qryLoanDet.FieldByName(FldName).AsInteger);
  end;
end;

procedure TfrmLoanDet.ReStrucLoan;
var
  frmLDStruc: TfrmLDStruc;
begin
  frmLDStruc := TfrmLDStruc.Create(Self);
  try
    frmLDStruc.LoanID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
    frmLDStruc.ShowModal;
  finally
    frmLDStruc.Free;
  end;
end;

procedure TfrmLoanDet.btnReStClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to re-structure the loan?','C') = mrYes then
    ReStrucLoan;
end;

procedure TfrmLoanDet.edt3TotAmtChange(Sender: TObject);
begin
 {//** dbt3TotAmt.Color := clBtnFace;
  if dtmLoanC.qryLoanDet.Active then
    if dtmLoanC.qry3PayTot.Fields[0].AsCurrency >
      dtmLoanC.qryLoanDet.FieldByName('LoanCapital').AsCurrency then
      dbt3TotAmt.Color := clRed      }
end;

procedure TfrmLoanDet.ts3RdPayHide(Sender: TObject);
begin
(* Commented out 2006-05-15 due to Approval Tab
 dtmLoanC.qry3PayTot.Requery;
  if dtmLoanC.qry3PayTot.Fields[0].AsCurrency >
    dtmLoanC.qryLoanDet.FieldByName('LoanCapital').AsCurrency then
  begin
    //CanClose := False;
    MesDlg('Loan pay-outs can not be more than loan amount.','E');
  end; *)
  dtmLoanC.qryLD3Pay.Close;
end;

procedure TfrmLoanDet.btnNewStsClick(Sender: TObject);
var
  Code : Integer;
begin
  Code := ShowLU(dtmLoanC.qryLUStatus,'Lookup - Process Statuses');
  if Code <> -1 then
  begin
    dtmLoanC.qryStatus.Append;
    dtmLoanC.qryStatus.FieldByName('CTLID').AsInteger := Code;
    dtmLoanC.qryStatus.Post;
  end;
end;

procedure TfrmLoanDet.grdStatusCellClick(Column: TColumn);
begin
  if not dtmLoanC.qryStatus.Eof then
    if not TDBGrid(Column.Grid).ReadOnly then
    begin
      if (Column.FieldName = 'Checked') and (not OnlyRead) then
        if Column.Field.AsInteger = 0 then
          dtmLoanC.SetChecked(Column.Field.DataSet,1)
        else
          dtmLoanC.SetChecked(Column.Field.DataSet,0);
    end;
end;

procedure TfrmLoanDet.CheckItem(DataSet: TDataSet; Chk :Byte);
begin
  if not DataSet.FieldByName('Checked').IsNull then
  begin
    if DataSet.FieldByName('Checked').AsInteger <> Chk then
    begin
      dtmLoanC.SetChecked(DataSet,Chk);
    end;
  end
  else
    MesDlg('Nothing to check.','E');
end;

procedure TfrmLoanDet.btnTCheckClick(Sender: TObject);
begin

end;

// WB - 18/02/2003 - Swap procedure
procedure TfrmLoanDet.btnNewClick(Sender: TObject);
begin
  inherited;
  // keep this to swap between this and other save events
end;

// WB - 18/02/2003 - Swap procedure
procedure TfrmLoanDet.btnSaveClick(Sender: TObject);
begin
  inherited;
  // keep this to swap between this and other new events
end;

procedure TfrmLoanDet.edtStatsChange(Sender: TObject);
var
  sLoanStatus: String;
  StatusColor: TColor;
begin
  inherited;
  sLoanStatus := GetLoanStatus(dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger);
  StatusColor := ColorLoanStatus(dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger);
  pnlLoanStatus.Caption := sLoanStatus;
  pnlLoanStatus.Color   := StatusColor;
  edtStatusName.Text := sLoanStatus;
  edtStatusName.Color := StatusColor;
  CurrStatus := dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger;
end;

procedure TfrmLoanDet.CompareInstalToLimit;
begin
  if dtmLoanC.qryLT.FieldByName('AffPerc').AsFloat > 0 then
  begin
    if dtmLoanC.qryLoanDet.FieldByName('PayIns').AsCurrency > NetAvl then
      MesDlg('Payable installment exceeds max affordable installment by '+
       FloatToStrF(dtmLoanC.qryLoanDet.FieldByName('PayIns').AsCurrency-NetAvl,
         ffCurrency,15,2)+'.','W');
  end;
end;

{------------------------ Grid painting - begin -------------------------------}
procedure TfrmLoanDet.PaintGrdChkB(grd: TDBGrid; Rect: TRect; Checked: Boolean);
begin
  if Checked then
    PaintGrdChkB(grd, Rect, 1)
  else
    PaintGrdChkB(grd, Rect, 0);
end;

procedure TfrmLoanDet.PaintGrdChkB(grd: TDBGrid; Rect: TRect;
  Chked: integer);
begin
  grd.Canvas.FillRect(Rect);
  if Chked = 0 then
    grd.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgN.Width) div 2),Rect.Top+1,imgN.Picture.Bitmap)
  else
    grd.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgN.Width) div 2),Rect.Top+1,imgY.Picture.Bitmap)
end;

procedure TfrmLoanDet.PaintGrdType(grd: TDBGrid; Rect: TRect;
  inType: integer);
begin
  grd.Canvas.FillRect(Rect);
  if dtmLoanC.qryAllLU.Locate('TypeKey',inType,[]) then
    grd.Canvas.TextOut(Rect.Left+2,Rect.Top+2,
      dtmLoanC.qryAllLU.FieldByName('Description').AsString)
  else
    grd.Canvas.TextOut(Rect.Left+2,Rect.Top+2,'none');
end;

procedure TfrmLoanDet.grdStatusDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not dtmLoanC.qryStatus.Eof then
  begin
    if Column.FieldName = 'Checked' then
      PaintGrdChkB(grdStatus,Rect,Column.Field.AsInteger);
    //
    if Column.FieldName = 'TLU' then
      PaintGrdType(grdStatus,Rect,dtmLoanC.qryStatus.FieldByName('CtlID').AsInteger);
  end;
end;

procedure TfrmLoanDet.grdAssetsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

end;

{------------------------ Grid painting - end -------------------------------}

procedure TfrmLoanDet.tsLnStatusShow(Sender: TObject);
begin
  inherited;
  CurrentTab := TTabSheet(Sender);
  if not dtmLoanC.dsHandoverType.Active then
    dtmLoanC.dsHandoverType.Open;
end;

procedure TfrmLoanDet.SetCurrStatus(const Value: Integer);
var
  ProcessID: Integer;
begin
  FCurrStatus := Value;

  dtmLoanC.cmdProcessID.Parameters.ParamByName('LoanID').Value := LoanID;
  dtmLoanC.cmdProcessID.Execute;
  ProcessID := dtmLoanC.cmdProcessID.Parameters.ParamByName('ProcessID').Value;

  tsAccountFlags.TabVisible := False;
  cmbHandoverType.Visible := False;
  tlbFraud.Visible := False;
  grpFraud.Visible := False;

  btnReviewLoan.Enabled := False;

  case CurrStatus of
    lnsInActive:
      begin
        case ProcessID of
          400, 410, 430: btnPreapproveLoan.Enabled := True;
          else
            btnPreapproveLoan.Enabled := False;
        end;
        
        btnApproveLoan.Enabled := False;
        btnCancelLoan.Enabled := True;
        btnDeclineLoan.Enabled := True;
        //btnReviewLoan.Enabled := True;
      end;
    lnsReview:
      begin
        case ProcessID of
          400, 410, 430: btnPreapproveLoan.Enabled := True;
          else
            btnPreapproveLoan.Enabled := False;
        end;

        btnApproveLoan.Enabled := (ProcessID = 7100);
        btnCancelLoan.Enabled := True;
        btnDeclineLoan.Enabled := True;
        //btnReviewLoan.Enabled := False;
      end;
    lnsCancelled, lnsDeclined, lnsOpen..100:
      begin
        btnPreapproveLoan.Enabled := False;
        btnApproveLoan.Enabled := False;
        btnCancelLoan.Enabled := False;
        btnDeclineLoan.Enabled := False;
        //btnReviewLoan.Enabled := False;

        if not (CurrStatus in [lnsCancelled]) then
        begin
          tsAccountFlags.TabVisible := True;
        end;

        cmbHandoverType.Visible := CurrStatus = lnsHandover;
      end;
    lnsPreApproved:
      begin
        btnPreapproveLoan.Enabled := False;
        btnApproveLoan.Enabled := (ProcessID = 400) or (ProcessID = 7100); //Authorisations, Boodle - Pending Payouts
        btnCancelLoan.Enabled := True;
        btnDeclineLoan.Enabled := True;
        //btnReviewLoan.Enabled := True;
      end;
  end;

  if not OnlyRead then
  begin
    ShowBoxes(CurrStatus in [lnsInactive, lnsReview]);

    edtAccountFlagIDChange(Self);

    if CurrStatus in [lnsOpen, lnsHandOver] then
    begin
      cmbLoanInd.ReadOnly := False;
      cmbLoanInd.Color := clWindow;

    end
    else if CurrStatus in [lnsCancelled, lnsDeclined, lnsPreapproved] then
      btnAddRequest.Enabled := True;


    case CurrStatus of
      {lnsPreApproved, }lnsCancelled, lnsDeclined, lnsApproved, lnsOpen:
      begin
        //lcbLoanType.ReadOnly    := True;
        //edtCapBor.ReadOnly      := True;
        //edtLoanPeriod.ReadOnly  := True;
        //edtResVal.ReadOnly      := True;
        grdStatus.ReadOnly      := True;
        grdOffers.ReadOnly      := True;
        cmbStatusNotes.ReadOnly := True;
        memSNotes.ReadOnly      := True;
        edtRefNo.ReadOnly       := True;

        //lcbLoanType.Color   := clBtnFace;
        //edtCapBor.Color     := clBtnFace;
        //edtLoanPeriod.Color := clBtnFace;
        //edtResVal.Color     := clBtnFace;
        grdStatus.Color     := clBtnFace;
        grdOffers.Color      := clBtnFace;
        cmbStatusNotes.Color := clBtnFace;
        memSNotes.Color      := clBtnFace;
        edtRefNo.Color       := clBtnFace;

        btnCalcLoan.Enabled    := False;
        btnInsertNote.Enabled  := False;

        if CurrStatus = lnsPreApproved then
        begin
          SetStatusUpdate(True);
          chkHiddenOptions.Checked := False;
          chkHiddenOptions.Enabled := False;
        end
        else
        begin
          SetStatusUpdate(False);
          chkHiddenOptions.Enabled := True;
        end;
      end
      else
      begin
        //lcbLoanType.ReadOnly   := False;
        //edtCapBor.ReadOnly     := False;
        //edtLoanPeriod.ReadOnly := False;
        //edtResVal.ReadOnly     := False;
        grdStatus.ReadOnly     := False;
        grdOffers.ReadOnly      := False;
        cmbStatusNotes.ReadOnly := False;
        memSNotes.ReadOnly      := False;
        edtRefNo.ReadOnly       := True;

        //lcbLoanType.Color   := clWindow;
        //edtCapBor.Color     := clWindow;
        //edtLoanPeriod.Color := clWindow;
        //edtResVal.Color     := clWindow;
        grdStatus.Color     := clWindow;
        grdOffers.Color      := clWindow;
        cmbStatusNotes.Color := clWindow;
        memSNotes.Color      := clWindow;
        edtRefNo.Color       := clBtnFace;

        btnCalcLoan.Enabled    := True;
        btnInsertNote.Enabled  := True;

        SetStatusUpdate(True);
        chkHiddenOptions.Enabled := True;
      end;
    end;
  end;
end;

//function TfrmLoanDet.CanChangeStatus(NewStatus: Integer): Boolean;
//begin
//  case CurrStatus of
//    lnsInActive,lnsDeclined,lnsCancelled,lnsPreapproved:
//      Result := (NewStatus < 20) and not(NewStatus = CurrStatus);
//    lnsApproved,lnsActPay,lnsActImex:
//      if (NewStatus in [lnsCancelled,lnsApproved,lnsActPay,lnsActImex]) and
//         not(NewStatus = CurrStatus) then
//        Result := True
//      else
//        Result := False;
//
//    lnsOpen,lnsFrozen,lnsZero,lnsNoDebits:
//      if (NewStatus >= 30) and not(NewStatus = lnsSettle) and
//        not(NewStatus = CurrStatus) then
//        Result := True
//      else
//        Result := False;
//
//    lnsSettle: Result := False;
//    lnsClose: Result := NewStatus = lnsOpen;
//    lnsBadDebt: if (NewStatus >= 30) and not(NewStatus = lnsSettle) and
//                  not(NewStatus = CurrStatus) then
//                    Result := not IsBadDebt
//                else
//                  Result := False;
//    else Result := False;
//  end;
//end;

procedure TfrmLoanDet.edtActionCChange(Sender: TObject);
begin
  inherited;
{  dtmLoanCLU.qryLoanInd.Parameters[0].Value := StrToIntDef(edtActionC.Text,0);
  dtmLoanCLU.qryLoanInd.Requery;
  lcbLoanInd.DataSource := nil;
  lcbLoanInd.DataSource := dtmLoanC.dtsLoanDet;
}
end;

procedure TfrmLoanDet.btnReportsClick(Sender: TObject);
begin
  inherited;
  ppmReports.Popup(btnReports.ClientOrigin.X, btnReports.ClientOrigin.Y + btnReports.Height);
end;

// VRS
procedure TfrmLoanDet.Securities1Click(Sender: TObject);
begin
  inherited;
  LoadReport(117,false);
end;

// VRS
procedure TfrmLoanDet.Tracking1Click(Sender: TObject);
begin
  inherited;
  //pcLoan.ActivePage := tsTrack;
  if not dtmLoanC.qryTrack.Active then
    dtmLoanC.qryTrack.Open;
  LoadReport(118,false);
end;

procedure TfrmLoanDet.Affordability1Click(Sender: TObject);
begin
  inherited;
  dtmAffordCalc := TdtmAffordCalc.Create(Self);
  dtmAffordCalc.qryEntDetail.Parameters.ParamByName('EntityID').Value :=
    dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
  dtmAffordCalc.qryEntDetail.Open;
  //dtmAffordCalc.SetActiveQueries(True);
  dtmAffordCalc.SetCurTotals;
  LoadReport(5, False);
  dtmAffordCalc.SetActiveQueries(False);
  dtmAffordCalc.Free;
end;

procedure TfrmLoanDet.Status1Click(Sender: TObject);
begin
  inherited;
  LoadReport(119,False);
end;

procedure TfrmLoanDet.Image1Click(Sender: TObject);
var
  pt: TPoint;
  R, S: TRect;
  Description: String;
  I : Integer;
begin
  inherited;
  Description := 'Loan type description' + #13#10;
  for I := 1 to Length(dtmLoanC.qryLT.FieldByName('LoanDesc').AsString) do
  begin
    if 30 / I = 1 then
      Description := Description + #13#10;
    Description := Description + dtmLoanC.qryLT.FieldByName('LoanDesc').AsString[I];
  end;
  S := HintWin.CalcHintRect(50, Description, nil);
  pt := Mouse.CursorPos;
  R := Rect(pt.x + 16, pt.y + 16, pt.x + (S.Right - S.Left),pt.y + (S.Bottom - S.Top));
  HintWin.ActivateHintData(R, Description, nil);
end;

procedure TfrmLoanDet.tsLoanMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  HintWin.ReleaseHandle;
end;

procedure TfrmLoanDet.edtRegnoEnter(Sender: TObject);
begin
  inherited;
//  MessageDlg('Warning - Changing the NLR no may prevent the loan from being closed with the MFRC',mtWarning,[mbOk],0);
end;

procedure TfrmLoanDet.btnDelLOClick(Sender: TObject);
begin
  inherited;
  DeleteLink(lblLloid,'LOID');
end;

procedure TfrmLoanDet.btnDelFunderClick(Sender: TObject);
begin
  inherited;
  DeleteLink(lblLFund,'FunderID');
end;

procedure TfrmLoanDet.btnDelCollectClick(Sender: TObject);
begin
  inherited;
  DeleteLink(lblLdc,'Link1');
  dtmLoanC.qryLoanDet.FieldByName('DebtDate').AsString := '';
end;

procedure TfrmLoanDet.btnDelAttorneyClick(Sender: TObject);
begin
  inherited;
  DeleteLink(lblLatt,'Link2');
end;

procedure TfrmLoanDet.btnDelStaffClick(Sender: TObject);
begin
  inherited;
  DeleteLink(lblLsm,'Link3');
end;

procedure TfrmLoanDet.btnAddAllClick(Sender: TObject);
begin
 { if MessageDlg('Are you sure you want to add all statuses ?',mtInformation,[mbYes,mbNo],0) = mrYes then
  begin
    dtmLoanC.qryLUStatus.Open;
    while not dtmLoanC.qryLUStatus.Eof do
    begin
      try
        dtmLoanC.qryStatus.Append;
        dtmLoanC.qryStatus.FieldByName('CTLID').AsInteger := dtmLoanC.qryLUStatus.fieldbyname('IDVal').AsInteger;
        dtmLoanC.qryStatus.Post;
      except
      end;
      dtmLoanC.qryLUStatus.Next;
    end;
    dtmLoanC.qryLUStatus.Close;
  end;  }
end;

procedure TfrmLoanDet.btnDelBranchClick(Sender: TObject);
begin
  inherited;
  DeleteLink(lblBranch,'BranchID');
end;

procedure TfrmLoanDet.btnLinkBranchClick(Sender: TObject);
begin
  inherited;
  DoLinkLU(IntToStr(lsBranch),'BranchID',lblBranch);
end;

procedure TfrmLoanDet.btnLinkLOClick(Sender: TObject);
begin
  inherited;
  DoLinkLU(IntToStr(lsLO2),'LOID',lblLloid);
end;

procedure TfrmLoanDet.btnLinkFunderClick(Sender: TObject);
begin
  inherited;
  DoLinkLU(IntToStr(lsFunder),'FunderID',lblLfund);
end;

procedure TfrmLoanDet.btnLinkCollectClick(Sender: TObject);
begin
  inherited;
  DoLinkLU(IntToStr(lsDebtCol),'Link1',lblLdc);
  if not (dtmLoanC.qryLoanDet.State in [dsEdit,dsBrowse]) then
    dtmLoanC.qryLoanDet.Edit;

  dtmLoanC.qryLoanDet.FieldByName('DebtDate').AsDateTime := Date;
  //dtmLoanC.qryLoanDet.Post;
end;

procedure TfrmLoanDet.btnLinkAttorneyClick(Sender: TObject);
begin
  inherited;
  DoLinkLU(IntToStr(lsAttorney),'Link2',lblLatt);
end;

procedure TfrmLoanDet.btnLinkStaffClick(Sender: TObject);
begin
  inherited;
  DoLinkLU(IntToStr(lsPayroll),'Link3',lblLsm);
end;

procedure TfrmLoanDet.ShowLink(EntityID: Integer);
var
  frmEntRef : TfrmEntDetS;
begin
  dtmEntRef := TdtmEntRef.Create(Self);
  //dtmEntRef.EntType := PSNType;
  frmEntRef := TfrmEntDetS.Create(Self);
  frmEntRef.DBName := dtmMain.dbData.ConnectionString;
  try
    dtmEntRef.CurID := EntityID; //dtmEntityC.qryERLink.FieldByName('LinkID').AsInteger
    //if ReadOnly then
      frmEntRef.ShowBoxes(True);
    frmEntRef.ShowModal;
  finally
    frmEntRef.Free;
    //
    dtmEntRef.Free;
    dtmEntRef := nil;
  end;
end;

procedure TfrmLoanDet.btnViewBranchClick(Sender: TObject);
begin
  inherited;
  ShowLink(dtmLoanC.qryLoanDet.FieldByName('BranchID').AsInteger);
end;

procedure TfrmLoanDet.btnViewLOClick(Sender: TObject);
begin
  inherited;
  ShowLink(dtmLoanC.qryLoanDet.FieldByName('LOID').AsInteger);
end;

procedure TfrmLoanDet.btnViewFunderClick(Sender: TObject);
begin
  inherited;
  ShowLink(dtmLoanC.qryLoanDet.FieldByName('FunderID').AsInteger);
end;

procedure TfrmLoanDet.btnViewCollectClick(Sender: TObject);
begin
  inherited;
  ShowLink(dtmLoanC.qryLoanDet.FieldByName('Link1').AsInteger);
end;

procedure TfrmLoanDet.btnViewAttorneyClick(Sender: TObject);
begin
  inherited;
  ShowLink(dtmLoanC.qryLoanDet.FieldByName('Link2').AsInteger);
end;

procedure TfrmLoanDet.btnViewStaffClick(Sender: TObject);
begin
  inherited;
  ShowLink(dtmLoanC.qryLoanDet.FieldByName('Link3').AsInteger);
end;

procedure TfrmLoanDet.grdStatusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  pt: TGridCoord;
begin
  inherited;
  if not dtmLoanC.qryStatus.Eof then
    if not grdStatus.ReadOnly then
    begin
      pt := grdStatus.MouseCoord(X,Y);
      if pt.Y > 0 then
      begin
        if pt.X = 2 then
          grdStatus.Cursor := crHandPoint
        else
          grdStatus.Cursor := crDefault;
      end
      else
        grdStatus.Cursor := crDefault;
    end;
end;

procedure TfrmLoanDet.DeleteLink(FLabel: TLabel; FieldName: String);
begin
  if MessageDlg('Are you sure you want to this delete link?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
  begin
    if dtmLoanC.qryLoanDet.State = dsBrowse then
      dtmLoanC.qryLoanDet.Edit;
    dtmLoanC.qryLoanDet.FieldByName(FieldName).AsInteger := 0;
    FLabel.Caption := ''
  end;
end;

procedure TfrmLoanDet.SecuritySetup1Click(Sender: TObject);
begin
  inherited;
  //SEC dtmSecurity.DoSecuritySetup(Self);
end;

procedure TfrmLoanDet.btnAffordabilityClick(Sender: TObject);
begin
  inherited;
  frmAffordability := TfrmAffordability.Create(Self);
  try
    frmAffordability.OnlyRead := Self.OnlyRead;
    if Self.OnlyRead = false then
      if not (CurrStatus in [lnsInactive, lnsReview]) then // in [lnsPreApproved, lnsApproved, lnsOpen] then
        frmAffordability.OnlyRead := True;

    frmAffordability.EntityID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
    frmAffordability.LoanID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
    frmAffordability.ShowModal;
  finally
    FreeAndNil(frmAffordability);
  end;

  if not OnlyRead then
  begin
    if pcLoan.ActivePage = tsApproval then
    begin
      {dtmLoanC.dsOfferPayouts.Requery;
      dtmLoanC.dsOffersMatrix.Requery;
      dtmLoanC.dsPayMatrix.Requery;
      dtmLoanC.dsOffers.Requery;

      tsApprovalShow(nil); }
    end
    else if pcLoan.ActivePage = ts3RdPay then
      ts3RdPayShow(ts3RdPay);
  end
end;

procedure TfrmLoanDet.cmbLoanUseDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  TComboBox(Control).Canvas.FillRect(Rect);
  TComboBox(Control).Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,
    TComboBox(Control).Items.Values[TComboBox(Control).Items.Names[Index]]);
end;

procedure TfrmLoanDet.cmbActionChange(Sender: TObject);
begin
  inherited;
 
{  dtmLoanCLU.qryLoanInd.Parameters[0].Value := StrToIntDef(edtActionC.Text,0);
  dtmLoanCLU.qryLoanInd.Requery;
  lcbLoanInd.DataSource := nil;
  lcbLoanInd.DataSource := dtmLoanC.dtsLoanDet;   }
end;

procedure TfrmLoanDet.cmbIndustryChange(Sender: TObject);
begin
  inherited;
  //LookupSetField(Sender, 'Link5');
end;

procedure TfrmLoanDet.tsApprovalShow(Sender: TObject);
begin
  inherited;
  with dtmLoanC do
  begin
    btnApplyLimits.Down := qryLoanDet.FieldByName('DoLimit').AsBoolean;
    btnApplyLimitsClick(nil);

    dsOfferPayouts.Close;
    dsOfferPayouts.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
    dsOfferPayouts.Open;
    dsPayMatrix.Close;
    dsPayMatrix.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
    dsPayMatrix.Open;
    dsOffersMatrix.Close;
    dsOffersMatrix.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
    dsOffersMatrix.Open;
    if not dsoffers.Active then
    begin
      dsOffers.Close;
      dsOffers.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
      dsOffers.Open;
    end;
    dsOffers.Filtered := not chkHiddenOptions.Checked;
    dsOffersMatrix.Filtered := not chkHiddenOptions.Checked;
    dsOffers.AfterPost   := UpdateOffers;
    dsOffers.AfterDelete := UpdateOffers;
    dsNoPayouts.Open;
    CreateMatrix(True);
  end;

  grdOffers.SelectedIndex := 0;
  grdOffersColEnter(grdOffers);

  uNoteSys.Categories := '110004012';
  uNoteSys.RichEdit := rdtPreApprovalNotes;
  DisplayNotes(False);
  tsPreApprovalNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmLoanDet.CreateMatrix(UsePayouts: Boolean);
var
  I, J: Integer;
begin
  with dtmLoanC do
  begin
    grdMatrix.RowCount := dsPayMatrix.RecordCount + 1;
    grdMatrix.ColCount := dsOffers.RecordCount + 1;

    if (grdMatrix.RowCount = 1) or (grdMatrix.ColCount = 1) then
    begin
      grdMatrix.RowCount := 0;
      grdMatrix.ColCount := 0;
      grdMatrix.Enabled := False;
    end
    else if (grdMatrix.RowCount > 1) and (grdMatrix.ColCount > 1) then
    begin
      grdMatrix.Enabled := True;
      grdMatrix.ColCount := grdMatrix.ColCount + 2;
      grdMatrix.Cells[1,0] := 'Reference';
      grdMatrix.Cells[2,0] := 'Amount';
      grdMatrix.ColWidths[1] := 70;
      grdMatrix.ColWidths[2] := 70;
      grdMatrix.FixedCols := 3;
      grdMatrix.FixedRows := 1;
      dsPayMatrix.First;
      while not dsPayMatrix.Eof do
      begin
        grdMatrix.Cells[0,dsPayMatrix.RecNo] := dsPayMatrix.FieldByName('PayNo').AsString +
          ') ' + dsPayMatrix.FieldByName('Name').AsString;
         // '(Loan ID ' + dsPayMatrix.FieldByName('ThirdRefNo').AsString + ')';
        grdMatrix.Cells[1,dsPayMatrix.RecNo] := dsPayMatrix.FieldByName('ThirdRefNo').AsString;
        grdMatrix.Cells[2,dsPayMatrix.RecNo] := FloatToStrF(dsPayMatrix.FieldByName('Amount').AsCurrency,ffCurrency,15,2);
        dsPayMatrix.Next;
      end;
      
      dsOffersMatrix.First;
      while not dsOffersMatrix.Eof do
      begin
       { if dsOffersMatrix.FieldByName('Status').AsString = 'A' then
          HasAccepted := True;    }
          //AcceptedOffer := dsOffersMatrix.FieldByName('OfferID').AsInteger;
        grdMatrix.Cells[dsOffersMatrix.RecNo + (grdMatrix.FixedCols - 1),0] := 'Option ' + IntToStr(dsOffersMatrix.RecNo);//dsOffersMatrix.FieldByName('Offer').AsString;
        //grdMatrix.ColWidths[dsOffersMatrix.RecNo + (grdMatrix.FixedCols - 1)] := 50;
        dsOffersMatrix.Next;
      end;

      dtmLoanC.dsPayMatrix.Requery;
      dtmLoanC.dsOffersMatrix.Requery;

      for I := 1 to grdMatrix.RowCount - 1 do
        for J := grdMatrix.FixedCols to grdMatrix.ColCount - 1 do
      begin
        dtmLoanC.dsPayMatrix.RecNo := I;
        dtmLoanC.dsOffersMatrix.RecNo := J - (grdMatrix.FixedCols - 1);
        if dtmLoanC.dsOfferPayouts.Locate('PayoutID;OfferID', VarArrayOf(
          [dtmLoanC.dsPayMatrix.FieldByName('PayoutID').AsInteger,
          dtmLoanC.dsOffersMatrix.FieldByName('OfferID').AsInteger]),[]) then
          grdMatrix.Cells[J,I] := '1'
        else
          grdMatrix.Cells[J,I] := '0'
      end;

      for I := 3 to grdMatrix.ColCount - 1  do
        grdMatrix.ColWidths[I] := 50;
    end;

      //**SetOfferSecurity(dtmLoanC.HasAcceptedOffer);
  end;
end;

procedure TfrmLoanDet.tsApprovalHide(Sender: TObject);
begin
  inherited;
  dtmLoanC.dsOfferPayouts.Close;
  dtmLoanC.dsOffersMatrix.Close;
  dtmLoanC.dsPayMatrix.Close;
  dtmLoanC.dsOffers.Close;
end;

procedure TfrmLoanDet.grdMatrixDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if not dtmLoanC.dsOffers.Active then
    Abort;
  if ACol = (grdMatrix.FixedCols - 1) then
  begin
    grdMatrix.Canvas.Brush.Color := grdMatrix.FixedColor;
    grdMatrix.Canvas.FillRect(Rect);
    grdMatrix.Canvas.TextOut(Rect.Right -
      grdMatrix.Canvas.TextWidth(grdMatrix.Cells[ACol,ARow]) - 4, Rect.Top + 2, grdMatrix.Cells[ACol,ARow]);
  end
  else
  if (ARow = 0) and (ACol > (grdMatrix.FixedCols - 1)) then
  begin
    grdMatrix.Canvas.Brush.Color := grdMatrix.FixedColor;
    grdMatrix.Canvas.FillRect(Rect);
    grdMatrix.Canvas.TextOut(Rect.Left + ((Rect.Right - Rect.Left -
      grdMatrix.Canvas.TextWidth(grdMatrix.Cells[ACol,ARow])) div 2), Rect.Top + 2,
      grdMatrix.Cells[ACol,ARow]);
  end
  else
  if (ARow > 0) and (ACol > (grdMatrix.FixedCols - 1)) then
  begin
    if ACol = dtmLoanC.dsOffers.RecNo + (grdMatrix.FixedCols - 1) then
      grdMatrix.Canvas.Brush.Color := clHighlight
    else
      grdMatrix.Canvas.Brush.Color := grdMatrix.Color;

    grdMatrix.Canvas.FillRect(Rect);

    {if (gdSelected in State) then
      grdMatrix.Canvas.Font.Color := clHighlightText
    else }
      grdMatrix.Canvas.Font.Color := clBlack;

    if grdMatrix.Cells[ACol,ARow] = '1' then
      grdMatrix.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgChecked.Width) div 2),
        Rect.Top + 2, imgChecked.Picture.Graphic)
    else
      grdMatrix.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgUnchecked.Width) div 2),
        Rect.Top + 2, imgUnchecked.Picture.Graphic)
  end;
end;

procedure TfrmLoanDet.DBEdit2Change(Sender: TObject);
begin
  inherited;
  grdMatrix.Repaint;
end;

procedure TfrmLoanDet.grdOffersCellClick(Column: TColumn);
{var
  DoPost: Boolean;}
begin
  inherited;
(*  if not dtmLoanC.dsOffers.FieldByName('OfferID').IsNull then
    if not OnlyRead then
    begin
      if (Column.Title.Caption = 'Status') and (CurrStatus = lnsPreApproved) then
        btnAcceptOffer.Click
      else if (Column.Title.Caption = 'Status') and (CurrStatus = lnsInactive) and
        (dtmLoanC.dsOffers.FieldByName('Status').AsString = 'A') then
        btnAcceptOffer.Click
      else if (Column.Title.Caption = 'Hide') and (CurrStatus = lnsInactive) then
      begin
        try
          Screen.Cursor := crHourGlass;
          dtmLoanC.AllowOfferEdit := True;
          if dtmLoanC.dsOffers.State = dsBrowse then
          begin
            dtmLoanC.dsOffers.Edit;
            DoPost := True;
          end
          else
            DoPost := False;
          dtmLoanC.dsOffers.FieldByName('Visible').AsBoolean := not dtmLoanC.dsOffers.FieldByName('Visible').AsBoolean;
          if DoPost then
            dtmLoanC.dsOffers.Post;
          dtmLoanC.AllowOfferEdit := False;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    end;  *)
end;

procedure TfrmLoanDet.grdOffersDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Description: String;
  Graphic: TGraphic;
begin
  inherited;
  if not dtmLoanC.dsOffers.FieldByName('OfferID').IsNull then
  begin
    if Column.FieldName = 'Enabled' then
    begin
      grdOffers.Canvas.FillRect(Rect);
      if not dtmLoanC.dsOffers.FieldByName('Enabled').AsBoolean then
      begin
        grdOffers.Canvas.Font.Color := clRed;
        grdOffers.Canvas.Font.Style := grdOffers.Canvas.Font.Style + [fsBold];
        grdOffers.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, 'Disabled');
      end;
    end;

    if not dtmLoanC.dsOffers.FieldByName('Offer').IsNull then
    begin
      if not (gdFocused in State) then
        if (dtmLoanC.dsOffers.FieldByName('System').AsBoolean) and (Column.Title.Caption <> 'Status')
          and (Column.Title.Caption <> 'Hide') then
        begin
          grdOffers.Canvas.Brush.Color := clBtnFace;
          grdOffers.DefaultDrawColumnCell(Rect,DataCol,Column,State);
        end;

      if Column.FieldName = 'OfferType' then
      begin
        (*OfferType := dtmLoanC.dsOffers.FieldByName('OfferType').AsString;
        grdOffers.Canvas.FillRect(Rect);

        if OfferType = 'System' then
          bmp := imgSystem.Picture.Bitmap
        else if OfferType = 'Manual' then
          bmp := imgUser.Picture.Bitmap
        else if OfferType = 'Limited' then
          bmp := imgLimited.Picture.Bitmap
        else bmp := nil;

        if Assigned(bmp) then
        begin
            grdOffers.Canvas.Draw(Rect.Left + 2, Rect.Top + 1, bmp);
            grdOffers.Canvas.TextOut(Rect.Left + bmp.Width + 6, Rect.Top + 2, OfferType);
        end; *)
      end
      else if Column.FieldName = 'Period' then
      begin
        grdOffers.Canvas.FillRect(Rect);
        grdOffers.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,
          dtmLoanC.dsOffers.FieldByName('Period').AsString + ' ' + lblLnPrdInd.Caption);
      end
      else if Column.FieldName = 'NetAmount' then
      begin
        if dtmLoanC.dsOffers.FieldByName('NetAmount').AsCurrency < 0 then
        begin
          grdOffers.Canvas.Font.Color := clRed;
          grdOffers.Canvas.Font.Style := grdOffers.Canvas.Font.Style + [fsBold];
          grdOffers.Canvas.TextOut(Rect.Right -
            grdOffers.Canvas.TextWidth(FloatToStrF(
            dtmLoanC.dsOffers.FieldByName('NetAmount').AsCurrency,ffCurrency,15,2))-2,
            Rect.Top + 2, FloatToStrF(dtmLoanC.dsOffers.FieldByName('NetAmount').AsCurrency,ffCurrency,15,2));
        end;
      end
      else if Column.Fieldname = 'StatusLU' then
        if not dtmLoanC.dsOffers.FieldByName('OfferID').IsNull then
        begin
          grdOffers.Canvas.FillRect(Rect);
          if CurrStatus = lnsPreApproved then
            if not (gdSelected in State) then
            begin
              grdOffers.Canvas.Brush.Color := clWindow;
              grdOffers.DefaultDrawColumnCell(Rect,DataCol,Column,State);
            end;

          if CurrStatus in [lnsCancelled, lnsDeclined] then
          begin
            if dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger = lnsCancelled then
              Description := 'Cancelled'
            else
              Description := 'Declined';
            Graphic := imgCancel.Picture.Graphic;
          end
          else  if dtmLoanC.dsOffers.FieldByName('Status').AsString = '' then
          begin
            Description := 'None';
            Graphic := imgN.Picture.Graphic;
          end
          else if dtmLoanC.dsOffers.FieldByName('Status').AsString = 'A' then
          begin
            Description := 'Accepted';
            Graphic := imgY.Picture.Graphic;
          end
          else if dtmLoanC.dsOffers.FieldByName('Status').AsString = 'C' then
          begin
            Description := 'Cancelled';
            Graphic := imgCancel.Picture.Graphic;
          end
          else
            Graphic := nil;

          grdOffers.Canvas.Draw(Rect.Left + 4, Rect.Top + 2, Graphic);
          grdOffers.Canvas.TextOut(Rect.Left + Graphic.Width + 8, Rect.Top + 2, Description);
        end;

      if Column.Title.Caption = 'Hide' then
      begin
          if (not(gdSelected in State)) or (not(gdFocused in State)) then
          begin
            grdOffers.Canvas.Brush.Color := clWindow;
            grdOffers.DefaultDrawColumnCell(Rect,DataCol,Column,State);
          end;

        if dtmLoanC.dsOffers.FieldByName('Visible').AsBoolean then
          grdOffers.Canvas.Draw(Rect.Left + 10, Rect.Top + 2, imgN.Picture.Graphic)
        else
          grdOffers.Canvas.Draw(Rect.Left + 10, Rect.Top + 2, imgY.Picture.Graphic);
      end;
    end;
  end;
end;

procedure TfrmLoanDet.grdOffersColEnter(Sender: TObject);
begin
  inherited;
(*  if grdOffers.SelectedIndex in [0,7] then
    grdOffers.Options := grdOffers.Options - [dgEditing]
  else if grdOffers.SelectedIndex <> 7 then
    if (not OnlyRead) and (grdOffers.ReadOnly = False) and
      (dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger in [lnsInactive,lnsPreApproved]) then
        grdOffers.Options := grdOffers.Options + [dgEditing];  *)
end;

procedure TfrmLoanDet.grdOffersColExit(Sender: TObject);
begin
  inherited;
  {if grdOffers.SelectedIndex <> 5 then
    if (not FReadOnly) and (grdOffers.ReadOnly = False) and
      (dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger < lnsOpen) then
        grdOffers.Options := grdOffers.Options + [dgEditing]; }
end;

procedure TfrmLoanDet.UpdateOffers(DataSet: TDataSet);
begin
  if dtmLoanC.dsOffers.Active then
  begin
    dtmLoanC.dsOffersMatrix.Requery;
    CreateMatrix(False);
  end;
end;

procedure TfrmLoanDet.grdMatrixMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
(*  if dtmLoanC.HasOffer(True) or OnlyRead then
    Abort;
  try
    dtmLoanC.dsOffers.DisableControls;
    dtmLoanC.dsPayMatrix.RecNo := grdMatrix.Row;
    dtmLoanC.dsOffersMatrix.RecNo := grdMatrix.Col - (grdMatrix.FixedCols - 1);
    //if not dtmLoanC.dsOffersMatrix.FieldByName('System').AsBoolean then
    if not (dtmLoanC.dsPayMatrix.FieldByName('System').AsBoolean and
      dtmLoanC.dsOffersMatrix.FieldByName('System').AsBoolean) then
    begin
      try
        //Screen.Cursor := crHourGlass;
        dtmLoanC.dsOfferPayouts.Requery;
        if dtmLoanC.dsOfferPayouts.Locate('PayoutID;OfferID',
          VarArrayOf([dtmLoanC.dsPayMatrix.FieldByName('PayoutID').AsInteger,
          dtmLoanC.dsOffersMatrix.FieldByName('OfferID').AsInteger ]),[]) then
          begin
            dtmMain.dbData.Execute('DELETE FROM afOfferPayouts WHERE ' +
              'PayoutID = ' + dtmLoanC.dsPayMatrix.FieldByName('PayoutID').AsString +
              ' AND OfferID = ' + dtmLoanC.dsOffersMatrix.FieldByName('OfferID').AsString);
            grdMatrix.Cells[grdMatrix.Col,grdMatrix.Row] := '';
          end
        else
        begin
          dtmMain.dbData.Execute('INSERT INTO afOfferPayouts VALUES (' +
            dtmLoanC.dsPayMatrix.FieldByName('PayoutID').AsString + ',' +
            dtmLoanC.dsOffersMatrix.FieldByName('OfferID').AsString + ')');
          grdMatrix.Cells[grdMatrix.Col,grdMatrix.Row] := '1';
        end;
        RequeryOnRecord(dtmLoanC.dsOffers,'OfferID');
      finally
       // Screen.Cursor := crDefault;
      end;
    end;
  finally
    dtmLoanC.dsOffers.EnableControls;
    //dtmLoanC.dsOffers.Fields[0].
  end;       *)
end;

(*procedure TfrmLoanDet.SetOfferSecurity(AcceptedOffer: Boolean);
begin
  if AcceptedOffer then
  begin
    grdMatrix.Enabled := False;
    grdMatrix.Color := clBtnFace;

    grdOffers.ReadOnly := True;
    grdOffers.Color := clBtnFace;

    if (dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger > lnsApproved) or (OnlyRead) then
    begin
      btnAcceptOffer.Enabled := False;
    end;
    btnDeleteOffer.Enabled := False;
    btnCancelOffers.Enabled := False;
  end
  else
  begin
    grdMatrix.Enabled := True;
    grdMatrix.Color := clWindow;

    grdOffers.ReadOnly := False;
    grdOffers.Color := clWindow;

    btnAcceptOffer.Enabled := True;
    btnDeleteOffer.Enabled := True;
    btnCancelOffers.Enabled := True;
  end;
end;*)

procedure TfrmLoanDet.btnAcceptOfferClick(Sender: TObject);
{var
  CanAccept: Boolean;  }
begin
(*  if not dtmLoanC.dsOffers.FieldByName('OfferID').IsNull then
    if (dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger = lnsPreApproved) or
      ((dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger = lnsInactive) and
      (dtmLoanC.dsOffers.FieldByName('Status').AsString ='A')) then
      if not OnlyRead then
      begin
        try
          Screen.Cursor := crHourGlass;
          CanAccept := True;
          if dtmLoanC.dsOffers.FieldByName('Status').AsString = 'A' then
          begin
            dtmMain.dbData.Execute('UPDATE afOffers SET Status = NULL,' +
              'UpdateUser = ''' + dtmMain.CurrentID + ''', UpdateDate = getdate() WHERE '+
              'OfferID = ' + dtmLoanC.dsOffers.FieldByName('OfferID').AsString);
            //**SetOfferSecurity(False);
          end
          else
          begin
           if dtmLoanC.dsOffers.FieldByName('NetAmount').AsCurrency < 0 then
            begin
              CanAccept := False;
              MessageDlg('Cannot accept options that have a negative payout amount.', mtError,[mbOK], 0);
            end
            else if dtmLoanC.OptionHasExpired(dtmLoanC.dsOffers.FieldByName('OfferID').AsInteger) then
              MessageDlg('Cannot accept option as one or more settlement amounts have expired',mtError,[mbOK],0)
            else
            begin
              dtmMain.dbData.Execute('UPDATE afOffers SET Status = NULL, '+
                'UpdateUser = ''' + dtmMain.CurrentID + ''', UpdateDate = getdate() WHERE '+
                'Status IN (''A'',''C'') AND LoanID = ' + dtmLoanC.dsOffers.FieldByName('LoanID').AsString);

              dtmMain.dbData.Execute('UPDATE afOffers SET Status = ''A'',' +
                'UpdateUser = ''' + dtmMain.CurrentID + ''', UpdateDate = getdate() WHERE '+
                'OfferID = ' + dtmLoanC.dsOffers.FieldByName('OfferID').AsString);

              //**SetOfferSecurity(True);
            end;
          end;

          if CanAccept then
          begin
            dtmLoanC.dsOffers.DisableControls;
            RequeryOnRecord(dtmLoanC.dsOffers,'OfferID');
            dtmLoanC.dsOffers.EnableControls;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;       *)
end;

procedure TfrmLoanDet.btnNewOfferClick(Sender: TObject);
begin
  inherited;
  dtmLoanC.dsOffers.Append;
end;

procedure TfrmLoanDet.btnAmendOfferClick(Sender: TObject);
begin
  inherited;
  dtmLoanC.dsOffers.Edit;
end;

procedure TfrmLoanDet.btnDeleteOfferClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure you want to delete this option?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
    dtmLoanC.dsOffers.Delete;
end;

procedure TfrmLoanDet.btnCancelOffersClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure you want to cancel all options?', mtConfirmation,
    [mbYes,mbNo],0) = mrYes then
  begin
    dtmMain.dbData.Execute('UPDATE afOffers SET Status = ''C'', UpdateUser = ' +
      '''' + dtmMain.CurrentID + ''', UpdateDate = getdate() WHERE ' +
      'LoanID = ' + dtmLoanC.dsOffers.FieldByName('LoanID').AsString);

    //**SetOfferSecurity(False);
    dtmLoanC.dsOffers.DisableControls;
    RequeryOnRecord(dtmLoanC.dsOffers,'OfferID');
    dtmLoanC.dsOffers.EnableControls;
  end;
end;

procedure TfrmLoanDet.btnNewNoteClick(Sender: TObject);
begin
  inherited;
  NewNote(110004012);
  tsPreApprovalNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmLoanDet.btnAmendNoteClick(Sender: TObject);
begin
  inherited;
  EditNote(110004012);
end;

procedure TfrmLoanDet.edtRefNoExit(Sender: TObject);
begin
  inherited;
  if not OnlyRead then
    if dtmLoanC.DuplicateDocNos(edtRefNo.Text) then
      MessageDlg('Loan reference number alreadys exists with another loan',mtWarning,[mbOK],0);
end;

procedure TfrmLoanDet.cmbStatusNotesDropDown(Sender: TObject);
begin
  inherited;
  cmbStatusNotes.DropDownRows := dtmLoanC.dsStatusNotes.RecordCount;
end;

procedure TfrmLoanDet.btnInsertNoteClick(Sender: TObject);
begin
  inherited;
  if dtmLoanC.qryStatus.State = dsBrowse then
    dtmLoanC.qryStatus.Edit;

  dtmLoanC.qryStatus.FieldByName('Notes').AsString :=
    Copy(memSNotes.Text,1,memSNotes.SelStart) +
      Trim(cmbStatusNotes.Text) + Copy(memSNotes.Text,memSNotes.SelStart + 1 +
      memSNotes.SelLength,Length(memSNotes.Text) - memSNotes.SelStart + memSNotes.SelLength);

  dtmLoanC.qryStatus.FieldByName('Checked').AsInteger := 0;
end;

//11/09/2012 - Daniel Tucker - This has ben removed, this is no longer a required business rule
(*procedure TfrmLoanDet.VerifyPayoutsExpiry;
begin
  dtmLoanC.qryExpiredPayouts.Open;
  if dtmLoanC.qryExpiredPayouts.Fields[0].AsInteger > 0 then
    MessageDlg('The settlement amounts in Payouts have expired. Please recalculate.', mtWarning, [mbOK], 0);
  dtmLoanC.qryExpiredPayouts.Close;
end;*)

procedure TfrmLoanDet.grdPayoutsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not dtmLoanC.qryLD3Pay.FieldByName('PayoutNo').IsNull then
  begin
    if not (gdFocused in State) then
      if dtmLoanC.qryLD3Pay.FieldByName('System').AsBoolean then
      begin
        grdPayouts.Canvas.Brush.Color := clBtnFace;
        grdPayouts.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;

    if Column.FieldName = 'PayoutNo' then
    begin
      if dtmLoanC.qryLD3Pay.FieldByName('System').AsBoolean then
        grdPayouts.Canvas.Draw(Rect.Left + 2, Rect.Top + 1, imgSystem.Picture.Bitmap)
      else
        grdPayouts.Canvas.Draw(Rect.Left + 2, Rect.Top + 1, imgUser.Picture.Bitmap);

      if dtmLoanC.qryLD3Pay.FieldByName('Enabled').AsBoolean = False then
        grdPayouts.Canvas.Draw(Rect.Left + imgSystem.Width + 2, Rect.Top + 2, imgCancel.Picture.Bitmap)
    end
   (* else if (Column.Title.Caption = 'Debt') or (Column.Title.Caption = 'Letter') then
    begin
      if ((Column.Title.Caption = 'Debt') and (dtmLoanC.qryLD3Pay.FieldByName('AccountID').AsInteger > 0)) or
        ((Column.Title.Caption = 'Letter') and (dtmLoanC.qryLD3Pay.FieldByName('DocumentID').AsInteger > 0)) then
      grdPayouts.Canvas.Draw(Rect.Left + (Rect.Right - Rect.Left  - imgLink.Width) div 2,
        Rect.Top + 1, imgLink.Picture.Bitmap)
    end;*)
  end;
end;

procedure TfrmLoanDet.ToolButton1Click(Sender: TObject);
begin
  CheckItem(dtmLoanC.qryTrack,1);
end;

procedure TfrmLoanDet.btnTaskUncheckClick(Sender: TObject);
begin
  inherited;
  CheckItem(dtmLoanC.qryTrack,0);
end;

procedure TfrmLoanDet.chkHiddenOptionsClick(Sender: TObject);
begin
  inherited;
  if tsApproval.Showing then
  begin
    dtmLoanC.dsOfferPayouts.Requery;
    dtmLoanC.dsOffersMatrix.Requery;
    dtmLoanC.dsPayMatrix.Requery;
    dtmLoanC.dsOffers.Requery;

    tsApprovalShow(nil);
  end;
end;

procedure TfrmLoanDet.btnChangeStatusClick(Sender: TObject);
var
  CanChange: Boolean;
begin
  inherited;
  CanChange := True;
  if dtmLoanC.qryLoanDet.State in [dsEdit,dsInsert] then
    if MessageDlg('You must save before continuing, save now?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      dtmLoanC.qryLoanDet.Post
    else
      CanChange := False;


  if CanChange then
  begin
    frmLoanStatus := TfrmLoanStatus.Create(Self);
    try
      //frmLoanStatus.lstLoanStatus.Items := cbxCurrStatus.Items;
      frmLoanStatus.LoanStatus := CurrStatus;
      frmLoanStatus.LoanID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
      if frmLoanStatus.ShowModal = mrOK then
      begin
        //if not (dtmLoanC.qryLoanDet.State in [dsEdit,dsInsert]) then
        dtmLoanC.qryLoanDet.Edit;
        dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger := frmLoanStatus.NewStatus;
        dtmLoanC.qryLoanDet.Post;
        CurrStatus := frmLoanStatus.NewStatus;
      end;
    finally
      FreeAndNil(frmLoanStatus);
    end;
  end;
end;

procedure TfrmLoanDet.btnVerifyClick(Sender: TObject);
begin
  inherited;
  frmVerifyLoan := TfrmVerifyLoan.Create(Self);
  try
    frmVerifyLoan.btnContinue.Hide;
    frmVerifyLoan.btnCancel.Caption := 'Close';
    frmVerifyLoan.Showmodal;
  finally
    frmVerifyLoan.Free;
  end;
end;
                                 
procedure TfrmLoanDet.grdPayoutsColExit(Sender: TObject);
begin
  inherited;
  if grdPayouts.SelectedIndex = 1 then
    if grdPayouts.DataSource.DataSet.State = dsEdit then
      grdPayouts.DataSource.DataSet.FieldByName('Amount').AsCurrency := 499;
end;

procedure TfrmLoanDet.tsSummaryShow(Sender: TObject);
begin
  inherited;
  {case CurrStatus of
    lnsDeclined,lnsCancelled: pnlApproved.Height := 48;
    lnsInActive, lnsPreApproved, lnsOpen..100: pnlApproved.Height := 24;
  end;}
  if not Assigned(frmDebtObligations) then
  begin
    frmDebtObligations := TfrmDebtObligations.Create(Self);
    frmDebtObligations.BorderStyle := bsNone;
    frmDebtObligations.Parent := tsSummary;
    frmDebtObligations.Width := tsSummary.Width;
    frmDebtObligations.Align := alClient;
    frmDebtObligations.isAmd := isAmd;
    frmDebtObligations.Show;
    frmDebtObligations.Realign;
  end;
end;

//procedure TfrmLoanDet.DeclineMethodOld(Sender: TObject);
//var
//  Action: String;
//  Display: String;
//  GroupKey: Integer;
//  StatusID: Integer;
//begin
//  inherited;
//  if Sender = btnDeclineLoan then
//  begin
//    Action := 'decline';
//    Display := 'Decline Reason';
//    GroupKey := 100133;
//    StatusID := lnsDeclined;
//  end
//  else
//  begin
//    Action := 'cancel';
//    Display := 'Cancel Reason';
//    GroupKey := 100134;
//    StatusID := lnsCancelled;
//  end;
//
//  if MesDlg('Are you sure you want to ' + Action + ' this loan?','C') = mrYes then
//  begin
//    if not (dtmLoanC.qryLoanDet.State in [dsEdit, dsInsert]) then
//      dtmLoanC.qryLoanDet.Edit;
//
//    dtmLoanC.qryLoanDet.FieldByName('CurReason').AsInteger := 0;
//    dtmLoanC.qryLoanDet.FieldByName('StatusReasonID2').Value := Null;
//    dtmLoanC.qryLoanDet.Post;
//
//    frmDeclineReason := TfrmDeclineReason.Create(Self);
//    frmDeclineReason.Caption := Display;
//    dtmLoanC.qryLUReasons.Filter := 'GroupKey = ' + IntToStr(GroupKey);
//    try
//      if frmDeclineReason.ShowModal = mrOK then
//      begin
//        with dtmLoanC do
//        begin
//          //qryLoanDet.Edit;
//          //qryLoanDet.FieldByName('CurReason').AsInteger := frmDeclineReason.ReasonKey;
//          qryLoanDet.FieldByName('AprvDate').AsDateTime := Now;
//          qryLoanDet.FieldByName('ApproveUser').AsString := dtmMain.CurrentID;
//          qryLoanDet.FieldByName('Status').AsInteger := StatusID;
//          qryLoanDet.FieldByName('UpdateDate').AsDateTime := Now;
//          qryLoanDet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
//          qryLoanDet.Post;
//        end;
//      end
//      else
//        dtmLoanC.qryLoanDet.Cancel;
//    finally
//      FreeAndNil(frmDeclineReason);
//    end;
//  end;
//end;

procedure TfrmLoanDet.btnEditReasonClick(Sender: TObject);
begin
  inherited;
    frmDeclineReason := TfrmDeclineReason.Create(Self);
    frmDeclineReason.ReasonKey := dtmLoanC.qryLoanDet.FieldByName('CurReason').AsInteger;
    try
      if frmDeclineReason.ShowModal = mrOK then
      begin
        dtmLoanC.qryLoanDet.Edit;
        dtmLoanC.qryLoanDet.FieldByName('CurReason').AsInteger := frmDeclineReason.ReasonKey;
      end;
    finally
      FreeAndNil(frmDeclineReason);
    end;
end;

procedure TfrmLoanDet.btnApproveLoanClick(Sender: TObject);
begin
  inherited;
  if dtmLoanC.ApproveProcessesOutstanding(LoanID) then
    MessageDlg('Cannot approve, not all the necessary Credit Vetting tasks have been completed successfully', mtError, [mbOK], 0)
  else if dtmLoanC.qryLoanDet.FieldByName('PayIns').AsCurrency <= 0 then
    MesDlg('Instalment must be greater than 0','E')
  else  if dtmLoanC.NoActiveAHV(dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger) then
    MessageDlg('Cannot approve, no valid AHV exists for this Client', mtError, [mbOK], 0)
  else
  begin
    {if dtmLoanC.CanAcceptLoan then
    begin }
      if MesDlg('Are you sure you want to approve this loan?','C') = mrYes then
      begin
        frmVerifyLoan := TfrmVerifyLoan.Create(Self);
        try
          if frmVerifyLoan.Showmodal = mrOK then
          begin
            with dtmLoanC do
            begin
              qryLoanDet.Edit;
              qryLoanDet.FieldByName('AprvDate').AsDateTime := Now;
              qryLoanDet.FieldByName('Status').AsInteger := lnsApproved;
              qryLoanDet.FieldByName('UpdateDate').AsDateTime := Now;
              qryLoanDet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
              qryLoanDet.Post;
            end;
          end;
        finally
          frmVerifyLoan.Free;
        end;
      //end;
    end;
  end;
end;

procedure TfrmLoanDet.btnPreApproveLoanClick(Sender: TObject);
var
  CanPreApprove: Boolean;
begin
  inherited;

  CanPreApprove := True;

  if dtmLoanC.CheckFlags(LoanID) then
  begin
    CanPreApprove := False;
    MessageDlg('Cannot pre-approve, loan has failed flags', mtError, [mbOK], 0);
  end;


  if dtmLoanC.ProcessesOutstanding(LoanID) then
  begin
    CanPreApprove := False;
    MessageDlg('Cannot pre-approve, not all the necessary Credit Vetting tasks have been completed successfully', mtError, [mbOK], 0);
  end;

  if CanPreApprove then
    if dtmLoanC.NoActiveAHV(dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger) then
    begin
        MessageDlg('Cannot pre-approve, no valid AHV exists for this Client', mtError, [mbOK], 0);
        CanPreApprove := False;
    end;

  if CanPreApprove then
    if dtmLoanC.LastFailedAHV(dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger) then
    begin
      if MessageDlg('The last AHV for this Client has failed, are you sure you wish to continue?', mtWarning, [mbYes, mbNo], 0) = mrNo then
        CanPreApprove := False;
    end;

  if CanPreApprove then
  begin
    if not dtmLoanC.dsOffers.Active then
    begin
      dtmLoanC.dsOffers.Parameters.ParamByName('LoanID').Value := LoanID;
      dtmLoanC.dsOffers.Open;
    end;

    if dtmLoanC.dsOffers.RecordCount = 0 then
      MessageDlg('No options have been created for this account', mtError, [mbOK], 0)
    else if MessageDlg('Are you sure you want to pre-approve this account?',
      mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
        frmVerifyLoan := TfrmVerifyLoan.Create(Self);
        try
          if frmVerifyLoan.Showmodal = mrOK then
          begin
            try
              Screen.Cursor := crHourGlass;
              try
                dtmMain.dbData.BeginTrans;

                {dtmLoanC.cmdCalcOptions.Parameters[0].Value := LoanID;
                dtmLoanC.cmdCalcOptions.Execute;}

                dtmLoanC.qryLoanDet.Edit;
                dtmLoanC.qryLoanDet.FieldByName('PreApproveDate').AsDateTime := Now;
                dtmLoanC.qryLoanDet.FieldByName('PreApproveUser').AsString := dtmMain.CurrentID;
                dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger := lnsPreApproved;
                dtmLoanC.qryLoanDet.FieldByName('UpdateDate').AsDateTime := Now;
                dtmLoanC.qryLoanDet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
                dtmLoanC.qryLoanDet.Post;

                dtmLoanC.CalculateLoanOptions2(LoanID);

                CreateQuote;

                //dtmLoanC.CalculateLoanOptions(LoanID);

                dtmMain.dbData.CommitTrans;
                dtmLoanC.dsQuotes.Requery;
              except
                dtmMain.dbData.RollbackTrans;
              end;
          finally
            Screen.Cursor := crDefault;
          end;
        end;
      finally
        FreeAndNil(frmVerifyLoan);
      end;
    end;
  end;
end;

procedure TfrmLoanDet.btnCancelLoanClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to cancel this loan?','C') = mrYes then
  begin
    frmDeclineReason := TfrmDeclineReason.Create(Self);
    frmDeclineReason.Caption := 'Reason for Cancelling';
    dtmLoanC.qryLUReasons.Filter := 'GroupKey = 100134';
    try
      if frmDeclineReason.ShowModal = mrOK then
      begin
        with dtmLoanC do
        begin
          //qryLoanDet.Edit;
          //qryLoanDet.FieldByName('CurReason').AsInteger := frmDeclineReason.ReasonKey;
          qryLoanDet.FieldByName('AprvDate').AsDateTime := Now;
          qryLoanDet.FieldByName('ApproveUser').AsString := dtmMain.CurrentID;
          qryLoanDet.FieldByName('Status').AsInteger := lnsCancelled;
          qryLoanDet.FieldByName('UpdateDate').AsDateTime := Now;
          qryLoanDet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
          qryLoanDet.Post;
        end;
      end
      else
        dtmLoanC.qryLoanDet.Cancel;
    finally
      FreeAndNil(frmDeclineReason);
    end;
  end;
end;

procedure TfrmLoanDet.btnNewPayoutClick(Sender: TObject);
begin
  inherited;
  ppmPayout.Popup(btnNewPayout.ClientOrigin.X, btnNewPayout.ClientOrigin.Y + btnNewPayout.Height);
end;

procedure TfrmLoanDet.LoanSettlement1Click(Sender: TObject);
begin
  inherited;
  //dtmPayouts.dsSettlements.Parameters.ParamByName('EntityID').Value := dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger;
  frmPayLoanSettle := TfrmPayLoanSettle.Create(Self);
  try
    if frmPayLoanSettle.ShowModal = mrOK then
    begin
      with dtmLoanC do
      begin
        RequeryOnRecord(qryLD3Pay,'PayoutID');
      end;
    end;
  finally
    FreeAndNil(frmPayLoanSettle);
  end;

  { frmPayoutDetail := TfrmPayoutDetail.Create(Self);
  try
    dtmLoanC.qryPayouts.Append;
    if Sender = LoanTransfer1 then
      frmPayoutDetail.PayoutType := pyTransfer
    else if Sender = Beneficiary1 then
      frmPayoutDetail.PayoutType := pyBeneficiary
    else if Sender = OnceOff1 then
      frmPayoutDetail.PayoutType := pyOnceOff;
    if frmPayoutDetail.ShowModal = mrOK then
    begin
      dtmLoanC.qryPayouts.Post;
      RequeryOnRecord(dtmLoanC.qryLD3Pay, 'PayoutID');
    end
    else
      dtmLoanC.qryPayouts.Cancel;
  finally
    FreeAndNil(frmPayoutDetail);
  end;}
end;

procedure TfrmLoanDet.btnEditPayoutClick(Sender: TObject);
begin
  inherited;
  case dtmLoanC.qryLD3Pay.FieldByName('ThirdType').AsInteger of
    3:  Beneficiary1Click(btnEditPayout);
    4:  OnceOff1Click(btnEditPayout);
  end;
end;

procedure TfrmLoanDet.edtThirdTypeChange(Sender: TObject);
begin
  inherited;
(*  if dtmLoanC.qryLD3Pay.Active then
  begin
   { if Assigned(pcPayouts.ActivePage) then
      pcPayouts.ActivePage.TabVisible := False;
    pcPayouts.Pages[dtmLoanC.qryLD3Pay.FieldByName('ThirdType').AsInteger - 1].TabVisible := True;
    pcPayouts.ActivePageIndex := dtmLoanC.qryLD3Pay.FieldByName('ThirdType').AsInteger - 1;      }

    btnEditPayout.Enabled := dtmLoanC.qryLD3Pay.FieldByName('ThirdType').AsInteger > 1;

    stsPayouts.SimpleText := '  Last updated by ' +
      dtmLoanC.qryLD3Pay.FieldByName('UpdateDetails').AsString;
  end;   *)
end;

procedure TfrmLoanDet.edtCapBorExit(Sender: TObject);
begin
  inherited;
//  btnCalcLoan.Click;
end;

procedure TfrmLoanDet.tsTrackShow(Sender: TObject);
begin
  FilterDataSet(dtmLoanC.qryAllLU,'GroupKey=100120 or GroupKey=100123');
  dtmLoanC.qryTrack.Open;
  //dtmLoanC.qryLUReasons.Open;
end;

procedure TfrmLoanDet.ts3RdPayShow(Sender: TObject);
var
  IsAccepted: Boolean;
begin
  dtmLoanC.qryLD3Pay.Open;
  dtmLoanC.qryLD3Pay.Requery;
  dtmLoanC.dsPaySummary.Open;
  IsAccepted := dtmLoanC.HasOffer(True);
  if IsAccepted then
    FilterDataSet(dtmLoanC.qryLD3Pay,'Accepted = 1')
  else
    dtmLoanC.qryLD3Pay.Filtered := False;

  if (IsAccepted) or (dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger > lnsReview) or (OnlyRead) then
  begin
    grdPayouts.Color := clBtnFace;
    btnNewPayout.Enabled := False;
    btnEditPayout.Enabled := False;
    btnDeletePayout.Enabled := False;
    //edtRef.ReadOnly := True;
    //edtRef.Color := clBtnFace;
    //**CurrentDts := nil;
  end
  else
  begin
    grdPayouts.Color := clWindow;
    btnNewPayout.Enabled := True;
    btnEditPayout.Enabled := True;
    btnDeletePayout.Enabled := True;
    //edtRef.ReadOnly := False;
    //edtRef.Color := clWindow;
    //**CurrentDts := dtmLoanC.dtsLD3Pay;
  end;
  dtmLoanC.qry3PayTot.Open;
  edtThirdTypeChange(Self);
end;

procedure TfrmLoanDet.SetStatusUpdate(CanUpdate: Boolean);
begin
  if OnlyRead then
    CanUpdate := False;
  pnlStatusUpdate.Visible := CanUpdate;
  //pnlLoanStatus.Top := pcLoan.Top;
  {if CanUpdate then
    Self.Height := Self.Height + pnlStatusUpdate.Height
  else
    Self.Height := Self.Height - pnlStatusUpdate.Height;}
end;

procedure TfrmLoanDet.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;
  if Value then
    ShowBoxes(False);
end;

procedure TfrmLoanDet.btnDeletePayoutClick(Sender: TObject);
var
  PayoutID: Integer;
  NoOffers: Integer;
begin
  PayoutID := dtmLoanC.qryLD3Pay.FieldByName('PayoutID').AsInteger;
  if dtmLoanC.PayoutQuoted(PayoutID) then
  begin
    if MessageDlg('Cannot delete this payout as it has already been included ' +
      'in a quotation. Do you want to disable the payout instead?', mtError, [mbYes, mbNo], 0) = mrYes then
    begin
      dtmLoanC.cmdDisablePay.Parameters[0].Value := PayoutID;
      dtmLoanC.cmdDisablePay.Execute;

      RequeryOnRecord(dtmLoanC.qryLD3Pay, 'PayoutID');
    end;
  end
  else if MessageDlg('Are you sure you want to delete this payout?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
  begin      
    dtmLoanC.cmdPayOffers.Parameters.ParamByName('PayoutID').Value := PayoutID;
    dtmLoanC.cmdPayOffers.Execute;
    NoOffers := dtmLoanC.cmdPayOffers.Parameters.ParamByName('Offers').Value;

    if NoOffers > 0 then
      if MessageDlg('There are ' + IntToStr(NoOffers) + ' manual options ' +
        'linked to this settlement. Do you want to continue and delete these options?',
        mtConfirmation, [mbYes,mbNo], 0) = mrNo then
          Abort;

    dtmLoanC.cmdDeletePay.Parameters[0].Value := PayoutID;
    dtmLoanC.cmdDeletePay.Execute;

     RequeryOnRecord(dtmLoanC.qryLD3Pay, 'PayoutID');
  end;
end;

procedure TfrmLoanDet.grdPayoutsDblClick(Sender: TObject);
begin
  if btnEditPayout.Enabled then
    btnEditPayout.Click;
end;

procedure TfrmLoanDet.edtOfferIDChange(Sender: TObject);
begin
 { if dtmLoanC.dsOffers.Active then
    if CurrStatus = lnsInactive then
      SetCurrStatus(CurrStatus); }

  if CurrStatus in [lnsInactive, lnsReview] then
    if not OnlyRead then
      btnDeleteOption.Enabled := dtmLoanC.dsOffers.FieldByName('System').AsBoolean = False;

  if dtmLoanC.dsOffers.FieldByName('Enabled').AsBoolean then
  begin
    btnDisableOption.Caption := 'Disable';
    btnDisableoption.ImageIndex := 25;
  end
  else
  begin
    btnDisableOption.Caption := 'Enable';
    btnDisableoption.ImageIndex := 24;
  end;
end;                                

procedure TfrmLoanDet.OnceOff1Click(Sender: TObject);
begin
  dtmLoanC.qryPayouts.Open;
  frmThirdPartySettle := TfrmThirdPartySettle.Create(Self);
  frmThirdPartySettle.ThirdPartyType := 4;
  try
    if Sender = btnEditPayout then
    begin
      dtmLoanC.qryPayouts.Locate('PayoutID',
        dtmLoanC.qryLD3Pay.FieldByName('PayoutID').AsInteger, []);

        dtmLoanC.qryPayouts.Edit;
    end
    else
      dtmLoanC.qryPayouts.Append;
    dtmLoanC.qryPayouts.FieldByName('ThirdType').AsInteger := frmThirdPartySettle.ThirdPartyType;
    if frmThirdPartySettle.ShowModal = mrOK then
    begin
      dtmLoanC.qryPayouts.Post;
      RequeryOnRecord(dtmLoanC.qryLD3Pay,'PayoutID');
    end
    else
      dtmLoanC.qryPayouts.Cancel;
  finally
    FreeAndNil(frmThirdPartySettle);
    dtmLoanC.dsPayouts.Close;
  end;
end;

procedure TfrmLoanDet.btnRejectQuoteClick(Sender: TObject);
var
  sQuoteID: String;
  Reason: String;
  NewQuote: Boolean;
begin
  sQuoteID := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsString;
  if MessageDlg('Are you sure you want to reject Quote No ' + sQuoteID + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      frmRejectQuote := TfrmRejectQuote.Create(Self);
      if frmRejectQuote.ShowModal = mrOK then
      begin
        NewQuote := frmRejectQuote.cmbReason.ItemIndex = 0;
        if NewQuote then
        begin
          if dtmLoanC.qryLoanDet.State = dsEdit then
            dtmLoanC.qryLoanDet.Post;

          Reason := dtmLoanC.qryLoanDet.FieldByName('AppAmt').AsString + ' for ' +
            dtmLoanC.qryLoanDet.FieldByName('AppPeriod').AsString + ' months';

          if MessageDlg('Do you want to calculate a new quotation now?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            btnRecalculateClick(nil);
            dtmLoanC.dsQuotes.Last;
            if dtmLoanC.dsQuotes.FieldByName('Status').AsString = '' then
              btnResendQuoteClick(nil);
          end;

          //dtmQuotation.RejectQuotation(dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger);
          
          {dtmLoanC.qryLoanDet.FieldByName('AppAmt').AsCurrency :=
          dtmLoanC.qryLoanDet.FieldByName('AppPeriod').AsCurrency := }
        end
        else
          Reason := frmRejectQuote.memSpecify.Text;

        try
          Screen.Cursor := crHourGlass;
          dtmMain.dbData.Execute(
            'UPDATE afQuotations SET Status = ''R'', RejectType = ''' +
            frmRejectQuote.RejectType + ''', StatusDate = GETDATE(),' +
            'Reason = ''' + Reason +  ''','+
            'StatusUser = ''' + dtmMain.CurrentID + ''' WHERE QuotationID = ' +
            sQuoteID + ' AND Status <> ''A''');

          InsertNote(110004015, 'Quotation ' + sQuoteID + ' rejected');
          tsQuoteNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';

          RequeryOnRecord(dtmLoanC.dsQuotes, 'QuotationID');
        finally
          Screen.Cursor := crDefault;
        end;
      end
      else
        dtmLoanC.qryLoanDet.Cancel;
    finally
      FreeAndNil(frmRejectQuote);
    end;
  end;
end;

procedure TfrmLoanDet.btnAcceptQuoteClick(Sender: TObject);
var
  sQuoteID: String;
begin
  sQuoteID := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsString;
  if MessageDlg('Are you sure you want to accept Quote No ' + sQuoteID + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    frmAcceptOption := TfrmAcceptOption.Create(Self);
    try
      if frmAcceptOption.ShowModal = mrOK then
      begin
        try
          try
            dtmMain.dbData.BeginTrans;
            Screen.Cursor := crHourGlass;

            dtmLoanC.cmdAcceptQuote.Parameters.ParamByName('QuotationID').Value := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;
            dtmLoanC.cmdAcceptQuote.Parameters.ParamByName('OfferID').Value := dtmLoanC.dsQuoteOffers.FieldByName('OfferID').AsInteger;
            dtmLoanC.cmdAcceptQuote.Parameters.ParamByName('AcceptDate').Value := frmAcceptOption.dtpAcceptDate.DateTime;
            dtmLoanC.cmdAcceptQuote.Parameters.ParamByName('UserID').Value := UserID;
            dtmLoanC.cmdAcceptQuote.Execute;

            dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('AcceptReject').Value := 1;
            dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('LoanID').Value := LoanID;
            dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('VettingTaskID').Value := 17;
            dtmLoanC.cmdCheckAuthoristions.Execute;

            DisplayNotes(False);

            if dtmMain.dbData.InTransaction then
              dtmMain.dbData.CommitTrans;

            dtmLoanC.dsVetting.Close;
            dtmLoanC.dsVetting.Parameters[0].Value := LoanID;
            dtmLoanC.dsVetting.Open;
            
            dtmLoanC.dsLoanFeeDetail.Requery();
            RequeryOnRecord(dtmLoanC.qryLoanDet,'LoanID');
          except on E:Exception  do
          begin
            dtmMain.dbData.RollbackTrans;
            ShowMessage(E.Message);
            //MessageDlg('An error occurred. The quotation was not accepted successfully', mtError, [mbOK],0);
          end;
          end;
        finally
          Screen.Cursor := crDefault;
        end;
      end;
    finally
      FreeAndNil(frmAcceptOption);
    end;
  end;
end;

procedure TfrmLoanDet.btnOKClick(Sender: TObject);
begin
  if dtmLoanC.qryLoanDet.State in [dsInsert,dsEdit] then
    dtmLoanC.qryLoanDet.Post;
end;

procedure TfrmLoanDet.btnCancel1Click(Sender: TObject);
begin
  if dtmLoanC.qryLoanDet.State in [dsInsert,dsEdit] then
    dtmLoanC.qryLoanDet.Cancel;
end;

procedure TfrmLoanDet.edtQuotationIDChange(Sender: TObject);                                       
begin
  if Assigned(dtmLoanC.dsQuotes) then
  begin
    if not OnlyRead then
      if CurrStatus = lnsPreApproved then
      begin
        btnResendQuote.Enabled := dtmLoanC.dsQuotes.FieldByName('Status').AsString = '';
        btnAcceptQuote.Enabled := dtmLoanC.dsQuotes.FieldByName('Status').AsString = 'S';
        btnRejectQuote.Enabled := btnAcceptQuote.Enabled;
        btnCancelQuote.Enabled := dtmLoanC.dsQuotes.FieldByName('Status').AsString = '';
      end;
  end;
end;

procedure TfrmLoanDet.btnRecalculateClick(Sender: TObject);
var
  Mesg: String;
  HostID: integer;
  DV360: TDV360;
  DV360URL: string;

  procedure ShowMessages;
  var
    i : integer;
  begin
    Mesg := '';
    for i := 0 to pred(DV360.NoMessages) do begin
      Mesg := Mesg + format('%s: %s'#13#10, [DV360.Messages[i].Code, DV360.Messages[i].Description]);
    end;
    frmWait.DisplayMessage := Mesg;
    frmWait.btnOK.Enabled := True;
  end;

  procedure ShowErrorMessage;
  begin
    Mesg := DV360.ErrorMessage;
    frmWait.DisplayMessage := DV360.ErrorMessage;
    frmWait.btnOK.Enabled := True;
  end;

begin
  HostID := dtmLoanC.qryLoanDet.FieldByName('HostID').AsInteger;
  frmWait := TfrmWait.Create(Self);
  frmWait.DisplayMessage := 'Calculating Loan Options...';
  frmWait.FormStyle := fsStayOnTop;
  frmWait.Show;
  Application.ProcessMessages;
 //Csr := TAutoCursor.Create;
  try
    if dtmLoanC.qryLoanDet.State = dsEdit then
      dtmLoanC.qryLoanDet.Post;

    if HostID = 1 then begin  // Bruma:1 Boodle:2
      dtmLoanC.cmdCalcOptions.Parameters[0].Value := LoanID;
      dtmLoanC.cmdCalcOptions.Execute;
    end
    else begin
      DV360 := TDV360.Create;
      dtmLoanC.qryConfigDV360URL.Close;
      dtmLoanC.qryConfigDV360URL.Open;
      DV360URL := dtmLoanC.qryConfigDV360URL.Fields[0].AsString;
      dtmLoanC.qryConfigDV360URL.Close;
      try
        DV360.URL := DV360URL;
        DV360.LoanID := IntToStr(LoanId);
        DV360.Source := 'Boodle';
        if DV360.Post = True then begin
          DV360.LoadResponse;
          if DV360.IsSuccessful = false then begin
            ShowMessages;
            exit;
          end;
        end
        else begin
          ShowErrorMessage;
          exit;
        end;
      finally
        DV360.Destroy;
      end;
    end;

    if dtmLoanC.dsOffers.Active then
      dtmLoanC.dsOffers.Requery;

    dtmLoanC.CalculateLoanOptions2(LoanID);

    if dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger = lnsPreApproved then
      CreateQuote;

    dtmLoanC.dsQuotes.Requery;
    if dtmLoanC.dsOffers.Active then
      dtmLoanC.dsOffers.Requery;
  finally
    Screen.Cursor := crDefault;
  end;

  if Sender = btnRecalculate then
  begin
    dtmLoanC.dsPayMatrix.Requery;
    dtmLoanC.dsOffersMatrix.Requery;
    dtmLoanC.dsOfferPayouts.Requery;
    CreateMatrix(True);
    grdMatrix.Refresh;

    if dtmLoanC.dsOffers.RecordCount = 0 then
      Mesg := 'No Options Created'
    else if dtmLoanC.dsOffers.RecordCount = 1 then
      Mesg := '1 Option Created'
    else
      Mesg := IntToStr(dtmLoanC.dsOffers.RecordCount) + ' Options Created';
  end;

  frmWait.DisplayMessage := Mesg;
  frmWait.btnOK.Enabled := True;

(*
var
  Mesg: String;
  DV360: TDV360;
  DV360URL: string;

  procedure ShowMessages;
  var
    i : integer;
  begin
    Mesg := '';
    for i := 0 to pred(DV360.NoMessages) do begin
      Mesg := Mesg + format('%s: %s'#13#10, [DV360.Messages[i].Code, DV360.Messages[i].Description]);
    end;
    frmWait.DisplayMessage := Mesg;
    frmWait.btnOK.Enabled := True;
  end;

  procedure ShowErrorMessage;
  begin
    Mesg := DV360.ErrorMessage;
    frmWait.DisplayMessage := DV360.ErrorMessage;
    frmWait.btnOK.Enabled := True;
  end;

begin
  frmWait := TfrmWait.Create(Self);
  frmWait.DisplayMessage := 'Calculating Loan Options...';
  frmWait.FormStyle := fsStayOnTop;
  frmWait.Show;
  Application.ProcessMessages;

  Screen.Cursor := crHourGlass;
  try

      dtmLoanC.cmdCalcOptions.Parameters[0].Value := LoanID;
      dtmLoanC.cmdCalcOptions.Execute;

    //if dtmLoanC.qryLoanDet.State = dsEdit then
      //dtmLoanC.qryLoanDet.Post;
    //DV360 := TDV360.Create;
    //dtmLoanC.qryConfigDV360URL.Close;
    //dtmLoanC.qryConfigDV360URL.Open;
    //DV360URL := dtmLoanC.qryConfigDV360URL.Fields[0].AsString;
    //dtmLoanC.qryConfigDV360URL.Close;
    //try
      //DV360.URL := DV360URL;
      //DV360.LoanID := IntToStr(LoanId);
      //DV360.Source := 'Boodle';
      //if DV360.Post = True then begin
        //DV360.LoadResponse;
        //if DV360.IsSuccessful = false then begin
         // ShowMessages;
         // exit;
       // end;
      //end
      //else begin
      //  ShowErrorMessage;
    //    exit;
  //    end;
//    finally
      //DV360.Destroy;
    //end;

    if dtmLoanC.dsOffers.Active then
      dtmLoanC.dsOffers.Requery;

    //dtmLoanC.CalculateLoanOptions2(LoanID);

    if dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger = lnsPreApproved then
      CreateQuote;

    dtmLoanC.dsQuotes.Requery;
    if dtmLoanC.dsOffers.Active then
      dtmLoanC.dsOffers.Requery;
  finally
    Screen.Cursor := crDefault;
  end;

  if Sender = btnRecalculate then
  begin
    dtmLoanC.dsPayMatrix.Requery;
    dtmLoanC.dsOffersMatrix.Requery;
    dtmLoanC.dsOfferPayouts.Requery;
    CreateMatrix(True);
    grdMatrix.Refresh;

    if dtmLoanC.dsOffers.RecordCount = 0 then
      Mesg := 'No Options Created'
    else if dtmLoanC.dsOffers.RecordCount = 1 then
      Mesg := '1 Option Created'
    else
      Mesg := IntToStr(dtmLoanC.dsOffers.RecordCount) + ' Options Created';

    frmWait.DisplayMessage := Mesg;
    frmWait.btnOK.Enabled := True;
  end;
*)
end;



procedure TfrmLoanDet.btnResendQuoteClick(Sender: TObject);
var
  sQuoteID: String;
  MarkSent: Boolean;
  email : String;
  cellNo : String;
  smsMsg : String;
begin
  if Sender = btnResendQuote then
    MarkSent := MessageDlg('Are you sure you want to issue this Quotation?',
      mtConfirmation, [mbYes,mbNo], 0) = mrYes
  else
    MarkSent := True;

  if MarkSent then
  begin
    sQuoteID := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsString;
    dtmMain.dbData.Execute(
      'UPDATE afQuotations SET IssueDate = GETDATE(), IssueUser = ''' +
      dtmMain.CurrentID + ''', Status = ''S'' WHERE QuotationID = ' + sQuoteID);

    //Tick Authorisations Checkbox process - Quotation Issued
    dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('AcceptReject').Value := 1;
    dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('LoanID').Value := LoanID;
    dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('VettingTaskID').Value := 15;
    dtmLoanC.cmdCheckAuthoristions.Execute;

    dtmLoanC.dsVetting.Close;
    dtmLoanC.dsVetting.Parameters[0].Value := LoanID;
    dtmLoanC.dsVetting.Open;

    //dtmLoanC.RefreshCreditVetting;

    if Sender = btnResendQuote then
    begin
      with dtmLoanC do
      begin
        cmdAddQuoteCall.Parameters.ParamByName('@QuotationID').Value := sQuoteID;
        cmdAddQuoteCall.Parameters.ParamByName('@CreateUser').Value := dtmMain.CurrentID;
        cmdAddQuoteCall.Parameters.ParamByName('@CallReference').Value := '';
        cmdAddQuoteCall.Execute;
      end;
    end;

    RequeryOnRecord(dtmLoanC.dsQuotes,'QuotationID');

    dtmLoanC.dsIssueQuote.Close;
    dtmLoanC.dsIssueQuote.Parameters.ParamByName('EntityID').Value := dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger;
    dtmLoanC.dsIssueQuote.Open;
    email := dtmLoanC.dsIssueQuote.FieldByName('Email').AsString;
    cellNo := dtmLoanC.dsIssueQuote.FieldByName('CellNo').AsString;
    dtmLoanC.dsIssueQuote.Close;


    if ValidEmail(email) then
    begin
      SendBrumaQuotation(email);

      (*  ShellExecute(Application.Handle, 'Open', PChar('SmartDOX.exe'), PChar(' CONNECTION="' +
           dtmMain.ConnectionString + '" UID='+IntToStr(dtmMain.UserKey)+' AID='+IntToStr(LoanID)+' APPID=100'+' EID=' +
           dtmLoanC.qryLoanDet.FieldByName('EntityID').AsString+' DID=3'+' TID=4'+' VALUE='+email+' DIALOG=0'+' ATTACH=1 ATTID=1 AONLY=0'+' P1='+
          sQuoteID+' P2= '),'', SW_SHOWNORMAL);
      *)

      dtmLoanC.cmdInsertEmailNote.Parameters.ParamByName('LoanID').Value := LoanID;
      dtmLoanC.cmdInsertEmailNote.Parameters.ParamByName('Email').Value := email;
      dtmLoanC.cmdInsertEmailNote.Execute();
    end
    else if ValidCellNo(cellNo) then
    begin

      smsMsg := 'Dear BRUMA Client, Congratulations your loan ' + dtmLoanC.qryLoanDet.FieldByName('RefNo').AsString + ' has been PRE-APPROVED & a QUOTATION has been issued for your signature. Contact Customer Care 0861 33 11 33';
      dtmLoanC.cmdSMSSend.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
      dtmLoanC.cmdSMSSend.Parameters.ParamByName('LoanID').Value := LoanID;
      dtmLoanC.cmdSMSSend.Parameters.ParamByName('EntityID').Value := dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger;
      dtmLoanC.cmdSMSSend.Parameters.ParamByName('CellNo').Value := cellNo;
      dtmLoanC.cmdSMSSend.Parameters.ParamByName('SmsMsg').Value := smsMsg;
      dtmLoanC.cmdSMSSend.Execute();

      dtmLoanC.cmdInsertSMSNote.Parameters.ParamByName('LoanID').Value := LoanID;
      dtmLoanC.cmdInsertSMSNote.Parameters.ParamByName('CellNo').Value := cellNo;
      dtmLoanC.cmdInsertSMSNote.Execute();
    end;
  end;
end;

procedure TfrmLoanDet.tsVettingShow(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    grpDeclined.Visible := (CurrStatus = lnsDeclined) or (CurrStatus = lnsCancelled);
    if grpDeclined.Visible then
    begin
      if CurrStatus = lnsDeclined then
      begin
        dtmLoanC.qryLUReasons.Filter := 'GroupKey = 100133';
        grpDeclined.Caption := 'Declined';
      end
      else
      begin
        dtmLoanC.qryLUReasons.Filter := 'GroupKey = 100134';
        grpDeclined.Caption := 'Cancelled';
      end;
    end;

    tsPayrollRules.TabVisible := dtmLoanC.qryLoanDet.FieldByName('LoanInd').AsInteger = 100132003; //Payroll Loan
    if tsPayrollRules.TabVisible then
    begin
      dtmLoanC.SetPayrollRules(dtmLoanC.qryLoanDet.FieldByName('Link3').AsInteger);
    end;

    if (CurrStatus < lnsOpen) and (not (CurrStatus in [lnsDeclined, lnsCancelled])) then
    begin
      dtmLoanC.CalculateVettingFlags(LoanID);
      btnAuthoriseVettingFlags.Enabled := (not OnlyRead) and (dtmLoanC.dsAuthoriseFlags.RecordCount > 0);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.tsVettingResize(Sender: TObject);
begin
  //grdPolicies.Columns[0].Width := grdPolicies.ClientWidth -
  //  grdPolicies.Columns[1].Width - 2;
end;

procedure TfrmLoanDet.grdPoliciesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Graphic: TGraphic;
begin
  if Column.FieldName = 'Description' then
  begin
    if dtmLoanC.dsPolicies.FieldByName('Fail').AsBoolean and (not dtmLoanC.dsPolicies.FieldByName('IsAuthorised').AsBoolean) then
    begin
      grdPolicies.Canvas.Font.Style := grdPolicies.Canvas.Font.Style + [fsBold];
      grdPolicies.Canvas.Font.Color := clMaroon;

      grdPolicies.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,
        dtmLoanC.dsPolicies.FieldByName('Description').AsString);
    end;
  end
  else if Column.FieldName = 'Fail' then
  begin
    grdPolicies.Canvas.FillRect(Rect);
    if dtmLoanC.dsPolicies.FieldByName('Fail').AsBoolean then
    begin
      if dtmLoanC.dsPolicies.FieldByName('Information').AsBoolean then
        Graphic := imgInformation.Picture.Graphic
      else if dtmLoanC.dsPolicies.FieldByName('IsAuthorised').AsBoolean then
        Graphic := imgFailOverride.Picture.Graphic
      else
        Graphic := imgFail.Picture.Graphic;
    end
    else
      Graphic := imgPass.Picture.Graphic;

    grdPolicies.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - Graphic.Width)div 2),
      Rect.Top + 2, Graphic);
  end;
end;

procedure TfrmLoanDet.ToolButton6Click(Sender: TObject);
begin
//  dtmLoanC.CalculateLoanOptions(LoanID);
  dtmLoanC.CalculateCurrentLoan;
end;

procedure TfrmLoanDet.CreateQuote;
begin
  with dtmLoanC do
  begin
    cmdAddQuote.Parameters.ParamByName('LoanID').Value := LoanID;
    cmdAddQuote.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
    cmdAddQuote.Execute;
  end;
end;

procedure TfrmLoanDet.btnOpenClick(Sender: TObject);
begin
  ppmQuotation.Popup(btnOpen.ClientOrigin.X, btnOpen.ClientOrigin.Y + btnOpen.Height);
end;

procedure TfrmLoanDet.PrintQuotation(Sender: TObject);
var
  repQuote: TppReport;
  dsQuote: TADODataSet;
  SendMessage: String;
  SendFax_Filename: String;
begin
  if Sender = viaFax1 then
    SendMessage :=
    'Dear ' + dtmMain.qryEntDet.FieldByName('Name').AsString + ' ' +
    dtmMain.qryEntDet.FieldByName('Name2').AsString + #13#10#13#10 +
    'Congratulations your loan (#' + dtmLoanC.qryLoanDet.FieldByName('RefNo').AsString + ') has been pre-approved. ' + #13#10#13#10 +
    'Please find attached the Pre-Agreement Statement & Quotation and' + #13#10 +
	  'Terms & Conditions for your signature. ' +
	  'Please select which loan' + #13#10 +
    'option you would like by signing under the option that suits you ' + #13#10 +
    'best. Please also sign and date the bottom of all 5 pages. ' + #13#10 +
	  'In total there are 3 places that require your signature and 2 places that require your initial. ' + #13#10#13#10 +
    'These are the last documents that you will need to submit.' + #13#10#13#10 +
    'Once signed, please fax the documents to us on 087 943 1700 or scan' + #13#10 +
    'and email to info@brumafinance.co.za. As soon as we receive your ' + #13#10 +
    'documents, we will transfer the loan amount directly to your bank ' + #13#10 +
    'account.' + #13#10#13#10 +
    'Should you have any queries or require assistance, please contact ' + #13#10 +
    'our dedicated Customer Care Team on 0861 33 1133 or email us at ' + #13#10 +
    'info@brumafinance.co.za.'
  else
    SendMessage :=
	  'Dear ' + dtmMain.qryEntDet.FieldByName('Name').AsString + ' ' +
            dtmMain.qryEntDet.FieldByName('Name2').AsString + #13#10#13#10 +	  
	  'Congratulations your loan (#' + dtmLoanC.qryLoanDet.FieldByName('RefNo').AsString + ') has been pre-approved. ' + #13#10#13#10 +
	  'For your convenience you may accept the Pre-Agreement, Payment Instruction and Terms & Conditions on our website at www.brumafinance.co.za. ' + 
	  'You will need to register or if you have already registered, you will need to login. ' + #13#10#13#10 +
	  'However if you do not have access to online facilities, we have attached the Pre-Agreement, ' +
	  'Payment Instruction and Terms & Conditions for your signature. ' +
	  'Please select which loan option you would like by signing under the option that suits you best. '+
	  'Please also sign and date the bottom of all the pages. ' +
	  'In total there are 6 places that require your signature or initials. ' + #13#10#13#10 +
	  'These are the last documents that you will need to submit. ' + #13#10#13#10 + 
	  'Once signed, please fax the documents to us on 087 943 1700 or scan and email to info@brumafinance.co.za. '+
	  'As soon as we receive your documents, we will transfer the loan amount directly to your bank account. ' + #13#10#13#10 +
	  'Should you have any queries or require assistance, ' +
	  'please contact our dedicated Customer Care Team on 0861 33 11 33 or email us at info@brumafinance.co.za. ' + #13#10#13#10 +	  
	  'Kind Regards,';


  with dtmQuotations do
  begin

    if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger >= 5 then
      SendFax_Filename := '\\10.11.0.102\AZUpdate\Shared_Documents\Terms & Conditions' +
        dtmLoanC.qryLoanDet.FieldByName('BookID').AsString + '.pdf'
    else
      SendFax_Filename := '\\10.11.0.102\AZUpdate\Shared_Documents\MLA.pdf';

    if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 2 then
    begin
      repQuote := rpQuote2;
      dsQuote := dsQuote2;
    end
    else if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 3 then
    begin
      repQuote := rpQuote3;
      dsQuote := dsQuote3;
    end
    else if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 4 then
    begin
      repQuote := rpQuote4;
     dsQuote := dsQuote4;
    end
    else if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 5 then
    begin
             if dtmLoanC.qryLoanDet.FieldByName('LoanType').AsString <> 'BP1' then
             begin
                  dmMain.ShowSqlReport('rptQuotation','&QuotationID=' +  dtmLoanC.dsQuotes.FieldByName('QuotationID').AsString + '&UserID=' +  inttostr(dtmMain.UserKey));
            end
            else
            begin
                  dmMain.ShowSqlReport('rptQuotation_BoodlePay','&QuotationID=' +  dtmLoanC.dsQuotes.FieldByName('QuotationID').AsString + '&UserID=' +  inttostr(dtmMain.UserKey));
            end
        (*
      repQuote := rpQuote5;
      dsQuote := dsQuote5;
      dsQuote.Close;
      dsQuote.Parameters[1].Value := dtmMain.UserKey;    *)
    end
    else
    begin
      repQuote := rpQuote;
      dsQuote := dsPrintQuote;
    end;

    dsQuote.Close;
    dsQuote.Parameters[0].Value := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;
    dsQuote.Open;

    dsAffordability.Close;
    dsAffordability.Parameters[0].Value := LoanID;
    dsAffordability.Open;

    dsThirdParty.Close;
    dsThirdParty.Parameters[0].Value := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;
    dsThirdParty.Open;

    if (Sender = btnExportQuote) or (Sender = viaFax1) or (Sender = viaEmail1) then
    begin
      repQuote.ShowPrintDialog := False;
      repQuote.DeviceType := dtPDF;
      if Sender = btnExportQuote then
      begin
        if dlgExport.Execute then
        begin
          repQuote.TextFileName := dlgExport.FileName;
          repQuote.Print;
        end;
      end
      else
      begin
        Screen.Cursor := crHourGlass;

        frmSendFax := TfrmSendFax.Create(Self);

        frmSendFax.UseSMTP := False;

        frmSendFax.edtToName.Text := dtmMain.qryEntDet.FieldByName('Name').AsString + ' ' +
          dtmMain.qryEntDet.FieldByName('Name2').AsString;

        if Sender = viaFax1 then
          frmSendFax.SendMethod:= 'Fax'
        else if Sender = viaEmail1 then
          frmSendFax.SendMethod:= 'Email';

        frmSendFax.SendMessage := SendMessage;

        repQuote.TextFileName := TempFolder + 'Quotation.pdf';
        repQuote.PDFSettings.OpenPDFFile := False;
        repQuote.Print;

        frmSendFax.Filename := repQuote.TextFileName + '=1;';

        dsAuthorisationPay.Close;
        dsAuthorisationPay.Parameters[0].Value := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;
        dsAuthorisationPay.Open;

        if dsAuthorisationPay.RecordCount > 0 then
        begin
          rpAuthorisationPay.ShowPrintDialog := False;
          rpAuthorisationPay.DeviceType := dtPDF;
          rpAuthorisationPay.PDFSettings.OpenPDFFile := False;
          rpAuthorisationPay.TextFileName := TempFolder + 'AuthorisationToPay.pdf';
          rpAuthorisationPay.Print;

          frmSendFax.Filename := frmSendFax.Filename +
            rpAuthorisationPay.TextFileName + '=1;';
        end;

        try
          if dtmLoanC.GetDocumentCount(LoanID, 'MLA') = 0 then
            frmSendFax.Filename := frmSendFax.Filename + SendFax_Filename + '=1;'
          else
            frmSendFax.Filename := frmSendFax.Filename + SendFax_Filename + '=0;';
          if frmSendFax.ShowModal = mrOK then
          begin
            dtmLoanC.dsQuotes.Edit;
            dtmLoanC.dsQuotes.FieldByName('SentDate').AsDateTime := Date;
           dtmLoanC.dsQuotes.FieldByName('SentUser').AsString := dtmMain.CurrentID;
            dtmLoanC.dsQuotes.FieldByName('SentMethod').AsString := frmSendFax.SendMethod;
            dtmLoanC.dsQuotes.Post;
          end;
        finally
          FreeAndNil(frmSendFax);
        end;

        //SendFile(repQuote.TextFileName, True);
        Screen.Cursor := crDefault;
      end;
    end
    else
    begin
      repQuote.ShowPrintDialog := True;
      repQuote.DeviceType := 'Screen';
      repQuote.Print;
    end;

    dsQuote.Close;
    dsAffordability.Close;
    dsThirdParty.Close;
    dsAuthorisationPay.Close;
  end;
end;

procedure TfrmLoanDet.PrintBoodleQuotation(Sender: TObject);
//var
//  Parameters: String;
//  DID: Integer;
begin
  if (dtmLoanC.qryLoanDet.FieldByName('BookID').AsInteger = 4)  then
    begin
      dmMain.ShowSqlReport('BoodleQuote2', '&QuotationID=' + IntToStr(dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger));
    end
  else
    begin
        ShowMessage('Urgent: Please Report this error to IT HelpDesk - possible database corruption.' + #10#13#10#13 + 'Boodle Loan was found with a BookID of 4');
//      dmMain.ShowSqlReport('BoodleQuote', '&QuotationID=' + IntToStr(dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger));
    end;
end;


//procedure TfrmLoanDet.PrintBoodleQuotation(Sender: TObject);
//var
//  Parameters: String;
//  DID: Integer;
////  Csb: TConnectionStringBuilder;
////  SmartConnStr: string;
//begin
//
//  if (dtmLoanC.qryLoanDet.FieldByName('BookID').AsInteger = 4)  then
//    begin
//      DID := 6;
//    end
//  else
//    begin
//      DID := 5;
//    end;
//
////  Csb := TConnectionStringBuilder.Create;
////  try
////    Csb.ConnectionString := dtmMain.ConnectionString;
////    SmartConnStr := Csb.SmartDoxConnectionString;
////  finally
////    Csb.Free;
////  end;
//
//
//  Parameters :=
//    'CONNECTION="' + dtmMain.ConnectionString + '" ' +
////    'CONNECTION="' + SmartDoxConnStr + '" ' +
//    'UID=' + IntToStr(dtmMain.UserKey) + ' ' +
//    'AID=' + IntToStr(LoanID) + ' ' +
//    'APPID=100 ' +
//    'EID=' + IntToStr(dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger) + ' ' +
//    'DIALOG=0 ATTACH=0 ATTID=0 AONLY=0  ' +
//    'DID=' + IntToStr(DID) + ' TID=1 ' +
//    'P1=' + IntToStr(dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger);
//
//  ShellExecute(Application.Handle,'Open', 'SmartDox.exe', PChar(Parameters), '', SW_SHOWNORMAL);
//end;

procedure TfrmLoanDet.SendBrumaQuotation(SendEmail: String);
var
  repQuote: TppReport;
  dsQuote: TADODataSet;
  SendMessage: String;
  SendFax_Filename: String;
  EmailSubject: String;
  FromEmail: String;

 begin
    SendMessage :=
      'Dear ' + dtmMain.qryEntDet.FieldByName('Name').AsString + ' ' +
            dtmMain.qryEntDet.FieldByName('Name2').AsString + #13#10#13#10 +
      'Congratulations your loan (#' + dtmLoanC.qryLoanDet.FieldByName('RefNo').AsString + ') has been pre-approved. ' + #13#10#13#10 +
      'Please find attached the Pre-Agreement Statement and Quotation and Terms & Conditions for your signature. ' +
      'Please select which loan option you would like by signing under the option that suits you best. ' +
      'Please also sign and date the bottom of all 5 pages. In total there are 3 places that require your signature and 2 places that require your initial. ' + #13#10#13#10 +
      'These are the last documents that you will need to submit.' + #13#10#13#10 +
      'Once signed, please fax the documents to us on 087 943 1700 or scan and email to info@brumafinance.co.za. ' +
      'As soon as we receive your documents, we will transfer the loan amount directly to your bank account.' + #13#10#13#10 +
      'Should you have any queries or require assistance, please contact our dedicated Customer Care Team on 0861 33 1133 or email us at info@brumafinance.co.za.' + #13#10#13#10 +
      'Kind Regards' + #13#10#13#10#13#10 +
      'www.brumafinance.co.za';
      EmailSubject := 'info@pcsgroup.co.za';
      FromEmail := 'Bruma Finance Loan Quotation';

  with dtmQuotations do
  begin

    if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger >= 5 then
      SendFax_Filename := '\\10.11.0.102\AZUpdate\Shared_Documents\Terms & Conditions' +
        dtmLoanC.qryLoanDet.FieldByName('BookID').AsString + '.pdf'
    else
      SendFax_Filename := '\\10.11.0.102\AZUpdate\Shared_Documents\MLA.pdf';

    if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 2 then
    begin
      repQuote := rpQuote2;
      dsQuote := dsQuote2;
    end
    else if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 3 then
    begin
      repQuote := rpQuote3;
      dsQuote := dsQuote3;
    end
    else if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 4 then
    begin
      repQuote := rpQuote4;
     dsQuote := dsQuote4;
    end
    else if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 5 then
    begin
      repQuote := rpQuote5;
      dsQuote := dsQuote5;
      dsQuote.Close;
      dsQuote.Parameters[1].Value := dtmMain.UserKey;
    end
    else
    begin
      repQuote := rpQuote;
      dsQuote := dsPrintQuote;
    end;

    dsQuote.Close;
    dsQuote.Parameters[0].Value := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;
    dsQuote.Open;

    dsAffordability.Close;
    dsAffordability.Parameters[0].Value := LoanID;
    dsAffordability.Open;

    dsThirdParty.Close;
    dsThirdParty.Parameters[0].Value := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;
    dsThirdParty.Open;

    repQuote.ShowPrintDialog := False;
    repQuote.DeviceType := dtPDF;
    //code snip begin
    Screen.Cursor := crHourGlass;

    frmSendFax := TfrmSendFax.Create(Self);
    frmSendFax.edtToName.Text := dtmMain.qryEntDet.FieldByName('Name').AsString + ' ' +
      dtmMain.qryEntDet.FieldByName('Name2').AsString;
    frmSendFax.SendMethod:= 'Email';
    frmSendFax.edtToFaxNo.Text := SendEmail;

    frmSendFax.SendMessage := SendMessage;
    frmSendFax.UseSMTP := True;

    repQuote.TextFileName := TempFolder + 'Quotation.pdf';
    repQuote.PDFSettings.OpenPDFFile := False;
    repQuote.Print;

    frmSendFax.Filename := repQuote.TextFileName + '=1;';

    try
      if dtmLoanC.GetDocumentCount(LoanID, 'MLA') = 0 then
        frmSendFax.Filename := frmSendFax.Filename + SendFax_Filename + '=1;'
      else
        frmSendFax.Filename := frmSendFax.Filename + SendFax_Filename + '=0;';

      if frmSendFax.ShowModal = mrOK then
      begin
        dtmLoanC.dsQuotes.Edit;
        dtmLoanC.dsQuotes.FieldByName('SentDate').AsDateTime := Date;
        dtmLoanC.dsQuotes.FieldByName('SentUser').AsString := dtmMain.CurrentID;
        dtmLoanC.dsQuotes.FieldByName('SentMethod').AsString := frmSendFax.SendMethod;
        dtmLoanC.dsQuotes.Post;
      end;
    finally
      FreeAndNil(frmSendFax);
    end;

    Screen.Cursor := crDefault;
    //code snip end

    dsQuote.Close;
    dsAffordability.Close;
    dsThirdParty.Close;
    dsAuthorisationPay.Close;
  end;
end;

procedure TfrmLoanDet.Quotation1Click(Sender: TObject);
begin
  if dtmLoanC.qryLoanDet.FieldByName('HostID').AsInteger = 1 then
    PrintQuotation(Sender)
  else
    PrintBoodleQuotation(Sender);
end;

procedure TfrmLoanDet.QuotationCallScript1Click(Sender: TObject);
var
  QuotationID: Integer;
begin
  with dtmQuotations do
  begin
    QuotationID := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;

    if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 2 then
    begin
      rpQuoteScript.DataPipeline := plQuote2;
      dsQuote2.Close;
      dsQuote2.Parameters[0].Value := QuotationID;
      dsQuote2.Open;
    end
    else if dtmLoanC.dsQuotes.FieldByName('Version').AsInteger = 3 then
    begin
      rpQuoteScript.DataPipeline := plQuote3;
      dsQuote3.Close;
      dsQuote3.Parameters[0].Value := QuotationID;
      dsQuote3.Open;
    end
    else
    begin
      rpQuoteScript.DataPipeline := plQuote;
      dsPrintQuote.Close;
      dsPrintQuote.Parameters[0].Value := QuotationID;
      dsPrintQuote.Open;
    end;

    dsThirdParty.Close;
    dsThirdParty.Parameters[0].Value := QuotationID;
    dsThirdParty.Open;

    dsQuoteScript.Close;
    dsQuoteScript.Parameters[0].Value := QuotationID;
    dsQuoteScript.Open;

    rpQuoteScript.Print;

    dsQuote2.Close;
    dsPrintQuote.Close;
    dsQuoteScript.Close;
    dsThirdParty.Close;
  end;
end;

procedure TfrmLoanDet.ppmQuotationPopup(Sender: TObject);
var
  MenuItem: TMenuItem;
begin
  RecordedCalls1.Clear;
  with dtmQuotations do
  begin
    qryCallRecords.Close;
    qryCallRecords.Parameters[0].Value := dtmLoanC.dsQuotes.FieldByName('QuotationID').AsInteger;
    qryCallRecords.Open;

    while not qryCallRecords.Eof do
    begin
      MenuItem := TMenuItem.Create(Self);
      MenuItem.Caption := qryCallRecords.FieldByName('Title').AsString +
        ' (' + IntToStr(qryCallRecords.RecNo) + ')';
      MenuItem.Tag := qryCallRecords.FieldByName('AttachmentID').AsInteger;
      MenuItem.OnClick := VoiceRecordClick;
      RecordedCalls1.Add(MenuItem);
      qryCallRecords.Next;
    end;
    qryCallRecords.Close;
  end;
end;

procedure TfrmLoanDet.VoiceRecordClick(Sender: TObject);
var
  CallRef: String;
  sFile: String;
begin
  try
    Screen.Cursor := crHourGlass;
    dtmQuotations.qryCallRecords.Open;
    if dtmQuotations.qryCallRecords.Locate('AttachmentID', TMenuItem(Sender).Tag,[]) then
    begin
      CallRef := dtmQuotations.qryCallRecords.FieldByName('CallReference').AsString;
      sFile := dtmQuotations.qryCallRecords.FieldByName('Filename').AsString;
      ShellExecute(Application.Handle, 'Open',
      PChar(AttachFolder + '\' + CallRef + '\' + sFile), nil, nil, SW_SHOWNORMAL);
    end;
  finally
    dtmQuotations.qryCallRecords.Close;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.ToolButton5Click(Sender: TObject);
begin
  btnApproveLoan.Enabled := True;
end;

procedure TfrmLoanDet.btnExportQuoteClick(Sender: TObject);
begin
  Quotation1Click(btnExportQuote);
end;

procedure TfrmLoanDet.grdQuoteOffersDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'Accepted' then
    if dtmLoanC.dsQuoteOffers.FieldByName('Accepted').AsString = 'Accepted' then
    begin
      grdQuoteOffers.Canvas.Brush.Color := clLime;
      grdQuoteOffers.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

  if Column.FieldName = 'OfferNo' then
  begin
    if dtmLoanC.dsQuoteOffers.FieldByName('System').AsBoolean then
      grdQuoteOffers.Canvas.Draw(Rect.Left + 4, Rect.Top + 1, imgSystem.Picture.Bitmap)
    else
      grdQuoteOffers.Canvas.Draw(Rect.Left + 4, Rect.Top + 1, imgUser.Picture.Bitmap)
  end
end;

procedure TfrmLoanDet.btnReviewLoanClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to set this loan to "Review"?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    with dtmLoanC do
    begin
      qryLoanDet.Edit;
      qryLoanDet.FieldByName('Status').AsInteger := lnsReview;
      qryLoanDet.FieldByName('UpdateDate').AsDateTime := Now;
      qryLoanDet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
      qryLoanDet.Post;
    end;
  end;
end;

procedure TfrmLoanDet.btnDisableOptionClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to ' +
    LowerCase(TToolButton(Sender).Caption) + ' this loan option?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
  begin
    with dtmLoanC do
    begin
      dsOffers.Edit;
      dsOffers.FieldByName('Enabled').AsBoolean := not dsOffers.FieldByName('Enabled').AsBoolean;
      dsOffers.Post;

      if not dsOffers.FieldByName('Enabled').AsBoolean then
      begin
        cmdDisableOption.Parameters.ParamByName('OfferID').Value := dsOffers.FieldByName('OfferID').AsInteger;
        cmdDisableOption.Execute;
      end;
      edtOfferIDChange(nil);
    {dtmMain.dbData.Execute('DELETE FROM afQuoteOffers WHERE OfferID = ' +
      dtmLoanC.dsOffers.FieldByName('OfferID').AsString);}

    end;
    //REnumber quoteoffers using a sql cursor in a sp, no problem
  end;
end;

procedure TfrmLoanDet.btnApplyLimitsClick(Sender: TObject);
begin
  pnlLimits.Visible := btnApplyLimits.Down;
  if Sender = btnApplyLimits then
  begin
    if dtmLoanC.qryLoanDet.State = dsBrowse then
      dtmLoanC.qryLoanDet.Edit;

    dtmLoanC.qryLoanDet.FieldByName('DoLimit').AsBoolean := btnApplyLimits.Down;
    if btnApplyLimits.Down then
      dtmLoanC.qryLoanDet.FieldByName('LimitDebt').AsBoolean := True
    else
      dtmLoanC.qryLoanDet.FieldByName('LimitReason').Value := Null;
  end;
end;

procedure TfrmLoanDet.btnCancelQuoteClick(Sender: TObject);
var
  Reason: String;
begin
  if MessageDlg('Are you sure you want to cancel this quotation?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    frmRejectQuote := TfrmRejectQuote.Create(Self);
    frmRejectQuote.cmbReason.ItemIndex := 1;
    frmRejectQuote.cmbReasonChange(nil);
    frmRejectQuote.cmbReason.Enabled := False;
    if frmRejectQuote.ShowModal = mrOK then
    begin
      Reason := frmRejectQuote.memSpecify.Text;        
      try
        Screen.Cursor := crHourGlass;
        dtmMain.dbData.Execute(
          'UPDATE afQuotations SET Status = ''C'', RejectType = ''' +
          frmRejectQuote.RejectType + ''', StatusDate = GETDATE(),' +
          'Reason = ''' + Reason +  ''','+
          'StatusUser = ''' + dtmMain.CurrentID + ''' WHERE QuotationID = ' +
          dtmLoanC.dsQuotes.FieldByName('QuotationID').AsString + ' AND Status = ''''');

        RequeryOnRecord(dtmLoanC.dsQuotes, 'QuotationID');
      finally
        Screen.Cursor := crDefault;
      end;
    end;
    FreeAndNil(frmRejectQuote);
  end;
end;

procedure TfrmLoanDet.tsQuotationsShow(Sender: TObject);
begin
  dtmLoanC.dsQuotes.Requery;
  uNoteSys.Categories := '110004015';
  uNoteSys.RichEdit := rdtQuoteNotes;
  DisplayNotes(False);
  tsQuoteNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
  edtQuotationIDChange(nil);
end;

procedure TfrmLoanDet.btnManagerEditClick(Sender: TObject);
begin
  case dtmLoanC.qryLD3Pay.FieldByName('ThirdType').AsInteger of
    3:  Beneficiary1Click(btnEditPayout);
    4:  OnceOff1Click(btnEditPayout);
  end;
end;

procedure TfrmLoanDet.btnApplyClick(Sender: TObject);
begin
  if dtmLoanC.qryLoanDet.State in [dsEdit,dsInsert] then
    dtmLoanC.qryLoanDet.Post;
end;

procedure TfrmLoanDet.LoanTransfer1Click(Sender: TObject);
begin
  dtmPayouts.dsArrears.Parameters.ParamByName('EntityID').Value := dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger;
  frmPayLoanTransfer := TfrmPayLoanTransfer.Create(Self);
  try
    if frmPayLoanTransfer.ShowModal = mrOK then
    begin
      with dtmLoanC do
      begin
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('LoanID').Value := LoanID;
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('ThirdType').Value := 2;
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('Amount').Value := frmPayLoanTransfer.Amount;
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('Instalment').Value := dtmPayouts.dsArrears.FieldByName('PayIns').AsCurrency;
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('ExpiryDate').Value := dtmPayouts.dsArrears.FieldByName('EffectiveDate').AsDateTime;
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('Name').Value := 'Boodle Arrears';
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('ThirdRefNo').Value := dtmPayouts.dsArrears.FieldByName('RefNo').AsString;
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('RefNo').Value := dtmPayouts.dsArrears.FieldByName('LoanID').AsString;
        dtmPayouts.cmdLoanSettle.Parameters.ParamByName('CreateUser').Value := dtmMain.CurrentID;
        dtmPayouts.cmdLoanSettle.Execute;

        RequeryOnRecord(qryLD3Pay,'PayoutID');
      end;
    end;
  finally
    FreeAndNil(frmPayLoanTransfer);
    dtmPayouts.dsArrears.Close;
  end;
end;

procedure TfrmLoanDet.btnNewVerificationsNotesClick(Sender: TObject);
begin
  NewNote(110004013);
  tsVerificationNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmLoanDet.btnEditVerificationNotesClick(Sender: TObject);
begin
  EditNote(110004013);
end;

procedure TfrmLoanDet.tsAllNotesShow(Sender: TObject);
begin
  uNoteSys.Categories := '0,110004012,110004013,110004014,110004015,110004016,110004017,110004019';
  uNoteSys.RichEdit := rdtAllNotes;
  DisplayLoanNotes(True);
  //tsNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmLoanDet.btnNewNoteAllClick(Sender: TObject);
begin
  (*ppmNoteCategories.Tag := 0;
  ppmNoteCategories.Popup(btnNewNoteAll.ClientOrigin.X,
    btnNewNoteAll.ClientOrigin.Y + btnNewNoteAll.Height);*)
  NewNote(0);
end;

procedure TfrmLoanDet.btnEditNoteAllClick(Sender: TObject);
begin
  (*ppmNoteCategories.Tag := 1;
  ppmNoteCategories.Popup(btnEditNoteAll.ClientOrigin.X,
    btnEditNoteAll.ClientOrigin.Y + btnNewNoteAll.Height);*)
  EditNote(0);
end;

procedure TfrmLoanDet.DataCapturing1Click(Sender: TObject);
begin
  (*if ppmNoteCategories.Tag = 0 then
    NewNote(TMenuItem(Sender).Tag)
  else
    EditNote(TMenuItem(Sender).Tag);*)
end;

procedure TfrmLoanDet.btnNewQuoteNoteClick(Sender: TObject);
begin
  NewNote(110004015);
  tsQuoteNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmLoanDet.btnEditQuoteNoteClick(Sender: TObject);
begin
  EditNote(110004015);
end;

procedure TfrmLoanDet.btnEditDebtNotesClick(Sender: TObject);
begin
  EditNote(110004016);
end;

procedure TfrmLoanDet.tsBureauShow(Sender: TObject);
var
  EntityID: Integer;
begin
  if not Assigned(dtmBureau) then
  begin
    dtmBureau := TdtmBureau.Create(Self);
    cmbEnquiryHistory.ItemIndex := 0;

    dtmBureau.qrySetBureau.Open;
    csServer := dtmBureau.qrySetBureau.FieldByName('Server').AsString;
    csUsername := dtmBureau.qrySetBureau.FieldByName('Username').AsString;
    csPassword := dtmBureau.qrySetBureau.FieldByName('Password').AsString;
    csBranchID := dtmBureau.qrySetBureau.FieldByName('BranchID').AsString;
    csResultPath := dtmBureau.qrySetBureau.FieldByName('ResultPath').AsString;
    dtmBureau.qrySetBureau.Close;
    UpdateCSLoginInfo(csResultPath, csUsername, csPassword, csBranchID, csServer);

    EntityID := dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger;

    dtmBureau.qryEntity.Close;
    dtmBureau.qryEntity.Parameters[0].Value := EntityID;
    dtmBureau.qryEntity.Open;

    dtmBureau.qryEnqHistory.Close;
    dtmBureau.qryEnqHistory.Parameters.ParamByName('LoanID').Value := LoanID;
    dtmBureau.qryEnqHistory.Parameters.ParamByName('EntityID').Value := EntityID;
    dtmBureau.qryEnqHistory.Open;

    dtmBureau.dsFailedPolicy.Close;
    dtmBureau.dsFailedPolicy.Parameters.ParamByName('LoanID').Value := LoanID;
    dtmBureau.dsFailedPolicy.Open;

    if dtmLoanC.qryLoanDet.FieldByName('Scorecard').AsString = 'PIC' then
    begin
      dtmLoanC.dsScorecard.Open;
      grdScorecard.BringToFront;
    end
    else
    begin
      dtmLoanC.dsScorecardTU.Open;
      grdScorecard1.BringToFront;
    end;

    tsBureauResize(nil);
  end;
end;

procedure TfrmLoanDet.cmbEnquiryHistoryChange(Sender: TObject);
begin
  if cmbEnquiryHistory.ItemIndex = 0 then
    dtmBureau.qryEnqHistory.Filtered := False
  else
  begin
    dtmBureau.qryEnqHistory.Filtered := True;
    if cmbEnquiryHistory.ItemIndex = -1 then
      dtmBureau.qryEnqHistory.Filter := 'EnqType = -1'
    else
      dtmBureau.qryEnqHistory.Filter := 'EnqType = ' + IntToStr(cmbEnquiryHistory.ItemIndex + 1);
  end;
end;

procedure TfrmLoanDet.grdEnquiryHistoryDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'EnqType' then
  begin
    grdEnquiryHistory.Canvas.FillRect(Rect);
    Case dtmBureau.qryEnqHistory.FieldByName('EnqType').AsInteger of
      -8: grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Fraud');
      -2: grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'ITC Loan Registration');
      -1: grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Risk');
      1 : grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan');
      2 : grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'NLR');
      3 : grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Experian');
      4 : grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan/NLR');
      5 : grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan/Experian');
      6 : grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'NLR/Experian');
      7 : grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan/NLR/Experian');
    end;
  end;

  {if Column.FieldName = 'Status' then
  begin
    if (dtmBureau.qryEnqHistory.FieldByName('Status').AsInteger = 0)and
       (dtmBureau.qryEnqHistory.FieldByName('EntityID').AsString <> '') then
    begin
      grdEnquiryHistory.Canvas.FillRect(Rect);
      grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, 'Success');
    end
    else
    if dtmBureau.qryEnqHistory.FieldByName('Status').AsInteger < 0 then
    begin
      grdEnquiryHistory.Canvas.FillRect(Rect);
      grdEnquiryHistory.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, 'Error');
    end;    
  end;}
end;

procedure TfrmLoanDet.grdEnquiryHistoryDblClick(Sender: TObject);
var
  EnquiryType: Integer;
  QueryMask : String;
  ResultType: String;
begin
  EnquiryType := dtmBureau.qryEnqHistory.FieldByName('EnqType').AsInteger;

  if EnquiryType < 0 then
  begin
    if EnquiryType = -8 then
      ShowBureauWebResults
    else
    begin
      ResultType := dtmBureau.qryEnqHistory.FieldByName('ResultType').AsString;

      if ResultType = 'XML' then
        ShowBureauResultsXML(dtmBureau.qryEnqHistory.FieldByName('Result').AsString)
      else if ResultType = 'WEB' then
        ShowBureauWebResults
      else
        ShowBureauResults(dtmBureau.qryEnqHistory.FieldByName('Result').AsString);
    end;
  end
  else
  begin
    QueryMask := '';
    case dtmBureau.qryEnqHistory.FieldByName('EnqType').AsInteger of
      CCEnq        : QueryMask := 'CC';
      NLREnq       : QueryMask := 'NLR';
      ExperianEnq  : QueryMask := 'CON';
      CSNLREnq     : ShowResultOptions(CSNLREnq);
      CSExperianEnq : ShowResultOptions(CSExperianEnq);
      NLRExperian  : ShowResultOptions(NLRExperian);
      CSNLRExpEnq  : ShowResultOptions(CSNLRExpEnq);
    end;
    if QueryMask <> '' then
      OpenEnqResult(dtmBureau.qryEntity.FieldByName('RegNo').Asstring,
        dtmBureau.qryEntity.FieldByName('EntCode').Asstring,QueryMask,
      FormatDateTime('ddmmyyyy', dtmBureau.qryEnqHistory.fieldbyname('EnqDate').AsDateTime),
        dtmBureau.qryEnqHistory.FieldByName('TransNo').AsInteger,
        dtmBureau.qryEnqHistory.FieldByName('LoanID').AsInteger);
  end;
end;

procedure TfrmLoanDet.ShowResultOptions(QueryType: Integer);
var
  frmResultOptions : TfrmResultOptions;
begin
  frmResultOptions := TfrmResultOptions.Create(self);
  try
    Case QueryType of
      CSNLREnq     : begin
                       frmResultOptions.cbxCS.Enabled := True;
                       frmResultOptions.cbxNLR.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
      CSExperianEnq :begin
                       frmResultOptions.cbxCS.Enabled := True;
                       frmResultOptions.cbxExperian.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
      NLRExperian :  begin
                       frmResultOptions.cbxNLR.Enabled := True;
                       frmResultOptions.cbxExperian.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
      CSNLRExpEnq :  begin
                       frmResultOptions.cbxCS.Enabled := True;
                       frmResultOptions.cbxNLR.Enabled := True;
                       frmResultOptions.cbxExperian.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
    end;
    frmResultOptions.Showmodal;
  finally
    frmResultOptions.Free;
  end;
end;

procedure TfrmLoanDet.tsBureauResize(Sender: TObject);
begin
  (*grdEnquiryHistory.Columns[1].Width := grdEnquiryHistory.ClientWidth -
    grdEnquiryHistory.Columns[0].Width - grdEnquiryHistory.Columns[2].Width -
    grdEnquiryHistory.Columns[3].Width - grdEnquiryHistory.Columns[3].Width -
    IndicatorWidth - 6;*)
end;

procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms) ;
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;

procedure TfrmLoanDet.ShowBureauFraudResultsXML;
var
  sResult: WideString;
  HTMLFile: TextFile;
  Filename: String;
begin
  Screen.Cursor := crHourGlass;
  try
    dtmBureau.qryLastEnquiry.Parameters[0].Value := LoanID;
    dtmBureau.qryLastEnquiry.Open;
    sResult := dtmBureau.qryLastEnquiry.FieldByName('Result').AsString;
    dtmBureau.qryLastEnquiry.Close;

    dtmBureau.qryXSLFraudFile.Open;
    sResult := StringReplace(sResult, '?>', '?>' + #13#10 + '<?xml-stylesheet type="text/xsl" href="' +
      dtmBureau.qryXSLFraudFile.Fields[0].AsString + '"?>',[]);
    dtmBureau.qryXSLFraudFile.Close;

    Filename := TempFolder + 'Hawk.xml';
    AssignFile(HTMLFile, Filename);
    Rewrite(HTMLFile);
    WriteLn(HTMLFile, sResult);
    CloseFile(HTMLFile);
    WebBrowser1.Navigate(Filename);
  finally
      Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.ShowBureauResultsXML(sResult: WideString);
var
  HTMLFile: TextFile;
  Filename: String;
begin
  Screen.Cursor := crHourGlass;
  try
    dtmBureau.qryXSLFile.Close;
    dtmBureau.qryXSLFile.Parameters[0].Value := LoanID;
    dtmBureau.qryXSLFile.Open;
    sResult := StringReplace(sResult, '?>', '?>' + #13#10 + '<?xml-stylesheet type="text/xsl" href="' +
      dtmBureau.qryXSLFile.Fields[0].AsString + '"?>',[]);
    dtmBureau.qryXSLFile.Close;
    Filename := TempFolder + 'ITC.xml';
    AssignFile(HTMLFile, Filename);
    Rewrite(HTMLFile);
    WriteLn(HTMLFile, sResult);
    CloseFile(HTMLFile);
  finally
    Screen.Cursor := crDefault;
  end;
  ShellExecute(Application.Handle, 'open', PChar(Filename),
    nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmLoanDet.ShowBureauWebResults;
var
  URL: String;
  Port: String;
begin
  if dtmBureau.qryEnqHistory.FieldByName('EnqType').AsInteger = -8 then
    URL := 'http://fraudsearch.boodle.co.za:7011/Default.aspx?TransNo=' + dtmBureau.qryEnqHistory.FieldByName('TransNo').AsString
  else
  begin
      Port := '6033';
    //if dtmLoanC.qryLoanDet.FieldByName('HostID').AsInteger = 1 then
    //    Port := '6033'
    //    else
    //Port := '6033';
{$IFDEF SOAP_QA}
  URL := 'http://10.11.0.138:' + Port + '/' + dtmBureau.qryEnqHistory.FieldByName('Result').AsString +
      'Enq_SUMM_' + dtmBureau.qryEnqHistory.FieldByName('IDNumber').AsString + '.html';
{$ENDIF}

{$IFDEF SOAP_PROD}
    URL := 'http://riskdata.boodle.co.za:' + Port + '/' + dtmBureau.qryEnqHistory.FieldByName('Result').AsString +
      'Enq_SUMM_' + dtmBureau.qryEnqHistory.FieldByName('IDNumber').AsString + '.html';
{$ENDIF}
  end;

  ShellExecute(Application.Handle, 'open', PChar(URL), nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmLoanDet.ShowBureauResults(sResult: WideString);
var
  HTML: WideString;
  I: Integer;
  Index: Integer;
  SegmentCode: String;
  SegmentList: TStringList;
  sSegment: String;
  Value: String;
  FieldType: String;
  Align: string;
  HTMLFile: TextFile;
begin
  try
    Screen.Cursor := crHourGlass;
    SegmentList := TStringList.Create;
    SegmentList.Add('MR=NLR Enquiry'); //NLR Enquiry/ Online Loan Registration/Cancellation/Closure Confirmation
    SegmentList.Add('EM=Empirica Score');
    SegmentList.Add('MP=NLR Account Information'); //NLR ACCOUNT INFORMATION
    SegmentList.Add('NP=Consumer Payment Profile'); //NLR ACCOUNT INFORMATION
    SegmentList.Add('ME=NLR Enquiries');
    SegmentList.Add('NE=Consumer Enquiries');
    SegmentList.Add('ZZ=Transaction Error');

    HTML := '<HTML><TITLE>ITC Enquiry</TITLE><BODY>';

    for I := 0 to SegmentList.Count - 1 do
    begin
      SegmentCode := SegmentList.Names[I];
      dtmBureau.dsResult.Close;
      dtmBureau.dsResult.Parameters[0].Value := SegmentCode;
      dtmBureau.dsResult.Open;
      dtmBureau.dsResult.Filter := 'Display = 1';
      dtmBureau.dsResult.Filtered := True;
      Index := Pos('~~' + SegmentCode, sResult);
      HTML := HTML + '<table bgcolor="lightgrey" cellpadding="0" cellspacing="0"><tr><td>' +
        '<table style="font-family:tahoma;font-size:11px" cellpadding="3" ' +
        'cellspacing="2"><tr><td colspan="' +
        IntToStr(dtmBureau.dsResult.RecordCount) + '"><b>' +
        SegmentList.Values[SegmentCode] + '</b></td></tr>';
      HTML := HTML + '<tr>';
      dtmBureau.dsResult.First;
      while not dtmBureau.dsResult.Eof do
      begin
        HTML := HTML + '<th bgcolor="azure">' + dtmBureau.dsResult.FieldByName('Field').AsString + '</th>';
        dtmBureau.dsResult.Next;
      end;
      HTML := HTML + '</tr>';
      while Index > 0 do
      begin
        HTML := HTML + '<tr>';
        sSegment := Copy(sResult, Index + 4, PosEx('~~',sResult,Index + 2) - Index - 4);

        dtmBureau.dsResult.Filtered := False;
        dtmBureau.dsResult.First;
        while not dtmBureau.dsResult.Eof do
        begin
          Value := LeftStr(sSegment, dtmBureau.dsResult.FieldByName('Length').AsInteger);
          Delete(sSegment,1, dtmBureau.dsResult.FieldByName('Length').AsInteger);
          if dtmBureau.dsResult.FieldByName('Display').AsBoolean then
          begin
            FieldType := dtmBureau.dsResult.FieldByName('FieldType').AsString;
            Align := 'left';
            if FieldType = 'date' then
              Value := RightStr(Value, 2) + '/' + MidStr(Value,5,2) + '/' + LeftStr(Value,4)
            else if FieldType = 'money' then
            begin
              Value := StringReplace(FloatToStrF(StrToFloat(Value) ,ffCurrency,15,0), ' ', '', [rfReplaceAll]);
              Align := 'right';
            end;

            HTML := HTML + '<td bgcolor="azure" align="' + Align + '">' + Value + '</td>';
          end;
          dtmBureau.dsResult.Next;
        end;
        HTML := HTML + '</tr>';
        Index := PosEx('~~' + SegmentCode,sResult,Index + 2)
      end;
      HTML := HTML + '</table></td></tr></table><br><br>';
    end;
    FreeAndNil(SegmentList);

    HTML := HTML + '</BODY></HTML>';
    AssignFile(HTMLFile, TempFolder + 'ITC.htm');
    Rewrite(HTMLFile);
    WriteLn(HTMLFile, HTML);
    CloseFile(HTMLFile);
  finally
    Screen.Cursor := crDefault;
  end;
  ShellExecute(Application.Handle, 'open', PChar(TempFolder + 'ITC.htm'),
    nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmLoanDet.Beneficiary1Click(Sender: TObject);
begin
  dtmLoanC.qryPayouts.Open;
  frmThirdPartySettle := TfrmThirdPartySettle.Create(Self);
  frmThirdPartySettle.ThirdPartyType := 3;
  try
    if Sender = btnEditPayout then
    begin
      dtmLoanC.qryPayouts.Locate('PayoutID',
        dtmLoanC.qryLD3Pay.FieldByName('PayoutID').AsInteger, []);

        dtmLoanC.qryPayouts.Edit;
    end
    else
      dtmLoanC.qryPayouts.Append;
    dtmLoanC.qryPayouts.FieldByName('ThirdType').AsInteger := frmThirdPartySettle.ThirdPartyType;
    if frmThirdPartySettle.ShowModal = mrOK then
    begin
      dtmLoanC.qryPayouts.Post;
      RequeryOnRecord(dtmLoanC.qryLD3Pay,'PayoutID');
    end
    else
      dtmLoanC.qryPayouts.Cancel;
  finally
    FreeAndNil(frmThirdPartySettle);
    dtmLoanC.dsPayouts.Close;
  end;
end;

procedure TfrmLoanDet.btnManualOptionClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  frmManualOptionWizard := TfrmManualOptionWizard.Create(Self);
  try
    frmManualOptionWizard.LoanID := LoanID;
    if frmManualOptionWizard.ShowModal = mrOK then
    begin
      dtmLoanC.CalculateLoanOptions2(LoanID);
      dtmLoanC.dsOffers.Requery;
      dtmLoanC.dsOfferPayouts.Requery;
      dtmLoanC.dsOffersMatrix.Requery;
      CreateMatrix(False);
    end;
  finally
    FreeAndNil(frmManualOptionWizard);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmLoanDet.tsDocumentsShow(Sender: TObject);
begin
  if not dtmLoanC.dsDocuments.Active then
  begin
    dtmLoanC.dsDocuments.Open;
  end;
  edtDocumentIDChange(Self);
end;

procedure TfrmLoanDet.edtDocumentIDChange(Sender: TObject);
var
  Filename: String;
  DocPath: String;
begin
  try
    Screen.Cursor := crHourGlass;
    imnMulti.Clear;
    ImageEnVect1.Clear;
    if Self.Showing then
    begin
      if dtmLoanC.dsDocuments.FieldByName('DocumentID').AsInteger > 0 then
      begin
        if not dtmLoanC.dsPages.Active then
          dtmLoanC.dsPages.Open;

        dtmLoanC.dsPages.First;

        prgImage.Position := 0;
        prgImage.Visible := True;
        prgImage.Max := dtmLoanC.dsDocuments.FieldByName('Pages').AsInteger;
        Application.ProcessMessages;

        if dtmLoanC.dsDocuments.FieldByName('NewFolder').AsBoolean then
        begin
          dtmLoanC.dsDocPath.Close;
          dtmLoanC.dsDocPath.Parameters[0].Value := LoanID;
          dtmLoanC.dsDocPath.Open;
          DocPath := dtmLoanC.dsDocPath.Fields[0].AsString + '\';
          dtmLoanC.dsDocPath.Close;
        end
        else
          DocPath := DocProcess;

        FileName := DocPath + dtmLoanC.dsPages.FieldByName('PageID').AsString;

        if FileExists(Filename) then
        begin
          CopyFile(PChar(Filename),PChar(TempFolder + '1.tif'),False);
          Filename := TempFolder + '1.tif';
          imnMulti.MIO.LoadFromFile(Filename);
        end;
        dtmLoanC.dsPages.Next;
        prgImage.Position := prgImage.Position + 1;
        while not dtmLoanC.dsPages.Eof do
        begin
          Filename := DocPath + dtmLoanC.dsPages.FieldByName('PageID').AsString;
          if FileExists(Filename) then
          begin
            CopyFile(PChar(Filename),PChar(TempFolder + '1.tif'),False);
            Filename := TempFolder + '1.tif';
            imnMulti.MIO.LoadFromFile(Filename);
          end;
          dtmLoanC.dsPages.Next;
          prgImage.Position := prgImage.Position + 1;
        end;
        btnOK.Enabled := True;

        if imnMulti.ImageCount > 0 then
        begin
          imnMulti.SelectedImage := 0;
          imnMultiImageSelect(Self,imnMulti.SelectedImage);
        end;

        prgImage.Visible := False;
      end
      else
        btnOK.Enabled := False;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.grdDocumentsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
//var
//  Bmp: TBitmap;
begin
(*  if Column.FieldName = 'Rejected' then
  if not dtmLoanC.dsDocuments.FieldByName('DocumentID').IsNull then
  begin
    Bmp := TBitmap.Create;
    if dtmLoanC.dsDocuments.FieldByName('Rejected').AsBoolean then
      imlTools.GetBitmap(10,Bmp)
    else
      imlTools.GetBitmap(9,Bmp);

    Bmp.Transparent := True;
    Bmp.TransparentColor := clWindow;
    grdDocuments.Canvas.FillRect(Rect);
    grdDocuments.Canvas.Draw(Rect.Left + 2, Rect.Top, Bmp);
    FreeAndNil(Bmp);
  end; *)
end;

procedure TfrmLoanDet.btnPrintClick(Sender: TObject);
var
  PrintCaption: String;
begin
  PrintCaption := 'Print ' + dtmLoanC.dsDocuments.FieldByName('Description').AsString;
  imnMulti.MIO.DoPrintPreviewDialog(PrintCaption, false, PrintCaption);
end;

procedure TfrmLoanDet.btnZoomInClick(Sender: TObject);
begin
  if Sender = btnZoomIn then
    ImageEnVect1.Zoom := ImageEnVect1.Zoom + 20
  else
    ImageEnVect1.Zoom := ImageEnVect1.Zoom - 20;
end;

procedure TfrmLoanDet.btnDeleteOptionClick(Sender: TObject);
var
  OfferID: Integer;
begin
  OfferID := dtmLoanC.dsOffers.FieldByName('OfferID').AsInteger;
  if dtmLoanC.OptionQuoted(OfferID) then
    MessageDlg('Cannot delete this option as it has already been included in a quotation',
      mtError, [mbOK], 0)
  else if MessageDlg('Are you sure you want to delete this option?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
  begin
    Screen.Cursor := crHourGlass;
    dtmLoanC.cmdDeleteOffer.Parameters[0].Value := OfferID;
    dtmLoanC.cmdDeleteOffer.Execute;
    dtmLoanC.dsOffers.Requery;
    dtmLoanC.dsOfferPayouts.Requery;
    dtmLoanC.dsOffersMatrix.Requery;
    CreateMatrix(False);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.btnDebtClick(Sender: TObject);
var
  frmDebt: TfrmDebtObligations;
begin
  frmDebt := TfrmDebtObligations.Create(nil);
  try
  frmDebt.isAmd := true;
    frmDebt.ShowModal;
  finally
    FreeAndNil(frmDebt);
  end;
end;

procedure TfrmLoanDet.btnMyWorkClick(Sender: TObject);
var
  frmMyWork: TfrmMyWork;
begin
  frmMyWork := TfrmMyWork.Create(Self);
  try
    frmMyWork.AllowSelect := False;
    dtmMain.qryWorkLU.Locate('LoanID', LoanID, []);
    frmMyWork.ShowModal;
  finally
    FreeAndNil(frmMyWork);
  end;
end;

procedure TfrmLoanDet.grdRatesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'Status' then
  begin
    grdRates.Canvas.FillRect(Rect);
    if dtmLoanRates.dsRateHistory.FieldByName('Status').AsInteger = 1 then
      grdRates.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgLocked.Width) div 2), Rect.Top, imgLocked.Picture.Graphic);
  end;
end;

procedure TfrmLoanDet.btnCancelRateClick(Sender: TObject);
begin
  if dtmLoanRates.dsRateHistory.FieldByName('Status').AsInteger = 1 then
    MessageDlg('This interest rate is locked, please override it with a new rate',
      mtError, [mbOK], 0)
  else if MessageDlg('Are you sure you want to cancel this rate?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
  begin
    //dtmLoanRates.
  end;
end;

procedure TfrmLoanDet.btnNewRateClick(Sender: TObject);
begin
  frmLoanNewRate := TfrmLoanNewRate.Create(Self);
  try
    dtmLoanRates.dsRateHistory.First;
    dtmLoanRates.dsRateHistory.Insert;
    if frmLoanNewRate.ShowModal = mrOK then
    begin
      try
        Screen.Cursor := crHourGlass;
        dtmLoanRates.dsRateHistory.Post;
        dtmLoanRates.dsRateHistory.Requery();
        (*dtmLoanRates.cmdAddRevision.Parameters.ParamByName('LoanID').Value := LoanID;
        //dtmLoanRates.cmdAddRevision.Parameters.ParamByName('EffectiveDate').Value := dtmLoanRates.dsRateHistory.FieldByName('EffectiveDate').AsDateTime;
        dtmLoanRates.cmdAddRevision.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
        dtmLoanRates.cmdAddRevision.Execute;
        dtmLoanRates.dsRateHistory.Requery;
        dtmLoanRates.AddNewLoanContractRevision(LoanID);*)
      finally
        Screen.Cursor := crDefault;
      end;
    end
    else
      dtmLoanRates.dsRateHistory.Cancel;
  finally
    FreeAndNil(frmLoanNewRate);
  end;
end;

procedure TfrmLoanDet.BitBtn1Click(Sender: TObject);
begin
  dtmLoanRates.AddNewLoanContractRevision(LoanID);
end;

procedure TfrmLoanDet.tcFeesChange(Sender: TObject);
begin
  dtmLoanFees.dsFees.RecNo := tcFees.TabIndex + 1;
end;

procedure TfrmLoanDet.grdPayrollRulesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Assigned(TDBGrid(Sender).DataSource.DataSet) then
    if not (gdFocused in State) then
      if not Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then
      begin
        TDBGrid(Sender).Canvas.Brush.Color := $00FFEBD7;
        TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;   
end;

procedure TfrmLoanDet.tsAuthorisationsShow(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;

    (*uNoteSys.Categories := '(110004019)';
    uNoteSys.RichEdit := rdtAuthorisationsNotes;
    UNoteSys.Connection := dtmMain.dbData;
    DisplayNotes(False);
    tsAuthorisationNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')'; *)

    with dtmLoanC do
    begin
      if not dsVetting.Active then
      begin
        AddVettingTasks;

        dsVetting.Close;
        dsVetting.Parameters.ParamByName('AccountID').Value := LoanID;
        dsVetting.Open;

        dsVettingResult.Open;
        
        dsVettingSummary.Close;
        dsVettingSummary.Parameters.ParamByName('AccountID').Value := LoanID;
        dsVettingSummary.Open;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.SetVettingSummary;
var
  ImageIndex: Integer;

  procedure SetSection(IsSuccess: Variant; Index: Integer);
  begin
    if IsSuccess = Null then
      ImageIndex := 5
    else if IsSuccess then
      ImageIndex := 4
    else
      ImageIndex := 3;

    hdrVetting.Sections[Index].ImageIndex := ImageIndex;
  end;
begin
  with dtmLoanC do
  begin
    SetSection(dsVettingSummary.FieldByName('TaskSuccess').Value, 1);
    SetSection(dsVettingSummary.FieldByName('RiskSuccess').Value, 2);
    SetSection(dsVettingSummary.FieldByName('FraudSuccess').Value, 3);
  end;
end;

procedure TfrmLoanDet.btnNewAuthorisationNoteClick(Sender: TObject);
begin
  NewNote(110004019);
  tsAuthorisationNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmLoanDet.btnEditAuthorisationNoteClick(Sender: TObject);
begin
  EditNote(110004019);
end;

procedure TfrmLoanDet.grdAuthorisationsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not dtmLoanC.qryStatus.Eof then
  begin
    if Column.FieldName = 'Checked' then
      PaintGrdChkB(TDBGrid(Sender), Rect, Column.Field.AsInteger)
    else if Column.FieldName = 'Authorised' then
      PaintGrdChkB(TDBGrid(Sender), Rect, Column.Field.AsBoolean);
  end;
end;

procedure TfrmLoanDet.grdAuthorisationsCellClick(Column: TColumn);
begin
  with dtmLoanC do
  begin
    if not qryStatus.Eof then
      if not TDBGrid(Column.Grid).ReadOnly then
        if not dtmLoanC.qryStatus.FieldByName('ReadOnly').AsBoolean then
        begin
          if not OnlyRead then
          begin
            if Column.FieldName = 'Checked' then
            begin
              qryStatus.Edit;
              if qryStatus.FieldByName('Checked').AsInteger = 1 then
                qryStatus.FieldByName('Checked').AsInteger := 0
              else
                qryStatus.FieldByName('Checked').AsInteger := 1;

              qryStatus.FieldByName('UserID').AsString := dtmMain.CurrentID;
              qryStatus.FieldByName('CheckDate').AsDateTime := Now;
              qryStatus.Post;
            end
            else if Column.FieldName = 'Authorised' then
            begin
              qryStatus.Edit;
              qryStatus.FieldByName('Authorised').AsBoolean := not qryStatus.FieldByName('Authorised').AsBoolean;
              qryStatus.FieldByName('AuthoriseDate').AsDateTime := Now;
              qryStatus.FieldByName('AuthoriseUser').AsString := dtmMain.CurrentID;

              if qryStatus.FieldByName('Authorised').AsBoolean then
                if qryStatus.FieldByName('Checked').AsInteger = 0 then
                begin
                  qryStatus.FieldByName('Checked').AsInteger := 1;
                  qryStatus.FieldByName('UserID').AsString := dtmMain.CurrentID;
                  qryStatus.FieldByName('CheckDate').AsDateTime := Now;
                end;

              qryStatus.Post;
            end;
          end;
        end;
  end;
end;

procedure TfrmLoanDet.btnDeleteDocumentClick(Sender: TObject);
begin
  if not dtmLoanC.dsDocuments.FieldByName('DocumentID').IsNull then
    if MessageDlg('Are you sure you want to delete this ' +
      dtmLoanC.dsDocuments.FieldByName('Description').AsString + '?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Screen.Cursor := crHourGlass;
      dtmLoanC.dsDocuments.Edit;
      dtmLoanC.dsDocuments.FieldByName('DeleteDate').AsDateTime := Now;
      dtmLoanC.dsDocuments.FieldByName('DeleteUser').AsString := dtmMain.CurrentID;
      dtmLoanC.dsDocuments.Post;
      RequeryOnRecord(dtmLoanC.dsDocuments, 'DocumentID');
      Screen.Cursor := crDefault;
    end;
end;

procedure TfrmLoanDet.btnReIndexDocumentClick(Sender: TObject);
begin
  if ReindexDocument(dtmMain.dbData.ConnectionString, dtmLoanC.dsDocuments.FieldByName('DocumentID').AsInteger) then
    RequeryOnRecord(dtmLoanC.dsDocuments, 'DocumentID');
end;

procedure TfrmLoanDet.btnLinkIntermediaryClick(Sender: TObject);
begin
  DoLinkLU(IntToStr(lsIntermediary), 'IntermediaryID', lblIntermediary);
end;

procedure TfrmLoanDet.btnViewIntermediaryClick(Sender: TObject);
begin
  ShowLink(dtmLoanC.qryLoanDet.FieldByName('IntermediaryID').AsInteger);
end;

procedure TfrmLoanDet.btnDeleteIntermediaryClick(Sender: TObject);
begin
  DeleteLink(lblIntermediary, 'IntermediaryID');
end;

procedure TfrmLoanDet.btnSendQuoteClick(Sender: TObject);
begin
  ppmQuotationSend.Popup(btnSendQuote.ClientOrigin.X, btnSendQuote.ClientOrigin.Y + btnSendQuote.Height);
end;

procedure TfrmLoanDet.tsFraudShow(Sender: TObject);
begin
  tsBureauShow(tsFraud);
  ShowBureauFraudResultsXML;
  //if not dtmLoanC.dsFraudEnquiry.Active then
    //ShowFraudEnquiry;

  if not Assigned(dtmFraud) then
  begin
    dtmFraud := TdtmFraud.Create(Self);
    dtmFraud.dsEnquiries.Close;
    dtmFraud.dsEnquiries.Parameters[0].Value := LoanID;
    dtmFraud.dsEnquiries.Open;

    dtmFraud.dsFraudBureau.Parameters[0].Value := LoanID;
    dtmFraud.dsFraudBureau.Open;

    dtmFraud.dsAuthentication.Parameters[0].Value := LoanID;
    dtmFraud.dsAuthentication.Open;
  end;

  pcFraud.ActivePageIndex := 0;
  pcFraud.Pages[0].TabVisible := false
end;

procedure TfrmLoanDet.imnMultiImageSelect(Sender: TObject;
  idx: Integer);
begin
  // Copy image
  imnMulti.CopyToIEBitmap( idx, ImageEnVect1.IEBitmap );
  // Copy annotations
  ImageEnVect1.RemoveAllObjects;
  imnMulti.MIO.Params[idx].ImagingAnnot.CopyToTImageEnVect(ImageEnVect1);
  ImageEnVect1.Update;
end;

procedure TfrmLoanDet.ImageEnVect1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if pnlImage.Parent <> pnlImageDock then
  begin
    pnlImage.Parent := pnlImageDock;
    frmLoanViewDoc.Close;
    btnAffordability2.Hide;
    btnDebt.Hide;
  end
  else
  begin
    frmLoanViewDoc := TfrmLoanViewDoc.Create(Self);
    pnlImage.Parent := frmLoanViewDoc;
    ImageEnVect1.FitToWidth;
    btnAffordability2.Show;
    btnDebt.Show;
    frmLoanViewDoc.BorderStyle := bsNone;
    frmLoanViewDoc.ShowModal;
    FreeAndNil(frmLoanViewDoc);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmLoanDet.FittoPage1Click(Sender: TObject);
begin
  ImageEnVect1.Fit;
end;

procedure TfrmLoanDet.PageWidth1Click(Sender: TObject);
begin
  ImageEnVect1.FitToWidth;
end;

procedure TfrmLoanDet.PageHeight1Click(Sender: TObject);
begin
  ImageEnVect1.FitToHeight;
end;

procedure TfrmLoanDet.N5001Click(Sender: TObject);
begin
  ImageEnVect1.Zoom := TMenuItem(Sender).Tag;
end;

procedure TfrmLoanDet.btnZoomClick(Sender: TObject);
begin
  ppmZoom.Popup(btnZoom.ClientOrigin.X, btnZoom.ClientOrigin.Y + btnZoom.Height);
end;

procedure TfrmLoanDet.grdFraudEnquiriesDblClick(Sender: TObject);
begin
  if btnViewBureau2.Enabled and btnViewBureau2.Visible then
    btnViewBureau2.Click;
end;


procedure TfrmLoanDet.btnBureau2_EnquiryClick(Sender: TObject);
var
  ResultID: Integer;
begin
  if MessageDlg('Are you sure you want to perform a Bureau 2 Fraud Enquiry now?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      dtmFraud.cmdDoEnquiry.Parameters.ParamByName('LoanID').Value := LoanID;
      dtmFraud.cmdDoEnquiry.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
      dtmFraud.cmdDoEnquiry.Execute;

      dtmFraud.dsEnquiries.Requery();

      if not dtmFraud.dsEnquiries.FieldByName('FraudID').IsNull then
      begin
        if dtmFraud.dsEnquiries.FieldByName('Passed').AsBoolean then
          ResultID := 1
        else
          ResultID := 2;

        dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('AcceptReject').Value := ResultID;
        dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('LoanID').Value := LoanID;
        dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('VettingTaskID').Value := 35;
        dtmLoanC.cmdCheckAuthoristions.Execute;

        dtmLoanC.dsVetting.Close;
        dtmLoanC.dsVetting.Parameters[0].Value := LoanID;
        dtmLoanC.dsVetting.Open;
      end;

      (*if MessageDlg('Do you want to view the enquiry now?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
        grdFraudEnquiriesDblClick(btnBureau2_Enquiry);*)
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmLoanDet.btnMaintainFlagClick(Sender: TObject);
var
  I: Integer;
begin
  frmAccountFlagMaintain := TfrmAccountFlagMaintain.Create(Self);
  try
    frmAccountFlagMaintain.AccountID := LoanID;
    if frmAccountFlagMaintain.ShowModal = mrOK then
    begin
      with dtmAccountFlag do
      begin
        for I := 0 to frmAccountFlagMaintain.lstAvailable.Items.Count - 1 do
        begin
          if dsFlags.Locate('Description', frmAccountFlagMaintain.lstAvailable.Items.Strings[i], [loCaseInsensitive]) then
          begin
            cmdDisableFlag.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
            cmdDisableFlag.Parameters.ParamByName('AccountID').Value := LoanID;
            cmdDisableFlag.Parameters.ParamByName('FlagID').Value := dsFlags.FieldByName('FlagID').AsInteger;
            cmdDisableFlag.Execute();
          end;
        end;

        for I := 0 to frmAccountFlagMaintain.lstCurrent.Items.Count - 1 do
        begin
          if dsFlags.Locate('Description', frmAccountFlagMaintain.lstCurrent.Items.Strings[i], [loCaseInsensitive]) then
          begin
            cmdAddFlag.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
            cmdAddFlag.Parameters.ParamByName('AccountID').Value := LoanID;
            cmdAddFlag.Parameters.ParamByName('FlagID').Value := dsFlags.FieldByName('FlagID').AsInteger;
            cmdAddFlag.Execute();

            {*
            if cmdAddFlag.Parameters.ParamByName('AccountFlagID').Value = 0 then
            begin
              cmdEnableFlag.Parameters.ParamByName('AccountID').Value := LoanID;
              cmdEnableFlag.Parameters.ParamByName('FlagID').Value := dsFlags.FieldByName('FlagID').AsInteger;
              cmdEnableFlag.Execute();
            end;*}
          end;
        end;

        dsCurrentFlags.Requery();
        dsHistoryFlags.Requery();
      end;
    end;
  finally
    FreeAndNil(frmAccountFlagMaintain);
  end;
end;

procedure TfrmLoanDet.tsAccountFlagsShow(Sender: TObject);
begin
  if not dtmAccountFlag.dsCurrentFlags.Active then
  begin
    dtmAccountFlag.dsCurrentFlags.Parameters.ParamByName('AccountID').Value := LoanID;
    dtmAccountFlag.dsHistoryFlags.Parameters.ParamByName('AccountID').Value := LoanID;

    dtmAccountFlag.dsCurrentFlags.Open;
    dtmAccountFlag.dsHistoryFlags.Open;

    pcAccountFlags.ActivePageIndex := 0;
  end;
end;

procedure TfrmLoanDet.btnDeleteFlagClick(Sender: TObject);
var
  Flag: String;
begin
  with dtmAccountFlag do
  begin
    Flag := dsHistoryFlags.FieldByName('FlagDescription').ASString;

    if MessageDlg('Are you sure you want to delete the ' + Flag + ' flag?' + #13#10 + #13#10 +
      'Once confirmed, this procedure cannot be undone', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cmdDeleteFlag.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
      cmdDeleteFlag.Parameters.ParamByName('AccountFlagID').Value := dsHistoryFlags.FieldByName('AccountFlagID').AsString;
      cmdDeleteFlag.Execute;

      RequeryOnRecord(dsHistoryFlags, 'AccountFlagID');
    end;
  end;
end;

procedure TfrmLoanDet.tsHistoryFlagsShow(Sender: TObject);
begin
  if dtmAccountFlag.dsHistoryFlags.Active then
    if btnDeleteFlag.Visible then
      btnDeleteFlag.Enabled := dtmAccountFlag.dsHistoryFlags.RecordCount > 0;
end;

procedure TfrmLoanDet.btnAuthoriseVettingFlagsClick(Sender: TObject);
begin
  with dtmLoanC do
  begin
    frmLoanAuthoriseFlag := TfrmLoanAuthoriseFlag.Create(Self);
    try
      dsAuthoriseFlags.Requery;
      dsAuthoriseFlags.First;

      while not dsAuthoriseFlags.Eof do
      begin
        frmLoanAuthoriseFlag.chlAuthorise.Items.Add(dsAuthoriseFlags.FieldByName('Description').AsString);

        dsAuthoriseFlags.Next;
      end;

      if frmLoanAuthoriseFlag.ShowModal = mrOK then
      begin
        try
          Screen.Cursor := crHourglass;

          dsAuthoriseFlags.First;

          while not dsAuthoriseFlags.Eof do
          begin
            if frmLoanAuthoriseFlag.chlAuthorise.Checked[dsAuthoriseFlags.RecNo - 1] then
            begin
              if dsAuthoriseFlags.FieldByName('PolicyID').AsInteger = 0 then
              begin
                cmdAuthoriseFlag.Parameters.ParamByName('FlagID').Value := dsAuthoriseFlags.FieldByName('FlagID').AsInteger;
                cmdAuthoriseFlag.Parameters.ParamByName('LoanID').Value := LoanID;
                cmdAuthoriseFlag.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
                cmdAuthoriseFlag.Execute;
              end
              else
              begin
                cmdAuthorisePolicy.Parameters.ParamByName('PolicyID').Value := dsAuthoriseFlags.FieldByName('PolicyID').AsInteger;
                cmdAuthorisePolicy.Parameters.ParamByName('LoanID').Value := LoanID;
                cmdAuthorisePolicy.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
                cmdAuthorisePolicy.Execute;
              end;
            end;
            dsAuthoriseFlags.Next;
        end;
        finally
          dtmLoanC.dsPolicies.Requery();
          dtmLoanC.dsAuthoriseFlags.Requery();
          btnAuthoriseVettingFlags.Enabled := (not OnlyRead) and (dtmLoanC.dsAuthoriseFlags.RecordCount > 0);
          Screen.Cursor := crDefault;
        end;
      end;
    finally
      FreeAndNil(frmLoanAuthoriseFlag);
    end;
  end;
end;

procedure TfrmLoanDet.SetViewUsernames(const Value: Boolean);
begin
  FViewUsernames := Value;

  uNoteSys.ShowUsernames := ViewUsernames;
  
  grdWorkFlow.Columns[1].Visible := ViewUsernames;
  grdDocuments.Columns[2].Visible := ViewUsernames;

  if not ViewUsernames then
    pnlDocuments.Width := pnlDocuments.Width - grdDocuments.Columns[2].Width;
end;

procedure TfrmLoanDet.grdVettingCellClick(Column: TColumn);
begin
//Making the drop-down pick list appear faster
  if Column.PickList.Count > 0 then
  begin
    keybd_event(VK_F2,0,0,0);
    keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
    //keybd_event(VK_MENU,0,0,0);
    //keybd_event(VK_DOWN,0,0,0);
    //keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
    //keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
  end;
end;

procedure TfrmLoanDet.grdVettingDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  FieldName: String;
  ReadOnlyField: String;
  CanEdit: Boolean;
  AccessEdit: Boolean;
  IsEditField: Boolean;
  BMP: TBitmap;
begin
  AccessEdit := false;
  BMP := nil;
  CanEdit := False;
  FieldName := Column.Field.FieldName;
  IsEditField := (FieldName = 'TaskResult') or (FieldName = 'FraudResult') or (FieldName = 'RiskResult');

  if (FieldName = 'TaskResult') or
    (FieldName = 'TaskResultDate') or
    (FieldName = 'TaskUser') then
  begin
    ReadOnlyField := 'TaskReadOnly';
    AccessEdit := CanEditAuthorisationsTasks and ((CurrStatus in [lnsInactive, lnsReview]) or
      ((CurrStatus = lnsPreApproved) and (dtmLoanC.cdsVetting.FieldByName('VettingTaskID').AsInteger in [16,17])));
  end
  else if (FieldName = 'RiskResult') or
    (FieldName = 'RiskResultDate') or
    (FieldName = 'RiskUser') then
  begin
    ReadOnlyField := 'RiskReadOnly';
    AccessEdit := CanEditRiskTasks and ((CurrStatus in [lnsInactive, lnsReview]) or
      ((CurrStatus = lnsPreApproved) and (dtmLoanC.cdsVetting.FieldByName('VettingTaskID').AsInteger in [16,17])));
  end
  else if (FieldName = 'FraudResult') or
    (FieldName = 'FraudResultDate') or
    (FieldName = 'FraudUser') then
  begin
    ReadOnlyField := 'FraudReadOnly';
    AccessEdit := CanEditFraudTasks and ((CurrStatus in [lnsInactive, lnsReview, lnsOpen, lnsHandover]) or
      ((CurrStatus = lnsPreApproved) and ((dtmLoanC.cdsVetting.FieldByName('VettingTaskID').AsInteger = 16))));
  end;

  if ReadOnlyField <> '' then
  begin
    CanEdit := not (dtmLoanC.cdsVetting.FieldByName(ReadOnlyField).AsBoolean);

         if (dtmLoanC.cdsVetting.FieldByName('VettingTaskID').AsInteger = 35) and (ReadOnlyField = 'FraudReadOnly')
         then CanEdit := False;
         
    if (not CanEdit) or (not AccessEdit) then
    begin
      if not (gdFocused in State) then
      begin
        grdVetting.Canvas.Brush.Color := clBtnFace;
        grdVetting.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;



      if not CanEdit then
        if dtmLoanC.cdsVetting.FieldByName(Column.FieldName).AsString = ''  then
          grdVetting.Canvas.TextOut(Rect.Left + ((Rect.Right - Rect.Left) div 2), Rect.Top + 2, '-');
    end;
  end;

  if (FieldName = 'TaskUser') or (FieldName = 'RiskUser') then
  begin
    grdVetting.Canvas.Pen.Color := clGray;
    grdVetting.Canvas.Pen.Width := 2;
    grdVetting.Canvas.MoveTo(Rect.Right, Rect.Top);
    grdVetting.Canvas.LineTo(Rect.Right, Rect.Bottom);
  end;

  if (gdFocused in State) then
  begin
    if CanEdit and AccessEdit and IsEditField then
    begin
      with cmbCreditVetting do
      begin
        Left := Rect.Left + grdVetting.Left + 2;
        Top := Rect.Top + grdVetting.Top + 2;
        Width := Rect.Right - Rect.Left;
        Width := Rect.Right - Rect.Left;
        Height := Rect.Bottom - Rect.Top;

        if (not cmbCreditVetting.Visible) or (not cmbCreditVetting.Focused) then
        begin
          cmbCreditVetting.Show;
          cmbCreditVetting.SetFocus;
        end;
      end;
    end
    else
      cmbCreditVetting.Hide;
  end;

  if IsEditField then
  begin
    if not dtmLoanC.cdsVetting.FieldByName(FieldName + 'ID').IsNull then
    begin
      case dtmLoanC.cdsVetting.FieldByName(FieldName + 'ID').AsInteger of
        0: BMP := imgN.Picture.Bitmap;
        1: BMP := imgY.Picture.Bitmap;
        2: BMP := imgCancel.Picture.Bitmap;
      end;

      if Assigned(BMP) then
      begin
        grdVetting.Canvas.FillRect(Rect);
        grdVetting.Canvas.Draw(Rect.Left + 2, Rect.Top + 2, BMP);
        grdVetting.Canvas.TextOut(Rect.Left + 4 + BMP.Width, Rect.Top + 2, dtmLoanC.cdsVetting.FieldByName(FieldName).AsString);
      end;
    end;
  end;
end;

procedure TfrmLoanDet.grdVettingKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then
    Exit;

  if (grdVetting.SelectedField.FieldName = 'RiskResult') then
  begin
    cmbCreditVetting.SetFocus;
    SendMessage(cmbCreditVetting.Handle, WM_Char, Integer(Key), 0);
  end

end;

procedure TfrmLoanDet.cmbCreditVettingKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Integer(Key) = 38) or (Integer(Key) = 40) then
    Abort;
end;

procedure TfrmLoanDet.cmbCreditVettingEnter(Sender: TObject);
begin
  if cmbCreditVetting.Visible then
  begin
    if grdVetting.SelectedField.FieldName = 'TaskResult' then
      cmbCreditVetting.DataField := 'TaskResultID'
    else if grdVetting.SelectedField.FieldName = 'RiskResult' then
      cmbCreditVetting.DataField := 'RiskResultID'
    else if grdVetting.SelectedField.FieldName = 'FraudResult' then
      cmbCreditVetting.DataField := 'FraudResultID';
  end;
end;

procedure TfrmLoanDet.btnAddRequestClick(Sender: TObject);
begin
  try
    dtmWorkFlow := TdtmWorkFlow.Create(Self);
    frmWorkAddRequest := TfrmWorkAddRequest.Create(Self);
    frmWorkAddRequest.AccountID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
    frmWorkAddRequest.AccountNo := dtmLoanC.qryLoanDet.FieldByName('RefNo').AsString;

    if frmWorkAddRequest.ShowModal = mrOK then
      MessageDlg('Request has been successfully added', mtInformation, [mbOK], 0);
  finally
    FreeAndNil(frmWorkAddRequest);
    FreeAndNil(dtmWorkFlow);
  end;
end;

procedure TfrmLoanDet.edtTaskSuccessIDChange(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;

    if dtmLoanC.dsVettingSummary.Active then
      SetVettingSummary;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.btnMarkFraudClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to mark this account as fraud?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    frmAddAccountFlag := TfrmAddAccountFlag.Create(Self);
    frmAddAccountFlag.FlagID := 3; //*** FRAUD

    if frmAddAccountFlag.ShowModal = mrOK then
    begin
      try
        Screen.Cursor := crHourGlass;
        dtmAccountFlag.cmdAddFlag.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
        dtmAccountFlag.cmdAddFlag.Parameters.ParamByName('AccountID').Value := LoanID;
        dtmAccountFlag.cmdAddFlag.Parameters.ParamByName('FlagID').Value := frmAddAccountFlag.FlagID;
        dtmAccountFlag.cmdAddFlag.Parameters.ParamByName('SubFlagID').Value := frmAddAccountFlag.SubFlagID;
        dtmAccountFlag.cmdAddFlag.Execute();

        RequeryOnRecord(dtmLoanC.qryLoanDet,'LoanID');

        if dtmAccountFlag.dsCurrentFlags.Active then
          dtmAccountFlag.dsCurrentFlags.Requery();
      finally
        Screen.Cursor := crDefault;
      end;
    end;

    FreeAndNil(frmAddAccountFlag);
  end;
end;

procedure TfrmLoanDet.edtAccountFlagIDChange(Sender: TObject);
begin
  if not OnlyRead then
  begin
    tlbFraud.Visible := dtmLoanC.qryLoanDet.FieldByName('AccountFlagID').IsNull;
    grpFraud.Visible := (not dtmLoanC.qryLoanDet.FieldByName('AccountFlagID').IsNull)
      and ((CurrStatus >= lnsOpen) or (CurrStatus = lnsDeclined));
  end;
end;

procedure TfrmLoanDet.btnDeclineLoanClick(Sender: TObject);
var
  I: Integer;
  Action: String;
  Display: String;
  StatusID: Integer;
begin
  inherited;
  if Sender = btnDeclineLoan then
  begin
    Action := 'decline';
    Display := 'Decline Reason';
    StatusID := lnsDeclined;
  end
  else
  begin
    Action := 'cancel';
    Display := 'Cancel Reason';
    StatusID := lnsCancelled;
  end;

  if MesDlg('Are you sure you want to ' + Action + ' this loan?','C') = mrYes then
  begin
    if not (dtmLoanC.qryLoanDet.State in [dsEdit, dsInsert]) then
      dtmLoanC.qryLoanDet.Edit;

    dtmLoanC.qryLoanDet.FieldByName('CurReason').AsInteger := 0;
    //dtmLoanC.qryLoanDet.FieldByName('StatusReasonID2').Value := Null;
    dtmLoanC.qryLoanDet.Post;

    frmDeclineCancelLoan := TfrmDeclineCancelLoan.Create(Self);
    frmDeclineCancelLoan.Caption := Display;
    frmDeclineCancelLoan.StatusID := StatusID;

    try
      if frmDeclineCancelLoan.ShowModal = mrOK then
      begin
        with dtmLoanC do
        begin
          cmdDeleteSubReason.Parameters[0].Value := LoanID;
          cmdDeleteSubReason.Execute;

          for I := 0 to frmDeclineCancelLoan.SubReasonList.Count - 1 do
          begin
            dsAccountSubReason.Append;
            dsAccountSubReason.FieldByName('AccountID').AsInteger := LoanID;
            dsAccountSubReason.FieldByName('StatusSubReasonID').AsInteger := StrToInt(frmDeclineCancelLoan.SubReasonList.Strings[I]);
            dsAccountSubReason.Post;
          end;

          qryLoanDet.FieldByName('AprvDate').AsDateTime := Now;
          qryLoanDet.FieldByName('ApproveUser').AsString := dtmMain.CurrentID;
          qryLoanDet.FieldByName('Status').AsInteger := StatusID;
          qryLoanDet.FieldByName('UpdateDate').AsDateTime := Now;
          qryLoanDet.FieldByName('UpdateUser').AsString := dtmMain.CurrentID;
          qryLoanDet.Post;

          dsAccountSubReason.Requery;
        end;
      end
      else
        dtmLoanC.qryLoanDet.Cancel;
    finally
      FreeAndNil(frmDeclineCancelLoan);
    end;
  end;
end;

procedure TfrmLoanDet.grdFraudBureauDblClick(Sender: TObject);
begin
  if btnViewBureau3.Enabled and btnViewBureau3.Visible then
    btnViewBureau3.Click;
end;

procedure TfrmLoanDet.btnBureau3_EnquiryClick(Sender: TObject);
var
  ResultID: Integer;
begin
  if MessageDlg('Are you sure you want to perform a Bureau 3 Fraud Enquiry now?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      
      if GetProcessFraudServiceSoap.ProcessFraud(LoanID, dtmMain.CurrentID) then
      begin
        dtmFraud.dsFraudBureau.Requery;

        if not dtmFraud.dsFraudBureau.FieldByName('TransNo').IsNull then
        begin
          if dtmFraud.dsFraudBureau.FieldByName('Success').AsBoolean then
          begin
            if dtmFraud.dsFraudBureau.FieldByName('Passed').AsBoolean then
              ResultID := 1
            else
              ResultID := 2;

            dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('AcceptReject').Value := ResultID;
            dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('LoanID').Value := LoanID;
            dtmLoanC.cmdCheckAuthoristions.Parameters.ParamByName('VettingTaskID').Value := 38;
            dtmLoanC.cmdCheckAuthoristions.Execute;

            dtmLoanC.dsVetting.Close;
            dtmLoanC.dsVetting.Parameters[0].Value := LoanID;
            dtmLoanC.dsVetting.Open;
          end;
        end;
      end
      else
        dtmFraud.dsFraudBureau.Requery;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmLoanDet.btnViewBureau2Click(Sender: TObject);
var
  FraudID: Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    FraudID := dtmFraud.dsEnquiries.FieldByName('FraudID').AsInteger;
    ShellExecute(Application.Handle, 'Open', PChar(Format(dtmFraud.ReportURL, [FraudID])), nil, nil, SW_SHOWNORMAL);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.btnViewBureau3Click(Sender: TObject);
var
  URL: String;
begin
  URL := 'http://10.11.0.122:7011/Default.aspx?TransNo=' + dtmFraud.dsFraudBureau.FieldByName('TransNo').AsString;

  ShellExecute(Application.Handle, 'open', PChar(URL), nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmLoanDet.grdFraudAuthenticationDblClick(Sender: TObject);
begin
  if btnViewAuthentication.Enabled then
    btnViewAuthentication.Click;
end;

procedure TfrmLoanDet.btnNewAuthenticationClick(Sender: TObject);
var
  ResultID: Integer;
begin
  frmLoanAuthenticationDetail := TfrmLoanAuthenticationDetail.Create(Self);
  try
    if Sender = btnNewAuthentication then
    begin
      dtmFraud.dsAuthentication.Append;
      dtmFraud.dsAuthentication.FieldByName('Bureau').AsString := 'TU';
      dtmFraud.dsAuthentication.FieldByName('CreateUserID').AsInteger := dtmMain.UserKey;
      dtmFraud.dsAuthentication.FieldByName('EntityID').AsInteger := dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger;
      dtmFraud.dsAuthentication.FieldByName('AccountID').AsInteger := LoanID;
      dtmFraud.dsAuthentication.FieldByName('Completed').AsBoolean := True;
      dtmFraud.dsAuthentication.FieldByName('Reference').AsString := '';
      dtmFraud.dsAuthentication.FieldByName('QuestionCount').AsInteger := 0;
      dtmFraud.dsAuthentication.FieldByName('CellNo').AsString := '';
      dtmFraud.dsAuthentication.FieldByName('BankAccountNo').AsString := '';
    end;
    if frmLoanAuthenticationDetail.ShowModal = mrOK then
    begin
      dtmFraud.dsAuthentication.FieldByName('CreateDate').AsDateTime := Now;
      dtmFraud.dsAuthentication.Post;

      if dtmFraud.dsAuthentication.FieldByName('Authenticated').AsBoolean then
        ResultID := 1
      else
        ResultID := 2;

      dtmFraud.dsAuthentication.Requery;

      dtmLoanC.cmdCheckRisk.Parameters.ParamByName('AcceptReject').Value := ResultID;
      dtmLoanC.cmdCheckRisk.Parameters.ParamByName('LoanID').Value := LoanID;
      dtmLoanC.cmdCheckRisk.Parameters.ParamByName('VettingTaskID').Value := 36;
      dtmLoanC.cmdCheckRisk.Execute;

      dtmLoanC.dsVetting.Close;
      dtmLoanC.dsVetting.Parameters[0].Value := LoanID;
      dtmLoanC.dsVetting.Open;
    end
    else
      dtmFraud.dsAuthentication.Cancel;
  finally
    FreeAndNil(frmLoanAuthenticationDetail);
  end;
end;

procedure TfrmLoanDet.tsCommunicationShow(Sender: TObject);
begin
  dtmLoanC.dsCommunication.Requery();
end;

procedure TfrmLoanDet.btnViewCommunicationClick(Sender: TObject);
begin
  if dtmLoanC.dsCommunication.FieldByName('Type').Value = 'SMS' then
  begin
    frmSMSMessage := TfrmSMSMessage.Create(Self);
    frmSMSMessage.SMSMsg := dtmLoanC.dsCommunication.FieldByName('Message').Value;
    frmSMSMessage.ShowModal();
    FreeAndNil(frmSMSMessage);
  end
  else
  begin
    frmEmailPreview := TfrmEmailPreview.Create(Self);
    frmEmailPreview.EmailID := dtmLoanC.dsCommunication.FieldByName('CommunicationID').AsInteger;
    frmEmailPreview.ShowModal();
    FreeAndNil(frmEmailPreview);
  end;
end;

procedure TfrmLoanDet.dbgEmailCommDblClick(Sender: TObject);
begin
  if btnViewCommunication.Enabled
    then btnViewCommunicationClick(Sender);
end;


procedure TfrmLoanDet.btnAcceptBureau3Click(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to accept this Bureau 3?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dtmFraud.cmdUpdateFraudBureau.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
    dtmFraud.cmdUpdateFraudBureau.Parameters.ParamByName('FraudScoreID').Value := dtmFraud.dsFraudBureau.FieldByName('FraudScoreID').AsInteger;
    dtmFraud.cmdUpdateFraudBureau.Execute;

    RequeryOnRecord(dtmFraud.dsFraudBureau, 'FraudScoreID');
  end;
end;

procedure TfrmLoanDet.btnDisableAuthenticationClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to disable this Authentication?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dtmFraud.cmdUpdateAuthentication.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
    dtmFraud.cmdUpdateAuthentication.Parameters.ParamByName('FraudAuthenticationID').Value := dtmFraud.dsAuthentication.FieldByName('FraudAuthenticationID').AsInteger;
    dtmFraud.cmdUpdateAuthentication.Execute;

    RequeryOnRecord(dtmFraud.dsAuthentication, 'FraudAuthenticationID');
  end;
end;

procedure TfrmLoanDet.bureau3EnableChange(Sender: TObject);
begin
  btnAcceptBureau3.Enabled := (not dtmFraud.dsFraudBureau.FieldByName('Passed').AsBoolean)
    and (dtmFraud.dsFraudBureau.FieldByName('Success').AsBoolean);
end;

procedure TfrmLoanDet.enableAuthenticationChange(Sender: TObject);
begin
  btnDisableAuthentication.Enabled := dtmFraud.dsAuthentication.FieldByName('Enabled').AsBoolean;
end;

procedure TfrmLoanDet.tsTrackingShow(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    dtmLoanC.dsEventTracking.Close;
    dtmLoanC.dsEventTracking.Parameters.ParamByName('@AccountID').Value := LoanID;
    dtmLoanC.dsEventTracking.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanDet.btnRotateClick(Sender: TObject);
begin
if Sender = btnRotate then
    ImageEnVect1.RotateAllObjects(90, ierImage);
    ImageEnVect1.Proc.Rotate(90);
end;

end.



