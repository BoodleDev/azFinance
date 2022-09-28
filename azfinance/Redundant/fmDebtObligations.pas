unit fmDebtObligations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, ComCtrls, ToolWin, Grids, DBGrids, uNoteSys,
  ADODB, ExtCtrls, ImgList;

type
  TfrmDebtObligations = class(TForm)
    PageControl3: TPageControl;
    tsDebt: TTabSheet;
    tsDebtNotes: TTabSheet;
    CoolBar10: TCoolBar;
    ToolBar10: TToolBar;
    btnNewDebtNote: TToolButton;
    btnEditDebtNotes: TToolButton;
    rdtDebt: TRichEdit;
    edtSource: TDBEdit;
    pnlEnabled: TPanel;
    grdBUAccEnabled: TDBGrid;
    btnPrintBureau: TButton;
    btnAddBureau: TButton;
    btnEditBureau: TButton;
    btnDeleteBureau: TButton;
    btnDisableBureau: TButton;
    pnlDisabled: TPanel;
    btnEnableBureau: TButton;
    imgUser: TImage;
    imgSystem: TImage;
    Splitter1: TSplitter;
    tcDisabled: TTabControl;
    grdBUAccDisabled: TDBGrid;
    imlOverride: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnDisableBureauClick(Sender: TObject);
    procedure btnAddBureauClick(Sender: TObject);
    procedure edtSourceChange(Sender: TObject);
    procedure grdBUAccDisabledDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdBUAccEnabledDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnNewDebtNoteClick(Sender: TObject);
    procedure btnEditDebtNotesClick(Sender: TObject);
    procedure btnPrintBureauClick(Sender: TObject);
    procedure btnDeleteBureauClick(Sender: TObject);
    procedure tcDisabledChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDebtObligations: TfrmDebtObligations;

implementation

uses dmLoanC, dmMain, fmBureauAccount, dmQuotations;

{$R *.dfm}

procedure TfrmDebtObligations.FormShow(Sender: TObject);
begin
  uNoteSys.Categories := '110004016';
  uNoteSys.RichEdit := rdtDebt;
  DisplayNotes(False);
  tsDebtNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';

  tcDisabledChange(nil);
end;

procedure TfrmDebtObligations.btnDisableBureauClick(Sender: TObject);
var
  DataSet: TADODataSet;
  sAction: String;
begin
  try
    Screen.Cursor := crHourGlass;
    if Sender = btnDisableBureau then
    begin
      DataSet := dtmLoanC.dsBureauAccounts;
      sAction := 'disable';
    end
    else
    begin
      DataSet := dtmLoanC.dsBureauDisabled;
      sAction := 'enable';
    end;

    if MessageDlg('Are you sure you want to ' + sAction + ' this account?',
      mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin
      DataSet.Edit;
      DataSet.FieldByName('Enabled').AsBoolean := not DataSet.FieldByName('Enabled').AsBoolean;
      if DataSet = dtmLoanC.dsBureauAccounts then
      begin
        DataSet.FieldByName('DisableUser').AsString := dtmMain.CurrentID;
        DataSet.FieldByName('DisableDate').AsDateTime := Now;
        DataSet.FieldByName('AutoDisabled').AsBoolean := False;
      end;
      DataSet.Post;

      dtmLoanC.dsBureauAccounts.Requery;
      dtmLoanC.dsBureauDisabled.Requery;
    end;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmDebtObligations.btnAddBureauClick(Sender: TObject);
var
  IsNLR: Boolean;
  Command: String;
begin
  IsNLR := False;
  frmBureauAccount := TfrmBureauAccount.Create(Self);
  try
    if Sender = btnAddBureau then
    begin
      frmBureauAccount.Caption := 'Add Account';
      dtmLoanC.dsBureauAccounts.Append;
    end
    else if Sender = btnEditBureau then
    begin
      frmBureauAccount.Caption := 'Edit Account';
      IsNLR := dtmLoanC.dsBureauAccounts.FieldByName('CanDelete').AsBoolean;
      if IsNLR then
        Command :=
          'INSERT INTO BureauAccounts (LoanID, EnquiryNo, AccountType,' +
          'Source,Subscriber,AccountNo,StatusCode,Status,OpenDate,Instalment,' +
          'CurrentBalance,Period,LastPayDate,LastUpdateDate,Enabled,DisableUser,DisableDate,' +
          'CreateUser,CreateDate,AutoDisabled) ' +
          'SELECT LoanID,EnquiryNo, AccountType,' +
          'Source,Subscriber,AccountNo,StatusCode,Status,OpenDate,Instalment,' +
          'CurrentBalance,Period,LastPayDate,LastUpdateDate,0,''' + dtmMain.CurrentID + ''',' +
          'GETDATE(),CreateUser,CreateDate,0 ' +
          'FROM BureauAccounts ' +
          'WHERE AccountID = ' + dtmLoanC.dsBureauAccounts.FieldByName('AccountID').AsString;
      dtmLoanC.dsBureauAccounts.Edit;
    end;
    if frmBureauAccount.ShowModal = mrOK then
    begin
      if IsNLR then
      begin
        dtmMain.dbData.Execute(Command);
        dtmLoanC.dsBureauDisabled.Requery;
      end;
      dtmLoanC.dsBureauAccounts.Post;
    end
    else
      dtmLoanC.dsBureauAccounts.Cancel;
  finally
    FreeAndNil(frmBureauAccount);
  end;
end;

procedure TfrmDebtObligations.edtSourceChange(Sender: TObject);
begin
  btnDeleteBureau.Enabled := dtmLoanC.dsBureauAccounts.FieldByName('CanDelete').AsBoolean;// <> 'NLR';
  //btnDeleteBureau.Enabled := btnEditBureau.Enabled;
end;

procedure TfrmDebtObligations.grdBUAccDisabledDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Graphic: TGraphic;
begin
  if not dtmLoanC.dsBureauDisabled.FieldByName('AccountID').IsNull then
  if DataCol = 0 then
  begin
    if dtmLoanC.dsBureauDisabled.FieldByName('AutoDisabled').AsBoolean then
      Graphic := imgSystem.Picture.Graphic
    else
      Graphic := imgUser.Picture.Graphic;

    grdBUAccDisabled.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - Graphic.Width)div 2),
      Rect.Top + 2, Graphic);
  end;
end;

procedure TfrmDebtObligations.grdBUAccEnabledDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Settle: String;
begin
  if Column.FieldName = 'DoSettle' then
  begin
    if dtmLoanC.dsBureauAccounts.FieldByName('DoSettle').AsBoolean then
    begin
      Settle := 'Yes';
      {grdBUAccEnabled.Canvas.Font.Name := 'Marlett';
      grdBUAccEnabled.Canvas.Font.Size := 12;
      grdBUAccEnabled.Canvas.Font.Color := clGreen;
      grdBUAccEnabled.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, 'a'); }

      grdBUAccEnabled.Canvas.Brush.Color := clLime;
      grdBUAccEnabled.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      //grdBUAccEnabled.Canvas.Draw(Rect.Left + 2, Rect.Top + 2, imgY.Picture.Bitmap);
    end
    else
      Settle := 'No';

    grdBUAccEnabled.Canvas.FillRect(Rect);
    grdBUAccEnabled.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Settle);
  end;
end;

procedure TfrmDebtObligations.btnNewDebtNoteClick(Sender: TObject);
begin
  NewNote(110004016);
  tsDebtNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmDebtObligations.btnEditDebtNotesClick(Sender: TObject);
begin
  EditNote(110004016);
end;

procedure TfrmDebtObligations.btnPrintBureauClick(Sender: TObject);
begin
  dtmLoanC.dsPrintBureau.Open;
  dtmQuotations.rpBureau.Print;
  dtmLoanC.dsPrintBureau.Close;
end;

procedure TfrmDebtObligations.btnDeleteBureauClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete this account?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    dtmLoanC.dsBureauAccounts.Delete;
end;

procedure TfrmDebtObligations.tcDisabledChange(Sender: TObject);
begin
  dtmLoanC.dsBureauDisabled.Filter := 'Autodisabled = ' + IntToStr(tcDisabled.TabIndex);
end;

end.
