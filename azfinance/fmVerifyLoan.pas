unit fmVerifyLoan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, DateUtils;

type
  TfrmVerifyLoan = class(TForm)
    stsInfo: TStatusBar;
    btnContinue: TBitBtn;
    btnCancel: TBitBtn;
    lstMesg: TListBox;
    btnOverride: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure lstMesgDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnOverrideClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure NullableFields;
    procedure AddMesg(Mesg: String; WorE: Char);
    procedure VerifyFraudEnquiry(LoanID: Integer);
    { Private declarations }
  public
    { Public declarations }
    Errors: Integer;
    Warnings: Integer;
  end;

var
  frmVerifyLoan: TfrmVerifyLoan;

implementation

uses dmLoanC, dmVerifyLoan, DB, uLSConst;

{$R *.DFM}

procedure TfrmVerifyLoan.AddMesg(Mesg: String; WorE: Char);
begin
  if WorE = 'E' then
    Mesg := '[Error] ' + Mesg + ' '
  else
    Mesg := '[Warning] ' + Mesg + ' ';

  if WorE = 'E' then
  begin
    lstMesg.Items.Insert(0,Mesg + '=E');
    Inc(Errors);
  end
  else
  begin
    lstMesg.Items.Add(Mesg + '=W');
    Inc(Warnings);
  end;
end;

procedure TfrmVerifyLoan.NullableFields;
begin
  if dtmLoanC.qryLoanDet.FieldByName('LoanUse').AsInteger = 0 then
    AddMesg('Field LOAN USAGE is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('LoanInd').AsInteger = 0 then
    AddMesg('Field LOAN INDICATOR is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('ActionInd').AsInteger = 0 then
    AddMesg('Field ACTION INDICATOR is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('LoanTypeInd').AsInteger = 0 then
    AddMesg('Field SUB-ACTION INDICATOR is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('Link4').AsInteger = 0 then
    AddMesg('Field REGION is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('Link5').AsInteger = 0 then
    AddMesg('Field INDUSTRY is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('RefNo').AsString = '' then
    AddMesg('Field REFERENCE NO. is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('DocNo').AsString = '' then
    AddMesg('Field DOCUMENT NO. is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('AppAmt').AsCurrency = 0 then
    AddMesg('Field AMOUNT APPLIED is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('InstPaid').AsString = '' then
    AddMesg('Field INSTALMENTS PAID BY is null', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('BranchID').AsCurrency = 0 then
    AddMesg('Field BRANCH is not linked', 'W');

  if dtmLoanC.qryLoanDet.FieldByName('LOID').AsCurrency = 0 then
    AddMesg('Field LOAN OFFICER is not linked', 'W');
end;

procedure TfrmVerifyLoan.FormShow(Sender: TObject);
var
  LoanID: Integer;
  NoDays: Integer;
  I: Integer;
  AcceptQuote: Boolean;
begin
  Errors := 0;
  Warnings := 0;

  //VerifyClient;
  NullableFields;

  LoanID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;

  with dtmVerifyLoan do
  begin
    if dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger in [lnsInactive, lnsReview] then
    begin
      VerifyFraudEnquiry(LoanID);

      dtmLoanC.CalculateVettingFlags(LoanID);

      if dtmLoanC.dsAuthoriseFlags.RecordCount > 0 then
        AddMesg('One or more Vetting Flags have failed', 'E');
    end
    else if dtmLoanC.qryLoanDet.FieldByName('Status').AsInteger = lnsPreApproved then
    begin
      qryAcceptQuote.Parameters[0].Value:= LoanID;
      qryAcceptQuote.Open;
      AcceptQuote := qryAcceptQuote.Fields[0].AsBoolean;
      if not AcceptQuote then
        AddMesg('A quote has not been accepted', 'E');
      qryAcceptQuote.Close;

      if AcceptQuote then
      begin
        NoDays := 0;
        qryQuoteDate.Parameters[0].Value := LoanID;
        qryQuoteDate.Open;
        I := 0;
        while qryQuoteDate.Fields[0].AsDateTime  + I < qryQuoteDate.FieldByName('AcceptDate').AsDateTime do
        begin
          case DayOfTheWeek(qryQuoteDate.Fields[0].AsDateTime  + I) of
            1..5: NoDays := NoDays + 1;
          end;
          Inc(I);
        end;
        qryQuoteDate.Close;
        If NoDays >= 6 then
          AddMesg('The accepted quote has exceeded the 5 business day limit', 'E');
      end;

      qryValidPayouts.Parameters[0].Value := LoanID;
      qryValidPayouts.Open;
      if qryValidPayouts.Fields[0].AsInteger > 0 then
        AddMesg('One or more Third Party settlement letters have expired', 'E');
      qryValidPayouts.Close;

      qryOutdatedFraudEnquiry.Parameters[0].Value := LoanID;
      qryOutdatedFraudEnquiry.Open;
      if qryOutdatedFraudEnquiry.RecordCount > 0 then
        AddMesg('The Fraud Enquiry is outdated. One or more values have changed', 'E');
      qryOutdatedFraudEnquiry.Close;

      VerifyFraudEnquiry(LoanID);
    end;
  end;

  stsInfo.SimpleText := ' ' + IntToStr(Errors) + ' Errors | ' + IntToStr(Warnings) + ' Warnings';
  btnContinue.Enabled := Errors = 0;
  if lstMesg.Items.Count > 0 then
    lstMesg.ItemIndex := 0;
end;

procedure TfrmVerifyLoan.VerifyFraudEnquiry(LoanID: Integer);
begin
  dtmVerifyLoan.qryCheckFraudEnquiry.Parameters[0].Value := LoanID;
  dtmVerifyLoan.qryCheckFraudEnquiry.Open;
  if dtmVerifyLoan.qryCheckFraudEnquiry.Fields[0].AsInteger = 0 then
    AddMesg('No Fraud Enquiry exists', 'E');
  dtmVerifyLoan.qryCheckFraudEnquiry.Close;
end;

procedure TfrmVerifyLoan.lstMesgDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  IsError: Boolean;
begin
  IsError := lstMesg.Items.Values[lstMesg.Items.Names[Index]] = 'E';

  if IsError then
  begin
    if odSelected in State then
      lstMesg.Canvas.Brush.Color := clRed
    else
      lstMesg.Canvas.Font.Color := clRed;
  end
  else
  begin
    if odSelected in State then
      lstMesg.Canvas.Brush.Color := clGreen
    else
      lstMesg.Canvas.Font.Color := clGreen;
  end;

  lstMesg.Canvas.FillRect(Rect);
  lstMesg.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2,lstMesg.Items.Names[Index]);
  {end;}
end;

procedure TfrmVerifyLoan.btnOverrideClick(Sender: TObject);
begin
  if MessageDlg('Override selected error prompt?', mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin

  end;
end;

procedure TfrmVerifyLoan.FormCreate(Sender: TObject);
begin
  dtmVerifyLoan := TdtmVerifyLoan.Create(Self);
end;

procedure TfrmVerifyLoan.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dtmVerifyLoan);
end;

end.
