unit fmClientAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Variants, Graphics, Controls, Forms, Dialogs,
  fmDBBaseGrd, Menus, Grids, DBGrids, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, UConst, DBGrdClr, Buttons, DBStyleGrid;

type
  TfrmClientAcc = class(TForm)
    pnlMBase: TPanel;
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
    grdBase: TDBStyleGrid;
    pnlTot: TPanel;
    lblTotals: TLabel;
    lblDR: TLabel;
    lblCR: TLabel;
    Label1: TLabel;
    cbxLoans: TComboBox;
    edtEnt: TDBEdit;
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
    Label2: TLabel;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    btnSettle: TButton;
    lblStatus: TLabel;
    imgAT: TImage;
    btnRepayTerm: TButton;
    chkHideClose: TCheckBox;
    btnArrearsSettle: TButton;
    Label19: TLabel;
    lblArrearsAmt: TDBText;
    lblArrearsSettle: TDBText;
    Shape1: TShape;
    DBText3: TDBText;
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbxLoansChange(Sender: TObject);
    procedure edtEntChange(Sender: TObject);
    procedure btnSettleClick(Sender: TObject);
    procedure btnRepayTermClick(Sender: TObject);
    procedure chkHideCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnArrearsSettleClick(Sender: TObject);
  private
    { Private declarations }
    lstLoans : TStringList;
    procedure LoadLoanList;
    procedure DoSettleDetailFrm;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS, fmSettleDetail, uLSConst, uLScentral, fmQuickRePay,
  Unit32, fmSettleArrears, dmSettleArrears, fmLegalSettlement;

{$R *.DFM}

procedure TfrmClientAcc.FormCreate(Sender: TObject);
begin
  dtmSettleArrears := TdtmSettleArrears.Create(Self);
  dtmSettleArrears.dbSettleArrears.Connected := False;
  dtmSettleArrears.dbSettleArrears.ConnectionString := dtmMain.dbData.ConnectionString;
  dtmSettleArrears.dbSettleArrears.Connected := True;
  
  lstLoans := TStringList.Create;
//  EdtEnt.OnChange(self);
  Self.Color     := dtmMain.ScrPnlColor;
  pnlMBase.Color := dtmMain.RecBarColor;
  dtmLS.SetAccStatus(True,acCA);
  grdBase.Realign;
  edtEnt.DataSource := dtmLS.dtsEntLoan;
  dtmMain.SetGrdColors(grdBase);

  chkHideClose.Checked := True;
//  chkHideCloseClick(chkHideClose);

  ReadFormGrids(Self,ApplName,PersonalFolder);
end;

procedure TfrmClientAcc.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.FieldName = 'TransCode') or
    (Column.FieldName = 'TransDesc') then
  begin
    case dtmLS.cdsAcc.FieldByName('TransType').AsInteger of
      11: grdBase.Canvas.Font.Color := clNavy;
      12: grdBase.Canvas.Font.Color := clRed;
    end; {case}
    grdBase.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end; {if}
  if Column.FieldName = 'Debit' then
  begin
    if Column.Field.AsCurrency < 0 then
      grdBase.Canvas.FillRect(Rect);
  end;
  if Column.FieldName = 'Credit' then
  begin
    if Column.Field.AsCurrency > 0 then
      grdBase.Canvas.FillRect(Rect);
  end;
end;

procedure TfrmClientAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmLS.SetAccStatus(False,acCA);
  lstLoans.Free;
  lstLoans := nil;
end;

procedure TfrmClientAcc.LoadLoanList;
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

procedure TfrmClientAcc.cbxLoansChange(Sender: TObject);
begin
  dtmLS.cdsAcc.Close;
  dtmLS.qryEntLoan.Locate('LoanID',StrToInt(lstLoans.Values[cbxLoans.Text]),[]);
  dtmLS.cdsAcc.Open;
  //dbtArrAmt.Transparent := dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency <= 0.00;
  //
  lblStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
  imgAT.Visible := dtmLS.qryEntLoan.FieldByName('LTaccT').AsInteger > ltactAsset;
  //
  lblDR.Caption := FloatToStrF(dtmLS.TotDebit,ffCurrency,15,2);
  lblCR.Caption := FloatToStrF(dtmLS.TotCredit,ffCurrency,15,2);

  lblArrearsAmt.Transparent := not (dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency > 0);
end;

procedure TfrmClientAcc.edtEntChange(Sender: TObject);
begin
  if Self.Showing then
    if dtmLS.qryEntLoan.Active then
      LoadLoanList;
end;

procedure TfrmClientAcc.btnSettleClick(Sender: TObject);
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

procedure TfrmClientAcc.DoSettleDetailFrm;
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

procedure TfrmClientAcc.btnRepayTermClick(Sender: TObject);
 var QRePay : TfrmQuickRePay;
begin
  QRePay := TfrmQuickRePay.Create(nil);
  try
    QRePay.ShowModal;
  finally
    QRePay.Free;
  end;
end;

procedure TfrmClientAcc.chkHideCloseClick(Sender: TObject);
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

procedure TfrmClientAcc.FormDestroy(Sender: TObject);
begin
  WriteFormGrids(Self,ApplName,PersonalFolder);
  FreeAndNil(dtmSettleArrears);
end;

procedure TfrmClientAcc.btnArrearsSettleClick(Sender: TObject);
begin
  frmSettleArrears := TfrmSettleArrears.Create(Self);
  try
    frmSettleArrears.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    frmSettleArrears.ShowModal;
  finally
    frmSettleArrears.Free;
  end;
end;

end.
