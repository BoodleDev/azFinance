unit fmLoanAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBaseGrd, Menus, Grids, DBGrids, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, UConst, DBGrdClr, Buttons, DBStyleGrid;

type
  TfrmLoanAcc = class(TForm)
    edtEnt: TDBEdit;
    Panel1: TPanel;
    DBStyleGrid1: TDBStyleGrid;
    Label6: TLabel;
    Panel2: TPanel;
    grdBase: TDBStyleGrid;
    pnlTot: TPanel;
    lblTotals: TLabel;
    lblDR: TLabel;
    lblCR: TLabel;
    pnlMBase: TPanel;
    Label1: TLabel;
    dbtIntrate: TDBText;
    dbtLoanPeriod: TDBText;
    Label3: TLabel;
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
    Bevel1: TBevel;
    Label20: TLabel;
    dbtLoanType: TDBText;
    lblStatus: TLabel;
    Label2: TLabel;
    Label19: TLabel;
    lblArrearsAmt: TDBText;
    lblArrearsSettle: TDBText;
    Shape1: TShape;
    DBText3: TDBText;
    cbxLoans: TComboBox;
    btnSettle: TButton;
    chkHideClose: TCheckBox;
    btnArrearsSettle: TButton;
    btnRepayTerm: TButton;
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
    Splitter1: TSplitter;
    dtpArrears: TDateTimePicker;
    dbtCycleEndDay: TDBText;
    lblCycleEndDay: TLabel;
    lvwAge: TListView;
    Label18: TLabel;
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbxLoansChange(Sender: TObject);
    procedure edtEntChange(Sender: TObject);
    procedure btnSettleClick(Sender: TObject);
    procedure chkHideCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnArrearsSettleClick(Sender: TObject);
    procedure btnRepayTermClick(Sender: TObject);
    procedure dtpArrearsChange(Sender: TObject);
  private
    { Private declarations }
    lstLoans : TStringList;
    procedure LoadLoanList;
    procedure DoSettleDetailFrm;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS, fmSettleDetail, uLSConst, uLScentral, Unit32,
  fmSettleArrears, dmSettleArrears, fmQuickRePay, fmLegalSettlement, ADODB,
  DB, fmSettleArrears2;

{$R *.DFM}

procedure TfrmLoanAcc.FormCreate(Sender: TObject);
begin
  dtpArrears.DateTime := ArrearsAgeDate;
  
  dtmSettleArrears := TdtmSettleArrears.Create(Self);
  dtmSettleArrears.dbSettleArrears.Connected := False;
  dtmSettleArrears.dbSettleArrears.ConnectionString := dtmMain.dbData.ConnectionString;
  dtmSettleArrears.dbSettleArrears.Connected := True;

  lstLoans := TStringList.Create;

  Self.Color     := dtmMain.ScrPnlColor;
  pnlMBase.Color := dtmMain.RecBarColor;
  dtmLS.SetAccStatus(True,acLA);
  grdBase.Realign;
  edtEnt.DataSource := dtmLS.dtsEntLoan;
  dtmMain.SetGrdColors(grdBase);

  chkHideClose.Checked := True;

  ReadFormGrids(Self,ApplName,PersonalFolder);
end;

procedure TfrmLoanAcc.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.FieldName = 'TransCode') or
    (Column.FieldName = 'TransDesc') then
  begin
    if not (gdSelected in State) then
    case dtmLS.cdsAcc.FieldByName('TransType').AsInteger of
      11: grdBase.Canvas.Font.Color := clNavy;
      12: grdBase.Canvas.Font.Color := clRed;
    end; {case}
    grdBase.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end; {if}
{  if Column.FieldName = 'Debit' then
  begin
    if Column.Field.AsCurrency < 0 then
      grdBase.Canvas.FillRect(Rect);
  end;
  if Column.FieldName = 'Credit' then
  begin
    if Column.Field.AsCurrency > 0 then
      grdBase.Canvas.FillRect(Rect);
  end;
  }
end;

procedure TfrmLoanAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmLS.SetAccStatus(False,acLA);
  lstLoans.Free;
  lstLoans := nil;
end;

procedure TfrmLoanAcc.LoadLoanList;
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

procedure TfrmLoanAcc.cbxLoansChange(Sender: TObject);
var
  iLoanID: Integer;
begin
  iLoanID := StrToInt(lstLoans.Values[cbxLoans.Text]);
  dtmLS.cdsAcc.Close;
  dtmLS.qryEntLoan.Locate('LoanID',iLoanID,[]);
  dtmLS.cdsAcc.Open;
  dtmLS.cdsAcc.Last;
  //dbtArrAmt.Transparent := dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency <= 0;

  dtpArrearsChange(nil);

  lblStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);

  lblDR.Caption  := FloatToStrF(dtmLS.TotDebit,ffCurrency,15,2);
  lblCR.Caption  := FloatToStrF(dtmLS.TotCredit,ffCurrency,15,2);

  lblArrearsAmt.Transparent := not (dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency > 0);
end;

procedure TfrmLoanAcc.edtEntChange(Sender: TObject);
begin
  if Self.Showing then
    if dtmLS.qryEntLoan.Active then
      LoadLoanList;
end;

procedure TfrmLoanAcc.btnSettleClick(Sender: TObject);
begin
  if (dtmLS.qryEntLoan.FieldByName('Status').AsInteger = lnsHandover) and
    (dtmLS.qryEntLoan.FieldByName('JDProcessed').AsBoolean) then
  begin
    frmLegalSettlement := TfrmLegalSettlement.Create(Self);
    try
      frmLegalSettlement.ConnectionString := dtmMain.dbData.ConnectionString;
      frmLegalSettlement.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
      frmLegalSettlement.ShowModal;
    finally
      FreeAndNil(frmLegalSettlement);
    end;
  end
  else
    DoSettleDetailFrm;
end;

procedure TfrmLoanAcc.DoSettleDetailFrm;
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
end;

procedure TfrmLoanAcc.chkHideCloseClick(Sender: TObject);
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

procedure TfrmLoanAcc.FormDestroy(Sender: TObject);
begin
  WriteFormGrids(Self,ApplName,PersonalFolder);
  FreeAndNil(dtmSettleArrears);
end;

procedure TfrmLoanAcc.btnArrearsSettleClick(Sender: TObject);
begin
  frmSettleArrears2 := TfrmSettleArrears2.Create(Self);
  try
    frmSettleArrears2.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    frmSettleArrears2.ShowModal;
  finally
    FreeAndNil(frmSettleArrears2);
  end;
end;

procedure TfrmLoanAcc.btnRepayTermClick(Sender: TObject);
 var QRePay : TfrmQuickRePay;
begin
  QRePay := TfrmQuickRePay.Create(nil);
  try
    QRePay.ShowModal;
  finally
    QRePay.Free;
  end;
end;

procedure TfrmLoanAcc.dtpArrearsChange(Sender: TObject);
//var
//  Item: TListItem;
begin
{  ArrearsAgeDate := Date;
  with dtmLS do
  begin
    dsArrearsAge.Close;
    dsArrearsAge.Parameters.ParamByName('LoanID').Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    dsArrearsAge.Parameters.ParamByName('Date').Value := dtpArrears.DateTime;
    dsArrearsAge.Open;

    dsArrearsAge.Last;
    lvwAge.Clear;
    Item := lvwAge.Items.Add;
    Item.Caption := dsArrearsAge.FieldByName('EffectiveDate').AsString;
    Item.SubItems.Add(dsArrearsAge.FieldByName('MonthEndDate').AsString);
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('InstalmentDue').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('AmountPaid').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('AdditionalFees').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('ArrearsInterest').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('TotalArrears').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('TotalDue').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days12').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days11').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days10').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days9').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days8').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days7').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days6').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days5').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days4').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days3').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days2').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days1').AsCurrency,ffCurrency,2));
    Item.SubItems.Add(CurrToStrF(dsArrearsAge.FieldByName('Days0').AsCurrency,ffCurrency,2));
  end;  }
end;

end.


