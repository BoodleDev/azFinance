unit fmBankDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBDateTimePicker, DBCtrls, Mask, Buttons;

type
  TfrmBankDetail = class(TForm)
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    btnLUBank: TSpeedButton;
    edtAccName: TDBEdit;
    edtAccNo: TDBEdit;
    cbAccType: TComboBox;
    cbxBank: TDBLookupComboBox;
    cbxBrName: TDBLookupComboBox;
    cbxBrCode: TDBLookupComboBox;
    btnCancel: TButton;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankDetail: TfrmBankDetail;

implementation

{$R *.dfm}

end.
