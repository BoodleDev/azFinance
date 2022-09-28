unit fmBatchNote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls, Menus;

type
  TfrmBatchNote = class(TfrmDBBase)
    pnlMain: TPanel;
    Label11: TLabel;
    Bevel1: TBevel;
    lblNoteDet: TLabel;
    Label1: TLabel;
    dbtUserID: TDBText;
    Label2: TLabel;
    dbtDate: TDBText;
    lblCharsLeft: TLabel;
    memNote: TDBMemo;
    lblCurBatch: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure memNoteChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmBatchTrans, dmMain;

{$R *.DFM}

procedure TfrmBatchNote.FormShow(Sender: TObject);
begin
  inherited;
  CurrentDts := dtmBatchTrans.dtsBatchNote;
  lblCurBatch.Caption := dtmBatchTrans.GetCurBatchNo;
  dtmBatchTrans.qryBatchNote.Open;
  memNoteChange(self);
end;

procedure TfrmBatchNote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmBatchTrans.qryBatchNote.Close;
end;

procedure TfrmBatchNote.memNoteChange(Sender: TObject);
begin
  inherited;
  lblCharsLeft.Caption := 'Characters left: '+IntToStr(215-memNote.GetTextLen);
end;

procedure TfrmBatchNote.btnSaveClick(Sender: TObject);
begin
  memNote.Lines.Add('Done by '+dtmMain.CurrentID+' on '+DateToStr(Date));
  inherited;
end;

end.
