unit fmAddSettlement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, NumEdit, XSBuiltIns, db, AutoCursor;

type
  TfrmAddSettlement = class(TForm)
    Label2: TLabel;
    dtpExpiryDate: TDateTimePicker;
    pcSettlement: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btnCancel: TButton;
    btnOK: TButton;
    grdSummary: TDBGrid;
    grdTransactions: TDBGrid;
    lblSendDetail: TLabel;
    edtFaxNo: TNumEdit;
    cmbSendMethod: TComboBox;
    lblSendMethod: TLabel;
    edtEmail: TEdit;
    procedure dtpExpiryDateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cmbSendMethodChange(Sender: TObject);
  private
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmAddSettlement: TfrmAddSettlement;

implementation

uses SettlementService, dmSettlementQuotes, DateUtils, dmMain;

{$R *.dfm}

procedure TfrmAddSettlement.dtpExpiryDateChange(Sender: TObject);
var
  I           : Integer;
  Amount      : Currency;
  arrTrans    : ArrayOfTransaction;
  TotalAmount : Currency;
  Description : String;
  Csr         : IRecall;
begin
  Csr         := TAutoCursor.Create;

  try
    arrTrans := GetSettlementSoap.GetSettlement(LoanID, DateTimeToXSDateTime(dtpExpiryDate.DateTime));

    with dtmSettlementQuotes do
    begin
      cdsTransactions.EmptyDataSet;
      cdsSummary.EmptyDataSet;

      for I := 0 to Length(arrTrans) - 1 do
      begin
        cdsTransactions.Append;
        cdsTransactions.FieldByName('EffectiveDate').AsDateTime := arrTrans[I].EffectiveDate.AsDateTime;
        cdsTransactions.FieldByName('Amount').AsBCD := arrTrans[I].Amount.AsBcd;
        cdsTransactions.FieldByName('Rate').AsBCD := arrTrans[I].Rate.AsBcd;
        cdsTransactions.FieldByName('Insurance').AsBCD := arrTrans[I].Insurance.AsBcd;
        cdsTransactions.FieldByName('Interest').AsBCD := arrTrans[I].Interest.AsBcd;
        cdsTransactions.FieldByName('TotalInterest').AsBCD := arrTrans[I].TotalInterest.AsBcd;
        cdsTransactions.FieldByName('Balance').AsBCD := arrTrans[I].Balance.AsBcd;
        cdsTransactions.FieldByName('Type').AsString := arrTrans[I].Type_;
        cdsTransactions.FieldByName('Description').AsString := arrTrans[I].Description;
        cdsTransactions.Post;
      end;

      cdsTransactions.IndexFieldNames := 'Description';

      TotalAmount := 0;
      Amount := 0;

      cdsTransactions.First;
      while not cdsTransactions.Eof do
      begin
        if cdsTransactions.FieldByName('Description').AsString <> Description then
        begin
          if Description <> '' then
          begin
            cdsSummary.Append;
            cdsSummary.FieldByName('Description').AsString := Description;
            cdsSummary.FieldByName('Amount').AsCurrency := Amount;
            cdsSummary.Post;
          end;

          Description := cdsTransactions.FieldByName('Description').AsString;
          TotalAmount := TotalAmount + Amount;
          Amount := 0;
        end;

        Amount := Amount + cdsTransactions.FieldByName('Amount').AsCurrency;
        cdsTransactions.Next;
      end;

      cdsTransactions.IndexFieldNames := 'EffectiveDate';

      if Description <> '' then
      begin
        cdsSummary.Append;
        cdsSummary.FieldByName('Description').AsString := Description;
        cdsSummary.FieldByName('Amount').AsCurrency := Amount;
        cdsSummary.Post;

        TotalAmount := TotalAmount + Amount;
      end;

      cdsSummary.Append;
      cdsSummary.FieldByName('Description').AsString := 'Total';
      cdsSummary.FieldByName('Amount').AsCurrency := TotalAmount;
      cdsSummary.Post;
    end;
  except
     on E: Exception do
        begin
           ShowMessage(E.Message);
        end
  end;
end;

procedure TfrmAddSettlement.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;

procedure TfrmAddSettlement.FormCreate(Sender: TObject);
begin
  pcSettlement.ActivePageIndex := 0;
  cmbSendMethodChange(Self);

  dtmSettlementQuotes.cdsTransactions.CreateDataSet;
  dtmSettlementQuotes.cdsSummary.CreateDataSet;
end;

procedure TfrmAddSettlement.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmSettlementQuotes.cdsTransactions.Close;
  dtmSettlementQuotes.cdsSummary.Close;
end;

procedure TfrmAddSettlement.FormShow(Sender: TObject);
begin
  dtpExpiryDate.DateTime := Today + 7;
  dtpExpiryDateChange(Self);
end;

procedure TfrmAddSettlement.btnOKClick(Sender: TObject);
var
  SendDetail: string;
begin
  if MessageDlg('Are you sure you want to create a new settlement quote now?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then
  begin
    if edtFaxNo.Visible then
      SendDetail := edtFaxNo.Text
    else
      SendDetail := edtEmail.Text;
    try
        GetSettlementSoap.AddSettlement(LoanID, DateTimeToXSDateTime(dtpExpiryDate.DateTime), dtmMain.UserKey, cmbSendMethod.Text, SendDetail);
    except
        on E:Exception do
           begin
              ShowMessage(E.Message);
           end
    end;
    ModalResult := mrOK;
  end;
end;

procedure TfrmAddSettlement.cmbSendMethodChange(Sender: TObject);
begin
  case cmbSendMethod.ItemIndex of
    0:
    begin
      lblSendDetail.Visible := False;
      edtFaxNo.Visible := False;
      edtEmail.Visible := False;
    end;
    1:
    begin
      lblSendDetail.Visible := True;
      lblSendDetail.Caption := 'Email';
      edtFaxNo.Visible := False;
      edtEmail.Visible := True;
    end;
    2:
    begin
      lblSendDetail.Visible := True;
      lblSendDetail.Caption := 'Fax No.';
      edtFaxNo.Visible := True;
      edtEmail.Visible := False;
    end;
  end;
end;

end.

//To be added to the end of the initialization clause for compatibility with ASP.NET 2
//  InvRegistry.RegisterInvokeOptions(TypeInfo(SettlementSoap), ioDocument);
