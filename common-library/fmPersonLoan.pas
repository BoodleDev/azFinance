unit fmPersonLoan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmEntityDetail, Db, Menus, StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask,
  ComCtrls, ToolWin, Grids, DBGrids, DBGrdClr, DBCGrids, Unit32, dmBankDet,
  fmLookUp, dbDateTimePicker, DBHyperLink, FileCtrl, uBureau, fmBankDetails,
  variants, StrUtils, fmPreviewDoc, ValEdit, ADODB, uNoteSys, dmSecurity;

type
  TfrmPersonLoan = class(TfrmEntityDetail)
    tsBankDet: TTabSheet;
    btnBank: TBitBtn;
    Label3: TLabel;
    tsRel: TTabSheet;
    grdERLink: TDBGrdClr;
    tlbERLink: TToolBar;
    btnAddRL: TToolButton;
    btnDelRL: TToolButton;       
    Label6: TLabel;
    rgpPresOR: TDBRadioGroup;
    btnNewHAdr: TBitBtn;
    btnPreResAdr: TBitBtn;
    tsEmpDet: TTabSheet;
    tsAddOn: TTabSheet;
    Label33: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtNumDep: TDBEdit;
    cmbMaritalStatus: TDBLookupComboBox;
    cblNationality: TDBLookupComboBox;
    Label21: TLabel;
    Label9: TLabel;
    lblAge: TLabel;
    btnAmdRel: TToolButton;
    btnViewRel: TToolButton;
    cmbTitle: TDBComboBox;
    lblStatus: TLabel;
    cmbStatus: TDBLookupComboBox;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    tlbBank: TToolBar;
    ToolButton1: TToolButton;
    btnBankNew: TToolButton;
    btnBankAmend: TToolButton;
    btnBankSave: TToolButton;
    btnBankCancel: TToolButton;
    btnBankDelete: TToolButton;
    dtpDOB: TdbDateTimePicker;
    edtCallName: TDBEdit;
    Label25: TLabel;
    lblCreateBy: TLabel;
    lblCreateUser: TDBText;
    lblUpdateBy: TLabel;
    lblUpdateUser: TDBText;
    edtRegNo: TDBEdit;
    edtMaidenName: TDBEdit;
    Label20: TLabel;
    edtSecondName: TDBEdit;
    Label22: TLabel;
    Label29: TLabel;
    tsOther: TTabSheet;
    Label55: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label64: TLabel;
    btnLUnionLink: TSpeedButton;
    btnDelLUnion: TSpeedButton;
    btnViewLink2: TSpeedButton;
    btnPFundLink: TSpeedButton;
    btnDelPFund: TSpeedButton;
    btnViewLink1: TSpeedButton;
    lblUnion: TLabel;
    Label26: TLabel;
    edtPFundNo: TDBEdit;
    dtpProvDate: TDBDateTimePicker;
    edtLink2: TEdit;
    edtProvident: TEdit;
    edtUnionNo: TDBEdit;
    cmbUnion: TDBLookupComboBox;
    tsMarketing: TTabSheet;
    Label50: TLabel;
    Label51: TLabel;
    dbtLandLord: TDBText;
    dbtLandLordTel: TDBText;
    edtLandlord: TDBEdit;
    edtLandlordTel: TDBEdit;
    rgdStatementFreq: TDBRadioGroup;
    GroupBox4: TGroupBox;
    edtEmailAddress: TDBEdit;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    Label34: TLabel;
    edtNLR: TDBEdit;
    Label66: TLabel;
    cmbGender: TDBComboBox;
    Label7: TLabel;
    cmbMobileType: TDBComboBox;
    Label14: TLabel;
    cblPersonInd: TDBLookupComboBox;
    Label52: TLabel;
    lblEntInd2: TLabel;
    cmbEntInd2: TDBLookupComboBox;
    cmbMaritalContract: TDBComboBox;
    Label37: TLabel;
    Label38: TLabel;
    cmbPrefLanguage: TDBLookupComboBox;
    cmbHomeLanguage: TDBLookupComboBox;
    Label39: TLabel;
    cmbEducationLevel: TDBLookupComboBox;
    Label57: TLabel;
    edtRetAge: TEdit;
    Label58: TLabel;
    lblRetireDate: TDBText;
    Label59: TLabel;
    Label62: TLabel;
    edtPayPoint: TDBEdit;
    dbDateTimePicker1: TDBDateTimePicker;
    Label36: TLabel;
    lblNetSal: TLabel;
    edtGross: TDBEdit;
    edtNetSal: TDBEdit;
    dtpLastPayDate: TDBDateTimePicker;
    lblLastPayDate: TLabel;
    edtCurrAddrYears: TEdit;
    edtCurrAddrMonths: TEdit;
    Label49: TLabel;
    Label53: TLabel;
    edtPrevAddrMonths: TEdit;
    edtPrevAddrYears: TEdit;
    Label54: TLabel;
    Label67: TLabel;
    GroupBox8: TGroupBox;
    Label31: TLabel;
    cmdHowFound: TDBComboBox;
    chkDoTelemarket: TDBCheckBox;
    chkDoDistribute: TDBCheckBox;
    chkDoEmail: TDBCheckBox;
    chkUnderApplied: TDBCheckBox;
    tsDocuments: TTabSheet;
    pnlDocuments: TPanel;
    cmbLoans: TComboBox;
    Label73: TLabel;
    cmbMaritalConsent: TDBComboBox;
    Label75: TLabel;
    Label35: TLabel;
    edtEmpPeriod: TDBText;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label83: TLabel;
    cmdRace: TDBComboBox;
    tsStatus: TTabSheet;
    grpClientStatus: TGroupBox;
    grpEmploymentStatus: TGroupBox;
    grdClientStatus: TDBGrid;
    Label84: TLabel;
    btnClientStatus: TSpeedButton;
    Label85: TLabel;
    grdEmploymentStatus: TDBGrid;
    Label86: TLabel;
    Label87: TLabel;
    btnEmploymentStatus: TSpeedButton;
    edtClientStatus: TDBEdit;
    edtEmploymentStatus: TDBEdit;
    pcBankDetails: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    edtAccName: TDBEdit;
    edtAccNo: TDBEdit;
    btnAddBank: TBitBtn;
    btnEditBank: TBitBtn;
    edtBank: TDBEdit;
    edtBankBranch: TDBEdit;
    edtAccType: TDBEdit;
    GroupBox12: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    edtBankInactive: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    btnCopy: TButton;
    GroupBox13: TGroupBox;
    Label88: TLabel;
    grdAHVActive: TDBGrid;
    GroupBox2: TGroupBox;
    grdAHVInactive: TDBGrid;
    Label89: TLabel;
    btnSubmitAHVActive: TButton;
    btnSubmitAHVInactive: TButton;
    imgPass: TImage;
    imgFail: TImage;
    imgInformation: TImage;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    btnEmploymentHistory: TToolButton;
    btnEmploymentConfirmationHistory: TToolButton;
    btnBranchLink: TSpeedButton;
    btnDelBranch: TSpeedButton;
    btnViewBranch: TSpeedButton;
    btnEmpLink: TSpeedButton;
    btnDelEmp: TSpeedButton;
    btnViewEmployer: TSpeedButton;
    Label28: TLabel;
    Label8: TLabel;
    Label27: TLabel;
    pcEmploymentDetails: TPageControl;
    TabSheet3: TTabSheet;
    Label56: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label30: TLabel;
    Label48: TLabel;
    Label72: TLabel;
    Label76: TLabel;
    dtpEmpDate: TDBDateTimePicker;
    edtEmployeeNo: TDBEdit;
    cmbEmploymentType: TDBLookupComboBox;
    dtpEndDate: TDBDateTimePicker;
    cmbPayMethod: TDBComboBox;
    DBDateTimePicker2: TDBDateTimePicker;
    edtRetirementAge: TDBEdit;
    GroupBox3: TGroupBox;
    Label65: TLabel;
    Label63: TLabel;
    cmbPayDayWeek: TDBComboBox;
    cmbPayFreq: TDBComboBox;
    cmbPayDay: TDBComboBox;
    TabSheet4: TTabSheet;
    GroupBox7: TGroupBox;
    Label32: TLabel;
    Label5: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label40: TLabel;
    edtSupervisor: TDBEdit;
    edtDepartment: TDBEdit;
    edtWorkName: TDBEdit;
    edtWorkTel: TDBEdit;
    edtWorkAddress1: TDBEdit;
    edtWorkSuburb: TDBEdit;
    edtWorkTown: TDBEdit;
    edtWorkCode: TDBEdit;
    cmbWorkProvince: TDBComboBox;
    edtWorkAddress2: TDBEdit;
    GroupBox6: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label46: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label74: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    edtEmpName: TDBEdit;
    cmbEmpType: TDBComboBox;
    edtEmpTel: TDBEdit;
    edtEmpContact: TDBEdit;
    edtEmpExt: TDBEdit;
    edtEmpTradingName: TDBEdit;
    edtEmpRegistrationNo: TDBEdit;
    btnAddConfirmationText: TButton;
    cmbEmployerConfirmationSource: TDBLookupComboBox;
    edtEmployer: TEdit;
    edtBranch: TEdit;
    DBEdit2: TDBEdit;
    cmbEmpPayRule: TDBLookupComboBox;
    btnAddConfirmationLink: TButton;
    tsEmploymentNotes: TTabSheet;
    rdtEmploymentNotes: TRichEdit;
    too: TCoolBar;
    tlbEmploymentNotes: TToolBar;
    btnNewNoteAll: TToolButton;
    btnEditNoteAll: TToolButton;
    Panel1: TPanel;
    chkEarlyDeduction: TDBCheckBox;
    edtOccupation: TDBEdit;
    TabSheet5: TTabSheet;
    grdAHVHistory: TDBGrid;
    grdAHVHistoryResult: TDBGrid;
    btnEditBankInactive: TBitBtn;
    btnAddBankInactive: TBitBtn;
    procedure btnBankClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddRLClick(Sender: TObject);
    procedure btnDelRLClick(Sender: TObject);
    procedure edtRetAgeExit(Sender: TObject);
    procedure edtEmpDateChange(Sender: TObject);
    procedure btnEmpLinkClick(Sender: TObject);
    procedure btnBranchLinkClick(Sender: TObject);
    procedure btnLUnionLinkClick(Sender: TObject);
    procedure btnPFundLinkClick(Sender: TObject);
    procedure btnAmdRelClick(Sender: TObject);
    procedure btnViewRelClick(Sender: TObject);
    procedure btnNewHAdrClick(Sender: TObject);
    procedure btnPreResAdrClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cmbTitleChange(Sender: TObject);
    procedure tsBankDetHide(Sender: TObject);
    procedure cbAccTypeChange(Sender: TObject);
    procedure btnLUBankClick(Sender: TObject);
    procedure btnBankAmendClick(Sender: TObject);
    procedure btnBankSaveClick(Sender: TObject);
    procedure btnBankCancelClick(Sender: TObject);
    procedure btnBankDeleteClick(Sender: TObject);
    procedure pcEntityChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tsBankDetShow(Sender: TObject);
    procedure dtpDOBChange(Sender: TObject);
    procedure tsAddOnShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbGenderDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbMobileTypeDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnViewBranchClick(Sender: TObject);
    procedure btnViewEmployerClick(Sender: TObject);
    procedure btnViewLink2Click(Sender: TObject);
    procedure btnViewLink1Click(Sender: TObject);
    procedure cmbPayFreqDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnDelBranchClick(Sender: TObject);
    procedure btnDelEmpClick(Sender: TObject);
    procedure btnDelLUnionClick(Sender: TObject);
    procedure btnDelPFundClick(Sender: TObject);
//    procedure edtIDnoExit(Sender: TObject);
    procedure tsMainShow(Sender: TObject);
    procedure cmbPayFreqChange(Sender: TObject);
    procedure cmbPayDayDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnAddBankClick(Sender: TObject);
    procedure cmbPayDayWeekDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure DBEdit2Change(Sender: TObject);
    procedure edtCurrAddrYearsExit(Sender: TObject);
    procedure edtEmploymentTypeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbLoansChange(Sender: TObject);
    procedure cmbMaritalConsentDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure btnCopyClick(Sender: TObject);
    procedure btnClientStatusClick(Sender: TObject);
    procedure grdAHVActiveDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure pcBankDetailsChange(Sender: TObject);
    procedure btnSubmitAHVActiveClick(Sender: TObject);
    procedure grdClientStatusDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnAddConfirmationLinkClick(Sender: TObject);
    procedure btnEmploymentConfirmationHistoryClick(Sender: TObject);
    procedure cmbEmpTypeDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure tsEmpDetShow(Sender: TObject);
    procedure btnNewNoteAllClick(Sender: TObject);
    procedure btnEditNoteAllClick(Sender: TObject);
  private
    { Private declarations }
    frmPreviewTabDoc: TfrmPreviewDoc;
    RulesList: TStringList;
    dtmBankData : TdtmBankDet;
    BankLink: TDataLink;
    FCurEntID: integer;
    FCurTypeID: integer;
    FCurrentID: string;
    function SetAgeLabel(InputStr: string): string;
    function IDnoToBirthDate(InputStr: string): string;
    procedure DoEntReference(EntityID: Integer; NoEdit: boolean);
    procedure SetStaticNameLabels;
    procedure BankDetAfterInsert(DataSet: TDataSet);
    procedure SetBankStrValues;
    procedure DoBranchNameLU;
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
    procedure SetBankDetails;
    function DeleteLink(Edit: TEdit; FieldName: String; DoPrompt: Boolean): Boolean;
    procedure SetDateOfBirth;
    procedure SetAllowEarlyDeduction(DoUpdate: Boolean);
  public
    { Public declarations }
    //property DBName : WideString  read FDBName write SetDBName;
    property CurrentID : string read FCurrentID write FCurrentID;
    property CurEntID : integer read FCurEntID write SetCurEntID;
    property CurTypeID: integer read FCurTypeID write SetCurTypeID;
    procedure CreatePersonLoan;
    procedure DataChange(DataSet: TDataSet);
    procedure ShowBoxes(ShowStatus : boolean); override;
  end;

implementation

uses dmMain, dmEntityLoan, uBase32, uConst, uLScentral, fmLURel, dmEntCode,
  uLSConst, fmEntCheck, dmEntRef, fmEntDetS, dmEntCheck,
  dmEntity, fmResultOptions, dmSecFrm,
  fmEmpPayRules, fmLinkEmployerWizard, fmEmploymentConfirmationEdit,
  fmEmploymentConfirmationHistory, dmEmployer;

{$R *.DFM}

procedure TfrmPersonLoan.CreatePersonLoan;
begin
  dtmEntCode := TdtmEntCode.Create(Self);
  dtmEntCode.SetPersonCTL(True);
  dtmEntityLoan.SetAllQueries(True);
  CurEntID :=  dtmMain.qryEntDet.FieldByName('EntityId').AsInteger;
  CurTypeID := PSNtype;
  SetStaticNameLabels;
  SetBankDetails;    
end;

procedure TfrmPersonLoan.BankDetAfterInsert(DataSet: TDataSet);
begin
  Dataset.FieldByName('EntityID').AsInteger := FCurEntID;
  Dataset.FieldByName('TypeID').AsInteger   := FCurTypeID;
end;

procedure TfrmPersonLoan.SetStaticNameLabels;
begin
  edtBranch.Text := dtmEntityLoan.GetLinkDet(dtmEntityLoan.qryPersonLoan.FieldByName('BranchID').AsInteger);
  edtEmployer.Text := dtmEntityLoan.GetLinkDet(dtmEntityLoan.qryPersonLoan.FieldByName('EmpID').AsInteger);
  edtLink2.Text := dtmEntityLoan.GetLinkDet(dtmEntityLoan.qryPersonLoan.FieldByName('Link2').AsInteger);
  edtProvident.Text := dtmEntityLoan.GetLinkDet(dtmEntityLoan.qryPersonLoan.FieldByName('Link1').AsInteger);
end;

procedure TfrmPersonLoan.FormShow(Sender: TObject);
var
  CurrLoanID: Integer;
begin
  inherited;
//  edtRetAge.Text := '';
  
  {CurEntID := dtmEntityLoan.qryEntity.FieldByName('EntityId').AsInteger;
  CurTypeID := PSNtype;}
  //dtmBankData.SetDBName(dtmMain.dbData.ConnectionString);

  //**tlbBank.Visible := not cbxBank.ReadOnly;

  if (Trim(edtRetAge.Text)='') and
    (dtsEntity.DataSet.FieldByName('RetireDate').AsString <> '') and (dtpDOB.Date <>0) then
  begin
    //SetAge
    edtRetAge.Text := Age(dtpDOB.Date, dtsEntity.DataSet.FieldByName('RetireDate').AsDateTime);
  end;

  if FReadOnly then
  begin
    btnViewBranch.Show;
    btnViewEmployer.Show;
    btnViewLink1.Show;
    btnViewLink2.Show;

    btnAmend.Enabled := False;

    grdERLink.ReadOnly := True;
    grdERLink.Color := dtmMain.ScrPnlColor;
    btnAddRL.Enabled := False;
    btnAmdRel.Enabled := False;
    btnDelRL.Enabled := False;
  end;

  //btnLUBank.Visible := cbxBank.Visible;

  pcEntity.ActivePageIndex := 0;
  dtmEntityLoan.SetEnqParam;
  if dtmEntityLoan.qryPersonLoan.FieldByName('DOB').IsNull then
    SetDateOfBirth;

  edtCurrAddrYears.Text := dtmEntityLoan.qryPersonLoan.FieldByName('YearsCurrentAddr1').AsString;
  edtCurrAddrMonths.Text := dtmEntityLoan.qryPersonLoan.FieldByName('MonthsCurrentAddr1').AsString;
  edtPrevAddrYears.Text := dtmEntityLoan.qryPersonLoan.FieldByName('YearsPreviousAddr1').AsString;
  edtPrevAddrMonths.Text := dtmEntityLoan.qryPersonLoan.FieldByName('MonthsPreviousAddr1').AsString;

  dtmEntityLoan.qryCurrentLoan.Open;
  if dtmEntityLoan.qryCurrentLoan.Fields[0].IsNull then
    CurrLoanID := -1
  else
    CurrLoanID := dtmEntityLoan.qryCurrentLoan.Fields[0].Value;
  dtmEntityLoan.qryCurrentLoan.Close;

  with dtmEntityLoan do
  begin
    dsClientLoans.Open;
    while not dsClientLoans.Eof do
    begin
      cmbLoans.Items.Add(dsClientLoans.FieldByName('RefNo').AsString);
      if dsClientLoans.FieldByName('LoanID').AsInteger = CurrLoanID then
        cmbLoans.ItemIndex := cmbLoans.Items.Count - 1;
      dsClientLoans.Next;
    end;
  end;

  (*frmPreviewTabDoc := TfrmPreviewDoc.Create(Self);
  frmPreviewTabDoc.Parent := pnlDocuments;
  frmPreviewTabDoc.pnlTools.Hide;
  frmPreviewTabDoc.Align := alClient;
  frmPreviewTabDoc.LoanID := CurrLoanID;
  frmPreviewTabDoc.Show;
  frmPreviewTabDoc.BorderStyle := bsNone;

  frmPreviewDoc := TfrmPreviewDoc.Create(Self);
  frmPreviewDoc.ShowGrid := False;
  frmPreviewDoc.AllowSelect := False;
  frmPreviewDoc.BorderStyle := bsSizeToolWin;
  frmPreviewDoc.pnlTools.Hide;
  frmPreviewDoc.clbNavigate.Hide;
  frmPreviewDoc.FormStyle := fsStayOnTop;
  frmPreviewDoc.Position := poDesigned;
  frmPreviewDoc.Height := 300;
  frmPreviewDoc.Width := 400;
  frmPreviewDoc.Left := Screen.Width - frmPreviewDoc.Width;
  frmPreviewDoc.Top := Screen.WorkAreaHeight - frmPreviewDoc.Height;
  dtmEntityLoan.qryCurrentLoan.Open;
  frmPreviewDoc.LoanID := CurrLoanID;
  frmPreviewDoc.dsDocuments.Filter := 'DocType = ''App''';
  frmPreviewDoc.dsDocuments.Filtered := True;
  frmPreviewDoc.DocView.FitMode := miFree;
  frmPreviewDoc.DocView.SetScale(0.8,0.8);*)
end;

procedure TfrmPersonLoan.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(RulesList);
  dtmEntityLoan.SetAllQueries(False);
  FreeAndNil(dtmEntCode);
  FreeAndNil(dtmBankData);
end;

procedure TfrmPersonLoan.btnBankClick(Sender: TObject);
begin
  inherited;
  DoBankDetail(dtmEntityLoan.qryEntity.FieldByName('EntityId').AsInteger,
    PSNtype,btnAmend.Visible);
end;

procedure TfrmPersonLoan.btnAddRLClick(Sender: TObject);
var
  frmEntChk : TfrmEntCheck;
  //NewRefID : integer;
begin
  // inherited;
  frmEntChk := TfrmEntCheck.Create(Self);
  dtmEntity := TdtmEntity.Create(Self);
  try
    frmEntChk.AddToApp := False;
    frmEntChk.DoEntityCheck(PSNType,False, True);
    if frmEntChk.ModalResult = mrYes then // New entity
    begin
      DoEntReference(frmEntChk.ChosenID,False);
      dtmEntityLoan.AddEntityRelation(frmEntChk.ChosenID, frmEntChk.EntType);
      //AddRefRelToEnt(frmEntChk.ChosenID, frmEntChk.EntType);
    end
    else if frmEntChk.ModalResult = mrOK then
      dtmEntityLoan.AddEntityRelation(frmEntChk.ChosenID, frmEntChk.EntType);
      //AddRefRelToEnt(frmEntChk.ChosenID, frmEntChk.EntType);
  finally
    FreeAndNil(frmEntChk);
    FreeAndnil(dtmEntity);
  end;
end;

procedure TfrmPersonLoan.btnDelRLClick(Sender: TObject);
begin
  // inherited;
  dtmEntityLoan.DelCurRelWrapper;
end;

{WB 31/01/2000 Give age according to input date string - for Birth day boxes}
function TfrmPersonLoan.SetAgeLabel(InputStr: string): string;
begin
  //Calc age
  if Length(InputStr)>=10 then
    Result := Age(StrToDate(InputStr),Date)
  else
    Result:= '';
end;

{WB 31/01/2000 Convert correct ID number into birthdate}
function TfrmPersonLoan.IDnoToBirthDate(InputStr: string): string;
var
  TempDate : string;
begin
  if Length(InputStr)>=6 then
  begin
    try
      TempDate := Copy(InputStr,5,2)+'/'+Copy(InputStr,3,2)+'/19'+
        Copy(InputStr,1,2);
      StrToDate(TempDate);
      Result := TempDate;
    except
      Result := '';
    end;
  end;
end;

procedure TfrmPersonLoan.edtRetAgeExit(Sender: TObject);
var
  tempAge : integer;
begin
  inherited;
  try
    tempAge := StrToInt(edtRetAge.Text);
    if dtsEntity.DataSet.State = dsBrowse then
      dtsEntity.DataSet.Edit;
    dtsEntity.DataSet.FieldByName('RetireDate').AsDateTime :=
      IncMonth(dtsEntity.DataSet.FieldByName('DOB').AsDateTime,
        tempAge*12);
  except
    MessageDlg('Invalid value entered', mtError, [mbOK], 0);
    edtRetAge.SetFocus;
    edtRetAge.SelectAll;
  end;
end;

procedure TfrmPersonLoan.edtEmpDateChange(Sender: TObject);
begin
  inherited;
{  try
//    if not dtmPerson.qryPersonAddOn.FieldByName('EmpDate').IsNull then
    if Length(edtEmpDate.Text)>4 then
//      lblPrdEmp.Caption := IntToStr(NoOfMonths(StrToDate(edtEmpDate.Text),Date));
    begin
      RunQry(dtmEntityLoan.qryToUse,'select cast(datediff(day,''' +
        edtEmpdate.Text + ''',getdate()) as float) / 365 from lsentpsnadd', 'O');
      lblPrdEmp.Caption := FormatFloat('##0.##',dtmEntityLoan.qryToUse.Fields[0].AsFloat);
      dtmEntityLoan.qryToUse.Close;
    end
  except
      lblPrdEmp.Caption := '0';
  end; }
end;

procedure TfrmPersonLoan.btnEmpLinkClick(Sender: TObject);
begin
  inherited;
  frmLinkEmployerWizard := TfrmLinkEmployerWizard.Create(Self);
  try
    frmLinkEmployerWizard.ClientID := dtmEntityLoan.qryPersonLoan.FieldByName('EntityID').AsInteger;
    if frmLinkEmployerWizard.ShowModal = mrOK then
    begin
      //CurrEmpID := dtmEntityLoan.qryPersonLoan.FieldByName('EmpID').AsInteger;
      //CurrPayRuleID := dtmEntityLoan.qryPersonLoan.FieldByName('PayRuleID').AsInteger;
      if not (dtmEntityLoan.qryPersonLoan.State in [dsInsert,dsEdit]) then
        dtmEntityLoan.qryPersonLoan.Edit;

      dtmEntityLoan.qryPersonLoan.FieldByName('EmpID').AsInteger := frmLinkEmployerWizard.EmployerID;
      dtmEntityLoan.qryPersonLoan.FieldByName('BranchID').AsInteger := 0;
      //dtmEntityLoan.qryPersonLoan.Post;

      //dtmEntityLoan.qryPersonLoan.Requery();


      //edtEmployer.Text := dtmEntityLoan.GetLinkDet(dtmEntityLoan.qryPersonLoan.FieldByName('EmpID').AsInteger);
      SetStaticNameLabels;
    end;
  finally
    FreeAndNil(frmLinkEmployerWizard);
  end;
end;

procedure TfrmPersonLoan.btnBranchLinkClick(Sender: TObject);
var
  WorkplaceID : integer;
begin
  with dtmEntityLoan do
  begin
    try
      dsEmployerWorkplace.Close;
      dsEmployerWorkplace.Parameters[0].Value := qryPersonLoan.FieldByName('EmpID').AsInteger;
      dsEmployerWorkplace.Open;
      
      WorkplaceID := ShowLU(dsEmployerWorkplace,'Look up Workplace');

      if WorkplaceID <> -1 then
      begin
       if not (qryPersonLoan.State in [dsInsert,dsEdit]) then
        qryPersonLoan.Edit;
       qryPersonLoan.FieldByName('BranchID').AsInteger := WorkplaceID;
      end;
      edtBranch.Text := dtmEntityLoan.GetLinkDet(WorkplaceID);
    finally
      dsEmployerWorkplace.Close;
    end;
  end;
end;

procedure TfrmPersonLoan.btnLUnionLinkClick(Sender: TObject);
begin
  inherited;
  dtmEntityLoan.DoLSerLU(0,'Link2');
  edtLink2.Text := dtmEntityLoan.GetLinkDet(dtmEntityLoan.qryPersonLoan.FieldByName('Link2').AsInteger);
end;

procedure TfrmPersonLoan.btnPFundLinkClick(Sender: TObject);
begin
  inherited;
  dtmEntityLoan.DoLSerLU(100001020,'Link1');
  edtProvident.Text := dtmEntityLoan.GetLinkDet(dtmEntityLoan.qryPersonLoan.FieldByName('Link1').AsInteger);
end;

procedure TfrmPersonLoan.DoEntReference(EntityID: Integer; NoEdit: boolean);
var
  frmEntRef : TfrmEntDetS;
  ShowFrm : boolean;
begin
  frmEntRef := TfrmEntDetS.Create(Self);
  frmEntRef.EntityID := EntityID;
  try
    ShowFrm := True;

    if ShowFrm then
    begin
      if NoEdit then
        frmEntRef.ShowBoxes(NoEdit);
      frmEntRef.ShowModal;
    end;
  finally
    frmEntRef.Free;
    //
    dtmEntRef.Free;
    dtmEntRef := nil;
  end;
end;

procedure TfrmPersonLoan.btnAmdRelClick(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityLoan.qryERLink.FieldByName('LinkID').AsInteger, False);
end;

procedure TfrmPersonLoan.btnViewRelClick(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityLoan.qryERLink.FieldByName('LinkID').AsInteger, True);
end;

procedure TfrmPersonLoan.btnNewHAdrClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrPrev);
end;

procedure TfrmPersonLoan.btnPreResAdrClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrNewH);
end;

procedure TfrmPersonLoan.btnSaveClick(Sender: TObject);
begin
  inherited;
  //dtmMain.qryEntDet.Requery;
end;

procedure TfrmPersonLoan.ShowBoxes(ShowStatus: boolean);
begin
  inherited;
  {dbCBStatus.Visible       := ShowStatus;
  cblPersonInd.Visible     := ShowStatus;
  cmbEntInd2.Visible       := ShowStatus;
  cblMaritalStatus.Visible := ShowStatus;
  cblOccupation.Visible    := ShowStatus;
  cblEmploy.Visible        := ShowStatus;
  cblNationality.Visible   := ShowStatus;
  cmbTitle.Visible         := ShowStatus;
  rgpDefAddress.Enabled    := ShowStatus;
  rgpDocAdr.Enabled        := ShowStatus;
  rgpPresOR.Enabled        := ShowStatus;
  //rgpSex.Enabled           := ShowStatus;
  cmbGender.Enabled        := ShowStatus;
  edtRetAge.Visible        := ShowStatus;
  cbxPayFreq.Visible       := ShowStatus;
  tlbERLink.Enabled        := ShowStatus;
  btnBranchLink.Visible    := ShowStatus;
  btnViewBranch.Visible    := ShowStatus;
  btnDelBranch.Visible     := ShowStatus;
  btnEmpLink.Visible       := ShowStatus;
  btnDelEmp.Visible        := ShowStatus;
  btnLUnionLink.Visible    := ShowStatus;
  btnDelLUnion.Visible     := ShowStatus;
  btnPFundLink.Visible     := ShowStatus;
  btnDelPFund.Visible      := ShowStatus;
  dtpDOB.Visible           := ShowStatus;
  dtpEmpDate.Visible       := ShowStatus;
  dtpProvDate.Visible      := ShowStatus;
  btnCalc.Enabled          := ShowStatus;  }
end;

procedure TfrmPersonLoan.cmbTitleChange(Sender: TObject);
 procedure SetGender(iStr:Char);
 begin
   if not CheckDataSetForPost(cmbGender.DataSource.DataSet) then
     //rgpSex.DataSource.DataSet.Edit;
     cmbGender.DataSource.DataSet.Edit;
   //rgpSex.DataSource.DataSet.FieldByName('Gender').AsString := iStr;
   cmbGender.DataSource.DataSet.FieldByName('Gender').AsString := iStr;
 end;
begin
  inherited;
  case cmbTitle.ItemIndex of
    2,4,5  :  SetGender('F');
    3      :  SetGender('M');
  end
end;

procedure TfrmPersonLoan.SetBankDetails;
begin
  if not (Assigned(dtmBankData)) then
  begin
    dtmBankData := TdtmBankDet.Create(Self);
    dtmBankData.qryBankDet.AfterInsert := BankDetAfterInsert;
    dtmBankData.SetDBName(dtmMain.dbData.ConnectionString);
    dtmBankData.CurEntID := FCurEntID;
    dtmBankData.CurTypeID := FCurTypeID;

    BankLink := TDataLink.Create;
    BankLink.DataSource := dtmBankData.dtsBankDet;
    BankLink.DataSet.AfterOpen   := DataChange;
    BankLink.DataSet.AfterEdit   := DataChange;
    BankLink.DataSet.AfterInsert := DataChange;
    BankLink.DataSet.AfterPost   := DataChange;
    BankLink.DataSet.AfterCancel := DataChange;

    dtmBankData.qryBankInactive.Close;
    dtmBankData.qryBankInactive.Parameters[0].Value := FCurEntID;
    dtmBankData.qryBankInactive.Parameters[1].Value := FCurTypeID;
    dtmBankData.qryBankInactive.Open;

    dtmBankData.qryBankDet.Open;
    dtmBankData.qryBranchN.Close;
    dtmBankData.qryBranchN.Open;
    dtmBankData.qryBranchC.Close;
    dtmBankData.qryBranchC.Open;

    SetAllowEarlyDeduction(False);
  end;
end;

procedure TfrmPersonLoan.SetBankStrValues;
begin
//  qryBranchC.Locate
  dtmBankData.qryBankDet.FieldByName('BBranch').AsString :=
    dtmBankData.qryBranchC.FieldByName('BranchName').AsString;
  dtmBankData.qryBankDet.FieldByName('BBCode').AsString  :=
    dtmBankData.qryBranchC.FieldByName('BranchCode').AsString;
  dtmBankData.qryBankDet.FieldByName('UserID').AsString  := dtmMain.CurrentID;
end;

procedure TfrmPersonLoan.tsBankDetHide(Sender: TObject);
begin
  if dtmBankData.qryBankDet.State in [dsEdit,dsInsert] then
  begin
   // if Self.ModalResult = mrOk then
   // begin
      SetBankStrValues;
      dtmBankData.qryBankDet.Post;
   // end
   // else
   //   dtmBankData.qryBankDet.Cancel;
  end;
  inherited;
end;

procedure TfrmPersonLoan.cbAccTypeChange(Sender: TObject);
begin
  inherited;
  dtmBankData.qryBankDet.Edit;
  //**dtmBankData.qryBankDet.FieldByName('AccType').AsInteger := cbAccType.ItemIndex;
end;

procedure TfrmPersonLoan.btnLUBankClick(Sender: TObject);
begin
  inherited;
  DoBranchNameLU;
end;

procedure TfrmPersonLoan.DoBranchNameLU;
var
  frmLookUp : TfrmLookUp;
begin
  frmLookUp := TfrmLookUp.Create(Self);
  try
    dtmMain.SetGrdColors([frmLookUp.grdLookup]);
    if dtmBankData.Tag = 0 then
      frmLookUp.SetLookUpForm(dtmBankData.qryBranchN,nil,'Find bank branch','',True)
    else
      frmLookUp.SetLookUpForm(dtmBankData.qryBranchN,nil,'Find bank branch','',False);
    frmLookUp.ShowModal;
    if frmLookUp.ChoosenId <> -1 then
    begin
      dtmBankData.qryBankDet.Edit;
      dtmBankData.qryBankDet.FieldByName('BRecID').AsInteger := frmLookUp.ChoosenId;
      dtmBankData.qryBankDet.Post;
    end;
  finally
    Screen.Cursor := crDefault;
    dtmBankData.qryBranchN.Filter := '';
    dtmBankData.qryBranchN.Filtered := False;
    frmLookUp.Free;
  end;
end;

procedure TfrmPersonLoan.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
//  dtmBankData.CurEntID := FCurEntID;
  dtmEntityLoan.qryPersonLoan.Close;
  dtmEntityLoan.qryPersonLoan.Parameters[0].Value := Value;
  dtmEntityLoan.qryPersonLoan.Open;
  if dtmEntityLoan.qryPersonLoan.FieldByName('AEntityID').IsNull then
  begin
    dtmMain.dbData.Execute(
      Format('Insert into lsEntPsnAdd (EntityID) values (%d)',[Value]));
    dtmEntityLoan.qryPersonLoan.Requery;
  end;
end;

procedure TfrmPersonLoan.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
 // dtmBankData.CurTypeID := FCurTypeID;
end;

procedure TfrmPersonLoan.btnBankAmendClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Edit;
end;

procedure TfrmPersonLoan.DataChange(DataSet: TDataSet);
begin
  case DataSet.State of
  dsBrowse: begin
              btnBankAmend.Enabled := True;
              btnBankSave.Enabled := False;
              btnBankCancel.Enabled := False;
            end;
  dsInsert, dsEdit: begin
              btnBankAmend.Enabled := False;
              btnBankSave.Enabled := True;
              btnBankCancel.Enabled := True;
            end;
  end;
end;

procedure TfrmPersonLoan.btnBankSaveClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Post;
end;

procedure TfrmPersonLoan.btnBankCancelClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Cancel;
end;

procedure TfrmPersonLoan.btnBankDeleteClick(Sender: TObject);
begin
  if MesDlg('Are you sure you want to clear these bank details?','C') = mrOK then
    dtmBankData.qryBankDet.Delete;
end;

procedure TfrmPersonLoan.pcEntityChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if pcEntity.ActivePage = tsBankDet then
  begin
    if dtmBankData.qryBankDet.State in [dsEdit,dsInsert] then
      case MesDlg('Do you want to save the bank details?','F') of
        mrYes:  begin
                  SetBankStrValues;
                  dtmBankData.qryBankDet.Post;
                end;
        mrNo: dtmBankData.qryBankDet.Cancel;
        mrCancel: AllowChange := False;
      end;
  end;
end;

procedure TfrmPersonLoan.tsBankDetShow(Sender: TObject);
begin
  inherited;
  //SetBankDetails;

  btnAddBank.Enabled := dtmBankData.qryBankDet.FieldByName('EntityID').IsNull;
  btnAddBankInactive.Enabled := dtmBankData.qryBankInactive.FieldByName('EntityID').IsNull;
  pcBankDetailsChange(nil);
end;

procedure TfrmPersonLoan.dtpDOBChange(Sender: TObject);
begin
  inherited;
  //Calc age for Person
  lblAge.Caption := SetAgeLabel(dateToStr(dtpDOB.Date));
end;

procedure TfrmPersonLoan.tsAddOnShow(Sender: TObject);
begin
  inherited;
  dtpDOBChange(Self);
end;

procedure TfrmPersonLoan.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  dtmEntityLoan.qryEntPsnAdd.Edit;
  dtmEntityLoan.qryEntPsnAdd.FieldByName('EmpID').AsInteger := 0;
end;

procedure TfrmPersonLoan.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dtmEntityLoan.qryEntPsnAdd.Edit;
  dtmEntityLoan.qryEntPsnAdd.FieldByName('Link2').AsInteger := 0;
end;

procedure TfrmPersonLoan.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dtmEntityLoan.qryEntPsnAdd.Edit;
  dtmEntityLoan.qryEntPsnAdd.FieldByName('Link1').AsInteger := 0;
end;

procedure TfrmPersonLoan.FormCreate(Sender: TObject);
begin
  inherited;
  RulesList := TStringList.Create;
  with dtmEntityLoan do
  begin
    dsMonthlyRules.Open;
    while not dsMonthlyRules.Eof do
    begin
      RulesList.Add(dsMonthlyRules.FieldByName('TypeKey').AsString + '=' +
        dsMonthlyRules.FieldByName('Description').AsString);
      cmbPayDay.Items.Add(dsMonthlyRules.FieldByName('TypeKey').AsString);
      dsMonthlyRules.Next;
    end;
    dsMonthlyRules.Close;
  end;

  pcBankDetails.ActivePageIndex := 0;
  pcEmploymentDetails.ActivePageIndex := 0;

  chkEarlyDeduction.Visible := dtmSecurity.AllowAccess(213);

 { dvAppl := TMiDocView.Create(Self);
  dvAppl.FileName := App;
  dvAppl.Parent := pnlApplication;
  dvAppl.Align := alBottom;
  dvAppl.Height := pnlApplication.Height - 20;
  dvAppl.Anchors := dvAppl.Anchors + [akTop];
  dvAppl.Show;
  dvAppl.SetScale(0.8,0.8); }
end;

procedure TfrmPersonLoan.cmbGenderDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cmbGender.Canvas.FillRect(Rect);
  case Index of
  1: cmbGender.Canvas.TextOut(Rect.Left + 2,Rect.Top + 2, 'Male');
  2: cmbGender.Canvas.TextOut(Rect.Left + 2,Rect.Top + 2, 'Female');
  else
    cmbGender.Canvas.TextOut(Rect.Left + 2,Rect.Top + 2, '');
  end;
end;

procedure TfrmPersonLoan.cmbMobileTypeDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cmbMobileType.Canvas.FillRect(Rect);
  case Index of
  1: cmbMobileType.Canvas.TextOut(Rect.Left + 2,Rect.Top + 2, 'Prepaid');
  2: cmbMobileType.Canvas.TextOut(Rect.Left + 2,Rect.Top + 2, 'Contract');
  else
    cmbMobileType.Canvas.TextOut(Rect.Left + 2,Rect.Top + 2, '<NONE>');
  end;
end;

procedure TfrmPersonLoan.btnViewBranchClick(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityLoan.qryPersonLoan.FieldByName('BranchID').AsInteger, True);
end;

procedure TfrmPersonLoan.btnViewEmployerClick(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityLoan.qryPersonLoan.FieldByName('EmpID').AsInteger, True);
end;

procedure TfrmPersonLoan.btnViewLink2Click(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityLoan.qryPersonLoan.FieldByName('Link2').AsInteger, True);
end;

procedure TfrmPersonLoan.btnViewLink1Click(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityLoan.qryPersonLoan.FieldByName('Link1').AsInteger, True);
end;

procedure TfrmPersonLoan.cmbPayFreqDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  TextOut: String;
begin
  inherited;
  cmbPayFreq.Canvas.FillRect(Rect);
  case Index of
    0: TextOut := 'None';
    1: TextOut := 'Monthly';
    2: TextOut := 'Weekly';
    3: TextOut := 'Fortnightly';
  end;
  cmbPayFreq.Canvas.TextOut(Rect.Left + 2,Rect.Top + 2, TextOut);
end;

function TfrmPersonLoan.DeleteLink(Edit: TEdit; FieldName: String; DoPrompt: Boolean): Boolean;
var
  DoDelete: Boolean;
begin
  DoDelete := True;

  if DoPrompt then
    DoDelete := MessageDlg('Are you sure you want to this delete link?', mtConfirmation,
      [mbYes,mbNo], 0) = mrYes;

  if DoDelete then            
  begin
    if dtsEntity.State = dsBrowse then
      dtsEntity.DataSet.Edit;
    dtsEntity.DataSet.FieldByName(FieldName).AsInteger := 0;
    Edit.Clear;
  end;

  Result := DoDelete;
end;

procedure TfrmPersonLoan.btnDelBranchClick(Sender: TObject);
begin
  inherited;
  DeleteLink(edtBranch,'BranchID', True);
end;

procedure TfrmPersonLoan.btnDelEmpClick(Sender: TObject);
begin
  if DeleteLink(edtEmployer,'EmpID', True) then
  begin
    DeleteLink(edtBranch, 'BranchID', False);
    dtmEntityLoan.qryPersonLoan.FieldByName('PayRuleID').AsInteger := 0;
  end;
end;

procedure TfrmPersonLoan.btnDelLUnionClick(Sender: TObject);
begin
  inherited;
  DeleteLink(edtLink2,'Link2', True);
end;

procedure TfrmPersonLoan.btnDelPFundClick(Sender: TObject);
begin
  inherited;
  DeleteLink(edtProvident,'Link1', True);
end;

procedure TfrmPersonLoan.tsMainShow(Sender: TObject);
begin
  inherited;
 // edtIDnoExit(edtIDno);
  lblCreateBy.Parent := StatusBar1;
  lblCreateUser.Parent := StatusBar1;
  lblCreateBy.Left := 2;
  lblCreateBy.Top  := 3;
  lblCreateUser.Left := lblCreateBy.Left + lblCreateBy.Width + 2;
  lblCreateUser.Top  := lblCreateBy.Top;
  lblUpdateBy.Parent := StatusBar1;
  lblUpdateUser.Parent := StatusBar1;
  lblUpdateBy.Top := lblCreateBy.Top;
  lblUpdateBy.Left := lblCreateUser.Left + lblCreateUser.Width + 10;
  lblUpdateUser.Top := lblCreateBy.Top;
  lblUpdateUser.Left := lblUpdateBy.Left + lblUpdateBy.Width + 2;
end;

procedure TfrmPersonLoan.cmbPayFreqChange(Sender: TObject);
{var
  I, Days: Integer; }
begin
  inherited;
  dtmEntityLoan.qryPersonLoan.FieldByName('PayDay').Value := Null;
{  dtpLastPayDate.Enabled := cmbPayFreq.ItemIndex = 3;
  lblLastPayDate.Enabled := dtpLastPayDate.Enabled;

  if cmbPayFreq.ItemIndex in [2,3,4] then
  begin
    cmbPayDayWeek.Show;
    cmbPayDay.Hide;
  end
  else
  begin
    cmbPayDayWeek.Hide;
    cmbPayDay.Show;
  end;  }

  {if cmbPayFreq.ItemIndex in [2,3,4] then
  begin
    Days := 7;
    //cmbPayDay.Style := csOwnerDrawFixed;
    cmbPayDay.ItemHeight := 16;
  end
  else
  begin
    Days := 31;
    //cmbPayDay.Style := csDropDownList;
  end;

  if Days <> cmbPayDay.Items.Count then
  begin
    cmbPayDay.Clear;
    for I := 1 to Days do
      cmbPayDay.Items.Add(IntToStr(I));

    if Days = 31 then
      for I := 0 to RulesList.Count - 1 do
        cmbPayDay.Items.Add(RulesList.Names[I]);
  end;                                           }
end;

procedure TfrmPersonLoan.cmbPayDayDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Weekday: String;
begin
  inherited;
  cmbPayDay.Canvas.FillRect(Rect);
  if Index <= 30 then
    WeekDay := cmbPayDay.Items.Strings[Index]
  else
    WeekDay := RulesList.Values[RulesList.Names[Index - 31]];

  cmbPayDay.Canvas.TextOut(Rect.Left +2, Rect.Top +2, Weekday);
end;

procedure TfrmPersonLoan.SetDateOfBirth;
var
  BirthDate : String;
begin
  inherited;
  if dtmEntityLoan.qryPersonLoan.FieldByName('DOB').AsString = '' then
    if Length(dtmEntityLoan.qryPersonLoan.FieldByName('RegNo').AsString) >= 6 then
    begin
      //edtBirth.Text := IDnoToBirthDate(edtIdno.Text);
      //dtpDOB.DateTime := StrToDate(IDnoToBirthDate(edtIdno.Text));
      BirthDate := IDnoToBirthDate(dtmEntityLoan.qryPersonLoan.FieldByName('RegNo').AsString);
      //if CheckDataSetForPost(dtmEntityLoan.qryPersonLoan) then
      //begin
        try
          if not (dtmEntityLoan.qryPersonLoan.State in [dsInsert,dsEdit]) then
            dtmEntityLoan.qryPersonLoan.Edit;

          dtmEntityLoan.qryPersonLoan.FieldByName('DOB').AsDateTime := StrToDate(BirthDate);
          //dtmEntityLoan.qryPersonLoan.Post;
        except
        end;
      //end;
    end;
end;
procedure TfrmPersonLoan.btnAddBankClick(Sender: TObject);
var
  frmBank : TfrmBankDetails;
  BankQuery: TADOQuery;
  BankSource: TDataSource;
begin
  if (Sender = btnEditBank) or (Sender = btnAddBank) then
     begin
       BankQuery := dtmBankData.qryBankDet;
       BankSource := dtmBankData.dtsBankDet;
     end
  else
     begin
       BankQuery := dtmBankData.qryBankInactive;
       BankSource := dtmBankData.dtsBankInactive;
     end;

  frmBank := TfrmBankDetails.Create(nil);
  frmBank.BankDataSet := BankQuery;
  frmBank.dtmData      := dtmBankData;
  frmBank.DBName       := dtmMain.dbData.ConnectionString;
  frmBank.CurrentID    := dtmMain.CurrentID;
  frmBank.CurEntID     := dtmEntityLoan.qryEntity.FieldByName('EntityID').AsInteger;
  frmBank.CurTypeID    := PSNtype;
  frmBank.ShowBoxes    := True;
  frmBank.edtBank.DataSource := BankSource;
  frmBank.cbxBank.DataSource := BankSource;
  frmBank.cbxBrName.DataSource := BankSource;
  frmBank.cbxBrCode.DataSource := BankSource;
  frmBank.edtAccName.DataSource := BankSource;
  frmBank.edtAccNo.DataSource := BankSource;

  dtmBankData.qryBankDet.Open;
  try
    if (Sender = btnAddBank) or (Sender = btnAddBankInactive) then
      BankQuery.Append
    else
    begin
      BankQuery.Edit;
      frmBank.cbAccType.ItemIndex := BankQuery.FieldByName('AccType').AsInteger;
    end;
    if frmBank.Showmodal = mrOK then
    begin
      BankQuery.Post;
      if BankQuery.FieldByName('Active').AsInteger = 1 then
        SetAllowEarlyDeduction(True);
    end
    else
      BankQuery.Cancel;
  finally
    FreeAndNil(frmBank);
  end;
end;

procedure TfrmPersonLoan.SetAllowEarlyDeduction(DoUpdate: Boolean);
var
  Disabled: Boolean;
begin
  if not chkEarlyDeduction.ReadOnly then
  begin
    Disabled := (dtmBankData.qryBankDet.FieldByName('BName').AsString = 'ABSA BANK') and
      (dtmBankData.qryBankDet.FieldByName('AccType').AsInteger = 0);

    if DoUpdate and Disabled then
    begin
      if not (dtmEntityLoan.qryPersonLoan.State in [dsEdit, dsInsert]) then
        dtmEntityLoan.qryPersonLoan.Edit;

      dtmEntityLoan.qryPersonLoan.FieldByName('AllowEarlyDeduction').AsBoolean := False;
      dtmEntityLoan.qryPersonLoan.Post;
    end;

    chkEarlyDeduction.Enabled := not Disabled;
  end;
end;

procedure TfrmPersonLoan.cmbPayDayWeekDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Weekday: String;
begin
  inherited;
  case Index of
    0: Weekday := 'Monday';
    1: Weekday := 'Tuesday';
    2: Weekday := 'Wednesday';
    3: Weekday := 'Thursday';
    4: Weekday := 'Friday';
    5: Weekday := 'Saturday';
    6: Weekday := 'Sunday';
  end;
  
  cmbPayDayWeek.Canvas.FillRect(Rect);
  cmbPayDayWeek.Canvas.TextOut(Rect.Left +2, Rect.Top +2, Weekday);
end;

procedure TfrmPersonLoan.DBEdit2Change(Sender: TObject);
begin
  inherited;
  dtpLastPayDate.Enabled := dtmEntityLoan.qryPersonLoan.FieldByName('PayFreq').AsString = 'T';
  lblLastPayDate.Enabled := dtpLastPayDate.Enabled;

  if (dtmEntityLoan.qryPersonLoan.FieldByName('PayFreq').AsString = '') or
    (dtmEntityLoan.qryPersonLoan.FieldByName('PayFreq').AsString = 'M') then
  begin
    cmbPayDayWeek.Hide;
    cmbPayDay.Show;
  end
  else
  begin
    cmbPayDayWeek.Show;
    cmbPayDay.Hide;
  end;

end;

procedure TfrmPersonLoan.edtCurrAddrYearsExit(Sender: TObject);
begin
  inherited;
  if dtsEntity.DataSet.State = dsBrowse then
    dtsEntity.DataSet.Edit;

  if (Sender = edtCurrAddrYears) or (Sender = edtCurrAddrMonths) then
    dtsEntity.DataSet.FieldByName('YearsCurrentAddr').AsFloat :=
      StrToFloat(IfThen(edtCurrAddrYears.Text='','0',edtCurrAddrYears.Text)) +
      StrToFloat(IfThen(edtCurrAddrMonths.Text = '', '0', edtCurrAddrMonths.Text))/100
  else
    dtsEntity.DataSet.FieldByName('YearsPreviousAddr').AsFloat :=
      StrToFloat(IfThen(edtPrevAddrYears.Text='','0',edtPrevAddrYears.Text)) +
      StrToFloat(IfThen(edtPrevAddrMonths.Text = '', '0', edtPrevAddrMonths.Text))/100;
end;

procedure TfrmPersonLoan.edtEmploymentTypeChange(Sender: TObject);
begin
  inherited;
  dtpEndDate.Enabled := dtsEntity.DataSet.FieldByName('Employment').AsInteger = 110010001;
end;

procedure TfrmPersonLoan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmEntityLoan.dsClientLoans.Close;
  //frmPreviewTabDoc.Close;
  //FreeAndNil(frmPreviewTabDoc);
end;

procedure TfrmPersonLoan.cmbLoansChange(Sender: TObject);
begin
  inherited;
  if dtmEntityLoan.dsClientLoans.Locate('RefNo',cmbLoans.Text,[]) then
    frmPreviewTabDoc.LoanID := dtmEntityLoan.dsClientLoans.FieldByName('LoanID').AsInteger;
end;

procedure TfrmPersonLoan.cmbMaritalConsentDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cmbMaritalConsent.Canvas.FillRect(Rect);
  if cmbMaritalConsent.Items.Strings[Index] = 'True' then
    cmbMaritalConsent.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1, 'Yes')
  else
    cmbMaritalConsent.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1, 'No');
end;

procedure TfrmPersonLoan.btnCopyClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure you wish to copy to the active bank details?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      dtmBankData.CopyToActive;
      dtmBankData.qryBankDet.Requery;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmPersonLoan.btnClientStatusClick(Sender: TObject);
var
  frmStatusLookup: TfrmLookup;
begin
  inherited;
  frmStatusLookup := TfrmLookUp.Create(Self);
  try
    if Sender = btnClientStatus then
      frmStatusLookup.SetLookUpForm(dtmEntityLoan.dsClientStatus, nil, 'Client Status', '', False)
    else
      frmStatusLookup.SetLookUpForm(dtmEntityLoan.dsEmploymentStatus, nil, 'Employment Status', '', False);
    if frmStatusLookup.ShowModal = mrOK then
    begin
      if dtmEntityLoan.qryPersonLoan.State = dsBrowse then
        dtmEntityLoan.qryPersonLoan.Edit;

      if Sender = btnClientStatus then
        dtmEntityLoan.qryPersonLoan.FieldByName('ClientStatus').AsInteger := frmStatusLookup.ChoosenID
      else
        dtmEntityLoan.qryPersonLoan.FieldByName('EmploymentStatus').AsInteger := frmStatusLookup.ChoosenID;

      dtmEntityLoan.qryPersonLoan.FieldByName('UpdateUSer').AsString := dtmMain.CurrentID;
    end;
  finally
    FreeAndNil(frmStatusLookup);
  end;
end;

procedure TfrmPersonLoan.grdAHVActiveDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bmp: TBitmap;
begin
  inherited;
  if DataCol = 0 then
    if not TDBGrid(Sender).DataSource.DataSet.FieldByName('RecordID').IsNull then
    begin
      case TDBGrid(Sender).DataSource.DataSet.FieldByName('Result').AsInteger of
        0: bmp := imgFail.Picture.Bitmap;
        1: bmp := imgPass.Picture.Bitmap;
        2: bmp := imgInformation.Picture.Bitmap;
        else
          bmp := nil;
      end;

      TDBGrid(Sender).Canvas.Draw(Rect.Left + 2, Rect.Top, bmp);
    end;
end;

procedure TfrmPersonLoan.pcBankDetailsChange(Sender: TObject);
begin
  inherited;
  if pcBankDetails.ActivePageIndex = 1 then
  begin
    dtmEntityLoan.dsAHVActive.Requery;
    dtmEntityLoan.dsAHVInactive.Requery;
    dtmEntityLoan.dsAHVHistory.Requery;
  end;
end;

procedure TfrmPersonLoan.btnSubmitAHVActiveClick(Sender: TObject);
var
  DataSet: TADODataSet;
  BankName: String;
begin
  inherited;
  with dtmEntityLoan do
  begin
    if Sender = btnSubmitAHVActive then
    begin
      DataSet := dsAHVActive;
      BankName := edtBank.Text;
    end
    else
    begin
      DataSet := dsAHVInactive;
      BankName := edtBankInactive.Text;
    end;

    DataSet.Requery;

    if not DataSet.FieldByName('RecordID').IsNull then
      if MessageDlg('Account Holder Verification has already been performed for this bank account. Do you want to continue?',
        mtWarning, [mbYes, mbNo], 0) = mrNo then
        Abort;

      qryAHVBanks.Open;
      if qryAHVBanks.Locate('BankName', BankName, [loCaseInsensitive]) then
      begin
        if MessageDlg('Are you sure you want to submit AHV for this bank account?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          try
            Screen.Cursor := crHourGlass;
            cmdAddAHV.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
            cmdAddAHV.Parameters.ParamByName('EntityID').Value := qryPersonLoan.FieldByName('EntityID').AsInteger;
            cmdAddAHV.Parameters.ParamByName('Active').Value := Sender = btnSubmitAHVActive;
            cmdAddAHV.Execute;
            MessageDlg('AHV Submitted', mtInformation, [mbOK], 0);
          finally
            Screen.Cursor := crDefault;
          end;
        end;
      end
      else
        MessageDlg('Cannot submit AHV for ' + BankName + '. Non-participating Bank', mtInformation, [mbOK], 0);

      qryAHVBanks.Close;
  end;
end;

procedure TfrmPersonLoan.grdClientStatusDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if DataCol = 0 then
  begin
    TDBGrid(Sender).Canvas.Brush.Color := StringToColor(TDBGrid(Sender).DataSource.DataSet.FieldByName('StatusColor').AsString);
    TDBGrid(Sender).Canvas.Rectangle(Rect.Left + 4, Rect.Top + 2, Rect.Right - 4, Rect.Bottom - 2);
  end;
end;

procedure TfrmPersonLoan.btnAddConfirmationLinkClick(Sender: TObject);
var
  EmployerID: Integer;
  EmployerName: String;
  TradingName: String;
  RegistrationNo: String;
begin
  inherited;
  frmEmploymentConfirmationEdit := TfrmEmploymentConfirmationEdit.Create(Self);
  try
    dtmEmployer := TdtmEmployer.Create(Self);
    with dtmEmployer do
    begin
      dsEmploymentConfirmation.Parameters[0].Value := CurEntID;
      dsEmploymentConfirmation.Open;
      dsEmploymentConfirmation.Append;
      dsEmploymentConfirmation.FieldByName('EntityID').AsInteger := CurEntID;
      dsEmploymentConfirmation.FieldByName('CreateUser').AsString := dtmMain.CurrentID;

      if Sender = btnAddConfirmationLink then
      begin
        EmployerID := dtmEntityLoan.qryPersonLoan.FieldByName('EmpID').AsInteger;

        dsEmployer.Close;
        dsEmployer.Parameters[0].Value := EmployerID;
        dsEmployer.Open;

        EmployerName := dsEmployer.FieldByName('EmployerName').AsString;
        TradingName := dsEmployer.FieldByName('TradingName').AsString;
        RegistrationNo := dsEmployer.FieldByName('RegistrationNo').AsString;
      end
      else
      begin
        EmployerID := 0;
        EmployerName := dtmEntityLoan.qryPersonLoan.FieldByName('EmpName').AsString;
        TradingName := dtmEntityLoan.qryPersonLoan.FieldByName('EmpTradingName').AsString;
        RegistrationNo := dtmEntityLoan.qryPersonLoan.FieldByName('EmpRegistrationNo').AsString;
      end;

      dsEmploymentConfirmation.FieldByName('EmployerID').AsInteger := EmployerID;
      dsEmploymentConfirmation.FieldByName('EmployerName').AsString := EmployerName;
      dsEmploymentConfirmation.FieldByName('TradingName').AsString := TradingName;
      dsEmploymentConfirmation.FieldByName('RegistrationNo').AsString := RegistrationNo;

      dsClientAccounts.Parameters[0].Value := CurEntID;
      dsClientAccounts.Open;

      if frmEmploymentConfirmationEdit.ShowModal = mrOK then
        dsEmploymentConfirmation.Post
      else
        dsEmploymentConfirmation.Cancel;
    end;
  finally
    dtmEmployer.dsClientAccounts.Close;
    dtmEmployer.dsEmploymentConfirmation.Close;
    FreeAndNil(frmEmploymentConfirmationEdit);
    FreeAndNil(dtmEmployer);
  end;
end;

procedure TfrmPersonLoan.btnEmploymentConfirmationHistoryClick(
  Sender: TObject);
begin
  inherited;
  frmEmploymentConfirmationHistory := TfrmEmploymentConfirmationHistory.Create(Self);
  try
    frmEmploymentConfirmationHistory.ClientID := CurEntID;
    frmEmploymentConfirmationHistory.ShowModal;
  finally
    FreeAndNil(frmEmploymentConfirmationHistory);
  end;
end;

procedure TfrmPersonLoan.cmbEmpTypeDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Value: String;
begin
  inherited;
  if cmbEmpType.Items.Strings[Index] = 'Pty' then
    Value := 'Private (Pty)'
  else if cmbEmpType.Items.Strings[Index] = 'Ltd' then
    Value := 'Public (Ltd)'
  else if cmbEmpType.Items.Strings[Index] = 'CC' then
    Value := 'Close Corporation (cc)'
  else if cmbEmpType.Items.Strings[Index] = 'Gov' then
    Value := 'Government'
  else if cmbEmpType.Items.Strings[Index] = 'Inc' then
    Value := 'Incorporated'
  else if cmbEmpType.Items.Strings[Index] = 'Int' then
    Value := 'International'
  else if cmbEmpType.Items.Strings[Index] = 'Co-op' then
    Value := 'Co-operative'
  else
    Value := cmbEmpType.Items.Strings[Index];

  cmbEmpType.Canvas.FillRect(Rect);
  cmbEmpType.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1, Value);
end;

procedure TfrmPersonLoan.tsEmpDetShow(Sender: TObject);
begin
  inherited;
  uNoteSys.Connection := dtmMain.dbData;
  uNoteSys.Tablename := 'EntityData';
  uNoteSys.Categories := '110004020';
  uNoteSys.UserID := dtmMain.CurrentID;
  uNoteSys.KeyValue := dtmEntityLoan.qryPersonLoan.FieldByName('EntityID').AsString;
  uNoteSys.RichEdit := rdtEmploymentNotes;
  uNoteSys.DisplayCategory := False;
  DisplayNotes(True);
  tsEmploymentNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmPersonLoan.btnNewNoteAllClick(Sender: TObject);
begin
  inherited;
  NewNote(110004020);
  tsEmploymentNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmPersonLoan.btnEditNoteAllClick(Sender: TObject);
begin
  inherited;
  EditNote(110004020);
end;

end.
