unit fmAddSettlementWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmWizard, ImgList, ExtCtrls, StdCtrls, ComCtrls, NumEdit,
  Buttons;

type
  TfrmAddSettlementWizard = class(TfrmWizard)
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    cmbLoanRef: TComboBox;
    Label2: TLabel;
    edtSettlementDate: TEdit;
    radFax: TRadioButton;
    radEmail: TRadioButton;
    radSMS: TRadioButton;
    lblFaxNo: TLabel;
    Label10: TLabel;
    dlgPrint: TPrintDialog;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtLoanBalance: TEdit;
    edtSettlementInterest: TEdit;
    edtFutureTrans: TEdit;
    edtDepositBalance: TEdit;
    edtAdditionalCharges: TEdit;
    edtSettlementAmount: TEdit;
    Bevel1: TBevel;
    dtpSettleDate: TDateTimePicker;
    RadioButton1: TRadioButton;
    edtFaxNo: TNumEdit;
    btnChangeSettleDate: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure cmbLoanRefChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure cmbLoanRefDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnFinishClick(Sender: TObject);
    procedure dtpSettleDateChange(Sender: TObject);
    procedure radFaxClick(Sender: TObject);
    procedure btnChangeSettleDateClick(Sender: TObject);
  private
    { Private declarations }
    LoanID: Integer;
    SettlementDate: TDateTime;
    LoanBalance: Currency;
    SettlementInterest: Currency;
    FutureTransactions: Currency;
    DepositBalance: Currency;
    AdditionalCharges: Currency;
    SettlementAmount: Currency;
  public
    { Public declarations }
  end;

var
  frmAddSettlementWizard: TfrmAddSettlementWizard;

implementation

uses dmSettlementQuotes, DB, dmMain, dmSecFrm;

{$R *.dfm}

procedure TfrmAddSettlementWizard.FormCreate(Sender: TObject);
begin
  inherited;
  SettlementDate := Date + 7;
  edtSettlementDate.Text := DateToStr(SettlementDate);
  dtpSettleDate.Date := SettlementDate;

  //SecForm := Self;
  dtmSecFrm.SetForm(Self);
end;

procedure TfrmAddSettlementWizard.cmbLoanRefChange(Sender: TObject);
begin
  inherited;
  if cmbLoanRef.ItemIndex < 0 then
    LoanID := 0
  else
  begin
    LoanID := StrToInt(cmbLoanRef.Items.Values[cmbLoanRef.Items.Names[cmbLoanRef.ItemIndex]]);
    with dtmSettlementQuotes do
    begin
      dsTransactions.Parameters.ParamByName('SettlementDate').Value := SettlementDate;
      dsTransactions.Parameters.ParamByName('LoanID').Value := LoanID;
      dsTransactions.Open;
      LoanBalance := dsTransactions.FieldByName('LoanBalance').AsCurrency;
      SettlementInterest := dsTransactions.FieldByName('SettlementInterest').AsCurrency;
      FutureTransactions := dsTransactions.FieldByName('FutureTrans').AsCurrency;
      DepositBalance := dsTransactions.FieldByName('DepositBalance').AsCurrency;
      AdditionalCharges := dsTransactions.FieldByName('AdditionalCharges').AsCurrency;
      dsTransactions.Close;

      SettlementAmount := LoanBalance + SettlementInterest +
        FutureTransactions + DepositBalance + AdditionalCharges;

      edtLoanBalance.Text := CurrToStrF(LoanBalance, ffCurrency, 2);
      edtSettlementInterest.Text := CurrToStrF(SettlementInterest, ffCurrency, 2);
      edtFutureTrans.Text := CurrToStrF(FutureTransactions, ffCurrency, 2);
      edtDepositBalance.Text := CurrToStrF(DepositBalance, ffCurrency, 2);
      edtAdditionalCharges.Text := CurrToStrF(AdditionalCharges, ffCurrency, 2);
      edtSettlementAmount.Text := CurrToStrF(SettlementAmount, ffCurrency, 2);
    end;
  end;
end;

procedure TfrmAddSettlementWizard.FormShow(Sender: TObject);
begin
  inherited;
  cmbLoanRefChange(nil);
end;

procedure TfrmAddSettlementWizard.btnNextClick(Sender: TObject);
var
  Status: Integer;
begin
  with dtmSettlementQuotes do
  begin
    case pcWizard.ActivePageIndex of
      0:  begin
            if LoanID = 0 then
            begin
              MessageDlg('Please select a loan', mtError, [mbOK], 0);
              Abort;
            end
            else
            begin
              qryLoanStatus.Parameters.ParamByName('LoanID').Value := LoanID;
              qryLoanStatus.Open;
              Status := qryLoanStatus.FieldByName('Status').AsInteger;
              qryLoanStatus.Close;
              if (Status = 40) or (Status = 45) then
              begin
                MessageDlg('This loan has been handed over for legal collection. ' +
                  'Please refer to the assigned collection attorney for a settlement',
                  mtInformation, [mbOK], 0);
                Abort;
              end;
            end;

            qrySettlementsExist.Parameters[0].Value := LoanID;
            qrySettlementsExist.Open;
            if qrySettlementsExist.Fields[0].AsBoolean then
              if MessageDlg('There is already an active settlement in inexistance for this loan. Are you sure you want to continue?',
              mtWarning, [mbYes,mbNo], 0) = mrNo then
              begin
                qrySettlementsExist.Close;
                Abort;
              end;
            qrySettlementsExist.Close;
          end;
      2:  begin
            if radFax.Checked then
              if edtFaxNo.Text = '' then
              begin
                MessageDlg('Please enter a fax no.', mtError, [mbOK], 0);
                Abort;
              end;
          end;
    end;
  end;
  inherited;
end;

procedure TfrmAddSettlementWizard.cmbLoanRefDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cmbLoanRef.Canvas.FillRect(Rect);
  cmbLoanRef.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, cmbLoanRef.Items.Names[Index]);
end;

procedure TfrmAddSettlementWizard.btnFinishClick(Sender: TObject);
begin
  if radFax.Checked then
    if Length(edtFaxNo.Text) < 10 then
    begin
      MessageDlg('Invalid Fax Number', mtError, [mbOK], 0);
      Abort;
    end;
    
  inherited;
  with dtmSettlementQuotes do
  begin
    cmdAddQuote.Parameters.ParamByName('LoanID').Value := LoanID;
    cmdAddQuote.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
    cmdAddQuote.Parameters.ParamByName('LoanBalance').Value := LoanBalance;
    cmdAddQuote.Parameters.ParamByName('SettlementInterest').Value := SettlementInterest;
    cmdAddQuote.Parameters.ParamByName('AdditionalCharges').Value := AdditionalCharges;
    cmdAddQuote.Parameters.ParamByName('DepositBalance').Value := DepositBalance;
    cmdAddQuote.Parameters.ParamByName('SettlementAmount').Value := SettlementAmount;
    cmdAddQuote.Parameters.ParamByName('ExpiryDate').Value := SettlementDate;
    cmdAddQuote.Parameters.ParamByName('FutureTransactions').Value := FutureTransactions;
    cmdAddQuote.Parameters.ParamByName('SentMethod').Value := radFax.Caption;
    cmdAddQuote.Parameters.ParamByName('SentAddress').Value := edtFaxNo.Text;
    cmdAddQuote.Execute;

    ModalResult := mrOK;
  end;
end;

procedure TfrmAddSettlementWizard.dtpSettleDateChange(Sender: TObject);
begin
  inherited;
  SettlementDate := dtpSettleDate.Date;
  edtSettlementDate.Text := DateToStr(dtpSettleDate.Date);
  cmbLoanRefChange(nil);
end;

procedure TfrmAddSettlementWizard.radFaxClick(Sender: TObject);
begin
  inherited;
  lblFaxNo.Hide;
  edtFaxNo.Hide;
  if radFax.Checked then
  begin
    lblFaxNo.Show;
    edtFaxNo.Show;
  end;
end;

procedure TfrmAddSettlementWizard.btnChangeSettleDateClick(Sender: TObject);
begin
  inherited;
  dtpSettleDate.BringToFront;
end;

end.
