unit fmLCD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBaseGrd, Menus, Grids, DBGrids, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, uConst, DBGrdClr, Buttons, DBStyleGrid;

type
  TfrmLCD = class(TForm)
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
    Label20: TLabel;
    dbtLoanType: TDBText;
    Label21: TLabel;
    dbtTotInt: TDBText;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    lblStatus: TLabel;
    chkHideClose: TCheckBox;
    grdBase: TDBStyleGrid;
    Bevel1: TBevel;
    Label19: TLabel;
    lblArrearsAmt: TDBText;
    Label2: TLabel;
    lblArrearsSettle: TDBText;
    Shape1: TShape;
    DBText3: TDBText;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbxLoansChange(Sender: TObject);
    procedure edtEntChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnTestClick(Sender: TObject);
    procedure chkHideCloseClick(Sender: TObject);
  private
    { Private declarations }
    lstLoans : TStringList;
    procedure LoadLoanList;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS, dmLCD, uLCCentral, uLScentral, uLSconst, Unit32;

{$R *.DFM}

procedure TfrmLCD.FormCreate(Sender: TObject);
begin
  dtmLCD := TdtmLCD.Create(self);
  dtmLCD.SetDBCon(dtmMain.dbData);
  lstLoans := TStringList.Create;

  dtmLS.qryEntLoan.Open;
  dtmLCD.SetDataStatus(True);
  grdBase.Realign;
  edtEnt.DataSource := dtmLS.dtsEntLoan;
  ReadFormGrids(Self,ApplName,PersonalFolder);
end;

procedure TfrmLCD.FormShow(Sender: TObject);
begin
  chkHideClose.Checked := True;
  //chkHideCloseClick(chkHideClose);
end;

procedure TfrmLCD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  EdtEnt.Enabled := False;
  lstLoans.Free;
  lstLoans := nil;
end;

procedure TfrmLCD.FormDestroy(Sender: TObject);
begin
  WriteFormGrids(Self,ApplName,PersonalFolder);
  dtmLS.qryEntLoan.Close;
  dtmLCD.Free;
  dtmLCD := nil;
end;

procedure TfrmLCD.LoadLoanList;
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

procedure TfrmLCD.cbxLoansChange(Sender: TObject);
begin
  dtmLCD.LoanID := StrToInt(lstLoans.Values[cbxLoans.Text]);
  dtmLCD.BuildAndRunContract;
  dtmLS.qryEntLoan.Locate('LoanID',StrToInt(lstLoans.Values[cbxLoans.Text]),[]);
  lblArrearsAmt.Transparent := dtmLS.qryEntLoan.FieldByName('ArrearsAmt').AsCurrency <= 0;
  //
  lblStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
  //
//  lblDR.Caption := FloatToStrF(dtmLS.TotDebit,ffCurrency,15,2);
//  lblCR.Caption := FloatToStrF(dtmLS.TotCredit,ffCurrency,15,2);
end;

procedure TfrmLCD.edtEntChange(Sender: TObject);
begin
  if Self.Showing then
    if dtmLS.qryEntLoan.Active then
      LoadLoanList;
end;

procedure TfrmLCD.grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  str : string;
begin
  if Column.FieldName = 'PayDesc' then
  begin
    str := GetTypeDesc(dtmLCD.cdsContract.FieldByName('Type').AsInteger);
    TDBGrid(Sender).Canvas.TextOut(Rect.Left+2,Rect.Top+1,str);
  end;
end;

procedure TfrmLCD.btnTestClick(Sender: TObject);
begin
  FloatToStr(dtmLCD.GetTotPayUpTo(dtmLCD.cdsContract.FieldByName('EffectDate').AsDateTime));
end;

procedure TfrmLCD.chkHideCloseClick(Sender: TObject);
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

end.
