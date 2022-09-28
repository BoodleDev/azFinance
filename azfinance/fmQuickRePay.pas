unit fmQuickRePay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, Spin, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, ToolWin, Unit32,
  uFinMath;

type
  TfrmQuickRePay = class(TfrmBase)
    lblLoanInd2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel1: TBevel;
    edtRepayAmt: TEdit;
    DBText4: TDBText;
    seTerm: TSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    dtpStart: TDateTimePicker;
    dtpFirst: TDateTimePicker;
    procedure seTermChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses dmMain, dmLS;

{$R *.DFM}

procedure TfrmQuickRePay.seTermChange(Sender: TObject);
begin
  inherited;
{  if seTerm.Value > (dtmLS.qryEntLoan.FieldByName('LoanPeriod').AsInteger -
                      dtmLS.qryEntLoan.FieldByName('NoOfPay').AsInteger) then
  MesDlg('Term exceeds the loan term','I');   }

  edtRepayAmt.Text:= CurrToStrF(ActualPMT(dtmLS.qryEntLoan.FieldByname('IntRate').AsFloat,
      dtmLS.qryEntLoan.FieldByName('LoanBal').AsCurrency,0,seTerm.Value,1
       ,dtpStart.Date,dtpFirst.Date, 0)*-1,ffCurrency,2);
end;

procedure TfrmQuickRePay.FormShow(Sender: TObject);
begin
  inherited;
  seTermChange(nil);
  dtpStart.Date := Date;
  dtpFirst.Date := date+15

end;

end.
