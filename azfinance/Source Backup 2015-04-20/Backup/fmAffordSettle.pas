unit fmAffordSettle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NumEdit, Buttons, Mask, DBCtrls, ExtCtrls, fmLookup;

type
  TfrmAffordSettle = class(TForm)
    btnLookup: TSpeedButton;
    lblLoan: TLabel;
    lblAmount: TLabel;
    edtLoan: TDBEdit;
    edtAmount: TDBEdit;
    pnlButtons: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure btnLookupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frmLookup: TfrmLookUp;
    SettleType: Integer;
  end;

var
  frmAffordSettle: TfrmAffordSettle;

implementation

uses dmLoanC, dmMain, dmSettle, dmSettleArrears;

{$R *.dfm}

procedure TfrmAffordSettle.btnLookupClick(Sender: TObject);
begin
  frmLookup := TfrmLookUp.Create(Self);
  try
    frmLookup.SetLookUpForm(dtmLoanC.dsAfLoanLU,nil,'Find a loan','',True);
    frmLookUp.ShowModal;
    if frmLookUp.ChoosenID <> -1 then
    begin
      edtLoan.Text := frmLookup.ChoosenID;

      if SettleType = 1 then
      begin
        dtmSettle.SetInfoStatus(False);
        dtmSettle.SettleDate := Date;
        dtmSettle.CurLoanID := frmLookup.ChoosenID;
        dtmLoanC.cdsAFSettle.FieldByName('Amount').AsCurrency :=
          dtmSettle.GetCapitalBal + dtmSettle.GetArrBucket + dtmSettle.GetIntUpToDate;
      end
      else if SettleType = 2 then
        dtmLoanC.cdsAFSettle.FieldByName('Amount').AsCurrency :=
          dtmSettleArrears.CalculateSettlement(frmLookup.ChoosenID, Date);

    end;
  finally
    FreeAndNil(frmLookup);
  end;
end;

procedure TfrmAffordSettle.FormShow(Sender: TObject);
begin
  edtLoan.SetFocus;
end;

procedure TfrmAffordSettle.FormCreate(Sender: TObject);
begin
  dtmLoanC.dsAfLoanLU.Open;
  dtmSettleArrears := TdtmSettleArrears.Create(Self);
  dtmSettleArrears.dbSettleArrears.Close;
  dtmSettleArrears.dbSettleArrears.ConnectionString := dtmMain.dbData.ConnectionString;
  dtmSettleArrears.dbSettleArrears.Open;
end;

procedure TfrmAffordSettle.FormDestroy(Sender: TObject);
begin
  dtmLoanC.dsAfLoanLU.Close;
  FreeAndNil(dtmSettleArrears);
end;

end.
