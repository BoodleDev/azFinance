unit fmBulkStatement;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ToolWin, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,
  rptBulkAcc, Unit32, DBGrdClr, GetEdtFilter, uLSConst, Buttons,
  fmRepFilter, uLSCentral;

type
  TfrmBulkStatement = class(TfrmBase)
    pnlMain: TPanel;
    grdLoanSum: TDBGrdClr;
    btnPrintLoan: TToolButton;
    btnPrintClient: TToolButton;
    pnlBatchNote: TPanel;
    Label13: TLabel;
    memBulkNote: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    memFilter: TMemo;
    btnSetFilter: TBitBtn;
    btnFilterDet: TBitBtn;
    imgRed: TImage;
    imgGreen: TImage;
    pnlSort: TPanel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    pnlTransDate: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    chbTransDate: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chbTransDateClick(Sender: TObject);
    procedure btnPrintLoanClick(Sender: TObject);
    procedure btnPrintClientClick(Sender: TObject);
    procedure btnSetFilterClick(Sender: TObject);
    procedure btnFilterDetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdLoanSumDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    frmFilter : TfrmRepFilter;
    procedure PrintBulk;
    procedure SetAccountQry(LoanAcc, Dates: boolean);
    procedure SetDataFilter(inFilter, BtnCap: string; imgStop: boolean);
  public
    { Public declarations }
  end;

implementation

uses dmMain, fmGauge, dmLS;

{$R *.DFM}

procedure TfrmBulkStatement.FormCreate(Sender: TObject);
begin
  inherited;
  frmFilter := TfrmRepFilter.Create(Self);
  frmFilter.CurFldList := dtmLS.cdsBulkState.FieldList;
end;

procedure TfrmBulkStatement.FormDestroy(Sender: TObject);
begin
  inherited;
  frmFilter.Free;
  frmFilter := nil;
end;

procedure TfrmBulkStatement.FormShow(Sender: TObject);
begin
  inherited;
  dtmLS.SetBulkStateStatus(True);
  dtmMain.SetGrdColors(grdLoanSum);
  dtpFrom.Date := Date-30;
  dtpTo.Date   := Date;
end;

procedure TfrmBulkStatement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmLS.SetBulkStateStatus(False);
  FilterDataSet(dtmLS.cdsAcc,'');
  dtmLS.cdsAcc.MasterSource := dtmLS.dtsEntLoan;
end;

procedure TfrmBulkStatement.chbTransDateClick(Sender: TObject);
begin
  inherited;
 // pnlTransDate.Visible := chbTransDate.Checked;
  dtpFrom.Enabled := chbTransDate.Checked;
  dtpTo.Enabled   := chbTransDate.Checked;
end;

procedure TfrmBulkStatement.btnPrintLoanClick(Sender: TObject);                      
begin
  inherited;
  if MesDlg('Are you sure you want to start this bulk printing?','C')=mrYes then
  begin
    SetAccountQry(True,chbTransDate.Checked);
    PrintBulk;
  end;
end;

procedure TfrmBulkStatement.btnPrintClientClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to start this bulk printing?','C')=mrYes then
  begin
    SetAccountQry(False,chbTransDate.Checked);
    PrintBulk;
  end;
end;

procedure TfrmBulkStatement.PrintBulk;
var
  PrintProg : TfrmGauge;
  repAcc   : TrepBulkAcc;
begin
  dtmLS.cdsBulkState.DisableControls;
  PrintProg := TfrmGauge.Create(nil);
  repAcc    := TrepBulkAcc.Create(self);
  repAcc.memQrBulkNote.Lines.Text := memBulkNote.Lines.Text;
  try
    PrintProg.SetMaxBound(dtmLS.cdsBulkState.RecordCount);
    dtmLS.cdsBulkState.First;
    while not dtmLS.cdsBulkState.EOF do
    begin
      dtmLS.qryBulkAcc.Parameters[0].Value := dtmLS.cdsBulkState.FieldByName('LoanID').AsInteger;
      dtmLS.qryBulkAcc.Requery;
      dtmLS.qryOpenBal.Parameters[0].Value := dtmLS.cdsBulkState.FieldByName('LoanID').AsInteger;
      dtmLS.qryOpenBal.Requery;
      dtmLS.OpenBal := dtmLS.qryOpenBal.Fields[0].AsCurrency;
      //repAcc.QuickReport.Preview;
      repAcc.QuickReport.Print;
      dtmLS.cdsBulkState.Next;
      PrintProg.IncProg;
    end;
  finally
    repAcc.Free;
    PrintProg.MaxGauge;
    PrintProg.Free;
    dtmLS.cdsBulkState.First;
    dtmLS.cdsBulkState.EnableControls;
  end;
end;

procedure TfrmBulkStatement.SetAccountQry(LoanAcc, Dates: boolean);
var
  tmpSQL : string;
begin
  dtmLS.qryOpenBal.Close;
  dtmLS.qryBulkAcc.Close;
  tmpSQL := 'select LoanID, TransType, TransCode, EffectDate,'+
    'AmtPost, BatchNo, UserID, RefNo from lsBatchHistory where '+
    ' LoanID=:LoanID and TransType not in (';
  if LoanAcc then
    tmpSQL := tmpSQL + actrLA+')'
  else
    tmpSQL := tmpSQL + actrCA+')';
  //
  if Dates then
    tmpSQL := tmpSQL + ' and EffectDate between '''+FormatDateTime('mm/dd/yyyy',dtpFrom.Date)+
      ''' and '''+FormatDateTime('mm/dd/yyyy',dtpTo.Date)+'''';
  //
  tmpSQL := tmpSQL + ' order by EffectDate';
  dtmLS.qryBulkAcc.CommandText := tmpSQL;

  tmpSQL := 'select sum(AmtPost) from lsBatchHistory where '+
    ' LoanID=:LoanID and TransType not in (';
  if LoanAcc then
    tmpSQL := tmpSQL + actrLA+')'
  else
    tmpSQL := tmpSQL + actrCA+')';
  if Dates then
    tmpSQL := tmpSQL + ' and EffectDate < '''+FormatDateTime('mm/dd/yyyy',dtpFrom.Date)+''''
  else
    tmpSQL := tmpSQL + ' and EffectDate < ''01/01/1900''';
   dtmLS.qryOpenBal.SQL.Text := tmpSQL;
  dtmLS.qryBulkAcc.Open;
  dtmLS.qryOpenBal.Open;
end;

procedure TfrmBulkStatement.btnSetFilterClick(Sender: TObject);
begin
  inherited;
//  if (dtmLS.qryBulkState.Filtered) or (Trim(frmFilter.CurFilter)='') then
  if (dtmLS.cdsBulkState.Filtered) or (Trim(frmFilter.CurFilter)='') then
    SetDataFilter('','Set filter',True)
  else
    SetDataFilter(frmFilter.CurFilter,'Cancel filter',False);
end;

procedure TfrmBulkStatement.btnFilterDetClick(Sender: TObject);
begin
  inherited;
  SetDataFilter('','Set filter',True);
  frmFilter.ShowModal;
  memFilter.Lines.Clear;
  memFilter.Lines := frmFilter.DisplayFilter;
end;

procedure TfrmBulkStatement.SetDataFilter(inFilter, BtnCap: string;
  imgStop: boolean);
begin
  FilterDataSet(dtmLS.cdsBulkState,inFilter);
  btnSetFilter.Caption := BtnCap;
  if imgStop then
    btnSetFilter.Glyph := imgRed.Picture.Bitmap
  else
    btnSetFilter.Glyph := imgGreen.Picture.Bitmap;
end;

procedure TfrmBulkStatement.grdLoanSumDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'Status' then
  begin
    grdLoanSum.Canvas.Brush.Color := ColorLoanStatus(dtmLS.cdsBulkState.FieldByName('Status').AsInteger);
    grdLoanSum.Canvas.FillRect(Rect);
    grdLoanSum.Canvas.TextOut(Rect.Left,Rect.Top+1,GetLoanStatus(dtmLS.cdsBulkState.FieldByName('Status').AsInteger));
  end;
end;

end.
