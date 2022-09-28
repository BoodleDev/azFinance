unit fmDeclineReason;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask;

type
  TfrmDeclineReason = class(TForm)
    Label1: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
    edtReason: TDBEdit;
    lblSpecify: TLabel;
    cmbReason: TDBLookupComboBox;
    cmbSubReason: TDBLookupComboBox;
    edtSubReason: TDBEdit;
    procedure edtReasonChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSubReasonChange(Sender: TObject);
  private
    { Private declarations }
//    List: TStringList;
    FReasonKey: Integer;
  public
    { Public declarations }
    property ReasonKey: Integer read FReasonKey write FReasonKey;
  end;

var
  frmDeclineReason: TfrmDeclineReason;

implementation

uses dmLoanC;

{$R *.dfm}

procedure TfrmDeclineReason.edtReasonChange(Sender: TObject);
begin
 // btnOK.Enabled := dtmLoanC.qryLoanDet.FieldByName('CurReason').AsInteger > 0;

  cmbSubReason.Enabled := dtmLoanC.dsSubReasons.RecordCount >= 1;
  lblSpecify.Enabled := cmbSubReason.Enabled;

  edtSubReasonChange(cmbReason);
end;

procedure TfrmDeclineReason.FormShow(Sender: TObject);
begin
  btnOK.Enabled := False;
end;

procedure TfrmDeclineReason.edtSubReasonChange(Sender: TObject);
begin
  btnOK.Enabled := (not dtmLoanC.qryLoanDet.FieldByName('CurReason').IsNull)
    and (not dtmLoanC.qryLoanDet.FieldByName('StatusReasonID2').IsNull or (dtmLoanC.dsSubReasons.RecordCount = 0));
end;

end.
