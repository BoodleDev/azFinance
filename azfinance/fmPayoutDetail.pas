unit fmPayoutDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Mask, DBCtrls, ExtCtrls, fmLookup,
  fmBankDetails;

type
  TPayout = (pySettle=1,pyTransfer=2,pyBeneficiary=3,pyOnceOff=4);

type
  TfrmPayoutDetail = class(TForm)
    pnlBeneficiary: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    btnBeneficiary: TSpeedButton;
    pnlLoanTransfer: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    pnlOnceOff: TPanel;
    pnlButtons: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    pnlTop: TPanel;
    edtLoanRef: TEdit;
    edtBeneficiary: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtAccName: TDBEdit;
    edtAccNo: TDBEdit;
    btnEditBank: TBitBtn;
    edtBank: TDBEdit;
    edtBankBranch: TDBEdit;
    edtAccType: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnBeneficiaryClick(Sender: TObject);
    procedure btnEditBankClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FPayoutType: TPayout;
    procedure SetPayoutType(const Value: TPayout);
    { Private declarations }
  public
    { Public declarations }
    property PayoutType: TPayout read FPayoutType write SetPayoutType;
  end;

var
  frmPayoutDetail: TfrmPayoutDetail;
  frmLookup: TfrmLookUp;

implementation

uses dmLoanC, dmMain, dmBankDet;

{$R *.dfm}

{ TfrmPayoutDetail }

procedure TfrmPayoutDetail.SetPayoutType(const Value: TPayout);
begin
  FPayoutType := Value;
  case PayoutType of
    pyTransfer:     begin
                      pnlBeneficiary.Hide;
                      pnlOnceOff.Hide;
                    end;
    pyBeneficiary:  begin
                      pnlLoanTransfer.Hide;
                      pnlOnceOff.Hide;
                    end;
    pyOnceOff:      begin
                      pnlLoanTransfer.Hide;
                      pnlBeneficiary.Hide;
                    end;
  end;
  Self.Top := (Screen.Height - Self.Height) div 2;
end;

procedure TfrmPayoutDetail.FormShow(Sender: TObject);
begin
 { edtLoanRef.Text :=  dtmLoanC.qryPayouts.FieldByName('LoanRef').AsString;
  edtBeneficiary.Text :=  dtmLoanC.qryPayouts.FieldByName('Beneficiary').AsString;}
end;

procedure TfrmPayoutDetail.FormCreate(Sender: TObject);
begin
  dtmLoanC.qryPayouts.Open;
end;

procedure TfrmPayoutDetail.FormDestroy(Sender: TObject);
begin
  dtmLoanC.qryPayouts.Close;
end;

procedure TfrmPayoutDetail.btnOKClick(Sender: TObject);
begin
  dtmLoanC.qryPayouts.FieldByName('ThirdType').Value := PayoutType;
end;

procedure TfrmPayoutDetail.btnBeneficiaryClick(Sender: TObject);
begin
  frmLookup := TfrmLookUp.Create(Self);
  try
    dtmLoanC.dsBeneficiaries.Open;
    frmLookup.SetLookUpForm(dtmLoanC.dsBeneficiaries, nil, 'Select Beneficiary', '', False);
    if frmLookup.ShowModal = mrOK then
    begin
      dtmLoanC.qryPayouts.FieldByName('RefNo').AsInteger := frmLookup.ChoosenID;
      edtBeneficiary.Text := dtmLoanC.dsBeneficiaries.FieldByName('Beneficiary').AsString;
    end;
  finally
    FreeAndNil(frmLookup);
    dtmLoanC.dsBeneficiaries.Close;
  end;
end;

procedure TfrmPayoutDetail.btnEditBankClick(Sender: TObject);
var
  frmBank : TfrmBankDetails;
//  dtmBankDetails: TdtmBankDet;
begin
  //dtmBankDetails  := TdtmBankDet.Create(Self);
(*  frmBank           := TfrmBankDetails.Create(Self);
  frmBank.dtsBank   := dtmLoanC.dsPayoutBank.DataSource;
  frmBank.dtmData   := dtmBankDetails;
  //frmBank.DBName  := dtmMain.dbData.ConnectionString;
  frmBank.CurrentID := dtmMain.CurrentID;
  frmBank.ShowBoxes := True;          *)

  dtmLoanC.dsPayoutBank.Edit;
  dtmLoanC.dsPayoutBank.FieldByName('PayoutID').AsInteger := dtmLoanC.qryPayouts.FieldByName('PayoutID').AsInteger; 
  frmBank.cbAccType.ItemIndex := dtmLoanC.dsPayoutBank.FieldByName('AccType').AsInteger;

  if frmBank.Showmodal = mrOK then
    dtmLoanC.dsPayoutBank.Post
  else
    dtmLoanC.dsPayoutBank.Cancel;

  FreeAndNil(frmBank);
  //FreeAndNil(dtmBankDetails);
end;

procedure TfrmPayoutDetail.SpeedButton1Click(Sender: TObject);
begin
  frmLookup := TfrmLookUp.Create(Self);
  try
    dtmLoanC.dsLoanTransfers.Parameters.ParamByName('LoanID').Value := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
    dtmLoanC.dsLoanTransfers.Parameters.ParamByName('EntityID').Value := dtmLoanC.qryLoanDet.FieldByName('EntityID').AsInteger;
    dtmLoanC.dsLoanTransfers.Open;
    frmLookup.SetLookUpForm(dtmLoanC.dsLoanTransfers, nil, 'Select Loan', '', False);
    if frmLookup.ShowModal = mrOK then
    begin
      dtmLoanC.qryPayouts.FieldByName('RefNo').AsInteger := frmLookup.ChoosenID;
      edtLoanRef.Text := 'Loan Ref. ' + dtmLoanC.dsLoanTransfers.FieldByName('RefNo').AsString;
    end;
  finally
    FreeAndNil(frmLookup);
    dtmLoanC.dsLoanTransfers.Close;
  end;
end;

end.
