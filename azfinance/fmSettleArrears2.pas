unit fmSettleArrears2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NumEdit, Math;

type
  TfrmSettleArrears2 = class(TForm)
    lblDate: TLabel;
    lblArrearsAmt: TLabel;
    lblArrearsInt: TLabel;
    lblTotal: TLabel;
    bvlTotal: TBevel;
    bvlDate: TBevel;
    dtpSettleDate: TDateTimePicker;
    edtArrearsAmt: TNumEdit;
    edtIntToDate: TNumEdit;
    edtTotal: TNumEdit;
    Button1: TButton;
    Label1: TLabel;
    edtArrearsInterest: TNumEdit;
    edtAdditionalCharges: TNumEdit;
    edtAdditionaPayments: TNumEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtUnpaid: TNumEdit;
    procedure dtpSettleDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
//    IntArray: array of array of string;
//    CharArray: array of array of string;
    FLoanID: Integer;
    FSettleDate: TDate;
    procedure SetSettleDate(const Value: TDate);
    procedure CalculateSettlement;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
    property SettleDate: TDate read FSettleDate write SetSettleDate;
  end;

var
  frmSettleArrears2: TfrmSettleArrears2;

const
  LineHeight = 15;

implementation

uses dmSettleArrears, dmMain;

{$R *.dfm}

{ TfrmSettleArrears }

procedure TfrmSettleArrears2.SetSettleDate(const Value: TDate);
begin
  FSettleDate := Value;
  CalculateSettlement;
end;

procedure TfrmSettleArrears2.dtpSettleDateChange(Sender: TObject);
begin
  SettleDate := dtpSettleDate.Date;
end;

procedure TfrmSettleArrears2.FormShow(Sender: TObject);
begin
  dtpSettleDate.Date := Date;
  dtpSettleDateChange(dtpSettleDate);
end;

procedure TfrmSettleArrears2.CalculateSettlement;
var
  AddCharges: Currency;
  AddPayments: Currency;
  ArrearsAmt: Currency;
  IntCharged: Currency;
  IntToDate: Currency;
begin
  with dtmSettleArrears do
  begin
    try
      CalculateSettlement(LoanID, SettleDate, ArrearsAmt,
        AddPayments, AddCharges, IntCharged, IntToDate);

      edtArrearsAmt.Text := FormatFloat('#,##0.00',ArrearsAmt);
      edtIntToDate.Text  := FormatFloat('#,##0.00',IntToDate);
      edtArrearsInterest.Text  := FormatFloat('#,##0.00',IntCharged);
      edtAdditionalCharges.Text  := FormatFloat('#,##0.00',AddCharges);
      edtAdditionaPayments.Text  := FormatFloat('#,##0.00',AddPayments);
      edtUnpaid.Text := FormatFloat('#,##0.00',
        Max(0,ArrearsAmt - IntCharged - AddCharges - AddPayments));

      edtTotal.Text := FormatFloat('#,##0.00',Max(0,ArrearsAmt + IntToDate));
        //+ IntCharged + AddCharges + AddPayments));
    finally

    end;
  end;
end;

procedure TfrmSettleArrears2.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;

procedure TfrmSettleArrears2.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
