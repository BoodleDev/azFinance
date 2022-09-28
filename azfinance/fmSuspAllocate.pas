unit fmSuspAllocate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, ExtCtrls, Menus, ComCtrls, ToolWin, Grids, DBGrids, DBGrdCF,
  ADOgrdCFS, fmLookUp, StdCtrls, Gauges, Unit32, Mask, DBCtrls, DBGrdClr,
  fmAllocate, ucbxDBList, Buttons, DBGridExporter;

type
  TfrmSuspAllocate = class(TfrmDBBase)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    btnAllocate: TToolButton;
    Panel3: TPanel;
    Panel4: TPanel;
    grdAllocate: TDBGrid;
    Label4: TLabel;
    btnClear: TToolButton;
    btnDelete1: TToolButton;
    btnClose: TToolButton;
    grdSuspense: TDBGrid;
    btnNewBatch: TToolButton;
    btnFilter: TBitBtn;
    btnDetail: TBitBtn;
    StatusBar2: TStatusBar;
    imgRed: TImage;
    imgGreen: TImage;
    imgY: TImage;
    imgN: TImage;
    cbxBatches: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ToolButton1: TToolButton;
    expSuspense: TDBGridExporter;
    procedure FormCreate(Sender: TObject);
    procedure btnAllocateClick(Sender: TObject);
    procedure grdSuspenseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDelete1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnNewBatchClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure cbxBatchesDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cbxBatchesChange(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    FFiltered: Boolean;
    procedure SetFiltered(const Value: Boolean);
  private
    { Private declarations }
    property Filtered: Boolean read FFiltered write SetFiltered;
    procedure AddNewBatchNumber;
  public
    { Public declarations }
  end;

var
  frmSuspAllocate: TfrmSuspAllocate;
  frmAllocate: TfrmAllocate;

implementation

uses dmBatchSusp, dmBatchTrans, dmMain, uLSConst, dmProcBatch;

{$R *.DFM}

procedure TfrmSuspAllocate.FormCreate(Sender: TObject);
begin
  inherited;
  dtmProcBatch := TdtmProcBatch.Create(Self);
  dtmProcBatch.DataConnection := dtmMain.dbData.ConnectionString;
  dtmBatchSusp := TdtmBatchSusp.Create(Self);

  {dtmMain.SetGrdColors(grdSuspense);
  dtmMain.SetGrdColors(grdAllocate);}
  //grdAllocate.OddColor := dtmMain.OddGrdColor;
  dtmBatchSusp.SetAlocActive(True);
  frmAllocate := TfrmAllocate.Create(Self);
  Filtered := False;
  btnDetail.Glyph := imgY.Picture.Bitmap;
  dtmBatchSusp.GetBatches(cbxBatches.Items);
  if cbxBatches.Items.Count > 0 then
    cbxBatches.ItemIndex := 0;
  cbxBatchesChange(Self);
end;

procedure TfrmSuspAllocate.btnAllocateClick(Sender: TObject);
begin
  inherited;
  if btnAllocate.Enabled then
  begin
    frmAllocate := TfrmAllocate.Create(Self);
    try
      frmAllocate.ShowModal;
    finally
      FreeAndNil(frmAllocate);
    end;
  end;
end;

procedure TfrmSuspAllocate.grdSuspenseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if DataCol = 0 then
    if dtmBatchSusp.qryBatchHistory.FieldByName('Allocated').AsBoolean then
      if not(gdSelected in State) or not(grdSuspense.Focused) then
      begin
        grdSuspense.Canvas.Brush.Color := clLime;
        grdSuspense.Canvas.FillRect(Rect);
        grdSuspense.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,
          dtmBatchSusp.qryBatchHistory.FieldByName('TransNo').AsString);
      end;
end;

procedure TfrmSuspAllocate.btnClearClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to clear the batch?', 'C') = mrYes then
    dtmBatchSusp.ClearBatch;
end;

procedure TfrmSuspAllocate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {if dtmBatchSusp.cdsLnAlloc.RecordCount = 0 then
  begin
    dtmBatchSusp.Free;
    dtmBatchSusp := nil;
  end;
  else}
    dtmBatchSusp.SetAlocActive(False);
  dtmProcBatch.Free;
end;

procedure TfrmSuspAllocate.DBEdit1Change(Sender: TObject);
var
  Status: Boolean;
begin
  Status := not (dtmBatchSusp.qryAlTrans.FieldByName('TransNo').IsNull);
  btnDelete1.Enabled  := Status;
  btnClear.Enabled    := Status;
  btnClose.Enabled    := Status;
end;

procedure TfrmSuspAllocate.FormShow(Sender: TObject);
begin
  inherited;
  DBEdit1Change(Self);
end;

procedure TfrmSuspAllocate.btnDelete1Click(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to delete this record?', 'C') = mrYes then
  begin
    dtmBatchSusp.cmdDelAlTrans.Parameters[0].Value :=
      dtmBatchSusp.qryAlTrans.FieldByName('LinkID1').AsInteger;
    dtmBatchSusp.cmdDelAlTrans.Execute;
    dtmBatchSusp.qryAlTrans.Requery;
    dtmBatchSusp.qryBatchHistory.ReQuery;
  end;
end;

procedure TfrmSuspAllocate.btnCloseClick(Sender: TObject);
begin
  inherited;
  if dtmBatchSusp.qryAlTrans.RecordCount = 0 then
    MesDlg('Cannot close batch, batch is empty','E')
  else
  begin
    if MesDlg('Are you sure you want to close batch?','C') = mrYes then
    begin
      CheckDataSet(dtmBatchSusp.qryAlTrans);
      dtmBatchTrans.qryBatchControl.Open;
      dtmBatchTrans.SetCurrentBatch(dtmBatchSusp.CurSBatchNo);
      if dtmBatchTrans.SetBatchStatus(bsClosed,btSuspense) then
        //dtmBatchSusp.GetBatches(cbxBatches.Items)
      begin
        cbxBatches.Items.Delete(cbxBatches.ItemIndex);
        cbxBatchesChange(Self);
      end
      else
        MesDlg('Could not close batch: '+cbxBatches.Text,'E');
    end;
  end;
end;

procedure TfrmSuspAllocate.btnNewBatchClick(Sender: TObject);
begin
  if cbxBatches.Items.Count > 0 then
  begin
    if MesDlg('You have not closed your current batch. '+#10#13+
      'Are you sure you want to create a new batch?','C') = mrYes then
    begin
      if dtmBatchTrans.NoOfCurBatch > 4 then
        MesDlg('You can not have more than 5 batches open.','E')
      else
        AddNewBatchNumber;
    end;
  end
  else
    AddNewBatchNumber;
end;

procedure TfrmSuspAllocate.AddNewBatchNumber;
begin
  if dtmBatchTrans.GetNewBatchNo(dtmMain.CurrentID,bsOpen,btSuspense) then
  begin
    cbxBatches.Items.Add(dtmBatchTrans.GetCurBatchNo +'='+
      IntToStr(dtmBatchTrans.GetCurBatchID));
    cbxBatches.ItemIndex := cbxBatches.Items.IndexOfName(dtmBatchTrans.GetCurBatchNo);
    cbxBatchesChange(Self);
    dtmBatchTrans.NoOfCurBatch := dtmBatchTrans.NoOfCurBatch + 1;
  end;
end;

procedure TfrmSuspAllocate.btnFilterClick(Sender: TObject);
begin
  inherited;
  Filtered := not Filtered;
end;

procedure TfrmSuspAllocate.SetFiltered(const Value: Boolean);
begin
  FFiltered := Value;
  if Value then
  begin
    btnFilter.Caption := 'Undo Filter';
    btnFilter.Glyph := imgGreen.Picture.Bitmap;
  end
  else
  begin
    btnFilter.Caption := 'Set Filter';
    btnFilter.Glyph := imgRed.Picture.Bitmap;
  end;
end;

procedure TfrmSuspAllocate.cbxBatchesDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cbxBatches.Canvas.FillRect(Rect);
  cbxBatches.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1,
    cbxBatches.Items.Names[Index]);
end;

procedure TfrmSuspAllocate.cbxBatchesChange(Sender: TObject);
var
  BatchID: String;
begin
  inherited;
  btnAllocate.Enabled := not ((cbxBatches.Text = '') or (dtmBatchSusp.qryBatchHistory.FieldByName('TransNo').IsNull));
  if cbxBatches.Text = '' then
    BatchID :=  '0'
  else
    BatchID := cbxBatches.Items.Values[cbxBatches.Items.Names[cbxBatches.ItemIndex]];

  FilterDataSet(dtmBatchSusp.qryAlTrans,'BatchID = ''' +
    BatchID + '''');

  dtmBatchSusp.CurSBatchNo := cbxBatches.Items.Names[cbxBatches.ItemIndex];
  dtmBatchSusp.CurSBatchID := StrToInt(BatchID);
end;

procedure TfrmSuspAllocate.DBEdit2Change(Sender: TObject);
begin
  inherited;
  btnAllocate.Enabled := not(dtmBatchSusp.qryBatchHistory.FieldByName('TransNo').IsNull);
  btnNewBatch.Enabled := btnAllocate.Enabled;
end;

procedure TfrmSuspAllocate.ToolButton1Click(Sender: TObject);
begin
  inherited;
  expSuspense.Execute;
end;

end.
