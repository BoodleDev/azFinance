unit fmLegalSettlement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmLegalSettlement = class(TForm)
    btnClose: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dtpSettlementDate: TDateTimePicker;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    memHODate: TMemo;
    memJDDate: TMemo;
    memJDAmount: TMemo;
    memLegalFees: TMemo;
    memLoanBalance: TMemo;
    memInterest: TMemo;
    memSettlement: TMemo;
    btnPrint: TButton;
    procedure FormCreate(Sender: TObject);
    procedure dtpSettlementDateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
  private
    LoanBalance: Currency;
    TotalInterest: Currency;
    FLoanID: Integer;
    FConnectionString: WideString;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property ConnectionString: WideString read FConnectionString write FConnectionString;
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmLegalSettlement: TfrmLegalSettlement;

implementation

uses dmLegalSettlement, rptSettle, dmSettle, dmMain;

{$R *.dfm}

{ TfrmLegalSettlement }

procedure TfrmLegalSettlement.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
  Screen.Cursor := crHourGlass;
  with dtmLegalSettlement do
  begin
    dsLoan.Close;
    if ConnectionString <> '' then
    begin
      dbLegal.Close;
      dbLegal.ConnectionString := ConnectionString;
      dbLegal.Open;
    end;
    dsLoan.Parameters[0].Value := LoanID;
    dsLoan.Open;

    LoanBalance := dsLoan.FieldByName('LoanBalance').AsCurrency;

    memHODate.Text    := dsLoan.FieldByName('HODate').AsString;
    memJDDate.Text    := dsLoan.FieldByName('JDDate').AsString;
    memJDAmount.Text  := FloatToStrF(dsLoan.FieldByName('JDAmount').AsCurrency, ffCurrency, 15, 2);
    memLegalFees.Text := FloatToStrF(dsLoan.FieldByName('LegalFees').AsCurrency, ffCurrency, 15, 2);
    memLoanBalance.Text := FloatToStrF(LoanBalance, ffCurrency, 15, 2);

    dtpSettlementDateChange(dtpSettlementDate);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmLegalSettlement.FormCreate(Sender: TObject);
begin
  dtmLegalSettlement := TdtmLegalSettlement.Create(Self);
  dtpSettlementDate.Date := Date;    
end;

procedure TfrmLegalSettlement.dtpSettlementDateChange(Sender: TObject);
begin
  with dtmLegalSettlement do
  begin
    dsSettle.Close;
    dsSettle.Parameters.ParamByName('LoanID').Value := LoanID;
    dsSettle.Parameters.ParamByName('SettleDate').Value := dtpSettlementDate.Date;
    dsSettle.Open;
    TotalInterest := dsSettle.FieldByName('TotalInterest').AsCurrency;
    memInterest.Text := FloatToStrF(TotalInterest,ffCurrency,15,2);
    memSettlement.Text := FloatToStrF(TotalInterest + LoanBalance,ffCurrency,15,2);
    dsSettle.Close;
  end;
end;

procedure TfrmLegalSettlement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmLegalSettlement.dsLoan.Close;
  dtmLegalSettlement.dbLegal.Close;
  FreeAndNil(dtmLegalSettlement);
end;

procedure TfrmLegalSettlement.btnPrintClick(Sender: TObject);
var
  SettleReport : TrepSettle;
  LoanRef: String;
begin
  SettleReport := TrepSettle.Create(nil);
  try
    LoanRef := dtmLegalSettlement.dsLoan.FieldByName('LoanRef').AsString;
    SettleReport.lblLoanBal.Caption    := FloatToStrF(LoanBalance,ffCurrency,15,2);
    SettleReport.qlSettleDate1.Caption := 'THIS SETTLEMENT QUOTATION IS VALID UNTIL ' +
      DateToStr(dtpSettlementDate.Date);
    SettleReport.qlSettleDate2.Caption := 'The Settlement Quotation reflected herein is valid until ' +
      DateToStr(dtpSettlementDate.Date) + ' ("the Settlement Date").';
    SettleReport.qlSettleDate3.Caption := DateToStr(dtpSettlementDate.Date);

    SettleReport.qlRefNo.Caption := 'LOAN REFERENCE NO: ' + LoanRef;
    SettleReport.LoanRef := LoanRef;
    SettleReport.qlUserID.Caption := dtmMain.CurrentID;

    SettleReport.qlBankName.Caption := 'ABSA';
    SettleReport.qlBranchName.Caption := 'Business Johannesburg North';
    SettleReport.qlBranchCode.Caption := '632005';
    SettleReport.qlAcountNo.Caption := '406 677 3936';

    SettleReport.lblIntToDate.Caption  := FloatToStrF(TotalInterest,ffCurrency,15,2);
    SettleReport.lblDepBal.Caption     := FloatToStrF(0,ffCurrency,15,2);
    SettleReport.lblAdditionalCharges.Caption  := FloatToStrF(0,ffCurrency,15,2);
    //SettleReport.lblDiscount.Caption   := FloatToStrF(0,ffCurrency,15,2);
    SettleReport.lblFinal.Caption      := FloatToStrF(TotalInterest + LoanBalance,ffCurrency,15,2);
    SettleReport.QuickReport.Preview;
  finally
    SettleReport.Free;
  end;
end;

end.

