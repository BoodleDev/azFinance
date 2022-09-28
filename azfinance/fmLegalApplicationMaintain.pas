unit fmLegalApplicationMaintain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, Mask, ComCtrls,
  DBDateTimePicker, ToolWin, ExtCtrls, db, Unit32, Buttons, fmLookup, Menus;

type
  TfrmLegalApplicationMaintain = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lblApplicationDocument: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    lblApprovedDocument: TLabel;
    dtpApproveRejectDate: TDBDateTimePicker;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    lblWithdrawnDocument: TLabel;
    Label8: TLabel;
    dtpCancelDate: TDBDateTimePicker;
    btnClose: TButton;
    edtApplicationDocument: TEdit;
    edtApprovedDocument: TEdit;
    dtpApplicationDate: TDBDateTimePicker;
    rdgExcluded: TDBRadioGroup;
    cmbApprovedRejected: TDBComboBox;
    edtWithdrawnDocument: TEdit;
    Button1: TButton;
    btnSetApplicationDocument: TSpeedButton;
    btnSetApprovedDocument: TSpeedButton;
    btnSetWithdrawnDocument: TSpeedButton;
    ppmDate: TPopupMenu;
    ClearDate1: TMenuItem;
    N1: TMenuItem;
    ppmDocument: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    btnViewApplicationDocument: TSpeedButton;
    btnViewApprovedDocument: TSpeedButton;
    btnViewWithdrawnDocument: TSpeedButton;
    grpTermination: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    btnSetNoticeDocument: TSpeedButton;
    btnViewNoticeDocument: TSpeedButton;
    dtpNoticeDate: TDBDateTimePicker;
    edtNoticeDocument: TEdit;
    edtTerminationDocument: TEdit;
    Label9: TLabel;
    btnViewTerminationDocument: TSpeedButton;
    btnSetTerminationDocument: TSpeedButton;
    Label10: TLabel;
    dtpTerminationDate: TDBDateTimePicker;
    cmbTermination: TDBLookupComboBox;
    cmbCancellation: TDBLookupComboBox;
    procedure cmbApprovedRejectedDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSetApplicationDocumentClick(Sender: TObject);
    procedure btnSetApprovedDocumentClick(Sender: TObject);
    procedure btnSetWithdrawnDocumentClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClearDate1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnViewApplicationDocumentClick(Sender: TObject);
    procedure btnViewApprovedDocumentClick(Sender: TObject);
    procedure btnViewWithdrawnDocumentClick(Sender: TObject);
    procedure btnSetNoticeDocumentClick(Sender: TObject);
    procedure btnViewNoticeDocumentClick(Sender: TObject);
    procedure btnViewTerminationDocumentClick(Sender: TObject);
    procedure btnSetTerminationDocumentClick(Sender: TObject);
  private
    TypeID: Integer;
    frmLookUp : TfrmLookUp;
    FApproveRejectDocumentID: Integer;
    FApplicationDocumentID: Integer;
    FCancelDocumentID: Integer;
    FNoticeDocumentID: Integer;
    FTerminationDocumentID: Integer;
    function SetDocumentLookup(FieldName, DocumentType: String;
      edtDocument: TEdit): Integer;
    procedure SetApplicationDocumentID(const Value: Integer);
    procedure SetApproveRejectDocumentID(const Value: Integer);
    procedure SetCancelDocumentID(const Value: Integer);
    procedure ViewDocument(DocumentID: Integer);
    procedure SetNoticeDocumentID(const Value: Integer);
    procedure SetTerminationDocumentID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property ApplicationDocumentID: Integer read FApplicationDocumentID write SetApplicationDocumentID;
    property ApproveRejectDocumentID: Integer read FApproveRejectDocumentID write SetApproveRejectDocumentID;
    property CancelDocumentID: Integer read FCancelDocumentID write SetCancelDocumentID;
    property NoticeDocumentID: Integer read FNoticeDocumentID write SetNoticeDocumentID;
    property TerminationDocumentID: Integer read FTerminationDocumentID write SetTerminationDocumentID;
  end;

var
  frmLegalApplicationMaintain: TfrmLegalApplicationMaintain;

implementation

uses dmMain, dmLegal, fmDocumentViewer;

{$R *.dfm}

procedure TfrmLegalApplicationMaintain.cmbApprovedRejectedDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  Description: String;
begin
  if Index >= 1 then
  begin
    cmbApprovedRejected.Canvas.FillRect(Rect);
    if cmbApprovedRejected.Items.Strings[Index] = 'True' then
      Description := 'Approved'
    else
      Description := 'Rejected';

    cmbApprovedRejected.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Description);
  end;
end;

procedure TfrmLegalApplicationMaintain.FormCreate(Sender: TObject);
begin
  dtmLegal.dsTerminationType.Open;
  dtmLegal.dsCancellationType.Open;

  dtpApplicationDate.Date := Date;
  dtpApproveRejectDate.Date := Date;
  dtpCancelDate.Date := Date;
  dtpNoticeDate.Date := Date;
  dtpTerminationDate.Date := Date;

  frmLookUp := TfrmLookUp.Create(Self);
end;

procedure TfrmLegalApplicationMaintain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(frmLookup);

  dtmLegal.dsTerminationType.Close;
  dtmLegal.dsCancellationType.Close;
end;

procedure TfrmLegalApplicationMaintain.btnSetApplicationDocumentClick(
  Sender: TObject);
var
  DocumentType: String;
  DocumentID: Integer;
begin
  if TypeID = 1 then
    DocumentType := 'DR171'
  else
    DocumentType := 'ADAPP';

  DocumentID := SetDocumentLookup('ApplicationDocumentID', DocumentType, edtApplicationDocument);

  if DocumentID > 0 then
    ApplicationDocumentID := DocumentID;
end;

procedure TfrmLegalApplicationMaintain.btnSetApprovedDocumentClick(
  Sender: TObject);
var
  DocumentType: String;
  DocumentID: Integer;
begin
  if TypeID = 1 then
    DocumentType := 'DR172'
  else
    DocumentType := 'ADM';

  DocumentID := SetDocumentLookup('ApproveRejectDocumentID', DocumentType, edtApprovedDocument);

  if DocumentID > 0 then
    ApproveRejectDocumentID := DocumentID;
end;

procedure TfrmLegalApplicationMaintain.btnSetWithdrawnDocumentClick(
  Sender: TObject);
var
  DocumentType: String;
  DocumentID: Integer;
begin
  if TypeID = 1 then
    DocumentType := 'DR174'
  else
    DocumentType := 'RESCO';

  DocumentID := SetDocumentLookup('CancelDocumentID', DocumentType, edtWithdrawnDocument);

  if DocumentID > 0 then
    CancelDocumentID := DocumentID;
end;

function TfrmLegalApplicationMaintain.SetDocumentLookup(FieldName, DocumentType: String; edtDocument: TEdit): Integer;
var
  DocumentID: Integer;
begin
  DocumentID := 0;

  dtmLegal.dsDocuments.Close;
  dtmLegal.dsDocuments.Parameters.ParamByName('DocumentType').Value := DocumentType;
  dtmLegal.dsDocuments.Open;

  frmLookUp.SetLookUpForm(dtmLegal.dsDocuments,nil,'Select Document','',True);
  if frmLookUp.ShowModal = mrOK then
    if frmLookUp.ChoosenID <> -1 then
    begin
      if not (dtmLegal.dsApplication.State in [dsEdit, dsInsert]) then
        dtmLegal.dsApplication.Edit;

      DocumentID := frmLookUp.ChoosenID;
      dtmLegal.dsApplication.FieldByName(FieldName).AsInteger := DocumentID;
      edtDocument.Text := 'Created By ' + UpperCase(dtmLegal.dsDocuments.FieldByName('CreateUser').AsString) +
        ' on ' + dtmLegal.dsDocuments.FieldByName('CreateDate').AsString;
    end;
  dtmLegal.dsDocuments.Close;

  Result := DocumentID;
end;

procedure TfrmLegalApplicationMaintain.FormShow(Sender: TObject);
var
  ApplicationDocument, ApprovedDocument, WithdrawnDocument, NoticeDocument, TerminationDocument: string;
begin
  with dtmLegal do
  begin
    TypeID := dsApplication.FieldByName('LegalApplicationTypeID').AsInteger;

    if TypeID = 1 then
    begin
      Self.Caption := 'Debt Review';

      lblApplicationDocument.Caption := 'Form 17.1';
      lblApprovedDocument.Caption := 'Form 17.2';
      lblWithdrawnDocument.Caption := 'Form 17.4';

      Self.Height := 506;
      grpTermination.Show;
    end
    else
    begin
      Self.Caption := 'Admin Order';

      lblApplicationDocument.Caption := 'Document';
      lblApprovedDocument.Caption := 'Document';
      lblWithdrawnDocument.Caption := 'Document';

      Self.Height := 397;
      grpTermination.Hide;
    end;

    if not dsApplication.FieldByName('CreateDate171').IsNull then
      ApplicationDocument := 'Created By ' + UpperCase(dsApplication.FieldByName('CreateUser171').AsString) +
        ' on ' + dsApplication.FieldByName('CreateDate171').AsString;

    if not dsApplication.FieldByName('CreateDate172').IsNull then
      ApprovedDocument := 'Created By ' + UpperCase(dsApplication.FieldByName('CreateUser172').AsString) +
        ' on ' + dsApplication.FieldByName('CreateDate172').AsString;

    if not dsApplication.FieldByName('CreateDate174').IsNull then
      WithdrawnDocument := 'Created By ' + UpperCase(dsApplication.FieldByName('CreateUser174').AsString) +
        ' on ' + dsApplication.FieldByName('CreateDate174').AsString;

    if not dsApplication.FieldByName('CreateDateNotice').IsNull then
      NoticeDocument := 'Created By ' + UpperCase(dsApplication.FieldByName('CreateUserNotice').AsString) +
        ' on ' + dsApplication.FieldByName('CreateDateNotice').AsString;

    if not dsApplication.FieldByName('CreateDateTermination').IsNull then
      TerminationDocument := 'Created By ' + UpperCase(dsApplication.FieldByName('CreateUserTermination').AsString) +
        ' on ' + dsApplication.FieldByName('CreateDateTermination').AsString;

    ApplicationDocumentID := dsApplication.FieldByName('ApplicationDocumentID').AsInteger;
    ApproveRejectDocumentID := dsApplication.FieldByNAme('ApproveRejectDocumentID').AsInteger;
    CancelDocumentID := dsApplication.FieldByName('CancelDocumentID').AsInteger;
    NoticeDocumentID := dsApplication.FieldbyName('NoticeDocumentID').AsInteger;
    TerminationDocumentID := dsApplication.FieldByName('TerminationDocumentID').AsInteger;
  end;

  edtApplicationDocument.Text := ApplicationDocument;
  edtApprovedDocument.Text := ApprovedDocument;
  edtWithdrawnDocument.Text := WithdrawnDocument;
  edtNoticeDocument.Text := NoticeDocument;
  edtTerminationDocument.Text := TerminationDocument;
end;

procedure TfrmLegalApplicationMaintain.ClearDate1Click(Sender: TObject);
var
  dtpDate: TDBDateTimePicker;
begin
  if ppmDate.PopupComponent is TDBDateTimePicker then
  begin
    dtpDate := ppmDate.PopupComponent as TDBDateTimePicker;

    dtmLegal.dsApplication.FieldByName(dtpDate.DataField).Value := null;
  end;
end;

procedure TfrmLegalApplicationMaintain.MenuItem1Click(Sender: TObject);
var
  edtDocument: TEdit;
  DocumentField: String;
begin
  if ppmDocument.PopupComponent is TEdit then
  begin
    edtDocument := ppmDocument.PopupComponent as TEdit;

    if edtDocument = edtApplicationDocument then
    begin
      DocumentField := 'ApplicationDocumentID';
      ApplicationDocumentID := 0;
    end
    else if edtDocument = edtApprovedDocument then
    begin
      DocumentField := 'ApproveRejectDocumentID';
      ApproveRejectDocumentID := 0;
    end
    else if edtDocument = edtWithdrawnDocument then
    begin
      DocumentField := 'CancelDocumentID';
      CancelDocumentID := 0;
    end
    else if edtDocument = edtNoticeDocument then
    begin
      DocumentField := 'NoticeDocumentID';
      NoticeDocumentID := 0;
    end
    else if edtDocument = edtTerminationDocument then
    begin
      DocumentField := 'TerminationDocumentID';
      TerminationDocumentID := 0;
    end;

    if DocumentField <> '' then
    begin
      dtmLegal.dsApplication.FieldByName(DocumentField).Value := null;
      edtDocument.Clear;
    end;
  end;
  //if MessageDlg('Are you sure you want to clear this document?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
end;

procedure TfrmLegalApplicationMaintain.btnViewApplicationDocumentClick(
  Sender: TObject);
begin
  ViewDocument(ApplicationDocumentID);
end;

procedure TfrmLegalApplicationMaintain.ViewDocument(DocumentID: Integer);
begin
  frmDocumentViewer := TfrmDocumentViewer.Create(Self);
  try
    frmDocumentViewer.DocumentID := DocumentID;
    frmDocumentViewer.ShowModal;
  finally
    FreeAndNil(frmDocumentViewer);
  end;
end;

procedure TfrmLegalApplicationMaintain.SetApplicationDocumentID(
  const Value: Integer);
begin
  FApplicationDocumentID := Value;

  btnViewApplicationDocument.Visible := ApplicationDocumentID > 0;
end;

procedure TfrmLegalApplicationMaintain.SetApproveRejectDocumentID(
  const Value: Integer);
begin
  FApproveRejectDocumentID := Value;

  btnViewApprovedDocument.Visible := ApproveRejectDocumentID > 0;
end;

procedure TfrmLegalApplicationMaintain.SetCancelDocumentID(
  const Value: Integer);
begin
  FCancelDocumentID := Value;

  btnViewWithdrawnDocument.Visible := CancelDocumentID > 0;
end;

procedure TfrmLegalApplicationMaintain.SetNoticeDocumentID(
  const Value: Integer);
begin
  FNoticeDocumentID := Value;

  btnViewNoticeDocument.Visible := NoticeDocumentID > 0;
end;

procedure TfrmLegalApplicationMaintain.SetTerminationDocumentID(
  const Value: Integer);
begin
  FTerminationDocumentID := Value;

  btnViewTerminationDocument.Visible := TerminationDocumentID > 0;
end;

procedure TfrmLegalApplicationMaintain.btnViewApprovedDocumentClick(
  Sender: TObject);
begin
  ViewDocument(ApproveRejectDocumentID);
end;

procedure TfrmLegalApplicationMaintain.btnViewWithdrawnDocumentClick(
  Sender: TObject);
begin
  ViewDocument(CancelDocumentID);
end;

procedure TfrmLegalApplicationMaintain.btnSetNoticeDocumentClick(
  Sender: TObject);
var
  DocumentType: String;
  DocumentID: Integer;
begin
  if TypeID = 1 then
    DocumentType := 'DRNOT'
  else
    DocumentType := '';

  DocumentID := SetDocumentLookup('NoticeDocumentID', DocumentType, edtNoticeDocument);

  if DocumentID > 0 then
    NoticeDocumentID := DocumentID;
end;

procedure TfrmLegalApplicationMaintain.btnViewNoticeDocumentClick(
  Sender: TObject);
begin
  ViewDocument(NoticeDocumentID);
end;

procedure TfrmLegalApplicationMaintain.btnViewTerminationDocumentClick(
  Sender: TObject);
begin
  ViewDocument(TerminationDocumentID);
end;

procedure TfrmLegalApplicationMaintain.btnSetTerminationDocumentClick(
  Sender: TObject);
var
  DocumentType: String;
  DocumentID: Integer;
begin
  if TypeID = 1 then
    DocumentType := 'DRTL'
  else
    DocumentType := '';

  DocumentID := SetDocumentLookup('TerminationDocumentID', DocumentType, edtTerminationDocument);

  if DocumentID > 0 then
    TerminationDocumentID := DocumentID;

end;

end.
