unit fmRejectQuote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TfrmRejectQuote = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cmbReason: TComboBox;
    pnlAmount: TPanel;
    pnlOther: TPanel;
    pnlButtons: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    edtAmount: TDBEdit;
    edtPeriod: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memSpecify: TMemo;
    procedure cmbReasonChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    FRejectType: ShortString;
    procedure SetRejectType(const Value: ShortString);
    { Private declarations }
  public
    { Public declarations }
    property RejectType: ShortString read FRejectType write SetRejectType;
  end;

var
  frmRejectQuote: TfrmRejectQuote;

implementation

uses dmLoanC, fmActiveOffers, dmMain;

{$R *.dfm}

procedure TfrmRejectQuote.cmbReasonChange(Sender: TObject);
begin
  case cmbReason.ItemIndex of
    0:  begin
          pnlAmount.Show;
          pnlAmount.Top := pnlButtons.Top - 1;
          pnlOther.Hide;
        end;
    1,2:  begin
          pnlOther.Show;
          pnlOther.Top := pnlButtons.Top - 1;
          pnlAmount.Hide;
        end;
  end;

  if cmbReason.ItemIndex = 3 then
    RejectType := 'Q'
  else
    RejectType := cmbReason.Text[1];
end;

procedure TfrmRejectQuote.SetRejectType(const Value: ShortString);
begin
  FRejectType := Value;
end;

procedure TfrmRejectQuote.btnOKClick(Sender: TObject);
var
  MaxAmount: Currency;
  MaxPeriod: Integer;
begin
  if cmbReason.ItemIndex = 0 then
  begin
    dtmLoanC.GetMaxQuoteOptions(dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger,
      MaxAmount, MaxPeriod);
    if (dtmLoanC.qryLoanDet.FieldByName('AppAmt').AsCurrency > MaxAmount) or
      (dtmLoanC.qryLoanDet.FieldByName('AppPeriod').AsInteger > MaxPeriod) then
    begin
      if dtmLoanC.qryLoanDet.FieldByName('AppAmt').AsCurrency > MaxAmount then
        MessageDlg('Amount cannot exceed the offered amount of ' +
          CurrToStrF(MaxAmount, ffCurrency,2),
          mtError, [mbOK], 0)
      else if dtmLoanC.qryLoanDet.FieldByName('AppPeriod').AsInteger > MaxPeriod then
        MessageDlg('Amount cannot exceed the offered period of ' +
        IntToStr(MaxPeriod) + ' months',mtError, [mbOK], 0)

    end
    else
      ModalResult := mrOK;
  end
  else if cmbReason.ItemIndex = 3 then
  begin
    dtmLoanC.dsActiveOffers.Open;
    dtmLoanC.dsActivePayouts.Open;
    frmActiveOffers := TfrmActiveOffers.Create(Self);
    try
      if frmActiveOffers.ShowModal = mrOK then
      begin
        dtmLoanC.cmdNewQuoteOffer.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
        dtmLoanC.cmdNewQuoteOffer.Parameters.ParamByName('OfferID').Value := dtmLoanC.dsActiveOffers.FieldByName('OfferID').AsInteger;
        dtmLoanC.cmdNewQuoteOffer.Execute;
        ModalResult := mrOK;
      end;
    finally
      FreeAndNil(frmActiveOffers);
      dtmLoanC.dsActiveOffers.Close;
      dtmLoanC.dsActivePayouts.Close;
    end;
  end
  else if cmbReason.ItemIndex > -1 then
    ModalResult := mrOK;
end;

end.
