//~~ Filters
unit fmGraphBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ToolWin, ComCtrls, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, DBChart, Db, StdCtrls, Buttons;

type
  TfrmGraphBase = class(TfrmBase)
    dtsGraph: TDataSource;
    dbGraphs: TDBChart;
    ser1Graph: TBarSeries;
    pnlTop: TPanel;
    lblGraphType: TLabel;
    cbxGrpType: TComboBox;
    Label1: TLabel;
    rbtnNo: TRadioButton;
    rbtnAmt: TRadioButton;
    Bevel1: TBevel;
    btnPrint: TToolButton;
    btnPrintGrp: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbxGrpTypeChange(Sender: TObject);
    procedure rbtnNoClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetGraphChange;
    procedure SetGraphSeries(inDataSet: TDataSet; inXSource : string);
  public
    { Public declarations }
  end;

implementation

uses dmGraphs, dmMain, uReports;

{$R *.DFM}

procedure TfrmGraphBase.FormCreate(Sender: TObject);
begin
  inherited;
  dtmGraphs := TdtmGraphs.Create(Self);
  dtmGraphs.SetGraphDataReadyStatus(True);
end;

procedure TfrmGraphBase.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmGraphs.SetGraphDataReadyStatus(False);
  dtmGraphs.Free;
  dtmGraphs := nil;
end;

procedure TfrmGraphBase.FormShow(Sender: TObject);
begin
  inherited;
  Self.Color := dtmMain.ScrPnlColor;
  btnPrintGrp.Left := pnlTop.Width-btnPrintGrp.Width;
  cbxGrpType.ItemIndex := 0;
  cbxGrpTypeChange(self);
end;

procedure TfrmGraphBase.btnPrintClick(Sender: TObject);
begin
  inherited;
  if rbtnNo.Checked then
    PrintA_DBChart(cbxGrpType.Text+' - Number of loans#',dbGraphs)
  else
    PrintA_DBChart(cbxGrpType.Text+' - Sum of loan amount#',dbGraphs);
end;

procedure TfrmGraphBase.cbxGrpTypeChange(Sender: TObject);
begin
  inherited;
  rbtnAmt.Caption := 'Loan capital total';
  rbtnNo.Checked;
  ser1Graph.XLabelsSource := '';
  case cbxGrpType.ItemIndex of
    0: SetGraphSeries(dtmGraphs.spcSumLoanType,'LoanType');
    1: SetGraphSeries(dtmGraphs.spcSumLoanUse,'Description');
    2: begin
         SetGraphSeries(dtmGraphs.spcArrearsStats,'ArrearDays');
         rbtnAmt.Caption := 'Arrears total';
       end;
    3: SetGraphSeries(dtmGraphs.spcLoanPeriod,'LoanPeriod');
    4: SetGraphSeries(dtmGraphs.spcLoanStatus,'LoanStatus');
  end;
  SetGraphChange;
  if ser1Graph.Count > 12 then
    ser1Graph.Marks.Visible := False
  else
    ser1Graph.Marks.Visible := True;
  ser1Graph.RefreshSeries;// RecalcOptions;
end;

procedure TfrmGraphBase.SetGraphChange;
begin
  if rbtnNo.Checked then
    ser1Graph.YValues.ValueSource := 'cntLoan'
  else
    ser1Graph.YValues.ValueSource := 'sumLC';
end;

procedure TfrmGraphBase.rbtnNoClick(Sender: TObject);
begin
  inherited;
  SetGraphChange;
end;

procedure TfrmGraphBase.SetGraphSeries(inDataSet: TDataSet;
  inXSource : string);
begin
  ser1Graph.DataSource := inDataSet;
  ser1Graph.XLabelsSource := inXSource;
end;

end.
