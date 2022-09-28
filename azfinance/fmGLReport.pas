unit fmGLReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, ToolWin, StdCtrls, ExtCtrls, Mask, DBCtrls, Unit32,
  Db, DBGrdClr, NoEdit;

type
     TfrmGLReport = class(TForm)
    tlbGL: TToolBar;
    btnPrint: TToolButton;
    btnCashFee: TToolButton;
    btnGLDeposit: TToolButton;
    btnIntToDef: TToolButton;
    pnlMain: TPanel;
    grdGLTrans: TDBGrdClr;
    btnToGL: TToolButton;
    btnExit1: TToolButton;
    Panel2: TPanel;
    rgRGroup: TRadioGroup;
    edtRecID: TDBEdit;
    chbTransNo: TCheckBox;
    pnlDates: TPanel;
    chbDates: TCheckBox;
    dtpTo: TDateTimePicker;
    Label2: TLabel;
    pnlTransR: TPanel;
    Label1: TLabel;
    dtpFrom: TDateTimePicker;
    Label13: TLabel;
    edtTo: TNoEdit;
    From: TLabel;
    chbFrom: TCheckBox;
    edtFrom: TNoEdit;
    cbxDates: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtRecIDChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnToGLClick(Sender: TObject);
    procedure grdGLTransDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCashFeeClick(Sender: TObject);
    procedure btnGLDepositClick(Sender: TObject);
    procedure btnIntToDefClick(Sender: TObject);
    procedure btnTransDetClick(Sender: TObject);
    procedure btnExit1Click(Sender: TObject);
    procedure chbDatesClick(Sender: TObject);
    procedure chbTransNoClick(Sender: TObject);
    procedure cbxDatesChange(Sender: TObject);
  private
    { Private declarations }
    procedure LoadLocalReport(inRepHeader, TTRange:string);
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS2GL, uReports, rptGlContra;

{$R *.DFM}

procedure TfrmGLReport.btnExit1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmGLReport.FormCreate(Sender: TObject);
begin
  dtmLS2GL := tdtmLS2GL.Create(nil);
  dtmLS2GL.UseDates   := chbDates.Checked;
  dtmLS2GL.UseTransNo := chbTransNo.Checked;
  dtmLS2GL.qryGLTsum.Open;
  if not dtmLS2GL.qryGLTsum.Locate('ToGlAcc',False,[]) then
    dtmLS2GL.qryGLTsum.Last;
  // Set Def Int
  RunQry(dtmMain.qryToUse,'select ValInt from General where RecID=10002','O');
  dtmLS2GL.DefIntToGL  := dtmMain.qryToUse.Fields[0].AsInteger = 1;
end;

procedure TfrmGLReport.FormShow(Sender: TObject);
begin
  Self.Color  := dtmMain.ScrPnlColor;
  tlbGL.Color := dtmMain.RecBarColor;
  btnIntToDef.Visible  := dtmLS2GL.DefIntToGL;
  dtmMain.SetGrdColors(grdGLTrans);
  //
  dtpFrom.Date := Date;
  dtpTo.Date   := dtpFrom.Date;
  cbxDates.ItemIndex := 0;
  chbDatesClick(nil);
end;

procedure TfrmGLReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmLS2GL.qryGLTsum.Close;
  dtmLS2GL.Free;
  dtmLS2GL := nil;
end;

procedure TfrmGLReport.edtRecIDChange(Sender: TObject);
begin
  edtFrom.Text := dtmLS2GL.qryGLTsum.FieldByName('BHFrom').AsString;
  edtTo.Text   := dtmLS2GL.qryGLTsum.FieldByName('BHTo').AsString;
  //
  if not dtmLS2GL.qryGLTsum.FieldByName('EffectDate').IsNull then
  begin
    dtpFrom.Date := dtmLS2GL.qryGLTsum.FieldByName('EffectDate').AsDateTime;
    dtpTo.Date   := dtpFrom.Date;
  end;  
  btnToGL.Enabled := not dtmLS2GL.qryGLTsum.FieldByName('ToGlAcc').AsBoolean;
end;

procedure TfrmGLReport.btnPrintClick(Sender: TObject);
begin
  dtmLS2GL.SetDatesFromTo(dtpFrom.Date,dtpTo.Date);
  dtmLS2GL.SetFromTo(StrToInt(edtFrom.text),StrToInt(edtTo.text));
  case rgRGroup.ItemIndex of
    0 : LoadReport(111,False);
    1 : LoadReport(110,False);
  end;
end;

procedure TfrmGLReport.btnCashFeeClick(Sender: TObject);
begin
  LoadLocalReport('Cash fees report','19,20');
end;

procedure TfrmGLReport.btnGLDepositClick(Sender: TObject);
begin
  LoadLocalReport('Deposit report','7,8,9,10');
end;

procedure TfrmGLReport.btnIntToDefClick(Sender: TObject);
begin
  LoadLocalReport('Int to def int Report','13,14');
end;

procedure TfrmGLReport.LoadLocalReport(inRepHeader, TTRange: string);
var
  repGLContra : TrepGLContra;
begin
  Screen.Cursor := crHourGlass;
  repGLContra :=  TrepGLContra.Create(self);
  try
    dtmLS2GL.SetDatesFromTo(dtpFrom.Date,dtpTo.Date);
    dtmLS2GL.SetFromTo(StrToInt(edtFrom.text),StrToInt(edtTo.text));
    dtmLS2GL.OpenQryForReport(TTRange);
    //
    repGLContra.qlrepName.Caption := inRepHeader;
    Screen.Cursor := crDefault;
    repGLContra.QuickReport.Preview;
  finally
    dtmLS2GL.qryToUse.Close;
    Screen.Cursor := crDefault;
    repGLContra.Free;
  end;
end;

procedure TfrmGLReport.btnToGLClick(Sender: TObject);
begin
{  if MesDlg('Are you sure you want to mark this batch as posted to GL?','C') =
    mrYes then
  begin
    dtmLS2GL.UpdateToGL;
    btnToGL.Enabled := False;
  end;}
end;

procedure TfrmGLReport.grdGLTransDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.FieldName = 'RecordID') and
    (not dtmLS2GL.qryGLTsum.FieldByName('ToGlAcc').AsBoolean) then
  begin
    grdGLTrans.Canvas.Brush.Color := clRed;
    grdGLTrans.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TfrmGLReport.btnTransDetClick(Sender: TObject);
begin
// TrepGLContra
end;

procedure TfrmGLReport.chbDatesClick(Sender: TObject);
begin
  dtmLS2GL.UseDates := chbDates.Checked;
  pnlDates.Visible  := chbDates.Checked;
  cbxDates.Visible  := chbDates.Checked;
end;

procedure TfrmGLReport.chbTransNoClick(Sender: TObject);
begin
  dtmLS2GL.UseTransNo := chbTransNo.Checked;
  pnlTransR.Visible   := chbTransNo.Checked;
end;

procedure TfrmGLReport.cbxDatesChange(Sender: TObject);
begin
  if cbxDates.ItemIndex = 0 then
    dtmLS2GL.DateEorT := 'EffectDate'
  else
    dtmLS2GL.DateEorT := 'TransDate';
end;

end.

