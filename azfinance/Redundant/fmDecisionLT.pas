unit fmDecisionLT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, TeeProcs, Chart, mxgraph, Grids, mxgrid, ExtCtrls,
  mxpivsrc, ComCtrls, StdCtrls, Buttons, Printers, DBGrids, ToolWin,
  Unit32, mxdb, Db, DBClient, Mask;

type
  TfrmDecisionLT = class(TForm)
    azLoans: TDecisionPivot;
    pcDecision: TPageControl;
    tsDecGrid: TTabSheet;
    dGrdLoans: TDecisionGrid;
    tsDecGraph: TTabSheet;
    dcGraphLT: TDecisionGraph;
    btnPrintGraph: TSpeedButton;
    pnlMain: TPanel;
    Label8: TLabel;
    cbxCubes: TComboBox;
    tlbPrint: TToolBar;
    btnPrint: TToolButton;
    cdsCube: TClientDataSet;
    DataSource1: TDataSource;
    cdsCubeRecID: TAutoIncField;
    cdsCubeFld0: TStringField;
    cdsCubeFld1: TStringField;
    cdsCubeFld2: TStringField;
    cdsCubeFld3: TStringField;
    cdsCubeFld4: TStringField;
    cdsCubeFld5: TStringField;
    cdsCubeFld6: TStringField;
    btnSumDellRate: TToolButton;
    cdsCubeFld7: TStringField;
    cdsCubeFld8: TStringField;
    Label3: TLabel;
    edtMonthEnd: TMaskEdit;
    btnGetD: TButton;
    lblMY: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPrintGraphClick(Sender: TObject);
    procedure dcGraphLTUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure cbxCubesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSumDellRateClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure btnGetDClick(Sender: TObject);
  private
    { Private declarations }
    function GetArrDesc(inVal: string):string;
    procedure DoGraphBars;
    procedure SetCubeType(inType: integer);
    procedure SetCubeScreenDTS(Ready: boolean; decCube: TDecisionCube;
      decSource: TDecisionSource);
    procedure PrintReport(FillCDS: boolean);
    procedure FillCDSwithCube;
  public
    { Public declarations }
  end;

implementation

uses dmGraphs, dmMain, rptCube;

{$R *.DFM}

procedure TfrmDecisionLT.FormShow(Sender: TObject);
begin
  Self.Color := dtmMain.ScrPnlColor;
  tlbPrint.Color := dtmMain.RecBarColor;
end;

procedure TfrmDecisionLT.DoGraphBars;
var
  i : integer;
begin
  for i := 0 to dcGraphLT.SeriesCount-1 do
    (dcGraphLT.Series[i] as TBarSeries).BarStyle := bsRectGradient
end;

procedure TfrmDecisionLT.FormCreate(Sender: TObject);
begin
  dtmGraphs := TdtmGraphs.Create(self);
  //
  cdsCube.CreateDataSet;
  cdsCube.Open;
end;

procedure TfrmDecisionLT.FormDestroy(Sender: TObject);
begin
  SetCubeScreenDTS(False,dtmGraphs.dcLoanType,nil);
  SetCubeScreenDTS(False,dtmGraphs.dcArrFreq,nil);
  SetCubeScreenDTS(False,dtmGraphs.dcDellRate,nil);
  dtmGraphs.Free;
  dtmGraphs := nil;
  //
  cdsCube.Close;
end;

procedure TfrmDecisionLT.btnPrintGraphClick(Sender: TObject);
begin
  dcGraphLT.Gradient.Visible := False;
  dcGraphLT.Title.Text.Clear;
  dcGraphLT.Title.Text.Add('Company name:  '+dtmMain.SysCpyName+
    '      Branch:  All Branches'+//dtmMain.CurBranchName+
    '      Date printed: '+DateToStr(Date));
  dcGraphLT.Title.Text.Add('Decision graph');
  dcGraphLT.PrintProportional := false; //this strech graph
  dcGraphLT.PrintMargins := Rect(5,5,5,5);
  dcGraphLT.PrintLandscape;
  dcGraphLT.Title.Text.Clear;
  dcGraphLT.Gradient.Visible := True;
end;

procedure TfrmDecisionLT.dcGraphLTUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
//  dcGraphLT.Parent := tsDecGraph;
{ if Client is TDockableForm then
    TDockableForm(Client).DockSite := True;
  if (DockClientCount = 2) and (NewTarget <> Self) then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  UpdateCaption(Client);
}
end;

procedure TfrmDecisionLT.SetCubeScreenDTS(Ready: boolean; decCube: TDecisionCube;
  decSource: TDecisionSource);
begin
  azLoans.DecisionSource   := nil;
  if decCube.DataSet.Active <> Ready then
    decCube.DataSet.Active := Ready;
  if decCube.Active <> Ready then
    decCube.Active         := Ready;
  azLoans.DecisionSource   := decSource;
  dGrdLoans.DecisionSource := decSource;
  dcGraphLT.DecisionSource := decSource;
end;

procedure TfrmDecisionLT.SetCubeType(inType: integer);
begin
  case inType of
     1 : begin
           SetCubeScreenDTS(True,dtmGraphs.dcLoanType,dtmGraphs.dsrcLoanType);
         end;
     2 : begin
           SetCubeScreenDTS(True,dtmGraphs.dcArrFreq,dtmGraphs.dsrcArrFreq);
         end;
     3 : begin
           SetCubeScreenDTS(True,dtmGraphs.dcDellRate,dtmGraphs.dsrcDellRate);
         end;
  end;
  DoGraphBars;
end;

procedure TfrmDecisionLT.cbxCubesChange(Sender: TObject);
begin
  SetCubeType(cbxCubes.ItemIndex);
  dcGraphLT.Title.Text.Clear;
  dcGraphLT.Title.Text.Add(cbxCubes.Text);
  btnSumDellRate.Visible := cbxCubes.ItemIndex = 3;
end;

procedure TfrmDecisionLT.FillCDSwithCube;
var
  r, c, i : integer;
begin
  cdsCube.EmptyDataSet;
  for r := (1-dGrdLoans.FixedRows) to (dGrdLoans.RowCount-dGrdLoans.FixedRows-1) do
  begin
    cdsCube.Append;
    i := 0;
    for c := (1-dGrdLoans.FixedCols) to (dGrdLoans.ColCount-dGrdLoans.FixedCols-1) do
    begin
      cdsCube.FieldByName('Fld'+IntToStr(i)).AsString := dGrdLoans.Cells[c,r];
      inc(i);
    end;
    cdsCube.Post;
  end;
end;

function TfrmDecisionLT.GetArrDesc(inVal: string): string;
begin
  case inVal[1] of
    '1': Result := '30 days';
    '2': Result := '60 days';
    '3': Result := '90 days';
    '4': Result := '120 days';
    '5': Result := '+120 days';
    else
      Result := inVal;
  end;
end;

procedure TfrmDecisionLT.btnSumDellRateClick(Sender: TObject);
var
  SumValues : Array[1..4,1..5] of single;
  i,j : integer;
  // Update Array with values
  procedure SumArrayVal(inNo: integer; inFld: string);
  begin
    SumValues[inNo,dtmGraphs.decDellRate.FieldByName('ArrNo').AsInteger] :=
      SumValues[inNo,dtmGraphs.decDellRate.FieldByName('ArrNo').AsInteger] +
      dtmGraphs.decDellRate.FieldByName(inFld).AsFloat;
  end;
  // Add record into cdsCube
  procedure AddRecord(inNo,DecNo: integer; FldDesc,Perc: string;
    FldFmt: TFloatFormat);
  var
    i : integer;
  begin
    cdsCube.Append;
    cdsCube.FieldByName('Fld0').AsString := FldDesc;
    for i := 1 to 5 do
      cdsCube.FieldByName('Fld'+IntToStr(i)).AsString := FloatToStrF(
        SumValues[inNo,i],FldFmt,15,DecNo)+Perc;
  end;
begin
  for j := 1 to 4 do
    for i := 1 to 5 do
      SumValues[j,i] := 0;
  dtmGraphs.decDellRate.DisableControls;
  dtmGraphs.decDellRate.First;
  while not dtmGraphs.decDellRate.EOF do
  begin
    SumArrayVal(1,'LoanBal');
    SumArrayVal(2,'PayIns');
    SumArrayVal(3,'CntLoan');
    SumArrayVal(4,'DilRate');
    dtmGraphs.decDellRate.Next;
  end;
  dtmGraphs.decDellRate.EnableControls;
  //
  cdsCube.EmptyDataSet;
  //
  cdsCube.Append;
  cdsCube.FieldByName('Fld1').AsString := ' 30 days';
  cdsCube.FieldByName('Fld2').AsString := ' 60 days';
  cdsCube.FieldByName('Fld3').AsString := ' 90 days';
  cdsCube.FieldByName('Fld4').AsString := '120 days';
  cdsCube.FieldByName('Fld5').AsString := '120 days +';
  //
  AddRecord(1,2,'Loan balance','',ffCurrency);
  AddRecord(2,2,'Payable instalment','',ffCurrency);
  AddRecord(3,0,'No of loans','',ffFixed);
  AddRecord(4,2,'Delinquency rate','%',ffFixed);
  cdsCube.Post;
  for i := 1 to 5 do
    cdsCube.Fields[i+1].DisplayLabel := GetArrDesc(IntToStr(i));
  PrintReport(False);  
end;

procedure TfrmDecisionLT.btnPrintClick(Sender: TObject);
begin
  PrintReport(True);
end;

procedure TfrmDecisionLT.PrintReport(FillCDS: boolean);
var
  CubeRep : TrepCube;
begin
  CubeRep := TrepCube.Create(Self);
  try
    if FillCDS then
    begin
      FillCDSwithCube;
      CubeRep.qlrepName.Caption := 'Cube report - '+
         azLoans.DecisionSource.DecisionCube.GetSummaryName(
           azLoans.DecisionSource.DecisionCube.CurrentSummary);
    end
    else
      CubeRep.Tag := 10;
    CubeRep.SetRepDataSet(cdsCube);
    CubeRep.QuickReport.Preview;
  finally
    CubeRep.Free;
  end;
end;

procedure TfrmDecisionLT.btnClick(Sender: TObject);
begin
  FillCDSwithCube;
end;

procedure TfrmDecisionLT.btnGetDClick(Sender: TObject);
var
  meDT : TDateTime;
begin
  meDT := StrToDate('01/'+edtMonthEnd.Text);
  dtmGraphs.GetData(DateToEndOfMonth(meDT));
  lblMY.Caption := edtMonthEnd.Text;
  cbxCubes.ItemIndex := 2;
  cbxCubesChange(nil);
end;

end.
