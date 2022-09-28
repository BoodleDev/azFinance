unit fmDepAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBaseGrd, Menus, Grids, DBGrids, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, UConst, Buttons, DBGrdClr, DBStyleGrid;

type
  TfrmDepAcc = class(TForm)
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
    Label6: TLabel;
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
    dbtArrAmt: TDBText;
    dbtAvlBal: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    dbtLoanType: TDBText;
    Label2: TLabel;
    dbtArrDate: TDBText;
    Label18: TLabel;
    Label21: TLabel;
    dbtTotInt: TDBText;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    lblStatus: TLabel;
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbxLoansChange(Sender: TObject);
    procedure edtEntChange(Sender: TObject);
  private
    { Private declarations }
    lstLoans : TStringList;
    procedure LoadLoanList;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS, uLSConst, uLScentral;

{$R *.DFM}

procedure TfrmDepAcc.FormCreate(Sender: TObject);
begin
  lstLoans := TStringList.Create;
end;

procedure TfrmDepAcc.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
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

procedure TfrmDepAcc.FormShow(Sender: TObject);
begin
  Self.Color     := dtmMain.ScrPnlColor;
  pnlMBase.Color := dtmMain.RecBarColor;
  dtmLS.SetAccStatus(True,acDA);
  grdBase.Realign;
  edtEnt.DataSource := dtmLS.dtsEntLoan;
  dtmMain.SetGrdColors(grdBase);
end;

procedure TfrmDepAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmLS.SetAccStatus(False,acDA);
  lstLoans.Free;
  lstLoans := nil;
end;

procedure TfrmDepAcc.LoadLoanList;
var
  i : integer;
begin
  cbxLoans.Items.Clear;
  dtmLS.LoadLoanLst(lstLoans);
  for i := 0 to lstLoans.Count-1 do
    cbxLoans.Items.Add(lstLoans.Names[i]);
  cbxLoans.ItemIndex := 0;
  cbxLoansChange(nil);
end;

procedure TfrmDepAcc.cbxLoansChange(Sender: TObject);
begin
  dtmLS.cdsAcc.Close;
  dtmLS.qryEntLoan.Locate('LoanID',StrToInt(lstLoans.Values[cbxLoans.Text]),[]);
  dtmLS.cdsAcc.Open;
  dbtArrAmt.Transparent := dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency <= 0;
  //
  lblStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
  //
  lblDR.Caption := FloatToStrF(dtmLS.TotDebit,ffCurrency,15,2);
  lblCR.Caption := FloatToStrF(dtmLS.TotCredit,ffCurrency,15,2);
end;

procedure TfrmDepAcc.edtEntChange(Sender: TObject);
begin
  if dtmLS.qryEntLoan.Active then
    LoadLoanList;
end;

end.
