unit fmPreviewDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, MODI_TLB, ExtCtrls, ImgList,
  ComCtrls, ToolWin, StrUtils, Menus, Printers, HyperLink, fmPreviewDocMax,
  DBStyleGrid, DBCtrls, Unit32;

type
  TDocView = class(TMiDocView)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
//    constructor Create(AOwner: TComponent); override;
    procedure WndProc(var Mesg: TMessage);override;
  published
    { Published declarations }
  end;

type
  TfrmPreviewDoc = class(TForm)
    dsDocuments: TADODataSet;
    dtsDocuments: TDataSource;
    imlTools: TImageList;
    pnlClient: TPanel;
    Panel2: TPanel;
    grpPreview: TGroupBox;
    pnlPreview: TPanel;
    clbNavigate: TCoolBar;
    tlbPreview: TToolBar;
    btnFirst: TToolButton;
    btnPrior: TToolButton;
    Panel3: TPanel;
    cmbPages: TComboBox;
    btnNext: TToolButton;
    btnLast: TToolButton;
    pnlTools: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    Splitter1: TSplitter;
    pnlTop: TPanel;
    grdDocuments: TDBGrid;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Print1: TMenuItem;
    Exit1: TMenuItem;
    btnPrint: TToolButton;
    btnZoomIn: TToolButton;
    btnZoomOut: TToolButton;
    dsPages: TADODataSet;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnEditDocument: TToolButton;
    btnView: TToolButton;
    ppmView: TPopupMenu;
    Rejected1: TMenuItem;
    Accepted1: TMenuItem;
    AcceptedRejected1: TMenuItem;
    ToolButton1: TToolButton;
    dsDocPath: TADODataSet;
    procedure btnLastClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure cmbPagesChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dsDocumentsAfterOpen(DataSet: TDataSet);
    procedure dsDocumentsAfterScroll(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnZoomInClick(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure Accepted1Click(Sender: TObject);
    procedure Rejected1Click(Sender: TObject);
    procedure AcceptedRejected1Click(Sender: TObject);
    procedure grdDocumentsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnEditDocumentClick(Sender: TObject);
  private
    Document: IDocument;
    FLoanID: Integer;
    FShowGrid: Boolean;
    FAllowSelect: Boolean;
    procedure SetAllowSelect(const Value: Boolean);
    procedure SetShowGrid(const Value: Boolean);
    procedure SetLoanID(const Value: Integer);
    procedure VisibleRectChanged(Sender: TObject);
    procedure SetViewStatus(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    DocView: TDocView;
    property AllowSelect: Boolean read FAllowSelect write SetAllowSelect;
    property LoanID: Integer read FLoanID write SetLoanID;
    property ShowGrid: Boolean read FShowGrid write SetShowGrid;
  end;

var
  frmPreviewDoc: TfrmPreviewDoc;


implementation

uses dmMain, fmPreviewDocEdit, fmLoanViewDoc;

{$R *.dfm}

{ TfrmPreviewDoc }

procedure TfrmPreviewDoc.SetAllowSelect(const Value: Boolean);
begin
  FAllowSelect := Value;
  if AllowSelect then
  begin
    btnOK.Show;
    btnCancel.Caption := 'Cancel';
  end
  else
  begin
    btnOK.Hide;
    btnCancel.Caption := 'Close';
  end;

end;

procedure TfrmPreviewDoc.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
  try
    Screen.Cursor := crHourGlass;
    dsDocuments.Close;
    dsDocuments.Parameters[0].Value := LoanID;
    dsDocuments.Open;
    dsDocumentsAfterScroll(dsDocuments);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPreviewDoc.SetShowGrid(const Value: Boolean);
begin
  FShowGrid := Value;
  pnlTop.Visible := ShowGrid;
  Splitter1.Visible := ShowGrid;
end;

procedure TfrmPreviewDoc.FormResize(Sender: TObject);
begin
  grdDocuments.Columns[1].Width := grdDocuments.ClientWidth -
    grdDocuments.Columns[0].Width - grdDocuments.Columns[2].Width -
    grdDocuments.Columns[3].Width - grdDocuments.Columns[4].Width -
    IndicatorWidth - 6;
end;

procedure TfrmPreviewDoc.cmbPagesChange(Sender: TObject);
var
  Filename: String;
begin
  if Self.Showing then
  begin
    if dsPages.RecordCount > 0 then
    begin
      dsPages.RecNo := cmbPages.ItemIndex + 1;
      Document.Close(False);
      //Filename := DocProcess + dsPages.FieldByName('PageID').AsString;
      if not dsDocuments.FieldByName('NewFolder').AsBoolean then
        Filename := DocProcess + dsPages.FieldByName('PageID').AsString
      else
      begin
        dsDocPath.Close;
        dsDocPath.Parameters[0].Value := LoanID;
        dsDocPath.Open;
        Filename := dsDocPath.Fields[0].AsString + '\' +
          dsPages.FieldByName('PageID').AsString;
        dsDocPath.Close;
      end;

      if FileExists(Filename) then
      begin
        try
          Document.Create(Filename);
        except
          CopyFile(PChar(Filename),PChar(TempFolder + '1.tif'),False);
          Filename := TempFolder + '1.tif';
          Document.Create(Filename);
        end;
      end
      else
        Document.Create('');

      (*
      DocView.FileName := DocProcess + dsDocuments.FieldByName('DocumentID').AsString +
        '.' + RightStr('00' + IntToStr(cmbPages.ItemIndex + 1),3); *)
      DocView.Document := Document;

      btnPrior.Enabled := cmbPages.ItemIndex > 0;
      btnFirst.Enabled  := cmbPages.ItemIndex > 0;
      btnNext.Enabled := cmbPages.ItemIndex < cmbPages.Items.Count -1;
      btnLast.Enabled := cmbPages.ItemIndex < cmbPages.Items.Count -1;
    end;
  end;
end;

procedure TfrmPreviewDoc.dsDocumentsAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(dsDocuments.FieldByName('CreateDate')).DisplayFormat := ShortDateTimeFormat;
end;

procedure TfrmPreviewDoc.dsDocumentsAfterScroll(DataSet: TDataSet);
var
  I: Integer;
{  Filename: String;
  NewDoc: IDocument; }
begin
 { if Self.Showing then
  begin
    if dsDocuments.FieldByName('DocumentID').AsInteger > 0 then
    begin
      if not dsPages.Active then
        dsPages.Open;
      dsPages.Last;
      Filename := DocProcess + dsPages.FieldByName('PageID').AsString;
      if FileExists(Filename) then
      begin
        CopyFile(PChar(Filename),PChar(TempFolder + '1.tif'),False);
        Filename := TempFolder + '1.tif';
        Document.Create(Filename);
      end;
      dsPages.Prior;
      NewDoc := CoDocument.Create;
      while not dsPages.Bof do
      begin
        Filename := DocProcess + dsPages.FieldByName('PageID').AsString;
        NewDoc.Create(Filename);
        Document.Images.Add(NewDoc.Images[0],Document.Images[0]);
        dsPages.Prior;
      end;
      btnOK.Enabled := True;
    end
    else
    begin
      btnOK.Enabled := False;
      Document.Create('');
    end;
    DocView.Document := Document;
  end;  }

  if DataSet.FieldByName('DocumentID').AsInteger > 0 then
  begin
    cmbPages.Items.Clear;
    for I := 1 to DataSet.FieldByName('Pages').AsInteger do
        cmbPages.Items.Add('Page ' + IntToStr(I));

    if not dsPages.Active then
      dsPages.Open;

    if cmbPages.Items.Count > 0 then
    begin
      cmbPages.ItemIndex := 0;
      cmbPagesChange(cmbPages);
    end;

    btnOK.Enabled := True;
  end
  else
  begin
    btnOK.Enabled := False;
    if Self.Showing then
    begin
      Document.Create('');
      DocView.Document := Document;
    end;
  end;
end;

procedure TfrmPreviewDoc.btnFirstClick(Sender: TObject);
begin
  cmbPages.ItemIndex := 0;
  cmbPagesChange(cmbPages);
end;

procedure TfrmPreviewDoc.btnLastClick(Sender: TObject);
begin
  cmbPages.ItemIndex := cmbPages.Items.Count - 1;
  cmbPagesChange(cmbPages);
end;

procedure TfrmPreviewDoc.btnNextClick(Sender: TObject);
begin
  cmbPages.ItemIndex := cmbPages.ItemIndex + 1;
  cmbPagesChange(cmbPages);
end;

procedure TfrmPreviewDoc.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmPreviewDoc.btnPriorClick(Sender: TObject);
begin
  cmbPages.ItemIndex := cmbPages.ItemIndex - 1;
  cmbPagesChange(cmbPages);
end;

procedure TfrmPreviewDoc.FormCreate(Sender: TObject);
begin
  frmLoanViewDoc := TfrmLoanViewDoc.Create(Self);
  frmPreviewDocMax := TfrmPreviewDocMax.Create(Self);
  DocView := TDocView.Create(Self);
  DocView.Parent := pnlPreview;
  DocView.Align := alClient;
  DocView.Show;
  DocView.FitMode := miByTextWidth;
  DocView.OnVisibleRectChanged := VisibleRectChanged;

  Document := CoDocument.Create;
end;

procedure TfrmPreviewDoc.VisibleRectChanged(Sender: TObject);
var
  DRect: TRect;
begin
  DocView.GetVisibleRect(DRect.Left, DRect.Top, DRect.Right, DRect.Bottom);
  Self.Caption := 'Preview Documents (' + IntToStr(DRect.Left) + ',' +
    IntToStr(DRect.Top) + ')';
end;

procedure TfrmPreviewDoc.FormDestroy(Sender: TObject);
begin
  dsDocuments.AfterScroll := nil;
  DocView.FileName := '';
  DocView.Parent := nil;
  FreeAndNil(DocView);
  FreeAndNil(frmPreviewDocMax);
  FreeAndNil(frmLoanViewDoc);
  dsDocuments.Close;
  dsPages.Close;
end;

procedure TfrmPreviewDoc.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPreviewDoc.FormShow(Sender: TObject);
begin
  //SetLoanID(LoanId);
  Accepted1Click(Accepted1);
  dsDocumentsAfterScroll(dsDocuments);

  grdDocuments.Columns[0].Width := 25;
  grdDocuments.Columns[0].Title.Caption := '';
end;

procedure TfrmPreviewDoc.btnPrintClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Document.PrintOut(1,-1,1, GetDefaultPrinterName, '', False, miPRINT_PAGE);
  Screen.Cursor := crDefault;
end;

procedure TfrmPreviewDoc.btnZoomInClick(Sender: TObject);
var
  XScale, YScale: Double;
begin
   //DocView.GetVisibleRect(100,100,50,50);
   DocView.GetScale(XScale,YScale);
   {Self.Caption := FloatToStr(XScale) + ' | ' + FloatToStr(YScale);}
   if Sender = btnZoomIn then
    XScale := XScale + 0.5
   else
    XScale := XScale - 0.5;
   YScale := XScale;
   DocView.SetScale(XScale,YScale);
end;

{ TDocView }

procedure TDocView.WndProc(var Mesg: TMessage);
begin
  inherited;
  if Mesg.Msg = WM_LBUTTONDOWN then
  begin
    try
      frmPreviewDocMax.WindowState := wsMaximized;
      frmPreviewDocMax.BorderStyle := bsNone;
      frmPreviewDocMax.DocView.Document := Self.Document;
      frmPreviewDocMax.ShowModal;   
    finally

    end;
  end;
end;

procedure TfrmPreviewDoc.btnViewClick(Sender: TObject);
begin
  ppmView.Popup(btnView.ClientOrigin.X, btnView.ClientOrigin.Y + btnView.Height);
end;

procedure TfrmPreviewDoc.Accepted1Click(Sender: TObject);
begin
  SetViewStatus(Sender);
end;

procedure TfrmPreviewDoc.Rejected1Click(Sender: TObject);
begin
  SetViewStatus(Sender);
end;

procedure TfrmPreviewDoc.AcceptedRejected1Click(Sender: TObject);
begin
  SetViewStatus(Sender);
end;

procedure TfrmPreviewDoc.grdDocumentsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Bmp: TBitmap;
begin
  if Column.FieldName = 'Rejected' then
  if not dsDocuments.FieldByName('DocumentID').IsNull then
  begin
    Bmp := TBitmap.Create;
    if dsDocuments.FieldByName('Rejected').AsBoolean then
      imlTools.GetBitmap(10,Bmp)
    else
      imlTools.GetBitmap(9,Bmp);

    Bmp.Transparent := True;
    Bmp.TransparentColor := clWindow;
    grdDocuments.Canvas.FillRect(Rect);
    grdDocuments.Canvas.Draw(Rect.Left + 2, Rect.Top, Bmp);
    FreeAndNil(Bmp);
  end;
end;

procedure TfrmPreviewDoc.SetViewStatus(Sender: TObject);
begin
  Accepted1.Checked := Sender = Accepted1;
  Rejected1.Checked := Sender = Rejected1;
  AcceptedRejected1.Checked := Sender = AcceptedRejected1;

  dsDocuments.Filtered := True;
  if Sender = Accepted1 then
    dsDocuments.Filter := 'Rejected = 0'
  else if Sender = Rejected1 then
    dsDocuments.Filter := 'Rejected = 1'
  else
    dsDocuments.Filtered := False;

  grdDocuments.Columns[5].Visible := (Sender = Rejected1) or (Sender = AcceptedRejected1);
  grdDocuments.Columns[6].Visible := (Sender = Rejected1) or (Sender = AcceptedRejected1);
end;

procedure TfrmPreviewDoc.btnEditDocumentClick(Sender: TObject);
begin
  frmPreviewDocEdit := TfrmPreviewDocEdit.Create(Self);
  try
    frmPreviewDocEdit.ShowModal;
  finally
    FreeAndNil(frmPreviewDocEdit);
  end;
end;

end.
