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
  ExtCtrls, Grids, DBGrids, DBGrdClr, Unit32, ShellAPI, ImgList;

type
  TfrmNoteDetail = class(TfrmDBBase)
    pnlMain: TPanel;
    pcNotes: TPageControl;
    tbsNotes: TTabSheet;
    lblNoteCat: TLabel;
    lblNote: TLabel;
    memNote: TDBMemo;
    edtDueDate: TDBEdit;
    dtpDueDate: TdtpDB;
    lblDueDate: TLabel;
    dtpRemindDate: TDateTimePicker;
    dtpRemindTime: TDateTimePicker;
    cmbNoteCat: TDBLookupComboBox;
    lblRefNo: TLabel;
    edtRefNo: TDBEdit;
    lblCharsLeft: TLabel;
    pnlNoteDetail: TPanel;
    lblNoteNo: TLabel;
    txtNoteNo: TDBText;
    lblNoteDate: TLabel;
    txtNoteDate: TDBText;
    lblNoteName: TLabel;
    edtNoteName: TDBEdit;
    tbsAttachments: TTabSheet;
    grdAttach: TDBGrdClr;
    btnNoteDone: TToolButton;
    memDescription: TDBMemo;
    lblDescription: TLabel;
    lblARefNo: TLabel;
    lblDocType: TLabel;
    edtARefNo: TDBEdit;
    cmbDocType: TDBLookupComboBox;
    lblDocName: TLabel;
    txtDocName: TDBText;
    btnLinkDoc: TToolButton;
    odlDocs: TOpenDialog;
    btnCopyDoc: TToolButton;
    txtNoteName: TDBText;
    txtDocType: TDBText;
    txtARefNo: TDBText;
    edtDocName: TDBEdit;
    txtRefNo: TDBText;
    txtNoteCat: TDBText;
    txtDueDate: TDBText;
    txtRemindMe: TDBText;
    lblRemind: TLabel;
    imgClip: TImage;
    imgYes: TImage;
    imgNo: TImage;
    imgReminder: TImage;
    btnHyperlink: TToolButton;
    imgBar: TImageList;
    Label1: TLabel;
    dbtUsr: TDBText;
    dbcbUrgentNotes: TDBCheckBox;
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
    procedure btnHyperlinkClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetNoteStatus(inStatus: integer);
    procedure SetNoteReDT;
    procedure SetImages;
    procedure SetReminderDates;
  public
    { Public declarations }
    procedure SetReadOnly(View: Boolean);
  end;

implementation

uses dmMain, dmNotes;

{$R *.DFM}

procedure TfrmNoteDetail.FormCreate(Sender: TObject);
begin
  CurrentDts := dtmNotes.dtsNotes;
  pcNotes.ActivePage := tbsNotes;
  btnCopyDoc.Visible := dtmNotes.AttCopy;
  memNoteChange(Self);
end;

procedure TfrmNoteDetail.memNoteChange(Sender: TObject);
begin
  lblCharsLeft.Caption := 'Characters left: '+IntToStr(250-memNote.GetTextLen);
end;

procedure TfrmNoteDetail.SetNoteStatus(inStatus: integer);
begin
  CurrentDts.DataSet.Edit;
  CurrentDts.DataSet.FieldByName('Status').AsInteger := inStatus;
  CurrentDts.DataSet.Post;
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
  if dtmNotes.qryNotes.FieldByName('Urgent').AsString = 'True' then
    dbcbUrgentNotes.Checked := True
  else
    dbcbUrgentNotes.Checked := False;
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
  if dtmNotes.qryAttach.FieldByName('FileName').IsNull then
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
    end;
end;

procedure TfrmNoteDetail.SetReadOnly(View: Boolean);
begin
  edtNoteName.Visible   := not View;
  edtRefNo.Visible      := not View;
  cmbNoteCat.Visible    := not View;
  lblCharsLeft.Visible  := not View;
  memNote.ReadOnly      := View;
  edtDueDate.Visible    := not View;
  dtpDueDate.Visible    := not View;
  dtpRemindDate.Visible := not View;
  dtpRemindTime.Visible := not View;
  txtRemindMe.Visible   := View;
  edtARefNo.Visible     := not View;
  edtDocName.Visible    := not View;
  cmbDocType.Visible    := not View;
  memDescription.ReadOnly := View;
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
  if Column.Index = 3 then
    if not dtmNotes.qryAttach.FieldByName('FileName').IsNull then
      grdAttach.Canvas.Draw(Rect.Left+10,Rect.Top+2,imgClip.Picture.Bitmap);
end;

procedure TfrmNoteDetail.SetImages;
begin
  if CurrentDts.DataSet.FieldByName('Status').AsInteger = nsRemind then
    imgReminder.Picture := imgYes.Picture
  else
    imgReminder.Picture := imgNo.Picture;
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

procedure TfrmNoteDetail.btnHyperlinkClick(Sender: TObject);
var
  Hyperlink : String;
begin
  Hyperlink := dtmNotes.qryAttach.FieldByName('Hyperlink').AsString;
  if InputQuery('Hyperlink','Enter the hyperlink where the file is stored:',Hyperlink) then
    dtmNotes.DoHyperlink(Hyperlink);
end;

end.
