unit fmLoanNewRate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBDateTimePicker, Mask, DBCtrls;

type
  TfrmLoanNewRate = class(TForm)
    Label1: TLabel;
    edtInterestRate: TDBEdit;
    dtpEffectiveDate: TDBDateTimePicker;
    Label2: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoanNewRate: TfrmLoanNewRate;

implementation

uses dmLoanRates;

{$R *.dfm}


end.
