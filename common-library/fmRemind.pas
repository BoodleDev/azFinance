unit fmRemind;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBGrdClr, StdCtrls,
  DBCtrls, dmRemind, Unit32;

type
  TfrmRemind = class(TfrmBase)
    btnView: TToolButton;
    btnAmend: TToolButton;
    btnSnooze: TToolButton;
    grdRE: TDBGrdClr;
    pnlNote: TPanel;
    spl: TSplitter;
    memNote: TDBMemo;
    lblNd: TLabel;
    btnDismiss: TToolButton;
    procedure btnSnoozeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnDismissClick(Sender: TObject);
  private
    { Private declarations }
    dtmRE : TdtmRemind;
    FAppID: integer;
    procedure SetAppID(const Value: integer);
  public
    { Public declarations }
    property AppID : integer read FAppID write SetAppID;
  end;

var
  frmRemind: TfrmRemind;

implementation

uses dmMain;

{$R *.DFM}

procedure TfrmRemind.FormCreate(Sender: TObject);
begin
  inherited;
  dtmRE := TdtmRemind.Create(Self);
  grdRE.DataSource := dtmRE.dtsRemind;
  memNote.DataSource := dtmRE.dtsNote;
end;

procedure TfrmRemind.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdRE);
  spl.Color := tlbDBBase.Color;
  dtmRE.SetREStatus(True);
  Beep;
end;

procedure TfrmRemind.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmRE.SetREStatus(False);
  dtmRE.Free;
  dtmRE := nil;
end;

procedure TfrmRemind.SetAppID(const Value: integer);
begin
  FAppID := Value;
  dtmRE.AppID := AppID;
end;

procedure TfrmRemind.btnSnoozeClick(Sender: TObject);
begin
  inherited;
  dtmRE.SnoozeCurRmd;
  if dtmRE.qryRemind.Fields[0].IsNull then
    Close;
end;

procedure TfrmRemind.btnDismissClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you would like to dismiss the selected note?','C') = mrYes then
    if MesDlg('Dismissing the selected note.','X') = mrYes then
    begin
      dtmRE.DismissCurRmd;
    end;
  if dtmRE.qryRemind.RecordCount = 0 then
    Self.Close;
end;

end.
