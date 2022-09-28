unit fmLoanHeader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, HyperLink, DBCtrls, ExtCtrls, Mask, Menus,
  ComCtrls, Grids, DBGrids, DBStyleGrid, ImgList, ToolWin, DateUtils, StrUtils,
  db, DBGridExporter, ShellApi, Unit32;

type
  TfrmLoanHeader = class(TForm)
    pnlMBase: TPanel;
    pcLoan: TPageControl;
    tsLoanAccount: TTabSheet;
    tsLoanContract: TTabSheet;
    tsSettlements: TTabSheet;
    CoolBar1: TCoolBar;
    tlbSettlements: TToolBar;
    btnAdd: TToolButton;
    btnView: TToolButton;
    btnPrint: TToolButton;
    grdSettlements: TDBStyleGrid;
    imlTools: TImageList;
    tsArrearsAgeing: TTabSheet;
    ScrollBox1: TScrollBox;
    Bevel2: TBevel;
    Bevel1: TBevel;
    dbtIntrate: TDBText;
    dbtLoanPeriod: TDBText;
    Label5: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label7: TLabel;
    dbtAmtFin: TDBText;
    dbtStartdate: TDBText;
    dbtPayIns: TDBText;
    Label17: TLabel;
    dbtInstDate: TDBText;
    dbtNoInst: TDBText;
    Label20: TLabel;
    dbtLoanType: TDBText;
    Label19: TLabel;
    lblArrearsAmt: TDBText;
    Label11: TLabel;
    dbtCode: TDBText;
    Label10: TLabel;
    dbtSurname: TDBText;
    Label9: TLabel;
    dbtName: TDBText;
    Label12: TLabel;
    dbtIDnum: TDBText;
    lblCycleEndDay: TLabel;
    dbtCycleEndDay: TDBText;
    Label21: TLabel;
    DBText1: TDBText;
    Label22: TLabel;
    DBText2: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lblArrearsLabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    lblDelinquency: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label36: TLabel;
    edtEnt: TDBEdit;
    pnlLoanAccountTotals: TPanel;
    lblTotals: TLabel;
    lblDR: TLabel;
    lblCR: TLabel;
    grdLoanAccount: TDBStyleGrid;
    PageControl1: TPageControl;
    tsOldMethodContract: TTabSheet;
    tsNewMethodContract: TTabSheet;
    grdContract: TDBStyleGrid;
    grdContractRevisions: TDBGrid;
    TabControl1: TTabControl;
    grdLoanContract: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    expContract: TDBGridExporter;
    ppmLoanContract: TPopupMenu;
    Export1: TMenuItem;
    btnSendSettlement: TToolButton;
    Panel1: TPanel;
    Label39: TLabel;
    cmbView: TComboBox;
    pcArrearsAge: TPageControl;
    tsMonthEnd: TTabSheet;
    tsCycleEnd: TTabSheet;
    tsRealTime: TTabSheet;
    pnlArrearsAgeingTop: TPanel;
    Label38: TLabel;
    dtpArrears: TDateTimePicker;
    btnMinusDay: TButton;
    btnAddDay: TButton;
    grdArrearsAge: TDBStyleGrid;
    grdArrearsMonthEnd: TDBStyleGrid;
    Bevel3: TBevel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBText21: TDBText;
    Label43: TLabel;
    DBText22: TDBText;
    Label44: TLabel;
    DBText23: TDBText;
    Label45: TLabel;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    Label8: TLabel;
    cbxLoans: TComboBox;
    btnSettlementCalculator: TToolButton;
    ToolButton3: TToolButton;
    btnArrearsSettlementCalculator: TToolButton;
    chkHideClose: TCheckBox;
    lblStatus: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    lblArrears: TDBText;
    grdArrearsCycleEnd: TDBStyleGrid;
    btnStatement: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    btnProcessSettlement: TToolButton;
    ppmStatement: TPopupMenu;
    Preview1: TMenuItem;
    Save1: TMenuItem;
    dlgSaveStatement: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);    
    procedure cbxLoansChange(Sender: TObject);
    procedure chkHideCloseClick(Sender: TObject);
    procedure edtEntChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdLoanAccountDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdContractDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAddClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure dtpArrearsChange(Sender: TObject);
    procedure grdLoanContractDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tsNewMethodContractResize(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure btnSendSettlementClick(Sender: TObject);
    procedure cmbViewChange(Sender: TObject);
    procedure btnAddDayClick(Sender: TObject);
    procedure btnMinusDayClick(Sender: TObject);
    procedure grdArrearsAgeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdArrearsMonthEndDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSettlementCalculatorClick(Sender: TObject);
    procedure btnArrearsSettlementCalculatorClick(Sender: TObject);
    procedure btnStatementClick(Sender: TObject);
    procedure btnProcessSettlementClick(Sender: TObject);
    procedure Preview1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
  private
    CurrentPage: TTabSheet;
    lstLoans : TStringList;
    FIntValue1: Integer;
    ShowFutureFees: Boolean;
    procedure LoadLoanList;
//    procedure DoSettleDetailFrm;
    procedure SetIntValue1(const Value: Integer);
    procedure SetArrearsAgeing(LoanID: Integer);
    function ProcessSettlement: Boolean;
    procedure PrepareStatement;
    function PostSettlement: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property IntValue1: Integer read FIntValue1 write SetIntValue1;
  end;

var
  frmLoanHeader: TfrmLoanHeader;

implementation

uses dmLS, uLSConst, uLScentral, fmLegalSettlement, dmMain, uLCCentral,
  fmSettleArrears2, dmSettleArrears, fmQuickRePay, fmSettleDetail, dmLCD,
  fmAddSettlementWizard, dmSettlementQuotes, rptSettle, ADODB, dmReporting,
  fmAddSettlement, SettlementService, rptSettlement, dmSecurity;

{$R *.dfm}

procedure TfrmLoanHeader.FormCreate(Sender: TObject);
var
  i: integer;
begin
  ShowFutureFees := False;

  dtmSettlementQuotes := TdtmSettlementQuotes.Create(Self);
  dtmSettleArrears    := TdtmSettleArrears.Create(Self);

  dtmSettleArrears.dbSettleArrears.Connected := False;
  dtmSettleArrears.dbSettleArrears.ConnectionString := dtmMain.dbData.ConnectionString;
  dtmSettleArrears.dbSettleArrears.Connected := True;

  edtEnt.DataSource := dtmLS.dtsEntLoan;
  dtmLS.qryEntLoan.Open;
  dtmLS.dsCurrentRate.Open;

  lstLoans := TStringList.Create;

  btnProcessSettlement.Visible := dtmSecurity.AllowAccess(160);

  for i := 0 to pcLoan.PageCount - 1 do //begin
    pcLoan.Pages[i].TabVisible := false;
  pcLoan.TabHeight := 1;
end;

procedure TfrmLoanHeader.LoadLoanList;
var
  i : integer;
begin
  dtmLS.LoadLoanLst(lstLoans);
  cbxLoans.Items.Clear;
  for i := 0 to lstLoans.Count-1 do
    cbxLoans.Items.Add(lstLoans.Names[i]);
  cbxLoans.ItemIndex := 0;
  cbxLoansChange(nil);
end;

procedure TfrmLoanHeader.SetArrearsAgeing(LoanID: Integer);
begin
  dtmLS.dsArrearsAgeing.Close;
  dtmLS.dsArrearsAgeing.Parameters.ParamByName('LoanID').Value := LoanID;
  dtmLS.dsArrearsAgeing.Parameters.ParamByName('AtDate').Value := Today;
  dtmLS.dsArrearsAgeing.Open;
  dtmLS.dsArrearsAgeing.Last;

  if dtmLS.dsArrearsAgeing.FieldByName('CD').AsCurrency > 0 then
  begin
    lblArrearsLabel.Font.Color := clRed;
    lblArrears.Font.Color := clRed;
    lblDelinquency.Font.Color := clRed;
  end
  else
  begin
    lblArrearsLabel.Font.Color := clNavy;
    lblArrears.Font.Color := clBlack;
    lblDelinquency.Font.Color := clBlack;
  end;
end;

procedure TfrmLoanHeader.cbxLoansChange(Sender: TObject);
var
  iLoanID: Integer;
  i: Integer;
begin
  iLoanID := StrToInt(lstLoans.Values[cbxLoans.Text]);
  dtmLS.qryEntLoan.Locate('LoanID',iLoanID,[]);
  SetArrearsAgeing(iLoanID);

  if pcLoan.ActivePage = tsLoanContract then
  begin
    dtmLCD.dsLoanContract.Parameters.ParamByName('RevisionNo').Value := 0;
    dtmLCD.LoanID := iLoanID;
//    dtmLCD.BuildAndRunContract;

    TabControl1.Tabs.Clear;
    for i := dtmLCD.dsContractRevisions.RecordCount downto 1 do
      TabControl1.Tabs.Add('Revision ' + IntToStr(i-1));

    TabControl1Change(TabControl1);
  end
  else if pcLoan.ActivePage = tsLoanAccount then
  begin
    dtmLS.cdsAcc.Close;
    dtmLS.cdsAcc.Open;
    dtmLS.cdsAcc.Last;

    ShowFutureFees := dtmSecurity.AllowAccess(264);

    dtmLS.dsStatement.Close;
    dtmLS.dsStatement.Parameters.ParamByName('LoanID').Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    dtmLS.dsStatement.Parameters.ParamByName('ShowFutureFees').Value := ShowFutureFees; 
    dtmLS.dsStatement.Open;
    dtmLS.dsStatement.Last;

    lblDR.Caption  := FloatToStrF(dtmLS.TotDebit,ffCurrency,15,2);
    lblCR.Caption  := FloatToStrF(dtmLS.TotCredit,ffCurrency,15,2);
  end
  else if pcLoan.ActivePage = tsSettlements then
  begin
    dtmSettlementQuotes.dsSettlements.Close;
    dtmSettlementQuotes.dsSettlements.Parameters.ParamByName('LoanID').Value := iLoanID;
    //dtmSettlementQuotes.dsSettlements.Parameters.ParamByName('EntityID').Value := dtmLS.qryEntLoan.FieldByName('EntityID').AsInteger;
    dtmSettlementQuotes.dsSettlements.Open;
  end
  else if pcLoan.ActivePage = tsArrearsAgeing then
  begin
    dtpArrears.DateTime := ArrearsAgeDate;
    dtpArrearsChange(nil);

    dtmLS.dsAgeMonthEnd.Open;
    dtmLS.dsAgeCycleEnd.Open;
  end;

  //dbtArrAmt.Transparent := dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency <= 0;

  lblStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
  lblStatus.Color := ColorLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);

  lblArrearsAmt.Transparent := not (dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency > 0);
end;

procedure TfrmLoanHeader.chkHideCloseClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if chkHideClose.Checked then
    begin
      dtmLS.qryEntLoan.Parameters.ParamByName('prClose').Value := lnsClose;

      dtmLS.qryEntLoan.Parameters.ParamByName('prCancel').Value := lnsCancelled;
      dtmLS.qryEntLoan.Parameters.ParamByName('prDecline').Value := lnsDeclined;
    end
    else
    begin
      dtmLS.qryEntLoan.Parameters.ParamByName('prClose').Value := -1;

      dtmLS.qryEntLoan.Parameters.ParamByName('prCancel').Value := -1;
      dtmLS.qryEntLoan.Parameters.ParamByName('prDecline').Value := -1;
    end;

    if dtmLS.qryEntLoan.Active then
      dtmLS.qryEntLoan.Requery
    else
      dtmLS.qryEntLoan.Open;

    LoadLoanList;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanHeader.edtEntChange(Sender: TObject);
begin
  if Self.Showing then
    if dtmLS.qryEntLoan.Active then
      LoadLoanList;
end;

procedure TfrmLoanHeader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmLS.dsCurrentRate.Close;
  dtmLS.qryEntLoan.Close;
  if Assigned(CurrentPage) then
  begin
    if CurrentPage = tsLoanAccount then
    begin
      dtmLS.SetAccStatus(False, acLA);
      dtmLS.dsStatement.Close;
    end
    else if CurrentPage = tsLoanContract then
    begin
      FreeAndNil(dtmLCD);
    end
    else if CurrentPage = tsArrearsAgeing then
    begin
      dtmLS.dsAgeRealTime.Close;
      dtmLS.dsAgeMonthEnd.Close;
      dtmLS.dsAgeCycleEnd.Close;
    end;
//    CurrentPage.Hide;
//    CurrentPage.Parent := pcLoan;
  end;

  dtmSettlementQuotes.dsSettlements.Close;
end;

procedure TfrmLoanHeader.grdLoanAccountDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.FieldName = 'TransCode') or
    (Column.FieldName = 'Transaction') then
  begin
    if not (gdSelected in State) then
    case dtmLS.dsStatement.FieldByName('TransType').AsInteger of
      11: TDBGrid(Sender).Canvas.Font.Color := clNavy;
      12: TDBGrid(Sender).Canvas.Font.Color := clRed;
    end; {case}
    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

(*procedure TfrmLoanHeader.DoSettleDetailFrm;
var
  SettleDetForm : TfrmSettleDetail;
begin
  SettleDetForm := TfrmSettleDetail.Create(nil);
  try // User Grp
    SettleDetForm.btnSettleAcc.Enabled := True;
    SettleDetForm.ShowSettlementDetail(dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger);
  finally
    SettleDetForm.Free;
  end;
end;*)

procedure TfrmLoanHeader.grdContractDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  str : string;
begin
  if Column.FieldName = 'PayDesc' then
  begin
    str := GetTypeDesc(dtmLCD.cdsContract.FieldByName('Type').AsInteger);
    TDBGrid(Sender).Canvas.TextOut(Rect.Left+2,Rect.Top+1,str);
  end;
end;

procedure TfrmLoanHeader.btnAddClick(Sender: TObject);
begin
  with TfrmAddSettlement.Create(Self) do
  try
    LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    if ShowModal = mrOK then
      dtmSettlementQuotes.dsSettlements.Requery();
  finally
    Release;
  end;
end;

procedure TfrmLoanHeader.btnPrintClick(Sender: TObject);
begin
  with dtmSettlementQuotes do
  begin
      dmMain.ShowSqlReport('rptSettlementQuoteBoodle','&LoanID=' +  dsSettlements.FieldByName('LoanID').AsString);
      end;
  end;


procedure TfrmLoanHeader.SetIntValue1(const Value: Integer);
begin
  FIntValue1 := Value - 1;
  pcLoan.ActivePageIndex := FIntValue1;

  Case pcLoan.ActivePageIndex of
    0: begin                                  // tsLoanAccount
          dtmLS.SetAccStatus(True, acLA);
          Caption := 'Loan Account';
          cmbViewChange(Self);
       end;
    1: begin                                  // tsLoanContract
          dtmLCD := TdtmLCD.Create(self);
          dtmLCD.SetDBCon(dtmMain.dbData);
          dtmLCD.SetDataStatus(True);
          Self.Caption := 'Loan Contract';
       end;
    2: begin                                  // tsSettlements
          dtmSettlementQuotes.dsSettlements.Open;
          Self.Caption := 'Loan Settlements';
       end;
    3: begin                                  // tsArrearsAgeing
          Self.Caption := 'Arrears Ageing';
          pcArrearsAge.ActivePageIndex := 0;
       end;
  end;



  chkHideClose.Checked := True;
end;

procedure TfrmLoanHeader.dtpArrearsChange(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    ArrearsAgeDate := dtpArrears.DateTime;
    dtmLS.dsAgeRealTime.Close;
    dtmLS.dsAgeRealTime.Parameters.ParamByName('LoanID').Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    dtmLS.dsAgeRealTime.Parameters.ParamByName('Date').Value := dtpArrears.DateTime;
    dtmLS.dsAgeRealTime.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLoanHeader.grdLoanContractDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  FontColor: TColor;
  TransTypeCode: String;
  Value: String;
  ValueAmount: Extended;
begin
  if (Column.FieldName = 'TransactionType') or (Column.FieldName = 'DebitAmount')
    or (Column.FieldName = 'CreditAmount') then
  begin
    TransTypeCode := dtmLCD.dsLoanContract.FieldByName('TransTypeCode').AsString;
    if TransTypeCode = 'P' then
      FontColor := clGreen
    else if TransTypeCode = 'D' then
      FontColor := clBlue
    else if TransTypeCode = 'I' then
      FontColor := clPurple
    else if TransTypeCode = 'FM' then
      FontColor := clOlive
    else
      FontColor := clBlack;

    if FontColor <> clBlack then
    begin
      grdLoanContract.Canvas.FillRect(Rect);
      grdLoanContract.Canvas.Font.Color := FontColor;
      Value := dtmLCD.dsLoanContract.FieldByName(Column.FieldName).AsString;
      if dtmLCD.dsLoanContract.FieldByName(Column.FieldName).DataType = ftBCD then
      begin
        if TryStrToFloat(Value, ValueAmount) then
          Value := FloatToStrF(ValueAmount, ffCurrency, 15,2);

        grdLoanContract.Canvas.TextOut(Rect.Right - grdLoanContract.Canvas.TextWidth(Value) - 2, Rect.Top + 2, Value);
      end
      else
        grdLoanContract.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Value);
    end;
  end;

  if (dtmLCD.dsLoanContract.FieldByName('RevisionNo').AsInteger =
    dtmLCD.dsLoanContract.Parameters.ParamByName('RevisionNo').Value) then
    if not (gdSelected in State) then
    begin
      grdLoanContract.Canvas.Brush.Color := $00FFF8F0;
      grdLoanContract.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

procedure TfrmLoanHeader.TabControl1Change(Sender: TObject);
begin
  dtmLCD.dsLoanContract.Close;
  dtmLCD.dsLoanContract.Parameters.ParamByName('RevisionNo').Value := TabControl1.Tabs.Count - (TabControl1.TabIndex + 1);
  dtmLCD.dsLoanContract.Open;
end;

procedure TfrmLoanHeader.Button1Click(Sender: TObject);
begin
  dtmLCD.cmdConvertContract.Parameters[0].Value :=  dtmLCD.LoanID;
  dtmLCD.cmdConvertContract.Execute;
  dtmLCD.dsContractRevisions.Requery();
  dtmLCD.dsLoanContract.Requery();
end;

procedure TfrmLoanHeader.Button2Click(Sender: TObject);
begin
  dtmLCD.CreateNewContract;
  dtmLCD.dsContractRevisions.Requery();
  dtmLCD.dsLoanContract.Requery();
end;

procedure TfrmLoanHeader.tsNewMethodContractResize(Sender: TObject);
var
  I: Integer;
begin
  grdContractRevisions.Columns[0].Width := Trunc(
    (grdContractRevisions.ClientWidth - IndicatorWidth -grdContractRevisions.Columns.Count)/
    grdContractRevisions.Columns.Count);// - (Trunc(20/grdContractRevisions.Columns.Count));
  for I := 1 to grdContractRevisions.Columns.Count - 1 do
    grdContractRevisions.Columns[I].Width := grdContractRevisions.Columns[0].Width;
end;

procedure TfrmLoanHeader.Export1Click(Sender: TObject);
begin
  expContract.Execute;
end;

procedure TfrmLoanHeader.btnSendSettlementClick(Sender: TObject);
begin
{  if (Sender = btnExportQuote) or (Sender = btnSendQuote) then
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
      repQuote.TextFileName := TempFolder + 'Quotation.pdf';
      repQuote.Print;
      SendFile(repQuote.TextFileName, True);
      Screen.Cursor := crDefault;
    end;}
end;

procedure TfrmLoanHeader.cmbViewChange(Sender: TObject);
var
  I: Integer;
begin
  dtmLS.qryLA.Close;
  if cmbView.ItemIndex = 0 then
    dtmLS.qryLA.IndexFieldNames := 'EffectDate'
  else
    dtmLS.qryLA.IndexFieldNames := 'ValueDate';
  dtmLS.qryLA.Open;

  for I := 0 to grdLoanAccount.Columns.Count - 1 do
    if (grdLoanAccount.Columns[I].FieldName = 'EffectDate') and (cmbView.ItemIndex = 0) then
    begin
      grdLoanAccount.Columns[I].Index := 0;
      Break;
    end
    else if (grdLoanAccount.Columns[I].FieldName = 'ValueDate') and (cmbView.ItemIndex = 1) then
    begin
      grdLoanAccount.Columns[I].Index := 0;
      Break;
    end;
    
  dtmLS.cdsAcc.Close;
  dtmLS.cdsAcc.Open;

  dtmLS.dsStatement.Close;
  dtmLS.dsStatement.Parameters.ParamByName('LoanID').Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
  dtmLS.dsStatement.Parameters.ParamByName('ShowFutureFees').Value := ShowFutureFees;
  dtmLS.dsStatement.Open;
end;

procedure TfrmLoanHeader.btnAddDayClick(Sender: TObject);
begin
  dtpArrears.Date := dtpArrears.Date + 1;
  dtpArrearsChange(dtpArrears);
end;

procedure TfrmLoanHeader.btnMinusDayClick(Sender: TObject);
begin
  dtpArrears.Date := dtpArrears.Date - 1;
  dtpArrearsChange(dtpArrears);
end;

procedure TfrmLoanHeader.grdArrearsAgeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (gdFocused in State) then
  begin
    if DataCol in [0..1] then
      grdArrearsAge.Canvas.Brush.Color := $00FFFFCE
    else if DataCol in [2] then
      grdArrearsAge.Canvas.Brush.Color := $00D5D5FF
    else if DataCol in [3..15] then
      grdArrearsAge.Canvas.Brush.Color := $00E4E4CD
    else if DataCol in [16..21] then
      grdArrearsAge.Canvas.Brush.Color := $00FFC4C4
    else if DataCol >= 22 then
      grdArrearsAge.Canvas.Brush.Color := $00AEFFFF;

    grdArrearsAge.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  if DataCol in [3..15] then
  if TDBGrid(Sender).DataSource.DataSet.FieldByName(Column.FieldName).AsCurrency = 0 then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).Canvas.TextOut(rect.Left + ((Rect.Right - Rect.Left) div 2 - TDBGrid(Sender).Canvas.TextWidth('-')), Rect.Top + 2, '-');
  end;
end;

procedure TfrmLoanHeader.grdArrearsMonthEndDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (gdFocused in State) then
  begin
    if DataCol in [0..1] then
      TDBGrid(Sender).Canvas.Brush.Color := $00FFFFCE
    else if DataCol in [2] then
      TDBGrid(Sender).Canvas.Brush.Color := $00B4D8D8
    else if DataCol in [3] then
      TDBGrid(Sender).Canvas.Brush.Color := $00D5D5FF
    else if DataCol in [4..16] then
      TDBGrid(Sender).Canvas.Brush.Color := $00E4E4CD
    else if DataCol in [17..22] then
      TDBGrid(Sender).Canvas.Brush.Color := $00FFC4C4
    else if DataCol >= 23 then
      TDBGrid(Sender).Canvas.Brush.Color := $00AEFFFF;

    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  if DataCol in [4..16] then
  if TDBGrid(Sender).DataSource.DataSet.FieldByName(Column.FieldName).AsCurrency = 0 then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).Canvas.TextOut(rect.Left + ((Rect.Right - Rect.Left) div 2 - TDBGrid(Sender).Canvas.TextWidth('-')), Rect.Top + 2, '-');
  end;
end;

procedure TfrmLoanHeader.btnSettlementCalculatorClick(Sender: TObject);
begin
  frmAddSettlement := TfrmAddSettlement.Create(Self);
  try
    frmAddSettlement.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    frmAddSettlement.lblSendMethod.Enabled := False;
    frmAddSettlement.cmbSendMethod.Enabled := False;
    frmAddSettlement.btnCancel.Caption := 'Close';
    frmAddSettlement.btnOK.Visible := false;
    frmAddSettlement.ShowModal;
  finally
    frmAddSettlement.Release;
  end;
end;

procedure TfrmLoanHeader.btnArrearsSettlementCalculatorClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'Open', 'ArrearsSettlementCalculator.exe',
  PChar(' 0 "' + dtmMain.ConnectionString + '" ' + dtmLS.qryEntLoan.FieldByName('LoanID').AsString),
  '', SW_SHOWNORMAL);
end;

procedure TfrmLoanHeader.btnStatementClick(Sender: TObject);
begin
dmMain.ShowSqlReport('rptStatementBoodle', '&LoanID=' + dtmLS.qryEntLoan.FieldByName('LoanID').AsString);
  //ppmStatement.Popup(btnStatement.ClientOrigin.X, btnStatement.ClientOrigin.Y + btnStatement.Height);
end;

procedure TfrmLoanHeader.btnProcessSettlementClick(Sender: TObject);
begin
  if dtmLS.qryEntLoan.FieldByName('Status').AsInteger = lnsOpen then
  begin
    if MessageDlg('Are you sure you want to process this settlement now?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if dtmSettlementQuotes.dsSettlements.FieldByName('Version').AsInteger = 1 then
        ProcessSettlement
      else
        PostSettlement;
    end;
  end
  else
    MessageDlg('Cannot settle a loan in this status',  MtError, [mbOK], 0);
end;

function TfrmLoanHeader.PostSettlement: Boolean;
var
  BatchID: Integer;
begin
  Screen.Cursor := crHourGlass;
  try
    with dtmSettlementQuotes do
    begin
      BatchID := GetSettlementSoap.PostSettlement(dsSettlements.FieldByName('SettlementID').AsInteger, dtmMain.UserKey, false);

      if BatchID = 0 then
        MessageDlg('An error has occurred', mtError, [mbOK], 0)
      else
        begin
          cmdSettleLoan.Parameters.ParamByName('LoanID').Value := dsSettlements.FieldByName('LoanID').AsInteger;
          cmdSettleLoan.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
          cmdSettleLoan.Parameters.ParamByName('Amount').Value := dsSettlements.FieldByName('SettlementAmount').Value;
          cmdSettleLoan.Execute;

          MessageDlg('The loan was settled with batch number: ' + IntToStr(BatchID), mtInformation, [mbOK], 0);
        end;
    end;
    Result := True;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TfrmLoanHeader.ProcessSettlement: Boolean;
begin
  try
      with dtmSettlementQuotes do
      begin
        cmdCreateSettlementBatch.Parameters.ParamByName('@SettlementID').Value := dsSettlements.FieldByName('SettlementID').AsInteger;
        cmdCreateSettlementBatch.Parameters.ParamByName('@UserID').Value := dtmMain.CurrentID;
        cmdCreateSettlementBatch.Execute;

        MessageDlg('The loan was settled with batch number: ' +
          IntToStr(cmdCreateSettlementBatch.Parameters.ParamByName('@BatchID').Value), mtInformation, [mbOK], 0);
        Result := True;
      end;
  except
    Result := False;
  end;
end;

procedure TfrmLoanHeader.PrepareStatement;
begin
  with dtmReporting do
  begin
    plClientStatement.DataSource.DataSet.Close;
    TADODataSet(plClientStatement.DataSource.DataSet).Parameters.ParamByName('LoanID').Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    plClientStatement.DataSource.DataSet.Open;

    prClientStatement.Parameters['UserID'].Value := dtmMain.CurrentID;
    prClientStatement.Parameters['ArrearsToDate'].Value :=
      FloatToStrF(dtmLS.qryEntLoan.FieldByName('ArrearsSettle').AsCurrency,ffCurrency,15,2);
    prClientStatement.Parameters['FutureCharges'].Value :=
      FloatToStrF(0,ffCurrency,15,2);
  end;
end;

procedure TfrmLoanHeader.Preview1Click(Sender: TObject);
begin
dmMain.ShowSqlReport('rptStatementBoodle', '&LoanID=' + dtmLS.qryEntLoan.FieldByName('LoanID').AsString);
  (*with dtmReporting do
  begin
    PrepareStatement;
    prClientStatement.ShowPrintDialog := True;
    prClientStatement.DeviceType := 'Screen';
    prClientStatement.Print;
  end;*)
end;

procedure TfrmLoanHeader.Save1Click(Sender: TObject);
begin
  if dlgSaveStatement.Execute then
  begin
    PrepareStatement;
    with dtmReporting do
    begin
      prClientStatement.ShowPrintDialog := false;
      prClientStatement.DeviceType := 'PDF';
      prClientStatement.PDFSettings.OpenPDFFile := false;
      prClientStatement.TextFileName := dlgSaveStatement.FileName;
      prClientStatement.Print;
    end;

    ShellExecute(Application.Handle, 'Open', PChar(dlgSaveStatement.Filename),
      '', '', SW_SHOWNORMAL);
  end;
end;

procedure TfrmLoanHeader.FormDestroy(Sender: TObject);
begin
  lstLoans.Free;
  dtmSettlementQuotes.Free;
  dtmSettleArrears.Free;
end;

end.
