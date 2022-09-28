unit fmLoanApproval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NumEdit, Grids, DBGrids, DBStyleGrid, ComCtrls,
  ToolWin, ExtCtrls, Menus, CustomTypes, Clipbrd, DBCtrls, Mask, DB;

type
  TfrmLoanApproval = class(TForm)
    ppmAffordSettle: TPopupMenu;
    LoanSettlement1: TMenuItem;
    LoanArrearsSettlement1: TMenuItem;
    N3rdPartySettlement1: TMenuItem;
    CoolBar3: TCoolBar;
    ToolBar3: TToolBar;
    btnClose: TToolButton;
    btnSave: TToolButton;
    btnCancel: TToolButton;
    pnlSettlements: TPanel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    btnNewAffordSettle: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    grdAffordSettle: TDBStyleGrid;
    Splitter1: TSplitter;
    pnlNotes: TPanel;
    pnlOffer: TPanel;
    Label7: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label49: TLabel;
    lblClientReceive: TLabel;
    Image2: TImage;
    edtAffAmount: TDBEdit;
    edtAffTerm: TDBEdit;
    edtAffInstal: TDBEdit;
    cmbAffAction: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnNewNote: TToolButton;
    btnNewOffer: TToolButton;
    rchNotes: TDBRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnNewNoteClick(Sender: TObject);
    procedure btnNewAffordSettleClick(Sender: TObject);
    procedure btnNewOfferClick(Sender: TObject);
    procedure edtAffAmountExit(Sender: TObject);
    procedure LoanSettlement1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure DataSetAfterPost(DataSet: TDataSet);
    procedure DoAffordSettle(DataMode: TDataMode; iSettleType: Integer);
    procedure UpdateChanges;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoanApproval: TfrmLoanApproval;

implementation

uses fmAffordSettle, dmMain, dmLoanC;

{$R *.dfm}

procedure TfrmLoanApproval.FormCreate(Sender: TObject);
var
  NotesRect: TRect;
begin
  with dtmLoanC do
  begin
    btnSave.Enabled := False;
    btnCancel.Enabled := False;
    cdsAfLoans.AfterEdit := DataSetAfterPost;
    cdsAFSettle.AfterPost := DataSetAfterPost;

    dsAfActions.Open;
    dsAfSettle.Close;
    dsAfSettle.Parameters[0].Value := qryLoanDet.FieldByName('LoanID').AsInteger;
    dsAfSettle.Open;
    cdsAFSettle.Open;

    dsAfLoans.Open;
    cdsAfLoans.Open;
  end;

  edtAffAmountExit(edtAffAmount);
  frmAffordSettle := TfrmAffordSettle.Create(Self);

  NotesRect := rchNotes.ClientRect;
  NotesRect.Left := NotesRect.Left + 10;
  NotesRect.Top := NotesRect.Top + 10;
  SendMessage(rchNotes.Handle, EM_SETRECT, 0, Longint(@NotesRect)) ;
end;

procedure TfrmLoanApproval.btnNewNoteClick(Sender: TObject);
begin
  if dtmLoanC.cdsAfLoans.State = dsBrowse then
    dtmLoanC.cdsAfLoans.Edit;
    
  rchNotes.Lines.Insert(0,'');
  rchNotes.Lines.Insert(0,'');
  rchNotes.SelStart := 0;
  rchNotes.SelLength := Length(rchNotes.Lines[0]);
  rchNotes.SelAttributes.Style := rchNotes.SelAttributes.Style - [fsBold];
  rchNotes.Lines.Insert(0,'');
  rchNotes.Lines.Insert(0,'');

  rchNotes.SelStart := 0;
  rchNotes.SelLength := Length(rchNotes.Lines[0]);
  rchNotes.SelAttributes.Style := rchNotes.SelAttributes.Style + [fsBold];

  rchNotes.Lines.Insert(0, FormatDateTime('dddd, mmmm d yyyy "at" hh:mm AM/PM ' +
    '"by" ' + '"' + dtmMain.CurrentID + '"', GetServerDateTime));

  rchNotes.SelStart := Length(rchNotes.Lines[0] + rchNotes.Lines[1]);// + #13#10 + #13#10);
  rchNotes.SelLength := 0;
  rchNotes.SetFocus;
end;

procedure TfrmLoanApproval.btnNewAffordSettleClick(Sender: TObject);
begin
  ppmAffordSettle.Popup(btnNewAffordSettle.ClientOrigin.X,
    btnNewAffordSettle.ClientOrigin.Y + btnNewAffordSettle.Height);
end;

procedure TfrmLoanApproval.DoAffordSettle(DataMode: TDataMode; iSettleType: Integer);
begin
  with frmAffordSettle do
  begin
    if iSettleType in [1,2] then
    begin
      lblLoan.Caption := 'Loan ID';
      btnLookup.Visible := True;
      edtLoan.Width := 129;
      edtLoan.DataField := 'SettleLoanID';
      frmAffordSettle.Width := 276;
      edtAmount.ReadOnly := True;
      edtAmount.Color := clBtnFace;
    end
    else
    begin
      lblLoan.Caption := 'Description';
      btnLookup.Visible := False;
      edtLoan.Width := 200;
      edtLoan.DataField := 'ThirdParty';
      frmAffordSettle.Width := 320;
      edtAmount.ReadOnly := False;
      edtAmount.Color := clWindow;
    end;
  end;

  if DataMode = dmNew then
  begin
    dtmLoanC.cdsAFSettle.Append;
    dtmLoanC.cdsAFSettle.FieldByName('SettleType').AsInteger := iSettleType;
  end
  else
    dtmLoanC.cdsAFSettle.Edit;

  frmAffordSettle.SettleType := iSettleType;
  if frmAffordSettle.ShowModal = mrOK then
  begin
    dtmLoanC.cdsAFSettle.Post;
    edtAffAmountExit(edtAffAmount);
  end
  else
    dtmLoanC.cdsAFSettle.Cancel;
end;

procedure TfrmLoanApproval.btnNewOfferClick(Sender: TObject);
var
  Offer: String;
begin
  Offer := Offer + 'Offered client ' + FloatToStrF(StrToFloat(edtAffAmount.Text),
    ffCurrency,15,2) + ' for ' + edtAffTerm.Text + ' months ' + 'with instalment of ' +
    FloatToStrF(StrToFloat(edtAffInstal.Text), ffCurrency, 15,2) + '  -  ' +
    cmbAffAction.Text + #13#10;
  Clipboard.SetTextBuf(PChar(Offer));
  rchNotes.PasteFromClipboard;
  ClipBoard.Clear;

  if dtmLoanC.cdsAfLoans.State = dsBrowse then
    dtmLoanC.cdsAfLoans.Edit;
end;

procedure TfrmLoanApproval.edtAffAmountExit(Sender: TObject);
var
  Total, Amount, TotSettle: Currency;
begin
  inherited;
  Amount := StrToFloat(edtAffAmount.Text);
  TotSettle := 0;
  dtmLoanC.cdsAFSettle.DisableControls;
  dtmLoanC.cdsAFSettle.First;
  while not dtmLoanC.cdsAFSettle.Eof do
  begin
    TotSettle := TotSettle + dtmLoanC.cdsAFSettle.FieldByName('Amount').AsCurrency;
    dtmLoanC.cdsAFSettle.Next;
  end;
  dtmLoanC.cdsAFSettle.EnableControls;
  Total := Amount - TotSettle;
  if Total < 0 then
    Total := 0;
  lblClientReceive.Caption := 'Client to receive ' +
    FloatToStrF(Total, ffCurrency, 15, 2) + ' (' +
    FloatToStrF(Amount, ffCurrency, 15, 2) + ' LESS ' +
    FloatToStrF(TotSettle, ffCurrency, 15, 2) + ')';
end;

procedure TfrmLoanApproval.LoanSettlement1Click(Sender: TObject);
begin
  DoAffordSettle(dmNew, TMenuItem(Sender).Tag);
end;

procedure TfrmLoanApproval.FormDestroy(Sender: TObject);
begin
  dtmLoanC.dsAfSettle.Close;
  dtmLoanC.cdsAFSettle.Close;
  dtmLoanC.dsAfActions.Close;
  FreeAndNil(frmAffordSettle);
end;

procedure TfrmLoanApproval.btnSaveClick(Sender: TObject);
begin
  dtmLoanC.cdsAfLoans.ApplyUpdates(0);
  dtmLoanC.cdsAFSettle.ApplyUpdates(0);
  UpdateChanges;
end;

procedure TfrmLoanApproval.btnCancelClick(Sender: TObject);
begin
  dtmLoanC.cdsAfLoans.CancelUpdates;
  dtmLoanC.cdsAFSettle.CancelUpdates;
  UpdateChanges;
end;

procedure TfrmLoanApproval.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLoanApproval.UpdateChanges;
var
  I: Integer;
begin
  I := dtmLoanC.cdsAfLoans.ChangeCount;
  if I = 0 then
  begin
    if dtmLoanC.cdsAfLoans.State = dsEdit then
      I := 1
    else
      I := dtmLoanC.cdsAFSettle.ChangeCount;
  end;

  btnSave.Enabled := I > 0;
  btnCancel.Enabled := I > 0;
end;

procedure TfrmLoanApproval.DataSetAfterPost(DataSet: TDataSet);
begin
  UpdateChanges;
end;

procedure TfrmLoanApproval.ToolButton2Click(Sender: TObject);
begin
  if not dtmLoanC.cdsAFSettle.FieldByName('LoanID').IsNull then
    DoAffordSettle(dmEdit, dtmLoanC.cdsAFSettle.FieldByName('SettleType').AsInteger);  
end;

procedure TfrmLoanApproval.ToolButton3Click(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete this record?',
    mtConfirmation, [mbYes, mbNo], 0) =  mrYes then
  begin
    dtmLoanC.cdsAFSettle.Delete;
    UpdateChanges;
    edtAffAmountExit(edtAffAmount);
  end;
end;

procedure TfrmLoanApproval.FormResize(Sender: TObject);
var
  RHeight: Integer;
begin
  RHeight := Self.ClientHeight - pnlOffer.Height - Splitter1.Height - CoolBar3.Height;
  RHeight := RHeight div 2;
  pnlNotes.Height := RHeight;
  Self.Realign;
  //pnlSettlements.Height := RHeight;
end;

procedure TfrmLoanApproval.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if btnSave.Enabled then
  begin
    case MessageDlg('Save changes before you exit?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes:  btnSave.Click;
      mrCancel: CanClose := False;
    end;
  end;
end;

end.
