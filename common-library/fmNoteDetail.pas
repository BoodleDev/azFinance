unit fmNoteDetail;

{===============================================================================
 Author  : Willene le Roux
 Date    : 04/03/2003
 Unit    : Notes detail form with attachments
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Menus, ComCtrls, ToolWin, StdCtrls, dtpDB, Mask, DBCtrls,
  ExtCtrls, Grids, DBGrids, DBGrdClr, Unit32, ShellAPI, ImgList,
  dbDateTimePicker, db, Buttons;

type
  TfrmNoteDetail = class(TfrmDBBase)
    pnlMain: TPanel;
    btnNoteDone: TToolButton;
    odlDocs: TOpenDialog;
    imgBar: TImageList;
    StatusBar1: TStatusBar;
    lblNoteCat: TLabel;
    lblDueDate: TLabel;
    lblRefNo: TLabel;
    lblRemind: TLabel;
    imgYes: TImage;
    imgNo: TImage;
    imgReminder: TImage;
    lblUserID: TLabel;
    txtUserID: TDBText;
    dtpRemindDate: TDateTimePicker;
    dtpRemindTime: TDateTimePicker;
    cmbNoteCat: TDBLookupComboBox;
    edtRefNo: TDBEdit;
    chkUrgent: TDBCheckBox;
    pgNotes: TPageControl;
    TabSheet1: TTabSheet;
    lblCharsLeft: TLabel;
    memNote: TDBMemo;
    tsAttach: TTabSheet;
    grdAttach: TDBGrdClr;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    btnNewA: TToolButton;
    btnEditA: TToolButton;
    btnDeleteA: TToolButton;
    dbDateTimePicker1: TdbDateTimePicker;
    lblNoteDate: TLabel;
    imgClip: TImage;
    edtNoteName: TDBEdit;
    lblNoteName: TLabel;
    lblNoteNo: TLabel;
    txtNoteNo: TDBText;
    txtNoteDate: TDBText;
    btnViewA: TToolButton;
    DBEdit1: TDBEdit;
    lblUpdateDetail: TDBText;
    lblUpdateBy: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure memNoteChange(Sender: TObject);
    procedure btnNoteDoneClick(Sender: TObject);
    procedure tbsNotesShow(Sender: TObject);
    procedure tbsAttachmentsShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpRemindDateChange(Sender: TObject);
    procedure btnLinkDocClick(Sender: TObject);
    procedure btnCopyDocClick(Sender: TObject);
    procedure grdAttachCellClick(Column: TColumn);
    procedure grdAttachDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure imgReminderClick(Sender: TObject);
    procedure btnNewAClick(Sender: TObject);
    procedure btnEditAClick(Sender: TObject);
    procedure btnViewAClick(Sender: TObject);
    procedure btnDeleteAClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
    procedure SetNoteStatus(inStatus: integer);
    procedure SetNoteReDT;
    procedure SetImages;
    procedure SetReminderDates;
    procedure DoAttachmentDetail;
  public
    { Public declarations }
    procedure SetReadOnly(View: Boolean);
  end;

implementation

uses dmMain, dmNotes, fmAttachDetail;

{$R *.DFM}

procedure TfrmNoteDetail.FormCreate(Sender: TObject);
begin
  CurrentDts := dtmNotes.dtsNotes;
  lblUserID.Parent := StatusBar1;
  txtUserId.Parent := StatusBar1;
  lblUserID.Left := 2;
  lblUserID.Top  := 3;
  txtUserID.Left := lblUserID.Left + lblUserID.Width + 2;
  txtUserID.Top  := lblUserID.Top;

  lblUpdateBy.Parent := StatusBar1;
  lblUpdateDetail.Parent := StatusBar1;
  lblUpdateBy.Top := 3;
  lblUpdateBy.Left := txtUserID.Left + txtUserID.Width + 10;
  lblUpdateDetail.Top := 3;
  lblUpdateDetail.Left := lblUpdateBy.Left + lblUpdateBy.Width + 2;
//  pcNotes.ActivePage := tbsNotes;
//  btnCopyDoc.Visible := dtmNotes.AttCopy;
  memNoteChange(Self);

  pgNotes.ActivePageIndex := 0;
end;

procedure TfrmNoteDetail.memNoteChange(Sender: TObject);
begin
  lblCharsLeft.Caption := 'Characters left: ' +
    IntToStr(500-memNote.GetTextLen) + '  ';;
end;

procedure TfrmNoteDetail.SetNoteStatus(inStatus: integer);
begin
  if not (CurrentDts.DataSet.State in [dsInsert,dsEdit]) then
    CurrentDts.DataSet.Edit;
  CurrentDts.DataSet.FieldByName('Status').AsInteger := inStatus;
  SetImages;
end;

procedure TfrmNoteDetail.btnNoteDoneClick(Sender: TObject);
begin
  SetNoteStatus(nsNone);
end;

procedure TfrmNoteDetail.tbsNotesShow(Sender: TObject);
begin
  CurrentDts := dtmNotes.dtsNotes;
end;

procedure TfrmNoteDetail.tbsAttachmentsShow(Sender: TObject);
begin
  CurrentDts := dtmNotes.dtsAttach;
end;

procedure TfrmNoteDetail.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetgrdColors(grdAttach);
  SetImages;
  SetReminderDates;
  if chkUrgent.Enabled then
  begin
    if dtmNotes.qryNotes.FieldByName('Urgent').AsString = 'True' then
      chkUrgent.Checked := True
    else
      chkUrgent.Checked := False;
  end;
end;

procedure TfrmNoteDetail.SetNoteReDT;
begin
  dtpRemindDate.Time := dtpRemindTime.Time;
  CurrentDts.DataSet.Edit;
  CurrentDts.DataSet.FieldByName('RemindMe').AsDateTime := dtpRemindDate.DateTime;
  SetNoteStatus(nsRemind);
end;

procedure TfrmNoteDetail.dtpRemindDateChange(Sender: TObject);
begin
  SetNoteReDT;
end;

procedure TfrmNoteDetail.btnLinkDocClick(Sender: TObject);
begin
  if MesDlg('Would you like to link a new document?','C') = mrYes then
    if odlDocs.Execute then
      dtmNotes.DoHyperlink(odlDocs.FileName);
end;

procedure TfrmNoteDetail.btnCopyDocClick(Sender: TObject);
begin
{  if dtmNotes.qryAttach.FieldByName('FileName').IsNull then
    MesDlg('Please load a document!','E')
  else
    if MesDlg('Would you like to save this document onto the server?','C') = mrYes then
    begin
      dtmNotes.qryAttach.Edit;
      dtmNotes.qryAttach.FieldByName('FileName').AsString  := dtmNotes.qryAttach.FieldByName('RecID').AsString
        + ExtractFileExt(dtmNotes.qryAttach.FieldByName('FileName').AsString);
      CopyFile(PChar(dtmNotes.qryAttach.FieldByName('Hyperlink').AsString),
        pChar(dtmNotes.AttPath + dtmNotes.qryAttach.FieldByName('FileName').AsString),False);
      dtmNotes.qryAttach.FieldByName('Hyperlink').AsString :=
        dtmNotes.AttPath + dtmNotes.qryAttach.FieldByName('FileName').AsString;
      dtmNotes.qryAttach.Post;
      MesDlg('Document saved as ' + dtmNotes.qryAttach.FieldByName('FileName').AsString,'I');
    end; }
end;

procedure TfrmNoteDetail.SetReadOnly(View: Boolean);
var
  I: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TDBEdit then
    begin
      TDBEdit(Components[i]).ReadOnly := True;
      TDBEdit(Components[i]).Color    := dtmMain.ScrPnlColor;
    end
    else if Components[i] is TEdit then
    begin
      TEdit(Components[i]).ReadOnly := True;
      TEdit(Components[i]).Color    := dtmMain.ScrPnlColor;
    end
    else if Components[I] is TDBLookupComboBox then
    begin
      TDBLookupComboBox(Components[I]).ReadOnly := True;
      TDBLookupComboBox(Components[I]).Color    := dtmMain.ScrPnlColor;
    end
    else if Components[I] is TDBComboBox then
    begin
      TDBComboBox(Components[I]).ReadOnly := True;
      TDBComboBox(Components[I]).Color    := dtmMain.ScrPnlColor;
    end
    else if Components[I] is TComboBox then
    begin
      TComboBox(Components[I]).Enabled := False;
      TComboBox(Components[I]).Color   := dtmMain.ScrPnlColor;
    end
    else if Components[I] is TDateTimePicker then
    begin
      TDateTimePicker(Components[I]).Enabled := False;
      TDateTimePicker(Components[I]).Color   := dtmMain.ScrPnlColor;
    end
    else if Components[I] is TDBRadioGroup then
      TDBRadioGroup(Components[I]).ReadOnly := True
    else if Components[I] is TSpeedButton then
      TSpeedButton(Components[I]).Visible := False
    else if Components[I] is TDBCheckBox then
      TDBCheckBox(Components[I]).Enabled := False
    else if Components[I] is TDBMemo then
    begin
      TDBMemo(Components[I]).ReadOnly := True;
      TDBMemo(Components[I]).Color   := dtmMain.ScrPnlColor;
    end
    else if Components[I] is TDBGrdClr then
    begin
      TDBGrdClr(Components[I]).ReadOnly := True;
      TDBGrdClr(Components[I]).Color   := dtmMain.ScrPnlColor;
    end;
  end;

  imgReminder.Hide;
  btnNew.Hide;
  btnAmend.Hide;
  btnNoteDone.Hide;

  btnNewA.Hide;
  btnEditA.Hide;
  btnDeleteA.Hide;
end;

procedure TfrmNoteDetail.grdAttachCellClick(Column: TColumn);
begin
  if Column.Index = 3 then
    if not dtmNotes.qryAttach.FieldByName('FileName').IsNull then
      ShellExecute(Handle, 'open', pChar(dtmNotes.qryAttach.FieldByName('Hyperlink').AsString)
        ,'', '', SW_SHOW);
end;

procedure TfrmNoteDetail.grdAttachDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Index = 5 then
    if dtmNotes.qryAttach.FieldByName('Hyperlink').AsString <> '' then
      grdAttach.Canvas.Draw(Rect.Left+10,Rect.Top+2,imgClip.Picture.Bitmap);
end;

procedure TfrmNoteDetail.SetImages;
begin
  if CurrentDts.DataSet.FieldByName('Status').AsInteger = nsRemind then
  begin
    imgReminder.Picture := imgYes.Picture;
    btnNoteDone.Enabled := True;
  end
  else
  begin
    imgReminder.Picture := imgNo.Picture;
    btnNoteDone.Enabled := False;
  end
end;

procedure TfrmNoteDetail.SetReminderDates;
begin
  if CurrentDts.DataSet.FieldByName('RemindMe').IsNull then
    dtpRemindDate.DateTime := Now
  else
    dtpRemindDate.DateTime := CurrentDts.DataSet.FieldByName('RemindMe').AsDateTime;
  dtpRemindTime.DateTime := dtpRemindDate.DateTime;
end;

procedure TfrmNoteDetail.imgReminderClick(Sender: TObject);
begin
  if CurrentDts.DataSet.FieldByName('Status').AsInteger = nsNone then
    SetNoteStatus(nsRemind)
  else
    SetNoteStatus(nsNone);
end;

procedure TfrmNoteDetail.btnNewAClick(Sender: TObject);
begin
  inherited;
  if dtmNotes.qryNotes.FieldByName('NoteID').IsNull then
    if MessageDlg('This note must be saved before adding any attachments. ' +
      'Do you want to save now?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        dtmNotes.qryNotes.Post
    else
      Exit;
        
  dtmNotes.qryAttach.Append;
  DoAttachmentDetail;
end;

procedure TfrmNoteDetail.DoAttachmentDetail;
var
  frmAttachDetail: TfrmAttachDetail;
begin
  frmAttachDetail := TfrmAttachDetail.Create(Self);
  try
    frmAttachDetail.Showmodal;
    if dtmNotes.qryAttach.State in [dsEdit,dsInsert] then
      dtmNotes.qryAttach.Cancel;
  finally
    frmAttachDetail.Free;
  end;          
end;

procedure TfrmNoteDetail.btnEditAClick(Sender: TObject);
begin
  inherited;
  if not dtmNotes.qryAttach.FieldByName('RecID').IsNull then
  begin
    dtmNotes.qryAttach.Edit;
    DoAttachmentDetail;
  end;
end;

procedure TfrmNoteDetail.btnViewAClick(Sender: TObject);
begin
  inherited;
  if not dtmNotes.qryAttach.FieldByName('RecID').IsNull then
    ShellExecute(Application.Handle,'open',
      PChar(dtmNotes.qryAttach.FieldByName('Hyperlink').AsString),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmNoteDetail.btnDeleteAClick(Sender: TObject);
begin
  inherited;
  if not dtmNotes.qryAttach.FieldByName('RecID').IsNull then
    if MessageDlg('Are you sure you want to delete this attachment?',
      mtConfirmation, [mbYes,mbNo],-1) = mrYes then
        dtmNotes.qryAttach.Delete;
end;

procedure TfrmNoteDetail.DBEdit1Change(Sender: TObject);
begin
  inherited;
  tsAttach.Caption := 'Attachments (' +
    IntToStr(dtmNotes.qryAttach.RecordCount) + ')';
end;

end.
