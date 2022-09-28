{azFinance - B.OS}

unit fmMain;


{===============================================================================
 Author  : Wicus Botha
 Date    : 01/07/2000
 Unit    : Main Form, with skeleton of OUTLOOK, look and feel.
           1.  Normal menu on top.
           2.  Function toolbar on top.
           3.  Menu panels on left, menu panel will be parented on to this main
               menu panel.
           4.  Info bar below function toolbar.
           5.  Main panel, for form to be loaded into.
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ToolWin, ComCtrls, Menus, Buttons, Unit32, uModcom,
  pbBackGround, fmDefaults, fmLookUp, uGTKey, ShellApi, Inifiles,
  ShlObj, ConnectionStringBuilder, AutoCursor;

type
  TfrmMain = class(TForm)
    pnlFix: TPanel;
    pnlMain: TPanel;
    cbMenu: TComboBox;
    pnlCurFrm: TPanel;
    bgMain: TpbBackGround;
    mMenu: TMainMenu;
    File1: TMenuItem;
    mmChangeLogin: TMenuItem;
    mmChangePass: TMenuItem;
    mmExit: TMenuItem;
    Help1: TMenuItem;
    mmMainHelp: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    lblUser: TLabel;
    lblMonthE: TLabel;
    RefreshDB1: TMenuItem;
    MainMenu2: TMenuItem;
    Transactions1: TMenuItem;
    Reports1: TMenuItem;
    Person1: TMenuItem;
    ClientLoans1: TMenuItem;
    Clientaccount1: TMenuItem;
    Loanaccount1: TMenuItem;
    Loancontract1: TMenuItem;
    Depositaccount1: TMenuItem;
    Batches1: TMenuItem;
    Acceptbatch1: TMenuItem;
    Historybatches1: TMenuItem;
    Processerrors1: TMenuItem;
    Batchviewer1: TMenuItem;
    GLReports1: TMenuItem;
    MEReports1: TMenuItem;
    Loansummary1: TMenuItem;
    Depositsummary1: TMenuItem;
    Letters1: TMenuItem;
    Bulkletters1: TMenuItem;
    Bulkstatements1: TMenuItem;
    Notesdiary1: TMenuItem;
    GLreports2: TMenuItem;
    Transactiondetail1: TMenuItem;
    Estimatedinttodate1: TMenuItem;
    MEreports2: TMenuItem;
    Transsummary1: TMenuItem;
    Graphs1: TMenuItem;
    Defaults1: TMenuItem;
    LoanManager1: TMenuItem;
    Graphs2: TMenuItem;
    YMdetail1: TMenuItem;
    Decisioncube1: TMenuItem;
    Defaultsetup1: TMenuItem;
    Loanviewer1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    LoanBook1: TMenuItem;
    BatchQuery1: TMenuItem;
    NotesDiary2: TMenuItem;
    CoolBar1: TCoolBar;
    tbMain: TToolBar;
    btnFindP: TToolButton;
    btnFindC: TToolButton;
    btnFindL: TToolButton;
    btnSpacer3: TToolButton;
    btnPreview: TToolButton;
    btnPrint: TToolButton;
    btnSpacer2: TToolButton;
    btnNotes: TToolButton;
    btnSpacer1: TToolButton;
    btnHelp: TToolButton;
    btnExit: TToolButton;
    btnSpacer4: TToolButton;
    Tools1: TMenuItem;
    Options1: TMenuItem;
    ScrollBox1: TScrollBox;
    pnlMainMenu: TPanel;
    btnClients: TSpeedButton;
    btnLoanCt: TSpeedButton;
    btnLoanAcc: TSpeedButton;
    btnAccount: TSpeedButton;
    btnLoanCon: TSpeedButton;
    btnDepAcc: TSpeedButton;
    pnlTrans: TPanel;
    btnBatch: TSpeedButton;
    btnPostBatch: TSpeedButton;
    btnSAllocate: TSpeedButton;
    pnlBQuery: TPanel;
    btnHisBatch: TSpeedButton;
    btnProcErr: TSpeedButton;
    btnBatchView: TSpeedButton;
    pnlReport: TPanel;
    btnLSum: TSpeedButton;
    btnDSum: TSpeedButton;
    btnLetter: TSpeedButton;
    btnBulkStm: TSpeedButton;
    btnBulkLet: TSpeedButton;
    pnlGLRep: TPanel;
    btnGLReport: TSpeedButton;
    btnTransDet: TSpeedButton;
    btnIntToDate: TSpeedButton;
    pnlMESum: TPanel;
    btnMERep: TSpeedButton;
    btnTsum: TSpeedButton;
    btnLoanBook: TSpeedButton;
    pnlLoanMan: TPanel;
    btnLoanView: TSpeedButton;
    btnNotesDiary: TSpeedButton;
    btnBulkUpdate: TSpeedButton;
    pnlDefaults: TPanel;
    btnDefSet: TSpeedButton;
    tmRE: TTimer;
    SpeedButton1: TSpeedButton;
    btnMyWork: TToolButton;
    btnSettlements: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnCommunications: TToolButton;
    ppmCommunications: TPopupMenu;
    SendSMS1: TMenuItem;
    SendLetter1: TMenuItem;
    SpeedButton3: TSpeedButton;
    btnTracerReport: TSpeedButton;
    btnSettlementQuotes: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCloseformClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure cbMenuChange(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mmMainClick(Sender: TObject);
    procedure mmMainHelpClick(Sender: TObject);
    procedure mmChangeLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDefSetClick(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure mmChangePassClick(Sender: TObject);
    procedure btnClientsClick(Sender: TObject);
    procedure btnSuppliersClick(Sender: TObject);
    procedure btnFindPClick(Sender: TObject);
    procedure btnBatchClick(Sender: TObject);
    procedure btnPostBatchClick(Sender: TObject);
    procedure btnAccountClick(Sender: TObject);
    procedure btnLoanAccClick(Sender: TObject);
    procedure btnLoanCtClick(Sender: TObject);
    procedure btnDepAccClick(Sender: TObject);
    procedure btnHisBatchClick(Sender: TObject);
    procedure btnProcErrClick(Sender: TObject);
    procedure btnBatchViewClick(Sender: TObject);
    procedure btnLSumClick(Sender: TObject);
    procedure btnDSumClick(Sender: TObject);
    procedure btnLetterClick(Sender: TObject);
    procedure btnBulkLetClick(Sender: TObject);
    procedure btnBulkStmClick(Sender: TObject);
    procedure btnNotesDiaryClick(Sender: TObject);
    procedure btnMERepClick(Sender: TObject);
    procedure btnTsumClick(Sender: TObject);
    procedure btnGLReportClick(Sender: TObject);
    procedure btnTransDetClick(Sender: TObject);
    procedure btnIntToDateClick(Sender: TObject);
    procedure btnCubeClick(Sender: TObject);
    procedure btnLoanCClick(Sender: TObject);
    procedure btnLoanViewClick(Sender: TObject);
    procedure btnNotesClick(Sender: TObject);
    procedure RefreshDB1Click(Sender: TObject);
    procedure btnLoanConClick(Sender: TObject);
    procedure tmRETimer(Sender: TObject);
    procedure btnFindLClick(Sender: TObject);
    procedure btnFindCClick(Sender: TObject);
    procedure btnBuildSmsClick(Sender: TObject);
    procedure btnSendSMSClick(Sender: TObject);
    procedure btnSMSHisotoryClick(Sender: TObject);
    procedure btnLoanBookClick(Sender: TObject);
    procedure btnSAllocateClick(Sender: TObject);
    procedure btnBulkUpdateClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CurrentWorkspace1Click(Sender: TObject);
    procedure MenusTools1Click(Sender: TObject);
    procedure SecuritySetup1Click(Sender: TObject);
    procedure Options1Click(Sender: TObject);
    function FreeCurrentForm:boolean;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnMyWorkClick(Sender: TObject);
    procedure btnSettlementsClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SendSMS1Click(Sender: TObject);
    procedure btnCommunicationsClick(Sender: TObject);
    procedure SendLetter1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnTracerReportClick(Sender: TObject);
    procedure btnSettlementQuotesClick(Sender: TObject);
  private
    { Private declarations }
    CurrentForm : TForm;
    CurrentMenuPanel : TPanel;
    CurrentHelpID : integer;
    ReportIndex   : integer;
    MenuPnlColor  : TColor;
    frmLookUp : TfrmLookUp;
//    function CheckAppKey(ShowMes: boolean): boolean;
    procedure LoadForm(TfrmToLoad: TFormClass; RepIndex, HlpIndex, IntValue1:integer); overload;
    procedure LoadForm(TfrmToLoad: TFormClass; RepIndex, HlpIndex: integer); overload;
    procedure SetPanelMenu(pnlToSet : TPanel);
    procedure TileMainPanel;
    procedure DoLoginUser;
    procedure OnMessage(var Msg: TMsg; var Handled: Boolean);
    procedure FindLoan;
  public
    { Public declarations }
    procedure WndProc(var TheMsg: TMessage); override;
  end;

var
  frmMain: TfrmMain;

implementation

uses dmMain, uBase32, uReports, uConst, uGTcentral, dmSecFrm, fmEntLoan,
  fmBatch, fmBatchPost, fmClientAcc, fmLoanAcc, fmDepAcc, fmBatchQuery,
  fmBatchView, fmGLReport, fmGLTransDet, fmRepLSum,
  fmIntToDate, fmTransSum, fmMeSum, fmRepDSum, fmLetter, fmLoanView, fmEntNote,
  fmNoteDiary, fmBulkStatement, fmBulkLet, fmLoanCons, fmRemind, fmNotes,
  dmNotes, dmNLR, fmLoanBook, fmSuspAllocate, dmBatchSusp, fmBulkUpd,
  fmClientLoans, fmOptions, fmLoanBook2, fmSettlements, fmSMSWizard, fmLoanAgeing,
  fmPrintLetter, DB, fmLoanEnquiry, fmMyWork, fmLoanAccount, fmLoanHeader,
  fmLoanSummary, fmSend, dmLS, dmSecurity, fmLookupLoan;

{$R *.DFM}

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  CS: TConnectionStringBuilder;
begin
  CS := TConnectionStringBuilder.Create;
  try
    Cs.ConnectionString := dtmMain.ConnectionString;
    Caption := Caption + '                                    ['+ CS.DataSource + '- '+ CS.InitialCatalog + ']                     Version 2.3.4.19';
  finally
    CS.Free;
  end;
  ReadFormDefaults(Self, PersonalFolder + '\' + StoreDef);
  tmRE.Enabled := True;
//  if not Assigned(frmLookupLoan) then FindLoan;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmRE.Enabled := False;
//  frmLookUp.Free;
//  frmLookUp := nil;
  {if WindowState <> wsMaximized then
    WriteMainFrmPos(StoreDef);}
  WriteFormDefaults(Self, PersonalFolder + '\' + StoreDef);
end;

procedure TfrmMain.DoLoginUser;
begin
  LoginForm(15,130,-100,-100,110,185,350,260,-100,-100,version,clBlack,clNavy);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  appVersion: string;
  SecForm: TForm;
begin
  //CheckAppKey(False);
  CreateWinMessage;
  Application.OnMessage := OnMessage;
  TileMainPanel;
  RunCreateForm(cbMenu);
  dtmMain.SetHomeLogin;

   dtmMain.qryVersion.Open();
  appVersion := dtmMain.qryVersion.FieldByName('Version').AsString;
  if  appVersion <>  '2.3.4.19' then
      begin
          MessageDlg('Wrong version detected. Please update AzFinance via EasyUpdate', mtInformation, [mbOK], 0)  ;
         Application.Terminate();
      end
  else
   begin
      Self.Caption := Self.Caption +' - '+ dtmMain.SysCpyName;
      //  SetApplicationHelpFile(AppDir + ExtractFileName(ParamStr(0)));
      SetApplicationHelpFile(AppDir + ExtractFileName(Application.ExeName));

      dtmSecurity := TdtmSecurity.Create(nil);

      lblUser.Caption := 'Username:  ' + dtmMain.CurrentID + ' ';
      if dtmSecurity.RoleID > 0 then
          lblUser.Caption := lblUser.Caption + '[' + dtmSecurity.Role + '] ';

      lblUser.Caption := lblUser.Caption + '[' + dtmMain.DepartmentName + '] ';
      dtmSecFrm.GTAppID := AppID;
      dtmMain.SetLUData(True);
      frmLookUp := TfrmLookUp.Create(Self);
      dtmMain.SetGrdColors(frmLookUp.grdLookup);
      lblMonthE.Caption := 'Current month end = '+DateToStr(dtmMain.CurME);
      VarList := TStringList.Create;
      VarList.Add('LoanID=0');
      VarList.Add('ConnectionString=' + dtmMain.dbData.ConnectionString);
      VarList.Add('ReadOnly=0');
      VarList.Add('UserID=' + dtmMain.CurrentID);

      //  dtmSecurity := TdtmSecurity.Create(Self);
      //  dtmSecurity.SetSecurityControls(Self);
      SecForm := frmMain;
      dtmSecFrm.SetForm(SecForm);

      InitializeModule(ApplName, PersonalFolder);
      dtmMain.GetSqlReportsConfig;
  end;
end;

{WB 28/01/2000 ---------- LOAD FORMS begin -----------------------------}
procedure TfrmMain.TileMainPanel;
var
  Ini : TIniFile;
begin
  Ini := TIniFile.Create(StoreDef);
  try
    dtmMain.BackGroundSrc := Ini.ReadString('Defaults','BackGround','');
    //Paint Main toolbar
    bgMain.SourceDir    := dtmMain.BackGroundSrc;
    bgMain.Active       := True;
    pnlCurFrm.Color     := StringToColor(Ini.ReadString('Default','CurFrmBar','clBtnFace'));
    MenuPnlColor        := StringToColor(Ini.ReadString('Default','DefColor','clBtnFace'));
    dtmMain.ScrPnlColor := StringToColor(Ini.ReadString('Default','PnlScreen','clBtnFace'));
    dtmMain.RecBarColor := StringToColor(Ini.ReadString('Default','RecBar','clBtnFace'));
    dtmMain.GrdColor    := StringToColor(Ini.ReadString('Default','GrdColor','clWindow'));
    dtmMain.FixGrdColor := StringToColor(Ini.ReadString('Default','FixGrdColor','clBtnFace'));
    dtmMain.OddGrdColor := StringToColor(Ini.ReadString('Default','GrdOddColor','clWindow'));
    pnlFix.Color        := MenuPnlColor;
    pnlDefaults.Color   := MenuPnlColor;
  finally
    Ini.Free;
  end
end;

function TfrmMain.FreeCurrentForm: boolean;
begin
  try
    if Assigned(CurrentForm) then
    begin
      if CurrentForm is TfrmDefaults then
        TileMainPanel;
      if CurrentForm.Visible then
        CurrentForm.Close;
      CurrentForm.Free;
    end;
    CurrentForm := nil;
    Result := True;
    pnlCurFrm.Caption := frmMain.Caption;
  except
    Result := false;
  end;
  ReportIndex   := 0;
  CurrentHelpID := 0;
end;

procedure TfrmMain.LoadForm(TfrmToLoad: TFormClass; RepIndex, HlpIndex, IntValue1: integer);
var
  Csr: IRecall;
begin
  if FreeCurrentForm then
  begin
      Csr := WaitCursor;
//    Screen.Cursor := crHourGlass;
//    try
      ReportIndex   := RepIndex;
      CurrentHelpID := HlpIndex;
      //buttons
      btnPreview.Enabled := RepIndex <> -1;
      btnPrint.Enabled   := RepIndex <> -1;
      //

      {FormName := RightStr(TfrmToLoad.ClassName,Length(TfrmToLoad.ClassName) -1);
      if (TfrmToLoad.ClassName = 'TfrmDefaults') or (dtmSecFrm.AccessToForm(FormName)) then
      begin }
        CurrentForm := TfrmToLoad.Create(Self);

        if CurrentForm is TfrmLoanHeader then
          TfrmLoanHeader(CurrentForm).IntValue1 := IntValue1
        else if CurrentForm is TfrmLoanEnquiry then
          TfrmLoanEnquiry(CurrentForm).IntValue1 := IntValue1;

        dtmSecFrm.SetForm(CurrentForm);//,CurrentForm.Tag);
        //dtmSecurity.SetSecurityControls(CurrentForm);
        LoadTheForm(CurrentForm,pnlMain);
        pnlCurFrm.Caption := CurrentForm.Caption;
      //end
     // else
       // FreeCurrentForm;
//    finally
//      Screen.Cursor := crDefault;
//    end;
  end
  else
    MesDlg('Could not load form','E');
end;

procedure TfrmMain.LoadForm(TfrmToLoad: TFormClass; RepIndex,
  HlpIndex: integer);
begin
  LoadForm(TfrmToLoad, RepIndex, HlpIndex, 0);
end;

procedure TfrmMain.btnDefSetClick(Sender: TObject);
begin
  LoadForm(TfrmDefaults, -1, 0);
  TfrmDefaults(CurrentForm).DefIniToUse := StoreDef;
end;

// v - 10/06/2003
procedure TfrmMain.btnBuildSmsClick(Sender: TObject);
begin
  //LoadForm(TfrmsmsCreate, -1, 0);
end;

// v - 10/06/2003
procedure TfrmMain.btnSendSMSClick(Sender: TObject);
begin
  //LoadForm(TfrmSendSMS,-1,0);
end;

// v - 10/06/2003
procedure TfrmMain.btnSMSHisotoryClick(Sender: TObject);
begin
// mmm - must still create.
end;


{WB 28/01/2000 ---------- LOAD FORMS end -----------------------------}

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(VarList);
  FreeCurrentForm;
  dtmSecurity.Free;
end;

procedure TfrmMain.btnCloseformClick(Sender: TObject);
begin
  FreeCurrentForm;
end;

procedure TfrmMain.SetPanelMenu(pnlToSet: TPanel);
begin
  SetCurMenuPnl(CurrentMenuPanel,pnlToSet,pnlFix,cbMenu);
end;

{WB 28/01/2000
 Run ComboBox menu}
procedure TfrmMain.cbMenuChange(Sender: TObject);
begin
  FreeCurrentForm;
  case cbMenu.ItemIndex of
    0: SetPanelMenu(pnlMainMenu);
    1: SetPanelMenu(pnlTrans);
    2: SetPanelMenu(pnlBQuery);   //Batch Query
    3: SetPanelMenu(pnlReport);   //Report
    4: SetPanelMenu(pnlGLRep);    //GLReports
    5: SetPanelMenu(pnlMESum);    //ME Reports
    6: SetPanelMenu(pnlLoanMan);  //Loan manager
    //8: SetPanelMenu(pnlDefaults); //Defaults
    //9: SetPanelMenu(pnlSms);
    //10: SetPanelMenu(pnlNLR);     
  end;
end;

{WB 28/01/2000
 When Menu ComboBox change set the menu panel to the choosen item in the
 Menu ComboBox}
procedure TfrmMain.btnPreviewClick(Sender: TObject);
begin
  if ReportIndex <> 0 then
    LoadReport(ReportIndex,False);
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
begin
  if ReportIndex <> 0 then
    LoadReport(ReportIndex,True);
end;

procedure TfrmMain.mmMainHelpClick(Sender: TObject);
begin
  OpenAccZoneHelp(CurrentHelpID);
end;

procedure TfrmMain.mmMainClick(Sender: TObject);
begin
  SetDropDownMenu(Sender,cbMenu);
end;

procedure TfrmMain.mmChangeLoginClick(Sender: TObject);
begin
  FreeCurrentForm;
  DoLoginUser;
  lblUser.Caption := 'Current user:  '+dtmMain.CurrentID;
end;

procedure TfrmMain.About1Click(Sender: TObject);
begin
  {AboutFrm(-100,-100,40,230,-100,-100,40,200,420,310,version,
  'About azFinance',clBlack,clBlack);}
end;

procedure TfrmMain.mmChangePassClick(Sender: TObject);
begin
  ChangePassword(dtmMain.CurrentID);
end;

procedure TfrmMain.btnSuppliersClick(Sender: TObject);
begin
//  LoadForm(TfrmEntityList,-1,0);
end;

procedure TfrmMain.btnClientsClick(Sender: TObject);
begin
  LoadForm(TfrmEntLoan,71,0);
  if Assigned(CurrentForm) then
  begin
    TfrmEntLoan(CurrentForm).SetDBSettings(dtmMain.qryPSNLU,PSNType);
    pnlCurFrm.Caption := 'Clients';
  end;
end;

procedure TfrmMain.btnFindPClick(Sender: TObject);
begin
  RequeryOnRecord(dtmMain.qryPSNLu, 'IdVal');
  frmLookUp.SetLookUpForm(dtmMain.qryPSNLu,nil,'Find a contact','',True);
  frmLookUp.ShowModal;
  if frmLookUp.ChoosenID <> -1 then
   if not dtmMain.qryEntID.Locate('EntityID',frmLookUp.ChoosenID,[]) then
   begin
    dtmMain.qryEntID.Requery;
    dtmMain.qryEntID.Locate('EntityID',frmLookUp.ChoosenID,[]);
      //MessageDlg('Client not found (ID ' + IntToStr(frmLookUp.ChoosenID) + ')!!', mtError, [mbOK], 0);
   end;
end;

procedure TfrmMain.btnBatchClick(Sender: TObject);
begin
  LoadForm(TfrmBatch, 50, 47);
end;

procedure TfrmMain.btnPostBatchClick(Sender: TObject);
begin
  LoadForm(TfrmBatchPost, 51, 52);
end;
procedure TfrmMain.btnLoanConClick(Sender: TObject);
begin
  //LoadForm(TfrmLoanCons, -1, 0);
  //LoadForm(TfrmClientLoans, -1, 0);
  LoadForm(TfrmLoanSummary, -1, 0);
end;

procedure TfrmMain.btnAccountClick(Sender: TObject);
begin
  LoadForm(TfrmClientAcc, 1, 0);
end;

procedure TfrmMain.btnLoanAccClick(Sender: TObject);
begin
  //LoadForm(TfrmLoanAccount, 2, 0);
  LoadForm(TfrmLoanHeader, 2, 0, 1);
end;

procedure TfrmMain.btnLoanCtClick(Sender: TObject);
begin
  //LoadForm(TfrmLCD, 3, 0);
  LoadForm(TfrmLoanHeader, 3, 0, 2);
end;

procedure TfrmMain.btnDepAccClick(Sender: TObject);
begin
  LoadForm(TfrmDepAcc, 1, 0);
end;

procedure TfrmMain.btnHisBatchClick(Sender: TObject);
begin
  LoadForm(TfrmBatchQuery, 52, 53);
  if Assigned(CurrentForm) then
    TfrmBatchQuery(CurrentForm).ShowHistory := True;
end;
procedure TfrmMain.btnProcErrClick(Sender: TObject);
begin
//  LoadForm(TfrmBatchQuery,False, 53, 55);
//  TfrmBatchQuery(CurrentForm).ShowHistory := False;
end;
procedure TfrmMain.btnBatchViewClick(Sender: TObject);
begin
  LoadForm(TfrmBatchView, -1, 56);
end;

procedure TfrmMain.btnLSumClick(Sender: TObject);
begin
  LoadForm(TfrmRepLSum, -1, 0);
end;

procedure TfrmMain.btnDSumClick(Sender: TObject);
begin
  LoadForm(TfrmRepDSum, -1, 0);
end;

procedure TfrmMain.btnLetterClick(Sender: TObject);
begin
  LoadForm(TfrmLetter, -1, 0);
  if Assigned(CurrentForm) then
    TfrmLetter(CurrentForm).SetDataSettings(dtmMain.dbData.ConnectionString);
end;

procedure TfrmMain.btnBulkLetClick(Sender: TObject);
begin
  LoadForm(TfrmBulkLet, -1, 0);
end;

procedure TfrmMain.btnBulkStmClick(Sender: TObject);
begin
  LoadForm(TfrmBulkStatement, -1, 0);
end;

procedure TfrmMain.btnNotesDiaryClick(Sender: TObject);
begin
  LoadForm(TfrmNoteDiary, 60, 0);
end;

procedure TfrmMain.btnMERepClick(Sender: TObject);
begin
  LoadForm(TfrmMESum, -1, 0);
end;

procedure TfrmMain.btnTsumClick(Sender: TObject);
begin
  LoadForm(TfrmTransSum, 73, 0);
end;

procedure TfrmMain.btnGLReportClick(Sender: TObject);
begin
  LoadForm(TfrmGLReport, -1, 0);
end;

procedure TfrmMain.btnTransDetClick(Sender: TObject);
begin
  LoadForm(TfrmGLTransDet, 112, 0);
end;

procedure TfrmMain.btnIntToDateClick(Sender: TObject);
begin
  LoadForm(TfrmIntToDate, 113, 0);
end;

procedure TfrmMain.btnCubeClick(Sender: TObject);
begin
  //LoadForm(TfrmDecisionLT, -1, 0);
end;

procedure TfrmMain.btnLoanCClick(Sender: TObject);
begin
//  LoadForm(Tfrm, -1, 0);
end;

procedure TfrmMain.btnLoanViewClick(Sender: TObject);
begin
  LoadForm(TfrmLoanView, 90, 0);
end;

procedure TfrmMain.btnNotesClick(Sender: TObject);
var
  frmNote : TfrmNotes;
begin
  dtmNotes := TdtmNotes.Create(Self);
  frmNote := TfrmNotes.Create(Self);
  try
    dtmNotes.EntityID := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
    frmNote.SetInfoDet(dtmMain.qryEntDet.FieldByName('EntCode').AsString,
      dtmMain.qryEntDet.FieldByName('Name').AsString,
      dtmMain.qryEntDet.FieldByName('Name2').AsString,
      '','');
    frmNote.ShowModal;
  finally
    FreeAndNil(frmNote);
    FreeAndNil(dtmNotes);
  end;
end;

procedure TfrmMain.RefreshDB1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    FreeCurrentForm;
    dtmMain.dbData.Connected := False;
    dtmMain.SetLUData(True);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.tmRETimer(Sender: TObject);
var
  fmRE : TfrmRemind;
begin
  tmRE.Enabled := False;
  if dtmMain.GetRECnt <> 0 then
  begin
    fmRE := TfrmRemind.Create(Self);
    try
      fmRE.AppID := AppID;
      fmRE.ShowModal;
    finally
      fmRE.Free;
    end;
  end;
  tmRE.Enabled := True;
end;

procedure TfrmMain.btnFindLClick(Sender: TObject);
begin
  FindLoan();
end;

procedure TfrmMain.FindLoan();
begin
  if not Assigned(frmLookupLoan) then
    frmLookupLoan := TfrmLookupLoan.Create(Self);

  if frmLookupLoan.ShowModal = mrOK then
  begin
    if not dtmMain.qryEntID.Locate('EntityID', frmLookupLoan.EntityID,[]) then
    begin
      dtmMain.qryEntID.Requery;
      dtmMain.qryEntID.Locate('EntityID', frmLookupLoan.EntityID,[]);
    end
    else if dtmLS.qryEntLoan.Active then
      dtmLS.qryEntLoan.Locate('LoanID', frmLookupLoan.LoanID, []);
  end;
end;

procedure TfrmMain.btnFindCClick(Sender: TObject);
begin
  RequeryOnRecord(dtmMain.qryCpyLu, 'IdVal');
  frmLookUp.SetLookUpForm(dtmMain.qryCpyLu,nil,'Find a contact','',True);
  frmLookUp.ShowModal;
  if frmLookUp.ChoosenID <> -1 then
   dtmMain.qryEntID.Locate('EntityID',frmLookUp.ChoosenID,[]);
end;

procedure TfrmMain.btnLoanBookClick(Sender: TObject);
begin
  LoadForm(TfrmLoanBook2, 0, 0);
end;

// Trial app
{function TfrmMain.CheckAppKey(ShowMes: boolean): boolean;
var
  GTKey : TAppKey;
begin
  GTKey  := TAppKey.Create;
  try
    GTKey.ShowKeyMsg := ShowMes;
    GTKey.IniToUse := StoreDef;
    GTKey.VerifySystem;
    Result := GTKey.KeyValid;
    if (not Result) and (ShowMes) then
      Result := GTKey.EnterNewKey;
  finally
    GTKey.Free;
  end;
end;}

procedure TfrmMain.btnSAllocateClick(Sender: TObject);
begin
  LoadForm(TfrmSuspAllocate, 115, 0);
end;

procedure TfrmMain.btnBulkUpdateClick(Sender: TObject);
begin
  LoadForm(TfrmBulkUpd, -1, 0);
end;                              

procedure TfrmMain.OnMessage(var Msg: TMsg; var Handled: Boolean) ;
var
  i: SmallInt;
begin
  if Msg.message = WM_MOUSEWHEEL then
  begin
    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam);
    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;

    Handled := False;
  end;
end;  

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  SendMessage(HWND_BROADCAST,TheMsgVal,wpShutDown,GetCurrentProcessid);
end;

procedure TfrmMain.WndProc(Var TheMsg: TMessage);
begin
  if TheMsg.Msg = TheMsgVal then
    if TheMsg.wParam = wpShow then
      if TheMsg.LParam = Int(GetCurrentProcessId) then
      begin
        //ShowMessage(FloatToStr(TheMsg.Msg));
        ShowWindow(Application.Handle, SW_SHOWNORMAL);
        SetForegroundWindow(Application.Handle);
      end;
  Inherited WndProc(TheMsg);
end;

procedure TfrmMain.CurrentWorkspace1Click(Sender: TObject);
begin
//  dtmSecurity.DoSecuritySetup(CurrentForm);
end;

procedure TfrmMain.MenusTools1Click(Sender: TObject);
begin
//  dtmSecurity.DoSecuritySetup(Self);
end;

procedure TfrmMain.SecuritySetup1Click(Sender: TObject);
begin
  //MenusTools1.Enabled := not CurrentWorkspace1.Enabled;
end;

procedure TfrmMain.Options1Click(Sender: TObject);
begin
  frmOptions := TfrmOptions.Create(Self);
  try
    frmOptions.ShowModal;
  finally
    FreeAndNil(frmOptions);
  end;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  LoadForm(TfrmLoanBook, 114, 0);
end;

procedure TfrmMain.btnMyWorkClick(Sender: TObject);
begin

  frmMyWork := TfrmMyWork.Create(Self);
  try
    if frmMyWork.ShowModal = mrOK then
    begin
      dtmMain.qryWorkLU.Locate('LoanID', frmMyWork.WorkLoanID, []);
      if not dtmMain.qryEntID.Locate('EntityID',dtmMain.qryWorkLU.FieldByName('EntityID').AsInteger,[]) then
      begin
        dtmMain.qryEntID.Requery;
        dtmMain.qryEntID.Locate('EntityID',frmLookUp.ChoosenID,[]);
      end;
      CurrentLoanID := frmMyWork.WorkLoanID;
    end;
  finally
    FreeAndNil(frmMyWork);
  end;

  (*
  frmLookUp.SetLookUpForm(dtmMain.qryWorkLU,nil,'My Assigned Work','',True);
  frmLookUp.ShowModal;
  if frmLookUp.ChoosenID <> -1 then
  begin
   // dtmMain.qryEntID.Locate('EntityID',frmLookUp.ChoosenID,[]);
   if not dtmMain.qryEntID.Locate('EntityID',dtmMain.qryWorkLU.FieldByName('EntityID').AsInteger,[]) then
   begin
    dtmMain.qryEntID.Requery;
    dtmMain.qryEntID.Locate('EntityID',frmLookUp.ChoosenID,[]);
   end;
  end;
  *)
end;

procedure TfrmMain.btnSettlementsClick(Sender: TObject);
begin
  //LoadForm(TfrmSettlements, 0, 0);
  LoadForm(TfrmLoanHeader, 0, 0, 3);
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
  //LoadForm(TfrmLoanAgeing, 0, 0);
  LoadForm(TfrmLoanHeader, 0, 0, 4);
end;

procedure TfrmMain.SendSMS1Click(Sender: TObject);
begin
  ExecuteSMSWizard(dtmMain.dbData.ConnectionString, dtmMain.CurrentID,
    dtmSecurity.RoleID, dtmMain.qryEntID.FieldByName('EntityID').AsInteger);
end;

procedure TfrmMain.btnCommunicationsClick(Sender: TObject);
begin
  ppmCommunications.Popup(btnCommunications.ClientOrigin.X,
    btnCommunications.ClientOrigin.Y + btnCommunications.Height);  
end;

procedure TfrmMain.SendLetter1Click(Sender: TObject);
begin
  frmPrintLetter := TfrmPrintLetter.Create(Self);
  try
    frmPrintLetter.ClientID := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
    frmPrintLetter.ShowModal;
  finally
    frmPrintLetter.dsPrintData.Close;
    FreeAndNil(frmPrintLetter);
  end;
end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
begin
  //Loan Report
  LoadForm(TfrmLoanEnquiry, -1, 0, 2);
end;

procedure TfrmMain.btnTracerReportClick(Sender: TObject);
begin
  //Tracer Report
  LoadForm(TfrmLoanEnquiry, -1, 0, 3);
end;

procedure TfrmMain.btnSettlementQuotesClick(Sender: TObject);
begin
  //Tracer Report
  LoadForm(TfrmLoanEnquiry, -1, 0, 4);
end;

end.



