unit fmGLTransDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids, NoEdit, cdsSortGrd,
  Mask, DBCtrls, DBGrdClr, DBGrdCF;

type
  TfrmGLTransDet = class(TForm)
    tlbGL: TToolBar;
    btnExit1: TToolButton;
    btnStart: TToolButton;
    btnStop: TToolButton;
    btnExportQry: TToolButton;
    grdTransDet: TcdsSortGrd;
    pnlTop: TPanel;
    btnGetDet: TToolButton;
    spTrans: TSplitter;
    pnlDetTop: TPanel;
    grdTransGrp: TDBGrdClr;
    lblAllFor: TLabel;
    lblTransD: TLabel;
    lblTransR: TLabel;
    cbxAllFor: TComboBox;
    edtAllFor: TNoEdit;
    Label2: TLabel;
    lblSort: TLabel;
    edtTransCode: TDBEdit;
    pnlBot: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbtTotCnt: TDBText;
    dbtTotAmt: TDBText;
    ToolButton1: TToolButton;
    chbTransNo: TCheckBox;
    pnlDates: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    dtpTo: TDateTimePicker;
    dtpFrom: TDateTimePicker;
    chbFrom: TCheckBox;
    chbDates: TCheckBox;
    pnlTransR: TPanel;
    Label13: TLabel;
    From: TLabel;
    edtTo: TNoEdit;
    edtFrom: TNoEdit;
    procedure btnExit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnGetDetClick(Sender: TObject);
    procedure grdTransGrpDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtTransCodeChange(Sender: TObject);
    procedure btnExportQryClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure chbDatesClick(Sender: TObject);
    procedure chbTransNoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmLS2GL, dmMain;

{$R *.DFM}

procedure TfrmGLTransDet.btnExit1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmGLTransDet.FormCreate(Sender: TObject);
begin
  dtmLS2GL := tdtmLS2GL.Create(nil);
end;

procedure TfrmGLTransDet.FormDestroy(Sender: TObject);
begin
  grdTransDet.DataSource := nil;
  dtmLS2GL.cdsGLReport.Close;
  dtmLS2GL.qryGetTransDet.Close;
  dtmLS2GL.qryTransGrp.Close;
  dtmLS2GL.Free;
  dtmLS2GL := nil;
end;

procedure TfrmGLTransDet.FormShow(Sender: TObject);
begin
  Self.Color  := dtmMain.ScrPnlColor;
  tlbGL.Color := dtmMain.RecBarColor;
  spTrans.Color := dtmMain.RecBarColor;
  pnlBot.Color  := dtmMain.RecBarColor;
  dtmMain.SetGrdColors(grdTransGrp);
  dtmMain.SetGrdColors(grdTransDet);
  cbxAllFor.ItemIndex := 0;
  //
  dtpFrom.Date := Date;
  dtpTo.Date   := dtpFrom.Date;
  chbDatesClick(nil);
end;

procedure TfrmGLTransDet.btnStartClick(Sender: TObject);
begin
  dtmLS2GL.SetDatesFromTo(dtpFrom.Date,dtpTo.Date);
  dtmLS2GL.SetFromTo(StrToInt(edtFrom.text),StrToInt(edtTo.text));
  dtmLS2GL.OpenTransGroup;
end;

procedure TfrmGLTransDet.btnStopClick(Sender: TObject);
begin
  dtmLS2GL.qryTransGrp.Close;
end;

procedure TfrmGLTransDet.edtTransCodeChange(Sender: TObject);
begin
  edtAllFor.Text := dtmLS2GL.qryTransGrp.FieldByName('TransCode').AsString; // normal
end;

procedure TfrmGLTransDet.btnGetDetClick(Sender: TObject);
begin
  dtmLS2GL.SetDatesFromTo(dtpFrom.Date,dtpTo.Date);
  dtmLS2GL.SetFromTo(StrToInt(edtFrom.text),StrToInt(edtTo.text));
  lblTransR.Caption := edtFrom.text +' to '+ edtTo.text + ' ';
  dtmLS2GL.OpenTransDetails(cbxAllFor.ItemIndex,StrToInt(edtAllFor.Text));
end;

procedure TfrmGLTransDet.grdTransGrpDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 IndTo : integer;
begin
  if Column.Index in [2,3] then
  begin
    if dtmLS2GL.qryTransGrp.FieldByName('DC').AsString='C' then
      IndTo := 2
    else
      IndTo := 3;
    if Column.Index = IndTo then
    begin
      grdTransGrp.Canvas.FillRect(Rect);
      grdTransGrp.Canvas.TextOut(Rect.Right-7,Rect.Top+1,'-');
    end;
  end;
end;

procedure TfrmGLTransDet.btnExportQryClick(Sender: TObject);
begin
  dtmLS2GL.ExportData1.ExportDataSet := dtmLS2GL.qryTransGrp;
  dtmLS2GL.ExportData1.RunExport     := True;
end;

procedure TfrmGLTransDet.ToolButton1Click(Sender: TObject);
begin
  dtmLS2GL.ExportData1.ExportDataSet := dtmLS2GL.cdsTransDet;
  dtmLS2GL.ExportData1.RunExport     := True;
end;

procedure TfrmGLTransDet.chbDatesClick(Sender: TObject);
begin
  dtmLS2GL.UseDates := chbDates.Checked;
  pnlDates.Visible  := chbDates.Checked;
end;

procedure TfrmGLTransDet.chbTransNoClick(Sender: TObject);
begin
  dtmLS2GL.UseTransNo := chbTransNo.Checked;
  pnlTransR.Visible   := chbTransNo.Checked;
end;

end.
