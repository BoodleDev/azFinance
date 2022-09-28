unit fmNotes;

{===============================================================================
 Author  : Willene le Roux
 Date    : 04/03/2003
 Unit    : Notes list form
 PreConditions  : inherit from parent and change labels on front
 PostConditions : none.
 History :
 ==============================================================================}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Menus, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, DBGrdClr,
  StdCtrls, EdtFilter, GetEdtFilter, DBCtrls, Unit32, db, fmNoteDetail, ShellAPI,
  Buttons;

type
  TfrmNotes = class(TfrmDBBase)
    pnlMain: TPanel;
    pnlTop: TPanel;
    lblEC: TLabel;
    lblEN: TLabel;
    lblEN2: TLabel;
    pnlFilter: TPanel;
    grdNotes: TDBGrdClr;
    lblFilter: TLabel;
    lblFilterType: TLabel;
    edtFilter: TEdit;
    pcNotes: TPageControl;
    tbsNote: TTabSheet;
    tbsAttach: TTabSheet;
    memNotes: TDBMemo;
    grdAttach: TDBGrdClr;
    imgClip: TImage;
    odlDocs: TOpenDialog;
    btnView: TToolButton;
    dtsInfo: TDataSource;
    pnlSub: TPanel;
    lblSubCi: TLabel;
    lblSubNi: TLabel;
    lblEntC: TLabel;
    lblEntN: TLabel;
    lblEntN2: TLabel;
    lblSubC: TLabel;
    lblSubN: TLabel;
    imgY: TImage;
    imgN: TImage;
    btnPrint: TToolButton;
    spdAdvanced: TSpeedButton;
    Panel1: TPanel;
    dtpStartDate: TDateTimePicker;
    dtpEndDate: TDateTimePicker;
    imgRed: TImage;
    imgGreen: TImage;
    btnOK: TBitBtn;
    cmbNoteCat: TComboBox;
    imgUrgent: TImage;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Securitysetup1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure grdNotesColEnter(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnAmendClick(Sender: TObject);
    procedure grdNotesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdAttachDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdAttachCellClick(Column: TColumn);
    procedure btnViewClick(Sender: TObject);
    procedure grdNotesDblClick(Sender: TObject);
    procedure grdNotesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure btnPrintClick(Sender: TObject);
    procedure spdAdvancedClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cmbNoteCatDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Securitysetup1Click(Sender: TObject);
  private
    { Private declarations }
    frmNDet : TfrmNoteDetail;
    procedure CreateNoteDetail(ReadOnly : Boolean);
    procedure SetColors;
  public
    { Public declarations }
    TDCommand : String;
    CMDText : String;
    OrderBy : String;
    procedure SetInfoDet(EntCode,EntName,EntName2,SubCode,SubName: string);
  end;

implementation

uses dmMain, dmNotes, fmMain, uReports, fmBase_Security;

{$R *.DFM}

procedure TfrmNotes.FormShow(Sender: TObject);
begin
  inherited;
  OrderBy := ' order by NoteNo desc';
  CMDText := OrigSQL;
  dtmNotes.qryNotes.CommandText := dtmNotes.qryNotes.CommandText + OrderBy;
  dtmNotes.SetActiveQueries(True);
  CurrentDts := dtmNotes.dtsNotes;
  TDCommand := dtmNotes.qryNotes.CommandText;
  pcNotes.ActivePage := tbsNote;
  SetColors;
  btnOK.Glyph.Assign(imgGreen.Picture.Bitmap);
end;

procedure TfrmNotes.grdNotesColEnter(Sender: TObject);
begin
  if (grdNotes.SelectedIndex in [1,2]) then
    lblFilterType.Caption := grdNotes.SelectedField.DisplayName
  else
    lblFilterType.Caption := 'Not selected';
end;

procedure TfrmNotes.edtFilterChange(Sender: TObject);
begin
  if Trim(edtFilter.Text) = '' then
    FilterDataSet(dtmNotes.qryNotes,'')
  else
    if (grdNotes.SelectedIndex in [1,2]) then
      FilterDataSet(dtmNotes.qryNotes,
        grdNotes.SelectedField.FieldName+' like '''+edtFilter.Text+'%''');
end;

procedure TfrmNotes.CreateNoteDetail;
begin
  frmNDet := TfrmNoteDetail.Create(Self);
  frmNDet.SetReadOnly(ReadOnly);
  try
    frmNDet.ShowModal;
  finally
    frmNDet.Free;
  end;
end;

procedure TfrmNotes.btnNewClick(Sender: TObject);
begin
  inherited;
  CreateNoteDetail(False);
end;

procedure TfrmNotes.btnAmendClick(Sender: TObject);
begin
  inherited;
  CreateNoteDetail(False);
  btnAmend.Enabled := True;
end;

procedure TfrmNotes.grdNotesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.Index = 0) and
    (dtmNotes.qryNotes.FieldByName('Status').AsInteger = nsRemind) then
  begin
    grdNotes.Canvas.Brush.Color := clRed;
  end;
  grdNotes.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if Column.Index = 2 then
  if dtmNotes.qryNotes.FieldByName('NTAction').AsInteger = 1 then
    grdNotes.Canvas.Draw(Rect.Left +1,Rect.Top+2,imgY.Picture.Graphic)
  else
   grdNotes.Canvas.Draw(Rect.Left +1,Rect.Top+2,imgN.Picture.Graphic);

  if (Column.Index = 1) Then
  begin
    grdNotes.Canvas.FillRect(Rect);
    if dtmNotes.qryNotes.FieldByName('Urgent').AsString = 'True' Then
      grdNotes.Canvas.Draw(rect.Left+1,Rect.Top+2,imgUrgent.Picture.Graphic);
    grdNotes.Canvas.TextOut(rect.left+15,rect.Top+2,dtmNotes.qryNotes.FieldByName('NoteName').asString);
  end;
end;

procedure TfrmNotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmNotes.SetActiveQueries(False);
  dtmNotes.qryNotes.CommandText := OrigSQL;
end;

procedure TfrmNotes.SetColors;
begin
  dtmMain.SetgrdColors(grdNotes);
  dtmMain.SetgrdColors(grdAttach);
  pnlFilter.Color := dtmMain.RecBarColor;
end;

procedure TfrmNotes.grdAttachDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Index = 4 then
    if not dtmNotes.qryAttach.FieldByName('FileName').IsNull then
      grdAttach.Canvas.Draw(Rect.Left+10,Rect.Top+2,imgClip.Picture.Bitmap);
end;

procedure TfrmNotes.grdAttachCellClick(Column: TColumn);
begin
  if Column.Index = 4 then
    if not dtmNotes.qryAttach.FieldByName('FileName').IsNull then
      ShellExecute(Handle, 'open', pChar(dtmNotes.qryAttach.FieldByName('Hyperlink').AsString)
        ,'', '', SW_SHOW);
end;

procedure TfrmNotes.btnViewClick(Sender: TObject);
begin
  CreateNoteDetail(True);
end;

procedure TfrmNotes.SetInfoDet(EntCode, EntName, EntName2, SubCode,
  SubName: string);
begin
  lblEntC.Caption := EntCode;
  lblEntN.Caption := EntName;
  lblEntN2.Caption := EntName2;
  lblSubC.Caption := SubCode;
  lblSubN.Caption := SubName;
  //
  lblSubC.Visible := SubCode <> '';
  lblSubN.Visible := SubName <> '';
  pnlSub.Visible  := (Trim(SubCode)<>'') and (Trim(SubName)<>'');
end;

procedure TfrmNotes.grdNotesDblClick(Sender: TObject);
begin
  inherited;
  if not CheckDataSetForPost(dtmNotes.qryNotes) then
  dtmNotes.qryNotes.edit;
  if dtmNotes.qryNotes.FieldByName('NTAction').AsInteger = 0 then
    dtmNotes.qryNotes.FieldByName('NTAction').AsInteger := 1
  else
    dtmNotes.qryNotes.FieldByName('NTAction').Asinteger := 0;
end;

procedure TfrmNotes.grdNotesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;

//  grdNotes.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmNotes.btnPrintClick(Sender: TObject);
begin
  LoadReport(123,False)
end;

procedure TfrmNotes.spdAdvancedClick(Sender: TObject);
begin
  If spdAdvanced.Down = True then
  begin
    Panel1.visible := True;
    spdAdvanced.Caption := 'Close Advanced';
    if cmbNoteCat.Items.Count = 0 then
    begin
      dtmNotes.qryLUNote.First;
      While not dtmNotes.qryLUNote.EOF Do
      begin
        cmbNoteCat.Items.Add(dtmNotes.qryLUNote.FieldByName('Description').AsString +
          '=' + dtmNotes.qryLUNote.FieldByName('TypeKey').AsString);
        dtmNotes.qryLUNote.Next;
      end;
    end;
  end
  else
  begin
    cmbNoteCat.Text := '';
    Panel1.Visible := False;
    spdAdvanced.Down := False;
    spdAdvanced.Caption := 'Advanced'
  end;
end;

procedure TfrmNotes.btnOKClick(Sender: TObject);
var
  Where, NoteCat : String;
begin
  if btnOK.Caption = 'Set Filter' then
    begin
      if edtFilter.Text = '' then
      begin
        if cmbNoteCat.Text <> '' then
        begin
          NoteCat := cmbNoteCat.Items.Values[cmbNoteCat.Items.Names[cmbNoteCat.ItemIndex]];
          Where := ' and NoteDate Between '+QuotedStr(FormatDateTime('mm/dd/yyyy',dtpStartDate.Date))+
                   ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',dtpEndDate.DateTime))+
                   ' and NoteCat = '''+NoteCat+''' ';//+OrderBy;
          btnOK.Caption := 'Undo Filter';
          btnOK.Glyph.Assign(imgRed.Picture.Bitmap);
        end
        else
        begin
          Where := ' and NoteDate Between '+ QuotedStr(FormatDateTime('mm/dd/yyyy',dtpStartDate.Date))+
                   ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',dtpEndDate.DateTime));// + OrderBy;
          btnOK.Caption := 'Undo Filter';
          btnOK.Glyph.Assign(imgRed.Picture.Bitmap);
        end;
      end
      else
      if edtFilter.Text <> '' then
      begin
        if cmbNoteCat.Text <> '' then
        begin
          Where := ' and NoteDate Between '+QuotedStr(FormatDateTime('mm/dd/yyyy',dtpStartDate.Date))+
                   ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',dtpEndDate.DateTime))+
                   ' and NoteCat = '''+cmbNoteCat.Text+''' ';//+ OrderBy;
          btnOK.Caption := 'Undo Filter';
          btnOK.Glyph.Assign(imgRed.Picture.Bitmap);
        end
        else
        begin
          Where := ' and NoteDate Between '+QuotedStr(FormatDateTime('mm/dd/yyyy',dtpStartDate.Date))+
                   ' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',dtpEndDate.DateTime));//+ OrderBy;
          btnOK.Caption := 'Undo Filter';
          btnOK.Glyph.Assign(imgRed.Picture.Bitmap);
        end;
      end;
    end
  else
  begin
    btnOK.Caption := 'Set Filter';
    btnOK.Glyph.Assign(imgGreen.Picture.Bitmap);
  end;
  if btnOK.Caption = 'Undo Filter' then
  begin
    dtmNotes.qryNotes.Close;
    dtmNotes.qryNotes.CommandText := CMDText + Where + OrderBy;
    dtmNOtes.qryNotes.Open;
    cmbNoteCat.Text := '';
  end
  else
  begin
    cmbNoteCat.Text := '';
    dtmNotes.qryNotes.Close;
    dtmNotes.qryNotes.CommandText := CMDText + Where + OrderBy;
    dtmNOtes.qryNotes.Open;
  end;
end;

procedure TfrmNotes.cmbNoteCatDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cmbNoteCat.Canvas.FillRect(Rect);
  cmbNoteCat.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,
    cmbNoteCat.Items.Names[Index]);
end;

procedure TfrmNotes.Securitysetup1Click(Sender: TObject);
var
  frmSecurity: TfrmBase_Security;
begin
  frmSecurity := TfrmBase_Security.Create(Self);
  frmSecurity.CopyScreen(Self, frmSecurity);
  frmSecurity.ShowModal;
  frmSecurity.Free;
end;

end.
