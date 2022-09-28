unit fmYMDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, DB, StdCtrls, TeEngine,
  Series, TeeProcs, Chart, DBChart, Buttons, fmBase, Unit32;

type
  TfrmYMDetail = class(TfrmBase)
    pnlMain: TPanel;
    cbFrom: TComboBox;
    cbTo: TComboBox;
    lblFromDate: TLabel;
    lblToDate: TLabel;
    pgMain: TPageControl;
    tsDataView: TTabSheet;
    tsGraphView: TTabSheet;
    grdYMDet: TDBGrid;
    pnlSer: TPanel;
    chartYMDet: TDBChart;
    ser1: TLineSeries;
    ser2: TLineSeries;
    cbSer1: TComboBox;
    cbSer2: TComboBox;
    edtPoints: TEdit;
    lblPoints: TLabel;
    UpDown: TUpDown;
    Shape1: TShape;
    Shape2: TShape;
    btnMoveLeft: TSpeedButton;
    btnMoveRight: TSpeedButton;
    btnPrintGrp: TToolButton;
    procedure grdYMDetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFromChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbSer1Change(Sender: TObject);
    procedure cbSer2Change(Sender: TObject);
    procedure edtPointsChange(Sender: TObject);
    procedure btnMoveLeftClick(Sender: TObject);
    procedure btnMoveRightClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPrintGrpClick(Sender: TObject);
    procedure pgMainDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
  private
    { Private declarations }
    LstDates : TStringList;
    procedure SetSeries(IndexNo: integer; serChoice : TLineSeries);
  public
    { Public declarations }
  end;

implementation

uses dmGraphs, dmMain, uReports;

//uses repYMDetail;

{$R *.DFM}

procedure TfrmYMDetail.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmGraphs.qryYMDetail.Close;
  dtmGraphs.Free;
  dtmGraphs := nil;
end;

procedure TfrmYMDetail.FormCreate(Sender: TObject);
begin
  inherited;
  dtmGraphs := TdtmGraphs.Create(self);
  dtmGraphs.qryYMDetail.Open;
  LstDates := TStringList.Create;
  dtmGraphs.qryYMDetail.First;
  while not dtmGraphs.qryYMDetail.EOF do
  begin
   LstDates.Add(IntToStr(dtmGraphs.qryYMDetail.FieldByName('YearInd').AsInteger)
     +'-'+dtmGraphs.qryYMDetail.FieldByName('MonthInd').AsString);
   dtmGraphs.qryYMDetail.Next;
  end;
  dtmGraphs.qryYMDetail.First;
  cbFrom.Items := LstDates;
  cbTo.Items := LstDates;
  chartYMDet.PreviousPage;
  cbSer2.Items := cbSer1.Items;
end;

procedure TfrmYMDetail.FormShow(Sender: TObject);
begin
  inherited;
  pgMain.OwnerDraw := True;
  pgMain.Brush.Color := dtmMain.ScrPnlColor;
  tsDataView.Brush.Color := dtmMain.ScrPnlColor;
  tsGraphView.Brush.Color := dtmMain.ScrPnlColor;
  //
  cbFrom.ItemIndex := 0;
  cbTo.ItemIndex   := cbTo.Items.Count-1;
  cbSer1.ItemIndex := 0;
  cbSer2.ItemIndex := 0;
  cbSer1Change(self);
  cbSer2Change(self);
end;

procedure TfrmYMDetail.grdYMDetDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  grdYMDet.Canvas.Font.Color := clBlack;
  if Column.FieldName = 'PayDif' then
  begin
    if Column.Field.AsCurrency > 0 then
      grdYMDet.Canvas.Brush.Color := clLime
    else
      grdYMDet.Canvas.Brush.Color := clRed;
  end;

  if Column.FieldName = 'IntDif' then
  begin
    if Column.Field.AsCurrency > 0 then
      grdYMDet.Canvas.Brush.Color := clAqua
    else
      grdYMDet.Canvas.Brush.Color := clYellow;
  end;
  grdYMDet.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmYMDetail.cbFromChange(Sender: TObject);
var
  strFrom, strTo : string;
begin
  strFrom := cbFrom.Text;
  Delete(strFrom,Pos('-',strFrom),1);
  strTo := cbTo.Text;
  Delete(strTo,Pos('-',strTo),1);
  FilterDataSet(dtmGraphs.qryYMDetail,'YMKey>='+strFrom+' and YMKey<= '+strTo);
end;

procedure TfrmYMDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FilterDataSet(dtmGraphs.qryYMDetail,'');
end;

procedure TfrmYMDetail.SetSeries(IndexNo: integer; serChoice : TLineSeries);
begin
  case IndexNo of
    0: serChoice.YValues.ValueSource := 'LDPayment';
    1: serChoice.YValues.ValueSource := 'LCPayment';
    2: serChoice.YValues.ValueSource := 'PayDif';
    3: serChoice.YValues.ValueSource := 'LDInterest';
    4: serChoice.YValues.ValueSource := 'LCInterest';
    5: serChoice.YValues.ValueSource := 'IntDif';
    6: serChoice.YValues.ValueSource := 'LCBal';
    7: serChoice.YValues.ValueSource := 'LDcnt';
    8: serChoice.YValues.ValueSource := 'LCcnt';
  end;
  serChoice.RefreshSeries;
end;

procedure TfrmYMDetail.cbSer1Change(Sender: TObject);
begin
  SetSeries(cbSer1.ItemIndex,ser1);
end;

procedure TfrmYMDetail.cbSer2Change(Sender: TObject);
begin
  SetSeries(cbSer2.ItemIndex,ser2);
end;

procedure TfrmYMDetail.edtPointsChange(Sender: TObject);
begin
  chartYMDet.MaxPointsPerPage := UpDown.Position;
  chartYMDet.Refresh;
end;

procedure TfrmYMDetail.btnMoveLeftClick(Sender: TObject);
begin
  chartYMDet.PreviousPage;
end;

procedure TfrmYMDetail.btnMoveRightClick(Sender: TObject);
begin
  chartYMDet.NextPage;
end;

procedure TfrmYMDetail.btnPrintGrpClick(Sender: TObject);
begin
  inherited;
  PrintA_DBChart(
   'Year / Month detail#'+cbSer1.Text+' vs '+cbSer2.Text+'#'+
   'From - '+cbFrom.Text+' To -'+cbTo.Text+'#',chartYMDet);
end;                                         

procedure TfrmYMDetail.pgMainDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  inherited;
  Control.Canvas.Brush.Color := dtmMain.ScrPnlColor;
  Control.Canvas.FillRect(Rect);
  Control.Canvas.Font.Color := clBlack;
  Control.Canvas.TextOut(Rect.Left+2,Rect.Top+2,
    pgMain.Pages[TabIndex].Caption);
end;

end.
