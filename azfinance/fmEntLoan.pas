unit fmEntLoan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, DBCtrls, StdCtrls, DBCGrids, Mask,
  DB, fmEntityDetail, Unit32, ShellAPI, DBHyperLink, ExportData, StrUtils,
  fmEntitySearch, fmEntDetS, Menus, ImgList;
                                                  
type
  TfrmEntLoan = class(TfrmBase)
    btnNewE: TToolButton;
    btnAmdE: TToolButton;
    btnDelE: TToolButton;
    grdLoans: TDBCtrlGrid;
    Label10: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label7: TLabel;
    dbtAmtFin: TDBText;
    dbtPayIns: TDBText;
    dbtStartsdate: TDBText;
    dbtLoanPeriod: TDBText;
    Label2: TLabel;
    lblLoanStatus: TLabel;
    dbtLoanID: TDBText;
    pnlEntDet: TPanel;
    Label11: TLabel;
    lblName2: TLabel;
    dbtCode: TDBText;
    dbtSurname: TDBText;
    Label15: TLabel;
    btnViewE: TToolButton;
    btnNewL: TToolButton;
    btnAmdL: TToolButton;
    lblTel1: TLabel;
    lblTel2: TLabel;
    lblTel3: TLabel;
    lblBank1: TLabel;
    pnlLDS: TPanel;
    Label21: TLabel;
    lblArrearsLabel: TLabel;
    lblArrears: TDBText;
    btnViewLn: TToolButton;
    btnViewNLR: TToolButton;
    edtLoanID: TDBEdit;
    lblLoanCount: TLabel;
    chkHideClose: TCheckBox;
    DBText1: TDBText;
    edtEntityID: TDBEdit;
    Label8: TLabel;
    edtLoanAmount: TDBText;
    Label24: TLabel;
    lblEmployer: TDBText;
    Label16: TLabel;
    lblBranch: TDBText;
    Label25: TLabel;
    chkHideCancel: TCheckBox;
    lblBankBranch: TDBText;
    DBText3: TDBText;
    lblBank: TDBText;
    ToolButton1: TToolButton;
    btnPrint: TToolButton;
    imgDisabledFlag: TImage;
    imgEnabledFlag: TImage;
    Label26: TLabel;
    lblClientStatus: TDBText;
    Label28: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    lblDelinquencyLabel: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    lblDelinquency: TDBText;
    shpStaffStatus: TShape;
    lblStaffMember: TLabel;
    btnDebtReview: TToolButton;
    lblDebtReview: TDBText;
    lblAdminOrder: TDBText;
    btnDebtAdministration: TToolButton;
    Label9: TLabel;
    Label13: TLabel;
    lblTitleGender: TLabel;
    Label22: TLabel;
    lblBankBranch1: TLabel;
    lblBankAccountType1: TLabel;
    lblBankAccountNo1: TLabel;
    lblDebtReviewClient1: TLabel;
    lblAdminOrderClient1: TLabel;
    lblIDNumber: TLabel;
    lblEmail: TDBText;
    lblTelHome: TLabel;
    lblTelWork: TLabel;
    lblTelCell: TLabel;
    lblBankAccountType: TDBText;
    lblBankAccountNo: TLabel;
    imgWarning: TImage;
    imgPass: TImage;
    imgFail: TImage;
    imgQuestion: TImage;
    lblAHVResult: TLabel;
    imgAHVResult: TImage;
    Bevel1: TBevel;
    lblDebtReviewClient: TLabel;
    lblAdminOrderClient: TLabel;
    lblDebtReview1: TLabel;
    lblAdminOrder1: TLabel;
    lblFirstNames: TLabel;
    Label3: TLabel;
    lblLoanType: TDBText;
    lblLastPaid: TDBText;
    ppmPrint: TPopupMenu;
    mniApplicationDetails: TMenuItem;
    PaidupLetter1: TMenuItem;
    EmploymentLetter1: TMenuItem;
    imlClientCategory: TImageList;
    Panel1: TPanel;
    imgClientCategory: TImage;
    lblClientCategory: TDBText;
    lblBook: TDBText;
    mnuAffordabilityEdit: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNewEClick(Sender: TObject);
    procedure btnAmdEClick(Sender: TObject);
    procedure btnDelEClick(Sender: TObject);
    procedure btnViewEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewLClick(Sender: TObject);
    procedure btnAmdLClick(Sender: TObject);
    procedure grdLoansPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure btnViewLnClick(Sender: TObject);
    procedure btnViewNLRClick(Sender: TObject);
    procedure edtLoanIDChange(Sender: TObject);
    procedure chkHideCloseClick(Sender: TObject);
    procedure edtEntityIDChange(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure imgEnabledFlagClick(Sender: TObject);
    procedure imgFlagClick(Sender: TObject);
    procedure btnDebtReviewClick(Sender: TObject);
    procedure lblEmployerClick(Sender: TObject);
    procedure lblBranchClick(Sender: TObject);
    procedure mniApplicationDetailsClick(Sender: TObject);
    procedure ppmPrintPopup(Sender: TObject);
    procedure PaidupLetter1Click(Sender: TObject);
    procedure mnuAffordabilityEditClick(Sender: TObject);
  private
    { Private declarations }
    FEntityLU  : TDataSet;
    RefreshLU : boolean;
    procedure DoEntityDetail(ShowBox :boolean; inID :integer);
    procedure DoNewEntity;
    procedure DoLoanDetail(LoanID :integer; ShowBox :boolean);
    procedure ViewEntity(EntityID: Integer);
    procedure qryEntLoanAfterScroll(DataSet: TDataSet);
    function  ExecuteFile(const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;  public
  public
    { Public declarations }
    procedure SetDBSettings(qryLU :TDataSet; EntType :Integer);
  end;

implementation

uses uBase32, dmMain, dmEntityLoan, fmEntCheck, uConst, dmLS, fmLoanDet,
  uLScentral, uLSConst, fmViewNLR, fmCpyDetail, dmEntity, fmPersonLoan, uBureau,
  fmResultOptions, fmBureau, fmFlagHistory, dmSecurity,fmDebtObligations,
  fmAccountLegalApplication, dmEntRef;

{$R *.DFM}

procedure TfrmEntLoan.SetDBSettings(qryLU: TDataSet;
  EntType: Integer);
begin
  FEntityLU          := qryLU;
  dtmEntityLoan.EntType := EntType;
  if dtmEntityLoan.EntType = CPYType then
    dtmMain.SetCpyQueries(True)
  else
    dtmMain.SetPSNQueries(True);
  dtmLS.qryEntLoan.Open;
end;

procedure TfrmEntLoan.DoNewEntity;
var
  frmEntChk : TfrmEntCheck;

  procedure DestroyObjects;
  begin
    FreeAndNil(frmEntChk);
    FreeAndNil(dtmEntity);
  end;
begin
  dtmEntity := TdtmEntity.Create(Self);
  frmEntChk := TfrmEntCheck.Create(Self);
  frmEntChk.DoEntityCheck(dtmEntityLoan.EntType,False, False);
  dtmEntityLoan.EntType := frmEntChk.EntType;
  if frmEntChk.ModalResult = mrYes then // New entity
  begin
    // if dtmEntityC.AddNewEntity > -1 then // Link an existing entity
    //begin
    RefreshLU := True;
    //dtmEntityC.CompleteNewEnt(frmEntChk.edtRegNo.Text,frmEntChk.edtName.Text,frmEntChk.edtName2.Text);
    dtmEntityLoan.CurID := frmEntChk.ChosenID;
    DestroyObjects;
    dtmMain.CompleteNewEnt(dtmEntityLoan.CurID);
    DoEntityDetail(True,dtmEntityLoan.CurID);
    dtmMain.qryEntID.Requery;
    dtmMain.qryEntID.Locate('EntityID',dtmEntityLoan.CurID,[]);
    //end
  end
  else if frmEntChk.ModalResult = mrOK then
  begin
    dtmEntityLoan.CurID := frmEntChk.ChosenID;
    //dtmEntityLoan.AddRelationship(dtmEntityLoan.CurID,0,dtmEntityLoan.RelID);// Add app relation
    dtmEntityLoan.AddAppRelationship(dtmEntityLoan.CurID, AppID, 0,dtmEntityLoan.RelID);// Add app relation
    dtmMain.qryEntID.Requery;
    RefreshData(FEntityLU);
    FEntityLU.Locate('IdVal',dtmEntityLoan.CurID,[]); // Refresh LU & Locate Ent
    dtmMain.qryEntID.Locate('EntityID',dtmEntityLoan.CurID,[]);
    DestroyObjects;
    DoEntityDetail(True,dtmEntityLoan.CurID); // DoEntDetail
  end
  else
    DestroyObjects;
end;

procedure TfrmEntLoan.DoEntityDetail(ShowBox: boolean; inID: integer);
var
  frmEntDetail : TfrmEntityDetail;
begin
  try
    Screen.Cursor := crHourGlass;
  if dtmEntityLoan.EntType = 1 then
    frmEntDetail := TfrmPersonLoan.Create(nil)
  else
    frmEntDetail := TfrmCpyDetail.Create(nil);
    
  dtmEntityLoan.CurID := inID;
  try
    frmEntDetail.dtsEntity.DataSet := dtmEntityLoan.qryPersonLoan;//dtmEntityLoan.qryEntity;

    frmEntDetail.DBName := dtmMain.dbData.ConnectionString;
    if not ShowBox then
      frmEntDetail.ShowBoxes(ShowBox);
    if dtmEntityLoan.EntType = 1 then
      TfrmPersonLoan(frmEntDetail).CreatePersonLoan
    else
      TfrmCpyDetail(frmEntDetail).CreateCompanyLoan;
    frmEntDetail.CurrentDts := dtmEntityLoan.dtsPersonLoan;
    frmEntDetail.ShowModal;
  finally
    frmEntDetail.Free;
  end;
  if RefreshLU then  // to slow ShowBox then // if user amend data then refresh query
  begin
    RefreshLU := False;
    RefreshData(FEntityLU);
    FEntityLU.Locate('IDVal',dtmEntityLoan.CurID,[]);
  end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmEntLoan.FormCreate(Sender: TObject);
begin
  inherited;
  dtmEntityLoan := TdtmEntityLoan.Create(Self);
  chkHideCloseClick(chkHideClose);
  qryEntLoanAfterScroll(dtmLS.qryEntLoan);
  dtmLS.qryEntLoan.AfterScroll := qryEntLoanAfterScroll;
  btnPrint.Visible := dtmSecurity.AllowAccess(263);
end;

procedure TfrmEntLoan.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmLS.qryEntLoan.AfterScroll := nil;
  dtmLS.qryEntLoan.Close;
  dtmEntityLoan.Free;
  dtmEntityLoan := nil;
end;

procedure TfrmEntLoan.FormShow(Sender: TObject);
begin
  inherited;
  RefreshLU := False;
  grdLoans.Color := clBtnFace;// dtmMain.GrdColor;
  grdLoans.SelectedColor := clBtnHighlight;//dtmMain.OddGrdColor;
  pnlLDS.Color := dtmMain.RecBarColor;
end;

procedure TfrmEntLoan.btnNewEClick(Sender: TObject);
begin
  inherited;
  DoNewEntity;
end;

procedure TfrmEntLoan.btnAmdEClick(Sender: TObject);
begin
  inherited;
//  DoEntityDetail(True,FEntityLU.FieldByName('IdVal').AsInteger);
  dtmEntityLoan.EntType := dtmMain.qryEntDet.FieldByName('EntType').AsInteger;
  DoEntityDetail(True,dtmMain.qryEntID.FieldByName('EntityID').AsInteger);
  RequeryOnRecord(dtmMain.qryEntDet,'EntityID');
end;

procedure TfrmEntLoan.btnDelEClick(Sender: TObject);
begin
  inherited;
//  if MesDlg('Delete '+FEntityLU.FieldByName('Name').AsString+' ?','C') = mrYes then
  if MesDlg('Delete '+dtmMain.qryEntID.FieldByName('Name').AsString+' ?','C') = mrYes then
  begin
//    dtmMain.DeleteEntity(FEntityLU.FieldByName('IDVal').AsString);
//    dtmMain.RefreshData(FEntityLU);
//    dtmMain.RefreshData(FEntAddQry);
  end;
end;

procedure TfrmEntLoan.btnViewEClick(Sender: TObject);
begin
  inherited;
//  DoEntityDetail(False,FEntityLU.FieldByName('IdVal').AsInteger);
  dtmEntityLoan.EntType := dtmMain.qryEntDet.FieldByName('EntType').AsInteger;
  DoEntityDetail(False,dtmMain.qryEntID.FieldByName('EntityID').AsInteger);
end;

procedure TfrmEntLoan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dtmEntityLoan.EntType = CPYType then
    dtmMain.SetCpyQueries(False)
  else
    dtmMain.SetPSNQueries(False);
end;

procedure TfrmEntLoan.btnNewLClick(Sender: TObject);
begin
  inherited;
  dtmLS.qryEntLoan.Last;
  if (dtmLS.qryEntLoan.FieldByName('LoanID').IsNull) or
   (not (dtmLS.qryEntLoan.FieldByName('Status').AsInteger in
     [lnsInActive,lnsApproved,lnsPreApproved,lnsActPay,lnsActImex])) then
  begin
    DoLoanDetail(-1,True); // new loan -1
  end
  else
    MesDlg('Cannot create new loan, amend last loan','E');
end;

procedure TfrmEntLoan.btnAmdLClick(Sender: TObject);
begin
  inherited;
  if not dtmLS.qryEntLoan.FieldByName('LoanID').IsNull then
  begin
    DoLoanDetail(dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger,True);
  end
  else
    MesDlg('Cannot amend no loan, create new loan first','E');
end;

procedure TfrmEntLoan.DoLoanDetail(LoanID :integer; ShowBox :boolean);
var
  frmLoanDetail : TfrmLoanDet;
begin
  Screen.Cursor := crHourGlass;
  frmLoanDetail := TfrmLoanDet.Create(nil);

  try
      if(ShowBox) then
      begin
      frmLoanDetail.isAmd := True;
      end
        else
          begin
          frmLoanDetail.isAmd := False;
          end ;

    frmLoanDetail.OnlyRead := not ShowBox;
    if not ShowBox then // if true do not run procedure

      frmLoanDetail.ShowBoxes(ShowBox);
    frmLoanDetail.LoanID := LoanID;
    frmLoanDetail.SetScreenLbls;

    frmLoanDetail.ShowModal;
    RequeryOnRecord(dtmLS.qryEntLoan,'LoanID');
    edtLoanIDChange(edtLoanID);

  finally
    Screen.Cursor := crDefault;
    frmLoanDetail.Free;
  end;
end;

procedure TfrmEntLoan.grdLoansPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  inherited;
  if dtmLS.qryEntLoan.FieldByName('LoanID').IsNull then
  begin
    lblLoanStatus.Caption := '';
    lblLoanStatus.Color := grdLoans.SelectedColor;
  end
  else
  begin
    lblLoanStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
    lblLoanStatus.Color   := ColorLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
  end;

  if dtmLS.qryEntLoan.FieldByName('Delinquency').AsInteger > 0 then
  begin
    lblArrears.Font.Color := clRed;
    lblArrearsLabel.Font.Color := clRed;
    lblDelinquency.Font.Color := clRed;
    lblDelinquencyLabel.Font.Color := clRed;
  end
  else
  begin
    lblArrears.Font.Color := clBlack;
    lblArrearsLabel.Font.Color := clNavy;
    lblDelinquency.Font.Color := clBlack;
    lblDelinquencyLabel.Font.Color := clNavy;
  end;

  if dtmLS.qryEntLoan.FieldByName('FlagEnabled1').AsBoolean then
  begin
    lblDebtReview1.Font.Color := clRed;
    lblDebtReview.Font.Color := clRed;
  end
  else
  begin
    lblDebtReview1.Font.Color := clNavy;
    lblDebtReview.Font.Color := clBlack;
  end;

  if dtmLS.qryEntLoan.FieldByName('FlagEnabled2').AsBoolean then
  begin
    lblAdminOrder1.Font.Color := clRed;
    lblAdminOrder.Font.Color := clRed;
  end
  else
  begin
    lblAdminOrder1.Font.Color := clNavy;
    lblAdminOrder.Font.Color := clBlack;
  end;
end;

procedure TfrmEntLoan.btnViewLnClick(Sender: TObject);
begin
  inherited;
  DoLoanDetail(dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger,False);
end;

procedure TfrmEntLoan.btnViewNLRClick(Sender: TObject);
{var
  frmViewNLR : TfrmViewNLR;
begin
  inherited;
  frmViewNLR := TfrmViewNLR.Create(nil);
  try
    frmViewNLR.LoadNLRClient(dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger);
  finally
   frmViewNLR.Free;
  end;}
var
  QueryMask : String;
begin
  inherited;
  try
    dtmMain.qryViewBureau.Parameters[0].Value := dtmMain.qryEntDet.FieldByName('EntityID').AsInteger;
    dtmMain.qryViewBureau.Open;
    QueryMask := '';
    case dtmMain.qryViewBureau.FieldByName('EnqType').AsInteger of
      CCEnq        : QueryMask := 'CC';
      NLREnq       : QueryMask := 'NLR';
      ExperianEnq  : QueryMask := 'CON';
      CSNLREnq, CSExperianEnq, NLRExperian:
        begin
          frmResultOptions := frmResultOptions.Create(Self);
          try
            frmResultOptions.Showmodal;
          finally
            frmResultOptions.Free;
          end;
        end;
    end;
    {if QueryMask <> '' then
      OpenEnqResult(dtmMain.qryEntDet.FieldByName('RegNo').Asstring,
        dtmMain.qryEntDet.FieldByName('EntCode').Asstring, QueryMask,
        FormatDateTime('ddmmyyyy', dtmMain.qryViewBureau.fieldbyname('EnqDate').AsDateTime),
      dtmBureau.qryEnqHistory.FieldByName('TransNo').AsInteger,
      dtmBureau.qryEnqHistory.FieldByName('LoanID').AsInteger);   }
  finally
    dtmMain.qryViewBureau.Close;
  end;
end;

procedure TfrmEntLoan.edtLoanIDChange(Sender: TObject);
begin
  inherited;
  btnDebtReview.Visible := not dtmLS.qryEntLoan.FieldByName('DebtReviewDate').IsNull;
  btnDebtAdministration.Visible := not dtmLS.qryEntLoan.FieldByName('AdminDate').IsNull;

  Self.Realign;
end;

procedure TfrmEntLoan.chkHideCloseClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;

    if chkHideClose.Checked then
      dtmLS.qryEntLoan.Parameters.ParamByName('prClose').Value := lnsClose
    else
      dtmLS.qryEntLoan.Parameters.ParamByName('prClose').Value := -1;

    if chkHideCancel.Checked then
    begin
      dtmLS.qryEntLoan.Parameters.ParamByName('prCancel').Value := lnsCancelled;
      dtmLS.qryEntLoan.Parameters.ParamByName('prDecline').Value := lnsDeclined;
    end
    else
    begin
      dtmLS.qryEntLoan.Parameters.ParamByName('prCancel').Value := -1;
      dtmLS.qryEntLoan.Parameters.ParamByName('prDecline').Value := -1;
    end;

    if dtmLS.qryEntLoan.Active then
      dtmLS.qryEntLoan.Requery
    else
      dtmLS.qryEntLoan.Open;

    edtLoanIDChange(edtLoanID);
  finally
    Screen.Cursor := crDefault;
  end
end;

procedure TfrmEntLoan.edtEntityIDChange(Sender: TObject);
var
  ClosedCount: Integer;
  DeclinedCount: Integer;
  CancelledCount: Integer;
  CanView: Boolean;
  IDNumber: String;
  TelHome: String;
  TelWork: String;
  TelCell: String;
  BankAccountNo: String;
  Title: String;
  Gender: String;
  AHVResult: Integer;
  AHVResultMessage: String;
  AHVImage: TIcon;
  DebtReviewFlag: String;
  AdminOrderFlag: String;
  Name: String;
  SecondName: String;
  ClientCategoryID: Integer;
  ClientBMP: TBitmap;
begin
  CanView := True;

  IDNumber := dtmMain.qryEntDet.FieldByName('RegNo').AsString;
  TelHome := dtmMain.qryEntDet.FieldByName('TelNo1').AsString;
  TelWork := dtmMain.qryEntDet.FieldByName('TelNo2').AsString;
  TelCell := dtmMain.qryEntDet.FieldByName('TelNo3').AsString;
  BankAccountNo := dtmMain.qryEntDet.FieldByName('AccNo').AsString;
  Title := dtmMain.qryEntDet.FieldByName('Title').AsString;        
  Gender := dtmMain.qryEntDet.FieldByName('Gender').AsString;
  Name := dtmMain.qryEntDet.FieldByName('Name').AsString;
  SecondName := dtmMain.qryEntDet.FieldByName('SecondName').AsString;
  ClientCategoryID := dtmMain.qryEntDet.FieldByName('ClientCategoryID').AsInteger;

  ClientBMP := TBitmap.Create;
  if imlClientCategory.GetBitmap(ClientCategoryID - 1, ClientBMP) then
    imgClientCategory.Picture.Bitmap := ClientBMP
  else
    imgClientCategory.Picture.Bitmap := nil;

  FreeAndNil(ClientBMP);

  if dtmMain.qryEntDet.FieldByName('AHVResult').IsNull then
    AHVResult := 99
  else
    AHVResult := dtmMain.qryEntDet.FieldByName('AHVResult').AsInteger;

  if dtmMain.qryEntDet.FieldByName('DebtReviewFlag').IsNull then
  begin
    DebtReviewFlag := 'None';
    lblDebtReviewClient1.Font.Color := clNavy;
    lblDebtReviewClient.Font.Color := clBlack;
  end
  else
  begin
    if dtmMain.qryEntDet.FieldByName('DebtReviewFlag').AsBoolean then
      DebtReviewFlag := 'Active'
    else
      DebtReviewFlag := 'Not Active';

    lblDebtReviewClient1.Font.Color := clRed;
    lblDebtReviewClient.Font.Color := clRed;
  end;

  if dtmMain.qryEntDet.FieldByName('AdminOrderFlag').IsNull then
  begin
    AdminOrderFlag := 'None';
    lblAdminOrderClient1.Font.Color := clNavy;
    lblAdminOrderClient.Font.Color := clBlack;
  end
  else
  begin
    if dtmMain.qryEntDet.FieldByName('AdminOrderFlag').AsBoolean then
      AdminOrderFlag := 'Active'
    else
      AdminOrderFlag := 'Not Active';

    lblAdminOrderClient1.Font.Color := clRed;
    lblAdminOrderClient.Font.Color := clRed;
  end;

  if dtmMain.qryEntDet.FieldByName('ClientStatusDefault').AsBoolean or dtmMain.qryEntDet.FieldByName('ClientStatusDefault').IsNull then
    lblClientStatus.Font.Color := clBlack
  else
    lblClientStatus.Font.Color := clRed;


  lblIDNumber.Caption := LeftStr(IDNumber, 6) + ' ' + MidStr(IDNumber, 7, 4) + ' ' + MidStr(IDNumber, 11, 3);
  lblTelHome.Caption := LeftStr(TelHome, 3) + ' ' + MidStr(TelHome, 4, 3) + ' ' + MidStr(TelHome, 7, 4);
  lblTelWork.Caption := LeftStr(TelWork, 3) + ' ' + MidStr(TelWork, 4, 3) + ' ' + MidStr(TelWork, 7, 4);
  lblTelCell.Caption := LeftStr(TelCell, 3) + ' ' + MidStr(TelCell, 4, 3) + ' ' + MidStr(TelCell, 7, 4);
  lblBankAccountNo.Caption := LeftStr(BankAccountNo, 3) + ' ' + MidStr(BankAccountNo, 4, 3) + ' ' +
    MidStr(BankAccountNo, 7, 3) + ' ' + MidStr(BankAccountNo, 10, Length(BankAccountNo));
  lblTitleGender.Caption := Title + ' / ' + Gender;
  lblFirstNames.Caption := Name + ' ' + SecondName;
  lblDebtReviewClient.Caption := DebtReviewFlag;
  lblAdminOrderClient.Caption := AdminOrderFlag;

  case AHVResult of
    -1: AHVImage := imgQuestion.Picture.Icon;
    0: AHVImage := imgFail.Picture.Icon;
    1: AHVImage := imgPass.Picture.Icon;
    2: AHVImage := imgWarning.Picture.Icon;
    else
      AHVImage := nil;
  end;

  case AHVResult of
    -1: AHVResultMessage := 'No AHV';
    0: AHVResultMessage := 'AHV Failed';
    1: AHVResultMessage := 'AHV Passed';
    2: AHVResultMessage := 'AHV Passed with Warnings';
    else
      AHVImage := nil;
  end;

  if AHVResult = 0 then
  begin
    lblBank1.Font.Color := clRed;
    lblBankBranch1.Font.Color := clRed;
    lblBankAccountType1.Font.Color := clRed;
    lblBankAccountNo1.Font.Color := clRed;

    lblBank.Font.Color := clRed;
    lblBankBranch.Font.Color := clRed;
    lblBankAccountType.Font.Color := clRed;
    lblBankAccountNo.Font.Color := clRed;
  end
  else
  begin
    lblBank1.Font.Color := clNavy;
    lblBankBranch1.Font.Color := clNavy;
    lblBankAccountType1.Font.Color := clNavy;
    lblBankAccountNo1.Font.Color := clNavy;

    lblBank.Font.Color := clBlack;
    lblBankBranch.Font.Color := clBlack;
    lblBankAccountType.Font.Color := clBlack;
    lblBankAccountNo.Font.Color := clBlack;
  end;

  lblAHVResult.Caption := AHVResultMessage;
  imgAHVResult.Picture.Icon := AHVImage;

  if dtmMain.qryEntDet.FieldByName('IsStaff').AsBoolean then
  begin
    shpStaffStatus.Brush.Color := $00FFE7CE;
    lblStaffMember.Caption := 'Staff Member';

    CanView := dtmSecurity.AllowAccess(78);
  end
  else
  begin
    shpStaffStatus.Brush.Color := clBtnFace;
    lblStaffMember.Caption := '';
  end;

  if CanView then
  begin
    dtmLS.qryEntLoan.Filter := '';
    dtmLS.qryEntLoan.Filtered := False;

    ClosedCount := dtmLS.NumOfStatusLoans(dtmMain.qryEntDet.FieldByName('EntityID').AsInteger, lnsClose);
    CancelledCount := dtmLS.NumOfStatusLoans(dtmMain.qryEntDet.FieldByName('EntityID').AsInteger, lnsCancelled);
    DeclinedCount := dtmLS.NumOfStatusLoans(dtmMain.qryEntDet.FieldByName('EntityID').AsInteger, lnsDeclined);
  end
  else
  begin
    dtmLS.qryEntLoan.Filter := 'EntityID = 0';
    dtmLS.qryEntLoan.Filtered := True;

    ClosedCount := 0;
    DeclinedCount := 0;
    CancelledCount := 0;
  end;

  chkHideClose.Caption := 'Hide Closed (' + IntToStr(ClosedCount) + ')';
  chkHideCancel.Caption := 'Hide Cancelled/Declined (' + IntToStr(DeclinedCount + CancelledCount) + ')';
end;

procedure TfrmEntLoan.ToolButton1Click(Sender: TObject);
begin
  inherited;
  frmBureau := TfrmBureau.Create(Self);
  frmBureau.EntityID := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
  try
    frmBureau.ShowModal;
  finally
    FreeAndNil(frmBureau);
  end;
end;

procedure TfrmEntLoan.btnPrintClick(Sender: TObject);
begin
  inherited;
  ppmPrint.Popup(btnPrint.ClientOrigin.X, btnPrint.ClientOrigin.Y);
end;

procedure TfrmEntLoan.imgEnabledFlagClick(Sender: TObject);
begin
  inherited;
ShowMessage(IntToStr(grdLoans.PanelIndex));
end;

procedure TfrmEntLoan.imgFlagClick(Sender: TObject);
begin
  inherited;
  frmFlagHistory := TfrmFlagHistory.Create(Self);
  try
    frmFlagHistory.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    if frmFlagHistory.ShowModal = mrOK then
      RequeryOnRecord(dtmLs.qryEntLoan, 'LoanID');
  finally
    FreeAndNil(frmFlagHistory);
  end;
end;

procedure TfrmEntLoan.btnDebtReviewClick(Sender: TObject);
var
  TypeID: Integer;
begin
  inherited;
  frmAccountLegalApplication := TfrmAccountLegalApplication.Create(Self);
  try
    if Sender = btnDebtReview then
      TypeID := 1
    else
      TypeID := 2;

    frmAccountLegalApplication.TypeID := TypeID;
    frmAccountLegalApplication.AccountID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    frmAccountLegalApplication.ShowModal;
  finally
    FreeAndNil(frmAccountLegalApplication);
  end;
end;

procedure TfrmEntLoan.ViewEntity(EntityID: Integer);
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
      frmEntRef.ShowBoxes(True);
      frmEntRef.ShowModal;
    end;
  finally
    frmEntRef.Free;
    //
    dtmEntRef.Free;
    dtmEntRef := nil;
  end;
end;

procedure TfrmEntLoan.lblEmployerClick(Sender: TObject);
begin
  inherited;
  ViewEntity(dtmMain.qryEntDet.FieldByName('EmployerID').AsInteger);
end;

procedure TfrmEntLoan.lblBranchClick(Sender: TObject);
begin
  inherited;       
  ViewEntity(dtmMain.qryEntDet.FieldByName('EmployerBranchID').AsInteger);
end;

procedure TfrmEntLoan.ppmPrintPopup(Sender: TObject);
begin
  inherited;
  mniApplicationDetails.Enabled := dtmLS.qryEntLoan.FieldByName('HostID').AsInteger = 2; //*** BOODLE
end;



procedure TfrmEntLoan.qryEntLoanAfterScroll(DataSet: TDataSet);
begin
  mnuAffordabilityEdit.Visible := false;  //default
  if dtmLS.qryEntLoan.FieldByName('HostId').AsInteger = 2 then
  begin
    with dtmLs.qryIndemnityPDF do
    begin
      Close;
      Parameters.ParamValues['LoanId'] := dtmLS.qryEntLoan.FieldByName('LoanId').AsInteger;
      Open;

      dtmLs.qryLoanQuote.Close;
      dtmLs.qryLoanQuote.Parameters.ParamValues['LoanId'] := dtmLS.qryEntLoan.FieldByName('LoanId').AsInteger;
      dtmLs.qryLoanQuote.Open;

      if ((dtmLs.qryIndemnityPDF.RecordCount > 0) and
          (dtmLs.qryLoanQuote.FieldByName('QuoteCount').AsInteger > 0)) then
         mnuAffordabilityEdit.Visible := true;
    end;
  end;
end;

function TfrmEntLoan.ExecuteFile(const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
var
  szFileName: array[0..300] of Char;
//  szParams, szDir: array[0..79] of Char;
begin
  Result := ShellExecute(Self.Handle, nil,
    StrPCopy(szFileName, FileName), nil,
    nil, ShowCmd);
end;


procedure TfrmEntLoan.mnuAffordabilityEditClick(Sender: TObject);
var
  Field: TBlobField;
  FS: TFileStream;
  Stream: TStream;
  FileName: string;
begin
  inherited;
  dtmLs.qryIndemnityPDF.Close;
  dtmLs.qryIndemnityPDF.Parameters.ParamValues['LoanId'] := dtmLS.qryEntLoan.FieldByName('LoanId').AsInteger;
  dtmLs.qryIndemnityPDF.Open;

  dtmLs.qryLoanQuote.Close;
  dtmLs.qryLoanQuote.Parameters.ParamValues['LoanId'] := dtmLS.qryEntLoan.FieldByName('LoanId').AsInteger;
  dtmLs.qryLoanQuote.Open;

  if ((dtmLs.qryIndemnityPDF.RecordCount > 0) and
     (dtmLs.qryLoanQuote.FieldByName('QuoteCount').AsInteger > 0)) then
  begin
    Field := TBlobField(dtmLs.qryIndemnityPDF.FieldByName('PdfReport'));
    Stream := dtmLs.qryIndemnityPDF.CreateBlobStream(Field, bmRead);
    FileName := TempFolder + dtmLs.qryEntLoan.FieldByName('LoanId').AsString + ' ' + formatDateTime('hhmmss', now) + '.pdf';
    FS := TFileStream.Create(FileName, fmCreate or fmShareExclusive);
    try
      FS.CopyFrom(Stream, Stream.Size);
    finally
      Stream.Free;
      Fs.Free;
    end;
    ExecuteFile(FileName, '', '', SW_Normal);
  end;
end;

procedure TfrmEntLoan.mniApplicationDetailsClick(Sender: TObject);
begin
  dmMain.ShowSqlReport('BoodleApplication', '&AccountID=' + dtmLS.qryEntLoan.FieldByName('LoanID').AsString);
end;

procedure TfrmEntLoan.PaidupLetter1Click(Sender: TObject);
begin
  dmMain.ShowSqlReport('rptPaidUpLetter_V3Boodle', dtmLS.qryEntLoan.FieldByName('LoanID').AsString);
end;

end.
