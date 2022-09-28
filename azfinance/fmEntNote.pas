unit fmEntNote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, ComCtrls, ToolWin, Db, StdCtrls, DBCtrls, Grids,
  DBGrids, ExtCtrls, Mask, Buttons, Unit32, Menus, DBGrdClr;

type
  TfrmEntNote = class(TfrmDBBase)
    pnlMain: TPanel;
    memNote: TDBMemo;
    lblCharsLeft: TLabel;
    btnFilter2: TToolButton;
    btnPreview: TToolButton;
    btnPrint: TToolButton;
    pnlTop: TPanel;
    Label11: TLabel;
    dbtCode: TDBText;
    Label10: TLabel;
    dbtSurname: TDBText;
    Label12: TLabel;
    dbtIDnum: TDBText;
    Label9: TLabel;
    dbtName: TDBText;
    pnlFilter: TPanel;
    Label2: TLabel;
    cbxFilter: TComboBox;
    pnlFilterDate: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    Label3: TLabel;
    edtFilter: TEdit;
    pnlNoteDet: TPanel;
    grdNoteDet: TDBGrdClr;
    edtNoteNo: TDBEdit;
    btnFilter: TSpeedButton;
    Bevel1: TBevel;
    lblNoteDet: TLabel;
    btnNoteDone: TToolButton;
    pnlREM: TPanel;
    chbRemind: TCheckBox;
    dtmRmeD: TDateTimePicker;
    dtmRmeT: TDateTimePicker;
    lblNoteType: TLabel;
    cmbNoteCat: TComboBox;
    btnAttach: TToolButton;
    procedure memNoteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNoteNoChange(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure cbxFilterChange(Sender: TObject);
    procedure btnFilter2Click(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure grdNoteDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdNoteDetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnNoteDoneClick(Sender: TObject);
    procedure dtmRmeDChange(Sender: TObject);
    procedure chbRemindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbNoteCatChange(Sender: TObject);
    procedure btnAttachClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    FilterLst : TStringList;
    function GetFilter:string;
    procedure SetEnableStatus(Status:boolean);
    procedure DoNotesReport(PrintRep: boolean);
    procedure SetNoteStatus(inStatus: integer);
    procedure SetNoteReDT;
  public
    { Public declarations }
  end;

implementation

uses dmMain, rptEntNotes, uLSConst, fmAttach;

{$R *.DFM}

procedure TfrmEntNote.memNoteChange(Sender: TObject);
begin
  inherited;
  lblCharsLeft.Caption := 'Characters left: '+IntToStr(250-memNote.GetTextLen);
end;

procedure TfrmEntNote.FormShow(Sender: TObject);
begin
  inherited;
  CurrentDts := dtmMain.dtsEntNote;
  dtmMain.SetGrdColors(grdNoteDet);
  pnlREM.Color := tlbDBBase.Color;
  dtmMain.qryEntNote.Open;
  dtmMain.qryEntNote.Last;
  memNoteChange(Self);
  edtNoteNo.DataSource := dtmMain.dtsEntNote;
//  edtNoteNoChange(Self);
  dtpFrom.Date := Date;
  dtpTo.Date   := Date;
  cbxFilter.ItemIndex := 0;
end;

procedure TfrmEntNote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmMain.qryEntNote.BeforeScroll := nil;
  edtNoteNo.DataSource := nil;
  inherited;
  FilterDataSet(dtmMain.qryEntNote,'');
  FilterLst.Free;
  FilterLst := nil;
  dtmMain.qryEntNote.Close;
  dtmMain.qryNoteLU.Close;
end;

procedure TfrmEntNote.SetNoteStatus(inStatus: integer);
begin
  CurrentDts.DataSet.Edit;
  CurrentDts.DataSet.FieldByName('Status').AsInteger := inStatus;
  CurrentDts.DataSet.Post;
end;

procedure TfrmEntNote.edtNoteNoChange(Sender: TObject);
begin
  inherited;
  if (dtmMain.qryEntNote.FieldByName('NoteDate').AsDateTime >= Date) and
   (Trim(dtmMain.qryEntNote.FieldByName('UserID').AsString) = dtmMain.CurrentID) then
    SetEnableStatus(True)
  else
    SetEnableStatus(False);
  //
  if CurrentDts.DataSet.FieldByName('RemindMe').IsNull then
    dtmRmeD.DateTime := Now
  else
    dtmRmeD.DateTime := CurrentDts.DataSet.FieldByName('RemindMe').AsDateTime;
  dtmRmeT.DateTime := dtmRmeD.DateTime;
end;

procedure TfrmEntNote.SetEnableStatus(Status: boolean);
begin
  btnAmend.Enabled    := Status;
  memNote.Enabled     := Status;
  grdNoteDet.ReadOnly := not Status;
  if dtmMain.qryEntNote.FieldByName('Status').AsInteger = nsRemind then
    chbRemind.State := cbChecked;
//  chbRemind.Checked   := dtmMain.qryEntNote.FieldByName('Status').AsInteger = nsRemind;
end;

procedure TfrmEntNote.btnNewClick(Sender: TObject);
begin
  inherited;
  SetEnableStatus(True);
end;

procedure TfrmEntNote.cbxFilterChange(Sender: TObject);
begin
  inherited;
  edtFilter.Text := '';
  pnlFilterDate.Visible := cbxFilter.ItemIndex = 2;
  if cbxFilter.ItemIndex = 2 then
    edtFilter.Text := 'Dates';
  FilterDataSet(dtmMain.qryEntNote,'');
end;

function TfrmEntNote.GetFilter: string;
begin
  if Trim(edtFilter.Text)<>'' then
  begin
    case cbxFilter.ItemIndex of
      1: Result := 'NoteNo='''+edtFilter.Text+'''';// NoteNo
      2: Result := 'NoteDate >= '''+DateToStr(dtpFrom.Date)+
           ''' and NoteDate <='''+DateToStr(dtpTo.Date)+'''';//Note Dates
      3: Result := 'UserID='''+edtFilter.Text+'''';// User ID
      else
        Result := '';
    end;
  end {if}
  else
    Result := '';
end;

procedure TfrmEntNote.btnFilter2Click(Sender: TObject);
begin
  inherited;
  FilterDataSet(dtmMain.qryEntNote,GetFilter);
end;

procedure TfrmEntNote.DoNotesReport(PrintRep: boolean);
var
  repENote : TrepEntNotes;
begin
  repENote := TrepEntNotes.Create(self);
  try
    if PrintRep then
      repENote.QuickReport.Print
    else
      repENote.QuickReport.Preview
  finally
    repENote.Free;
  end;
end;

procedure TfrmEntNote.btnPreviewClick(Sender: TObject);
begin
  inherited;
  DoNotesReport(False);
end;

procedure TfrmEntNote.btnPrintClick(Sender: TObject);
begin
  inherited;
  DoNotesReport(True);
end;

procedure TfrmEntNote.btnFilterClick(Sender: TObject);
begin
  inherited;
  pnlFilter.Visible := not pnlFilter.Visible;
  if pnlFilter.Visible then
    btnFilter.Caption := '<< Filter notes'
  else
  begin
    btnFilter.Caption := '>> Filter notes';
    FilterDataSet(dtmMain.qryEntNote,'');
  end;
end;

procedure TfrmEntNote.grdNoteDetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key=VK_Delete) then
    Abort;
end;

procedure TfrmEntNote.grdNoteDetDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (Column.FieldName = 'NoteNo') and
    (dtmMain.qryEntNote.FieldByName('Status').AsInteger= nsRemind) then
  begin
    grdNoteDet.Canvas.Brush.Color := clRed;
  end;
  grdNoteDet.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmEntNote.btnNoteDoneClick(Sender: TObject);
begin
  inherited;
  SetNoteStatus(nsNone);
end;

procedure TfrmEntNote.dtmRmeDChange(Sender: TObject);
begin
  inherited;
  if not CheckDataSetForPost(CurrentDts.DataSet) then
    CurrentDts.DataSet.Edit;
end;

procedure TfrmEntNote.chbRemindClick(Sender: TObject);
begin
  inherited;
  dtmRmeD.Enabled := not dtmRmeD.Enabled;
  dtmRmeT.Enabled := not dtmRmeT.Enabled;
  //
  if CurrentDTS.DataSet.Active then
  begin
    if not CheckDataSetForPost(CurrentDts.DataSet) then
      CurrentDts.DataSet.Edit;
    //  
    if chbRemind.Checked then
      CurrentDts.DataSet.FieldByName('Status').AsInteger := nsRemind
    else
      CurrentDts.DataSet.FieldByName('Status').AsInteger := nsNone;
  end;
end;

procedure TfrmEntNote.SetNoteReDT;
begin
  if not CurrentDts.DataSet.FieldByName('RemindMe').IsNull then
  begin
    if dtmRmeD.DateTime <> CurrentDts.DataSet.FieldByName('RemindMe').AsDateTime then
    begin
      dtmRmeD.Time := dtmRmeT.Time;
      CurrentDts.DataSet.FieldByName('RemindMe').AsDateTime := dtmRmeD.DateTime;
//      SetNoteStatus(nsRemind);
    end;
  end;
end;

procedure TfrmEntNote.FormCreate(Sender: TObject);
begin
  FilterLst := TStringlist.Create;
  //Populating filter combobox
  dtmMain.qryNoteLU.Open;
  while not dtmMain.qryNoteLU.Eof do
  begin
    cmbNoteCat.Items.Add(dtmMain.qryNoteLU.FieldByName('Description').AsString);
    FilterLSt.Add(dtmMain.qryNoteLU.FieldByName('Description').AsString+'='+
      dtmMain.qryNoteLU.FieldByName('TypeKey').AsString);
    dtmMain.qryNoteLU.Next;
  end;
  cmbNoteCat.ItemIndex := 0;
end;

procedure TfrmEntNote.cmbNoteCatChange(Sender: TObject);
begin
  dtmMain.NoteCat := StrToInt(FilterLst.Values[cmbNoteCat.text]);
  FilterDataSet(CurrentDts.DataSet,'NoteCat = '+ FilterLst.Values[cmbNoteCat.text]);
end;

procedure TfrmEntNote.btnAttachClick(Sender: TObject);
var
  frmAttach : TfrmAttach;
begin
  frmAttach := Tfrmattach.Create(Self);
  try
    frmAttach.ShowModal;
  finally
    frmAttach.Free;
  end;
end;

procedure TfrmEntNote.btnSaveClick(Sender: TObject);
begin
  SetNoteReDT;
  inherited;
end;

end.

