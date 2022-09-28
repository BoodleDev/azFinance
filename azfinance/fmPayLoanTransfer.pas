unit fmPayLoanTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, ComCtrls;

type
  TfrmPayLoanTransfer = class(TForm)
    grdLoans: TDBGrid;
    Label2: TLabel;
    edtAmount: TEdit;
    btnCancel: TButton;
    btnOK: TButton;
    edtArrears: TDBEdit;
    Label1: TLabel;
    dtpSettleDate: TDateTimePicker;
    procedure edtArrearsChange(Sender: TObject);
    procedure edtAmountEnter(Sender: TObject);
    procedure edtAmountExit(Sender: TObject);
    procedure dtpSettleDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Amount: Currency;
  end;

var
  frmPayLoanTransfer: TfrmPayLoanTransfer;

implementation

uses dmPayouts;

{$R *.dfm}

procedure TfrmPayLoanTransfer.edtArrearsChange(Sender: TObject);
begin
  Amount := dtmPayouts.dsArrears.FieldByName('ArrearsAmount').AsCurrency;
  edtAmount.Text := edtArrears.Text;
end;

procedure TfrmPayLoanTransfer.edtAmountEnter(Sender: TObject);
begin
  edtAmount.Text := StringReplace(StringReplace(StringReplace(edtAmount.Text,'R','',[rfReplaceAll]),' ','',[rfReplaceAll]),',','',[rfReplaceAll]);
  edtAmount.Text := FloatToStr(StrToFloat(edtAmount.Text));
end;

procedure TfrmPayLoanTransfer.edtAmountExit(Sender: TObject);
begin
  Amount := StrToCurr(edtAmount.Text);
  edtAmount.Text := FloatToStrF(Amount, ffCurrency,15,2);
end;

procedure TfrmPayLoanTransfer.dtpSettleDateChange(Sender: TObject);
begin
  dtmPayouts.dsArrears.Close;
  dtmPayouts.dsArrears.Parameters.ParamByName('SettleDate').Value := dtpSettleDate.DateTime;
  dtmPayouts.dsArrears.Open;
end;

procedure TfrmPayLoanTransfer.FormShow(Sender: TObject);
begin
  dtpSettleDate.DateTime := Date + 7;
  dtpSettleDateChange(nil);
end;

procedure TfrmPayLoanTransfer.btnOKClick(Sender: TObject);
begin
  if dtmPayouts.dsArrears.FieldByName('ArrearsAmount').AsCurrency <= 0 then
    MessageDlg('Invalid Arrears Amount', mtError, [mbOK], 0)
  else
    ModalResult := mrOK;
end;

end.
