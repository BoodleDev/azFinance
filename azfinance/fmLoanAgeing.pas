unit fmLoanAgeing;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBaseGrd, Menus, Grids, DBGrids, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, UConst, DBGrdClr, Buttons, DBStyleGrid;

type
  TfrmLoanAgeing = class(TForm)
    edtEnt: TDBEdit;
    Panel1: TPanel;
    DBStyleGrid1: TDBStyleGrid;
    Panel2: TPanel;
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
    dtpArrears: TDateTimePicker;
    dbtCycleEndDay: TDBText;
    lblCycleEndDay: TLabel;
    Label6: TLabel;
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
  DB;

{$R *.DFM}

procedure TfrmLoanAgeing.FormCreate(Sender: TObject);
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
  edtEnt.DataSource := dtmLS.dtsEntLoan;

  chkHideClose.Checked := True;

  //ReadFormGrids(Self,ApplName,PersonalFolder);
end;

procedure TfrmLoanAgeing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmLS.SetAccStatus(False,acLA);
  lstLoans.Free;
  lstLoans := nil;
end;

procedure TfrmLoanAgeing.LoadLoanList;
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

procedure TfrmLoanAgeing.cbxLoansChange(Sender: TObject);
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

  lblArrearsAmt.Transparent := not (dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency > 0);
end;

procedure TfrmLoanAgeing.edtEntChange(Sender: TObject);
begin
  if Self.Showing then
    if dtmLS.qryEntLoan.Active then
      LoadLoanList;
end;

procedure TfrmLoanAgeing.btnSettleClick(Sender: TObject);
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

procedure TfrmLoanAgeing.DoSettleDetailFrm;
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

procedure TfrmLoanAgeing.chkHideCloseClick(Sender: TObject);
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

procedure TfrmLoanAgeing.FormDestroy(Sender: TObject);
begin
  //WriteFormGrids(Self,ApplName,PersonalFolder);
  FreeAndNil(dtmSettleArrears);
end;

procedure TfrmLoanAgeing.btnArrearsSettleClick(Sender: TObject);
begin
  frmSettleArrears := TfrmSettleArrears.Create(Self);
  try
    frmSettleArrears.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    frmSettleArrears.ShowModal;
  finally
    frmSettleArrears.Free;
  end;
end;

procedure TfrmLoanAgeing.btnRepayTermClick(Sender: TObject);
 var QRePay : TfrmQuickRePay;
begin
  QRePay := TfrmQuickRePay.Create(nil);
  try
    QRePay.ShowModal;
  finally
    QRePay.Free;
  end;
end;

procedure TfrmLoanAgeing.dtpArrearsChange(Sender: TObject);
begin
  ArrearsAgeDate := dtpArrears.DateTime;
  dtmLS.dsAgeRealTime.Close;
  dtmLS.dsAgeRealTime.Parameters.ParamByName('LoanID').Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
  dtmLS.dsAgeRealTime.Parameters.ParamByName('Date').Value := dtpArrears.DateTime;
  dtmLS.dsAgeRealTime.Open;
end;

end.


