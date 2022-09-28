unit fmAffordCalc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask, Grids,
  DBGrids, DBGrdClr, Buttons, uBase32, dmAffordCalc, DB, Unit32, uReports, ADODB,
  Menus;

type
  TfrmAffordCalc = class(TfrmBase)
    pnlClient: TPanel;
    lblName: TLabel;
    lblName2: TLabel;
    lblEntCode: TLabel;
    txtEntCode: TDBText;
    txtName: TDBText;
    txtName2: TDBText;
    lblNettSal: TLabel;
    edtNetSal: TDBEdit;
    lblIncomes: TLabel;
    lblExpenses: TLabel;
    grdIncome: TDBGrdClr;
    grdExpenses: TDBGrdClr;
    lblAdjNetSal: TLabel;
    lblMinAmt: TLabel;
    edtMinHomeAmt: TDBEdit;
    lblMaxInst: TLabel;
    btnCalc: TToolButton;
    btnPrint: TToolButton;
    btnIncome: TSpeedButton;
    btnExpense: TSpeedButton;
    edtEntityID: TDBEdit;
    shpExpense: TShape;
    shpIncome: TShape;
    shpTotIncome: TShape;
    lblTotIncome: TLabel;
    shpAdjNetSal: TShape;
    lblNetSal: TLabel;
    shpMaxIns: TShape;
    lblMaxIns: TLabel;
    lblIncome: TDBText;
    lblExpense: TDBText;
    btnMinAmt: TSpeedButton;
    btnNetSal: TSpeedButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    GUI1: TMenuItem;
    Exit1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncomeClick(Sender: TObject);
    procedure btnExpenseClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure btnMinAmtClick(Sender: TObject);
    procedure btnNetSalClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure grdIncomeDblClick(Sender: TObject);
    procedure grdExpensesDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FFReadOnly: Boolean;
    { Private declarations }
//    dtmAffCalc : TdtmAffCalc;
    procedure SetOBJcolors;
    procedure CalcAffordability;
    procedure DoAffordLU(frmTitle : String; IorE : Char; Expense : Boolean; DtsLU, DtsPost : TDataSource);
    procedure SetFReadOnly(const Value: Boolean);
  public
    { Public declarations }
    property FReadOnly: Boolean read FFReadOnly write SetFReadOnly;
    procedure DoIncomeExpense(qryLU, qryDo: TDataSet; Heading: String;
      curGrd: TDBGrdClr);
    procedure ChangeAmounts(inField, inCaption, inPrompt : String);

  end;

implementation

uses dmMain, dmLS, fmBase_LUAfford;

{$R *.DFM}

procedure TfrmAffordCalc.SetOBJcolors;
begin
  dtmMain.SetGrdColors([grdIncome, grdExpenses]);  
  shpIncome.Brush.Color     := dtmMain.ScrPnlColor;
  shpExpense.Brush.Color    := dtmMain.ScrPnlColor;
  shpTotIncome.Brush.Color  := dtmMain.ScrPnlColor;
  shpAdjNetSal.Brush.Color  := dtmMain.ScrPnlColor;
  shpMaxIns.Brush.Color     := dtmMain.ScrPnlColor;
end;

procedure TfrmAffordCalc.FormCreate(Sender: TObject);
begin
  dtmAffordCalc := TdtmAffordCalc.Create(Self);
  SetOBJcolors;
  //btnCalcClick(nil);
end;

procedure TfrmAffordCalc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmAffordCalc.SetCurTotals;
  dtmAffordCalc.Free;
  dtmAffordCalc := nil;
end;

procedure TfrmAffordCalc.btnIncomeClick(Sender: TObject);
begin
  DoAffordLU('Add Income','I', False, dtmAffordCalc.dtsIncomeLU, dtmAffordCalc.dtsCalcIncome);
end;

procedure TfrmAffordCalc.DoIncomeExpense(qryLU, qryDo: TDataSet; Heading: String;
  curGrd: TDBGrdClr);
var
  Code : Integer;
begin
  if CheckDataSetForPost(qryDo) then
    qryDo.Post;
  //Code := ShowLU(qryLU, Heading);
  code := qryLU.fieldbyname('IdVal').AsInteger;
  if Code <> -1 then
  begin
    if qryDo.Locate('CalcType', Code, []) then
      MesDlg('Type already selected. Please amend the relevant amount.','E')
    else
    begin
      qryDo.Append;
      qryDo.FieldByName('EntID').AsInteger := dtmAffordCalc.qryEntDetail.FieldByName('EntityID').AsInteger;
      qryDo.FieldByName('CalcType').AsInteger := Code;
      qryDo.FieldByName('Amount').AsCurrency  := 0;
      qryDo.Post;
      qryDo.Edit;
      curGrd.SelectedIndex := 1;
      curGrd.SetFocus;
    end;
  end
  else
    qryDo.Cancel;
end;
procedure TfrmAffordCalc.btnExpenseClick(Sender: TObject);
begin
  {DoIncomeExpense(dtmAffordCalc.qryExpenseLU, dtmAffordCalc.qryCalcExpense, 'Lookup - Expense',
    grdExpenses);}
  DoAffordLU('Add Expense','I', True, dtmAffordCalc.dtsExpenseLU, dtmAffordCalc.dtsCalcExpense);
end;

procedure TfrmAffordCalc.CalcAffordability;
begin
  dtmAffordCalc.SetCurTotals;
  lblTotIncome.Caption  := FloatToStrF(dtmAffordCalc.TotInc,ffCurrency,15,2);
  lblNetSal.Caption     := FloatToStrF(dtmAffordCalc.TotInc-dtmAffordCalc.TotExp,ffCurrency,15,2);
  lblMaxIns.Caption     := FloatToStrF(dtmAffordCalc.TotalAmt,ffCurrency,15,2);
  if dtmAffordCalc.TotalAmt < 0 then
    lblMaxIns.Font.Color := clRed
  else
    lblMaxIns.Font.Color := clBlack;
end;

procedure TfrmAffordCalc.btnCalcClick(Sender: TObject);
begin
  if dtmAffordCalc.dtsCalcIncome.State in [dsEdit, dsInsert] then
    dtmAffordCalc.qryCalcIncome.Post;
  CalcAffordability;
end;

procedure TfrmAffordCalc.btnMinAmtClick(Sender: TObject);
begin
  ChangeAmounts('MinHomeAmt','MINIMUM AMOUNT','Enter the minimum amount that should be left:');
  CalcAffordability;
end;

procedure TfrmAffordCalc.ChangeAmounts(inField, inCaption, inPrompt : String);
var
  inString : String;
begin
  inString := CurrToStr(dtmAffordCalc.qryEntDetail.FieldByName(inField).AsCurrency);
  dtmAffordCalc.qryEntDetail.Edit;
  if InputQuery(inCaption,inPrompt,inString) then
  begin
    dtmAffordCalc.qryEntDetail.FieldByName(inField).AsCurrency := StrToCurr(inString);
    dtmAffordCalc.qryEntDetail.Post;
  end
  else
    dtmAffordCalc.qryEntDetail.Cancel;
end;

procedure TfrmAffordCalc.btnNetSalClick(Sender: TObject);
begin
  ChangeAmounts('MthGross','NETT SALARY','Enter the nett salary amount:');
  CalcAffordability;
end;

procedure TfrmAffordCalc.btnPrintClick(Sender: TObject);
begin
  LoadReport(5, False);
end;

procedure TfrmAffordCalc.SpeedButton1Click(Sender: TObject);
var
  frmAffordLU : TfrmBase_LUAfford;
begin
  frmAffordLU := TfrmBase_LUAfford.Create(self);
  try
    frmAffordLU.ShowModal;
  finally
    frmAffordLU.Free;
  end;
end;

procedure TfrmAffordCalc.DoAffordLU(frmTitle: String; IorE: Char; Expense : Boolean;
  DtsLU, DtsPost : TDataSource);
var
  frmAfford : TfrmBase_LUAfford;
begin
  frmAfford := TfrmBase_LUAfford.Create(self);
  try
    frmAfford.Caption := frmTitle;
    begin
      frmAfford.cbxDescLU.DataSet := DtsLU.DataSet;
      frmAfford.edtAmount.DataSource := DtsPost;
      frmAfford.cbxDescLU.LoadCBX;
      if UpCase(IorE) = 'I' then
      begin
        DtsPost.DataSet.Append;
        frmAfford.btnDelete.Enabled := False;
      end
      else
      begin
        //frmAfford.cbxDescLU.Items.Insert(0,DtsPost.DataSet.FieldByName('LUCalcType').AsString);
        //frmAfford.cbxDescLU.ItemIndex := 0;
        DtsPost.Edit;
      end;

      case frmAfford.ShowModal of
      mrOK:
        begin
          DtsPost.DataSet.FieldByName('EntID').AsInteger :=
            dtmMain.qryEntDet.FieldByName('EntityID').AsInteger;
          DtsPost.DataSet.FieldByName('CalcType').AsString :=
            frmAfford.cbxDescLU.KeyVal;
          DtsPost.DataSet.Post;
          RequeryOnRecord(TADODataSet(DtsPost.DataSet),'EntID');
          RequeryOnRecord(TADODataSet(DtsLU.DataSet),'IdVal');
          CalcAffordability;
        end;
      mrNo:
        begin
          DtsPost.DataSet.Cancel;
          DtsPost.DataSet.Delete;
          RequeryOnRecord(TADODataSet(DtsPost.DataSet),'EntID');
          RequeryOnRecord(TADODataSet(DtsLU.DataSet),'IdVal');
          CalcAffordability;
        end
      else
        DtsPost.DataSet.Cancel;
      end;
    end;
  finally
    frmAfford.Free;
  end;
end;

procedure TfrmAffordCalc.grdIncomeDblClick(Sender: TObject);
begin
  DoAffordLU('Edit Income','E', False, dtmAffordCalc.dtsIncomeLU, dtmAffordCalc.dtsCalcIncome);

end;

procedure TfrmAffordCalc.grdExpensesDblClick(Sender: TObject);
begin
  DoAffordLU('Edit Income','E', True, dtmAffordCalc.dtsExpenseLU, dtmAffordCalc.dtsCalcExpense);
end;

procedure TfrmAffordCalc.FormShow(Sender: TObject);
begin
  inherited;
  CalcAffordability;
end;

procedure TfrmAffordCalc.SetFReadOnly(const Value: Boolean);
begin
  FFReadOnly := Value;
  if Value then
  begin
    btnCalc.Enabled := False;
    grdIncome.ReadOnly := True;
    grdIncome.Color := dtmMain.ScrPnlColor;
    grdExpenses.ReadOnly := True;
    grdExpenses.Color := dtmMain.ScrPnlColor;

    edtNetSal.ReadOnly := True;
    edtNetSal.Color := dtmMain.ScrPnlColor;
    edtMinHomeAmt.ReadOnly := True;
    edtMinHomeAmt.Color := dtmMain.ScrPnlColor;
    btnIncome.Hide;
    btnExpense.Hide;
    btnNetSal.Hide;
    btnMinAmt.Hide;
  end;
end;

end.
