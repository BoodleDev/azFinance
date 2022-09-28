unit fmBatchView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin, StdCtrls, Unit32,
  DBGrdClr, DBStyleGrid;

type
  TfrmBatchView = class(TfrmBase)
    btnBCDet: TToolButton;
    pnlMain: TPanel;
    pnlTop: TPanel;
    grdBCdet: TDBStyleGrid;
    Label1: TLabel;
    splitMain: TSplitter;
    pnlBatchDet: TPanel;
    grdBatchDet: TDBStyleGrid;
    Label3: TLabel;
    btnBatch: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBCDetClick(Sender: TObject);
    procedure btnBatchClick(Sender: TObject);
    procedure grdBCdetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnBCDetMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmBatchQuery, dmMain, uLSConst;

{$R *.DFM}

procedure TfrmBatchView.FormCreate(Sender: TObject);
begin
  inherited;
  dtmBatchQuery := TdtmBatchQuery.Create(self);
end;

procedure TfrmBatchView.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmBatchQuery.Free;
  dtmBatchQuery := nil;
end;

procedure TfrmBatchView.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdBCdet);
  dtmMain.SetGrdColors(grdBatchDet);
  dtmBatchQuery.qryBatchCtrl.Open;
end;

procedure TfrmBatchView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmBatchQuery.qryBatchCtrl.Close;
  dtmBatchQuery.qryDetForBC.Close;
end;

procedure TfrmBatchView.btnBCDetClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    dtmBatchQuery.GetDetailForBatchControl;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmBatchView.btnBatchClick(Sender: TObject);
begin
  inherited;
  dtmBatchQuery.GetDetailForBatchNoParent('lsBatchTrans');
end;

procedure TfrmBatchView.grdBCdetDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  str : string;
begin
  inherited;
  if Column.FieldName = 'Status' then
  begin
    case Column.Field.AsInteger of
      bsOpen   : str := 'Open';
      bsDecline: str := 'Decline';
      bsClosed : str := 'Close';
      bsAccept : str := 'Accept';
      bsInProc : str := 'In-proc';
      bsProcess: str := 'Process';
      else
        str := 'none';
    end; // case
    grdBCdet.Canvas.FillRect(Rect);
    grdBCdet.Canvas.TextOut(Rect.Left+2,Rect.Top+1,str);
  end;
end;

procedure TfrmBatchView.btnBCDetMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  btnBCDet.Hint := 'Get detail for Batch Control';
  Application.ShowHint := true;
end;

end.
