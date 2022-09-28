unit fmSettlements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Grids, DBGrids, DBStyleGrid, CustomTypes,
  StdCtrls, ExtCtrls, DBCtrls, Mask, DateUtils, StrUtils;

type
  TfrmSettlements = class(TForm)
    imlTools: TImageList;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    grdSettlements: TDBStyleGrid;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnAdd: TToolButton;
    btnView: TToolButton;
    btnPrint: TToolButton;
    pnlMBase: TPanel;
    Label1: TLabel;
    dbtIntrate: TDBText;
    dbtLoanPeriod: TDBText;
    lblNoInst: TLabel;
    lblLoanPeriod: TLabel;
    lblIntRate: TLabel;
    lblPercent: TLabel;
    lblAmtFin: TLabel;
    lblStartDate: TLabel;
    lblPayIns: TLabel;
    dbtAmtFin: TDBText;
    dbtStartdate: TDBText;
    dbtPayIns: TDBText;
    lblInstDate: TLabel;
    dbtInstDate: TDBText;
    dbtNoInst: TDBText;
    lblLoanType: TLabel;
    dbtLoanType: TDBText;
    lblStatus: TLabel;
    lblArrearsSettlement: TLabel;
    lblArrearsAmount: TLabel;
    lblArrearsAmt: TDBText;
    lblArrearsSettle: TDBText;
    cmbLoans: TComboBox;
    chkHideClose: TCheckBox;
    pnlCurrentDetail: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dbtCode: TDBText;
    dbtName: TDBText;
    dbtSurname: TDBText;
    Label12: TLabel;
    dbtIDnum: TDBText;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    edtEnt: TDBEdit;
    lblCycleEndDay: TLabel;
    dbtCycleEndDay: TDBText;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    btnSettle: TToolButton;
    ToolButton1: TToolButton;
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure edtEntChange(Sender: TObject);
    procedure cmbLoansChange(Sender: TObject);
    procedure chkHideCloseClick(Sender: TObject);
    procedure cmbLoansDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    procedure LoadLoanList;
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmSettlements: TfrmSettlements;

implementation

uses dmSettlementQuotes, dmLS, uLScentral, uLSconst, fmAddSettlementWizard,
  DB, dmMain, rptSettle;

{$R *.dfm}


procedure TfrmSettlements.btnAddClick(Sender: TObject);
begin
  frmAddSettlementWizard := TfrmAddSettlementWizard.Create(Self);
  try
    frmAddSettlementWizard.cmbLoanRef.Items := cmbLoans.Items;
    frmAddSettlementWizard.cmbLoanRef.Items.Strings[0] := '';
    if frmAddSettlementWizard.ShowModal = mrOK then
    begin
      dtmSettlementQuotes.dsSettlements.Requery;
    end;
  finally
    FreeAndNil(frmAddSettlementWizard);
  end;
end;

procedure TfrmSettlements.FormCreate(Sender: TObject);
begin
  dtmSettlementQuotes := TdtmSettlementQuotes.Create(Self);
  dtmSettlementQuotes.dsSettlements.Open;

  edtEnt.DataSource := dtmLS.dtsEntLoan;
  chkHideCloseClick(nil);
end;

procedure TfrmSettlements.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;

procedure TfrmSettlements.ToolButton7Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSettlements.edtEntChange(Sender: TObject);
begin
  if Self.Showing then
    if dtmLS.qryEntLoan.Active then
      LoadLoanList;
end;

procedure TfrmSettlements.cmbLoansChange(Sender: TObject);
var
  LoanID: Integer;
begin
  LoanId := StrToInt(cmbLoans.Items.Values[cmbLoans.Items.Names[cmbLoans.ItemIndex]]);
  if LoanID > 0 then
  begin
    dtmLS.qryEntLoan.Locate('LoanID', LoanID,[]);
    lblStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
    lblArrearsAmt.Transparent := not (dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency > 0);
  end;

  dtmSettlementQuotes.dsSettlements.Close;
  dtmSettlementQuotes.dsSettlements.Parameters.ParamByName('LoanID').Value := LoanID;
  dtmSettlementQuotes.dsSettlements.Parameters.ParamByName('EntityID').Value := dtmMain.qryEntDet.FieldByName('EntityID').AsInteger;
  dtmSettlementQuotes.dsSettlements.Open;

  lblStatus.Visible        := LoanID > 0;
  dbtLoanPeriod.Visible    := LoanID > 0;
  dbtNoInst.Visible        := LoanID > 0;
  dbtIntrate.Visible       := LoanID > 0;
  lblPercent.Visible       := LoanID > 0;
  dbtLoanType.Visible      := LoanID > 0;
  dbtAmtFin.Visible        := LoanID > 0;
  dbtStartdate.Visible     := LoanID > 0;
  dbtInstDate.Visible      := LoanID > 0;
  dbtPayIns.Visible        := LoanID > 0;
  lblArrearsAmt.Visible    := LoanID > 0;
  lblArrearsSettle.Visible := LoanID > 0;
  dbtCycleEndDay.Visible   := LoanID > 0;

  lblLoanPeriod.Enabled    := LoanID > 0;
  lblNoInst.Enabled        := LoanID > 0;
  lblIntRate.Enabled       := LoanID > 0;
  lblLoanType.Enabled      := LoanID > 0;
  lblAmtFin.Enabled        := LoanID > 0;
  lblStartDate.Enabled     := LoanID > 0;
  lblInstDate.Enabled      := LoanID > 0;
  lblPayIns.Enabled        := LoanID > 0;
  lblArrearsAmount.Enabled := LoanID > 0;
  lblArrearsSettlement.Enabled := LoanID > 0;
  lblCycleEndDay.Enabled   := LoanID > 0;


end;

procedure TfrmSettlements.LoadLoanList;
begin
  cmbLoans.Items.Clear;
  cmbLoans.Items.Add('Show All=0');
  with dtmLS do
  begin
    qryEntLoan.First;
    while not qryEntLoan.Eof do
    begin
      cmbLoans.Items.Add(
        qryEntLoan.FieldByName('RefNo').AsString + '=' +
        qryEntLoan.FieldByName('LoanID').AsString);
      qryEntLoan.Next;
    end;
  end;
  cmbLoans.ItemIndex := 0;
  cmbLoansChange(nil);
end;

procedure TfrmSettlements.chkHideCloseClick(Sender: TObject);
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

procedure TfrmSettlements.cmbLoansDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  cmbLoans.Canvas.FillRect(Rect);
  cmbLoans.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, cmbLoans.Items.Names[Index]);
end;

procedure TfrmSettlements.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmSettlementQuotes.dsSettlements.Close;
  FreeAndNil(dtmSettlementQuotes);
end;

procedure TfrmSettlements.btnPrintClick(Sender: TObject);

  //begin
    //SettleReport : TrepSettle;
  //ValidDays: Integer;
begin

  with dtmSettlementQuotes do
  begin
  //SettleReport := TrepSettle.Create(nil);
  //try
  dmMain.ShowSqlReport('rptPaidUpLetter_V3Boodle', '&AccountID=' + dsSettlements.FieldByName('LoanID').AsString);
  
    (*ValidDays := DaysBetween(dsSettlements.FieldByName('CreateDate').AsDateTime,dsSettlements.FieldByName('ExpiryDate').AsDateTime);
    SettleReport.lblLoanBal.Caption    := FloatToStrF(dsSettlements.FieldByName('LoanBalance').AsCurrency,ffCurrency,15,2);
    SettleReport.qlSettleDate1.Caption := 'THIS SETTLEMENT QUOTATION IS VALID FOR ' +
      IntToStr(ValidDays) + ' DAY' + IfThen(ValidDays = 1, '', 'S') + ' UNTIL ' +
      DateToStr(dsSettlements.FieldByName('ExpiryDate').AsDateTime);
    SettleReport.qlSettleDate2.Caption := 'The Settlement Quotation reflected herein is valid until ' +
      DateToStr(dsSettlements.FieldByName('ExpiryDate').AsDateTime) + ' ("the Settlement Date").';
    SettleReport.qlSettleDate3.Caption := DateToStr(dsSettlements.FieldByName('ExpiryDate').AsDateTime);

    SettleReport.qlRefNo.Caption := 'LOAN REFERENCE NO: ' + dsSettlements.FieldByName('RefNo').AsString;
    SettleReport.LoanRef := dsSettlements.FieldByName('RefNo').AsString;
    SettleReport.qlQuoteDate.Caption := DateToStr(dsSettlements.FieldByName('CreateDate').AsDateTime);
    SettleReport.qlUserID.Caption := dsSettlements.FieldByName('UserFullname').AsString;

    SettleReport.lblIntToDate.Caption  := FloatToStrF(dsSettlements.FieldByName('SettlementInterest').AsCurrency,ffCurrency,15,2);
    SettleReport.lblAdditionalCharges.Caption  := FloatToStrF(dsSettlements.FieldByName('AdditionalCharges').AsCurrency,ffCurrency,15,2);
    SettleReport.lblFutureTrans.Caption      := FloatToStrF(dsSettlements.FieldByName('FutureTransactions').AsCurrency,ffCurrency,15,2);
    SettleReport.lblDepBal.Caption      := FloatToStrF(dsSettlements.FieldByName('DepositBalance').AsCurrency,ffCurrency,15,2);
    SettleReport.lblFinal.Caption      := FloatToStrF(dsSettlements.FieldByName('SettlementAmount').AsCurrency,ffCurrency,15,2);
    SettleReport.QuickReport.Preview;

  finally
    SettleReport.Free;   *)
  end;
  end;
//end;

procedure TfrmSettlements.Button1Click(Sender: TObject);
begin
  if MEssageDlg('Run fees for ' + DateToStr(DateTimePicker1.Date) + '?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    dtmSettlementQuotes.cmdRunCycleFees.Parameters.ParamByName('CycleDate').Value := DateTimePicker1.Date;
    dtmSettlementQuotes.cmdRunCycleFees.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
    dtmSettlementQuotes.cmdRunCycleFees.Execute;
  end;
end;

end.
