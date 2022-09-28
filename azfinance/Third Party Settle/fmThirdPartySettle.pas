unit fmThirdPartySettle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, HyperLink, fmLookup, db,
  ComCtrls, DBDateTimePicker, MODI_TLB, ExtCtrls, ToolWin, fmPreviewDocMax,
  Grids, DBGrids, Menus;

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
  TfrmThirdPartySettle = class(TForm)
    Label1: TLabel;
    edtCompanyName: TDBEdit;
    Label2: TLabel;
    edtReference: TDBEdit;
    Label3: TLabel;
    edtAmount: TDBEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtAccName: TDBEdit;
    edtAccNo: TDBEdit;
    edtBank: TDBEdit;
    edtBankBranch: TDBEdit;
    btnCancel: TButton;
    btnOK: TButton;
    Label7: TLabel;
    edtInstalment: TDBEdit;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    cmbAccountType: TComboBox;
    pnlDocView: TPanel;
    dtpExpiryDate: TDBDateTimePicker;
    Label4: TLabel;
    CoolBar1: TCoolBar;
    tlbDocTools: TToolBar;
    btnAddDoc: TToolButton;
    btnRemoveDoc: TToolButton;
    btnViewDoc: TToolButton;
    grdDebtRecord: TDBGrid;
    Label9: TLabel;
    cmbBranchCode: TDBLookupComboBox;
    cmbBranchName: TDBLookupComboBox;
    cmbBanks: TDBLookupComboBox;
    btnBeneficiary: TSpeedButton;
    ppmDebt: TPopupMenu;
    Add1: TMenuItem;
    Remove1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cmbAccountTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddDocClick(Sender: TObject);
    procedure btnRemoveDocClick(Sender: TObject);
    procedure btnViewDocClick(Sender: TObject);
    procedure grdDebtRecordDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdDebtRecordDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbBanksClick(Sender: TObject);
    procedure edtBankBranchChange(Sender: TObject);
    procedure btnBeneficiaryClick(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
  private
    { Private declarations }
    frmBureau: TfrmLookUp;
    DocView: TDocView;
    Document: IDocument;
    FThirdPartyType: Integer;
    procedure SetThirdPartyType(const Value: Integer);
    //SettleDoc: IDocument;
  public
    { Public declarations }
    property ThirdPartyType: Integer read FThirdPartyType write SetThirdPartyType;
  end;

var
  frmThirdPartySettle: TfrmThirdPartySettle;

implementation

uses dmLoanC, fmPreviewDoc, dmMain, dmPayouts;

{$R *.dfm}

procedure TfrmThirdPartySettle.FormShow(Sender: TObject);
var
  Filename: String;
  NewDoc: IDocument;
begin
  if dtmLoanC.qryPayouts.FieldByName('DocumentID').AsInteger > 0 then
  begin
    dtmLoanC.dsPayoutPages.Close;
    dtmLoanC.dsPayoutPages.Parameters[0].Value := dtmLoanC.qryPayouts.FieldByName('DocumentID').AsInteger;
    dtmLoanC.dsPayoutPages.Open;
    dtmLoanC.dsPayoutPages.Last;
    Filename := DocProcess + dtmLoanC.dsPayoutPages.FieldByName('PageID').AsString;
    if FileExists(Filename) then
    begin
      CopyFile(PChar(Filename),PChar(TempFolder + '1.tif'),False);
      Filename := TempFolder + '1.tif';
      Document.Create(Filename);
    end;
    dtmLoanC.dsPayoutPages.Prior;
    NewDoc := CoDocument.Create;
    while not dtmLoanC.dsPayoutPages.Bof do
    begin
      Filename := DocProcess + dtmLoanC.dsPayoutPages.FieldByName('PageID').AsString;
      NewDoc.Create(Filename);
      Document.Images.Add(NewDoc.Images[0],Document.Images[0]);

      dtmLoanC.dsPayoutPages.Prior;
    end;
    //Document.Create(DocProcess + dtmLoanC.dsPayoutPages.FieldByName('PageID').AsString);
    btnAddDoc.Hide;
    btnViewDoc.Show;
    btnRemoveDoc.Show;
  end
  else
  begin
    //DocView.FileName := '';
    Document.Create('');
    btnAddDoc.Show;
    btnViewDoc.Hide;
    btnRemoveDoc.Hide;
  end;

  DocView.Document := Document;

  {if dtmLoanC.qryPayouts.FieldByName('AccountID').AsInteger > 0 then
  begin
    hypBureau.Caption :=
      dtmLoanC.qryPayouts.FieldByName('Subscriber').AsString + #13#10 +
      dtmLoanC.qryPayouts.FieldByName('AccountNo').AsString + #13#10 +
      CurrToStrF(dtmLoanC.qryPayouts.FieldByName('BureauInstalment').AsCurrency, ffCurrency,2);
  end
  else
    hypBureau.Caption := ''; }

  if not dtmLoanC.qryPayouts.FieldByName('BankAccType').IsNull then
    cmbAccountType.ItemIndex := dtmLoanC.qryPayouts.FieldByName('BankAccType').AsInteger;
end;

procedure TfrmThirdPartySettle.btnOKClick(Sender: TObject);
begin
//
end;

procedure TfrmThirdPartySettle.cmbAccountTypeChange(Sender: TObject);
begin
  if dtmLoanC.qryPayouts.State = dsBrowse then
    dtmLoanC.qryPayouts.Edit;
  dtmLoanC.qryPayouts.FieldByName('BankAccType').AsInteger := cmbAccountType.ItemIndex;
end;

{ TDocView }

procedure TDocView.WndProc(var Mesg: TMessage);
begin
  inherited;
  {if Mesg.Msg = WM_LBUTTONDOWN then
  begin
    frmThirdPartySettle.pnlSettleLetterClick(nil);
  end; }
end;  

procedure TfrmThirdPartySettle.FormCreate(Sender: TObject);
begin
  dtmPayouts.qryBanks.Open;
  //dtmPayouts.qryBranchCode.Open;
  dtmPayouts.qryBranchName.Open;

  DocView := TDocView.Create(Self);
  DocView.Parent := pnlDocView;
  DocView.Align := alClient;
  DocView.FitMode := miByWidth;
  Document := CoDocument.Create;
end;

procedure TfrmThirdPartySettle.FormDestroy(Sender: TObject);
begin
  DocView.Parent := nil;
  FreeAndNil(DocView);
  dtmLoanC.dsPayoutPages.Close;
end;

procedure TfrmThirdPartySettle.btnAddDocClick(Sender: TObject);
var
  DocumentID: Integer;
  PayNo: Integer;
begin
  frmPreviewDoc := TfrmPreviewDoc.Create(Self);
  dtmLoanC.dsLetterPreview.Open;
  dtmLoanC.dsLetterPreview.AfterScroll := frmPreviewDoc.dsDocuments.AfterScroll;
  frmPreviewDoc.dtsDocuments.DataSet := dtmLoanC.dsLetterPreview;
  try
    {frmPreviewDoc.dsDocuments.Filter := 'DocType = ''LSL''';
    frmPreviewDoc.dsDocuments.Filtered := True;   }
    frmPreviewDoc.LoanID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
    frmPreviewDoc.btnOK.ModalResult := mrNone;
   { frmPreviewDoc.dsDocuments.Locate('DocumentID',
      dtmLoanC.qryPayouts.FieldByName('DocumentID').AsInteger, []);}
    if frmPreviewDoc.ShowModal = mrOK then
    begin
      DocumentID := frmPreviewDoc.dtsDocuments.DataSet.FieldByName('DocumentID').AsInteger;
      dtmLoanC.cmdDocLinked.Parameters.ParamByName('DocumentID').Value := DocumentID;
      dtmLoanC.cmdDocLinked.Parameters.ParamByName('PayoutID').Value :=
        dtmLoanC.qryPayouts.FieldByName('PayoutID').AsInteger;
      dtmLoanC.cmdDocLinked.Execute;
      PayNo := dtmLoanC.cmdDocLinked.Parameters.ParamByName('PayNo').Value;
      if PayNo > 0 then
        MessageDlg('Cannot link this document as it is already linked to Payout No '+
          IntToStr(PayNo), mtInformation, [mbOK], 0)
      else
      begin
        dtmLoanC.qryPayouts.FieldByName('DocumentID').AsInteger := DocumentID;
        dtmLoanC.dsPayoutPages.Close;
        dtmLoanC.dsPayoutPages.Parameters[0].Value := DocumentID;
        dtmLoanC.dsPayoutPages.Open;
        Document.Create(DocProcess + dtmLoanC.dsPayoutPages.FieldByName('PageID').AsString);
        DocView.Document := Document;
        btnAddDoc.Hide;
        btnRemoveDoc.Show;
        btnViewDoc.Show;
      end;
    end;
  finally
    dtmLoanC.dsLetterPreview.Close;
    dtmLoanC.dsLetterPreview.AfterScroll := nil;
    FreeAndNil(frmPreviewDoc);
  end;
end;

procedure TfrmThirdPartySettle.btnRemoveDocClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to remove this document?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
  begin
    dtmLoanC.qryPayouts.FieldByName('DocumentID').AsInteger := 0;
    Document.Create('');
    DocView.Document := Document;
    btnAddDoc.Show;
    btnViewDoc.Hide;
    btnRemoveDoc.Hide;
  end;
end;

procedure TfrmThirdPartySettle.btnViewDocClick(Sender: TObject);
begin
  frmPreviewDocMax := TfrmPreviewDocMax.Create(Self);
  try
    frmPreviewDocMax.WindowState := wsMaximized;
    frmPreviewDocMax.DocView.Document := Self.Document;
    frmPreviewDocMax.ShowModal;
  finally
    FreeAndNil(frmPreviewDocMax);
  end;
end;

procedure TfrmThirdPartySettle.grdDebtRecordDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'Settle' then
    if dtmLoanC.dsDebtRecord.FieldByName('DoSettle').AsBoolean then
    begin
      grdDebtRecord.Canvas.Brush.Color := clLime;
      grdDebtRecord.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TfrmThirdPartySettle.grdDebtRecordDblClick(Sender: TObject);
begin
  dtmLoanC.dsBureau.Open;
  frmBureau := TfrmLookUp.Create(Self);
  try
    frmBureau.SetLookUpForm(dtmLoanC.dsBureau, nil, 'Select Bureau Account', '', False);
    if frmBureau.ShowModal = mrOK then
      dtmLoanC.qryPayouts.FieldByName('AccountID').AsInteger :=
        dtmLoanC.dsBureau.FieldByName('AccountID').AsInteger;
  finally
    FreeAndNil(frmBureau);
    dtmLoanC.dsBureau.Close;
  end;
end;

procedure TfrmThirdPartySettle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmPayouts.qryBanks.Close;
  //dtmPayouts.qryBranchCode.Close;
  dtmPayouts.qryBranchName.Close;
end;

procedure TfrmThirdPartySettle.cmbBanksClick(Sender: TObject);
begin
  dtmLoanC.qryPayouts.FieldByName('BranchName').AsString := '';
  dtmLoanC.qryPayouts.FieldByName('BranchCode').AsString := '';
end;

procedure TfrmThirdPartySettle.edtBankBranchChange(Sender: TObject);
begin
  if Self.Showing then
    dtmLoanC.qryPayouts.FieldByName('BranchCode').AsString := dtmPayouts.qryBranchName.FieldByName('BranchCode').AsString;
end;

procedure TfrmThirdPartySettle.SetThirdPartyType(const Value: Integer);
begin
  FThirdPartyType := Value;
  if ThirdPartyType = 4 then
  begin
    btnBeneficiary.Hide;
    edtCompanyName.ReadOnly := False;
    edtCompanyName.Color    := clWindow;
    cmbBanks.ReadOnly       := False;
    cmbBanks.Color          := clWindow;
    cmbBranchName.ReadOnly  := False;
    cmbBranchName.Color     := clWindow;
    edtAccName.ReadOnly     := False;
    edtAccName.Color        := clWindow;
    edtAccNo.ReadOnly       := False;
    edtAccNo.Color          := clWindow;
    cmbAccountType.Enabled  := True;
    cmbAccountType.Color    := clWindow;
  end
  else
  begin
    btnBeneficiary.Show;
    edtCompanyName.ReadOnly := True;
    edtCompanyName.Color    := clBtnFace;
    cmbBanks.ReadOnly       := True;
    cmbBanks.Color          := clBtnFace;
    cmbBranchName.ReadOnly  := True;
    cmbBranchName.Color     := clBtnFace;
    edtAccName.ReadOnly     := True;
    edtAccName.Color        := clBtnFace;
    edtAccNo.ReadOnly       := True;
    edtAccNo.Color          := clBtnFace;
    cmbAccountType.Enabled  := False;
    cmbAccountType.Color    := clBtnFace;
  end;
end;

procedure TfrmThirdPartySettle.btnBeneficiaryClick(Sender: TObject);
var
  frmLookup: TfrmLookUp;
begin
  with dtmPayouts do
  begin
    frmLookup := TfrmLookUp.Create(Self);
    dsBeneficiary.Open;
    frmLookup.SetLookUpForm(dsBeneficiary, nil, 'Select Third Party Beneficiary',
      '', false);
    try
      if frmLookup.ShowModal = mrOK then
      begin
        if not (dtmLoanC.qryPayouts.State in [dsEdit,dsInsert]) then
          dtmLoanC.qryPayouts.Edit;

        dtmLoanC.qryPayouts.FieldByName('RefNo').AsInteger :=
          dsBeneficiary.FieldByName('EntityID').AsInteger;
        dtmLoanC.qryPayouts.FieldByName('Name').AsString :=
          dsBeneficiary.FieldByName('Beneficiary').AsString;
        dtmLoanC.qryPayouts.FieldByName('BankName').AsString :=
          dsBeneficiary.FieldByName('BankName').AsString;
        dtmLoanC.qryPayouts.FieldByName('BranchName').AsString :=
          dsBeneficiary.FieldByName('Branch').AsString;
        dtmLoanC.qryPayouts.FieldByName('AccountName').AsString :=
          dsBeneficiary.FieldByName('AccountName').AsString;
        dtmLoanC.qryPayouts.FieldByName('BankAccNo').AsString :=
          dsBeneficiary.FieldByName('AccountNo').AsString;
        dtmLoanC.qryPayouts.FieldByName('BankAccType').AsInteger :=
          dsBeneficiary.FieldByName('AccountType').AsInteger;
        if not dtmPayouts.dsBeneficiary.FieldByName('AccountType').IsNull then
          cmbAccountType.ItemIndex := dtmLoanC.qryPayouts.FieldByName('BankAccType').AsInteger;
      end;
    finally
      FreeAndNil(frmLookup);
      dsBeneficiary.Close;
    end;
  end;
end;

procedure TfrmThirdPartySettle.Remove1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to remove this debt?', mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
    dtmLoanC.qryPayouts.FieldByName('AccountID').AsInteger := 0;
end;

end.
