unit fmManualOptionWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmWizard, ComCtrls, Grids, DBGrids, ImgList, ExtCtrls, StdCtrls,
  DBCtrls;

type
  TfrmManualOptionWizard = class(TfrmWizard)
    grdOptions: TDBGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    lvwPayouts: TListView;
    cmbReason: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edtFilterCapital: TEdit;
    lblFilterPeriod: TLabel;
    edtFilterPeriod: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNextClick(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure grdOptionsDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtFilterCapitalChange(Sender: TObject);
  private
    SettleAmount: Currency;
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmManualOptionWizard: TfrmManualOptionWizard;

implementation

uses dmPayouts, dmLoanC, DB, dmMain;

{$R *.dfm}

procedure TfrmManualOptionWizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmPayouts.dsScoreOptions.Close;
  dtmLoanC.dsManOptionReasons.Close;
  dtmLoanC.qryLD3Pay.Close;
  dtmLoanC.qryLD3Pay.Filtered := False;
  dtmLoanC.qryLD3Pay.Filter := '';
end;

procedure TfrmManualOptionWizard.SetLoanID(const Value: Integer);
var
  Item: TListItem;
begin
  FLoanID := Value;
  dtmPayouts.dsScoreOptions.Close;
  dtmPayouts.dsScoreOptions.Parameters[0].Value := LoanID;
  dtmPayouts.dsScoreOptions.Open;

  lvwPayouts.Clear;
 // dtmLoanC.qryLD3Pay.Filtered := True;
 // dtmLoanC.qryLD3Pay.Filter := 'ThirdType = 1 or ThirdType = 2 or (DocumentID > 0 AND AccountID > 0)';
  dtmLoanC.qryLD3Pay.Open;
  dtmLoanC.qryLD3Pay.First;
  while not dtmLoanC.qryLD3Pay.Eof do
  begin
    Item := lvwPayouts.Items.Add;
    Item.Caption := dtmLoanC.qryLD3Pay.FieldByName('PayoutNo').AsString;
    Item.SubItems.Add(dtmLoanC.qryLD3Pay.FieldByName('PayName').AsString);
    Item.SubItems.Add(dtmLoanC.qryLD3Pay.FieldByName('Reference').AsString);
    Item.SubItems.Add(FloatToStrF(dtmLoanC.qryLD3Pay.FieldByName('Amount').AsCurrency, ffCurrency, 15,2));
    dtmLoanC.qryLD3Pay.Next;
  end;
end;

procedure TfrmManualOptionWizard.btnNextClick(Sender: TObject);
var
  I: Integer;
begin
  (*if pcWizard.ActivePageIndex = 0 then
  begin
    if cmbReason.Text = '' then
    begin
      MessageDlg('You must select a reason for the manual option', mtError, [mbOK], 0);
      Abort;
    end;
  end
  else*)
  if pcWizard.ActivePageIndex = 1 then
  begin
    SettleAmount := 0;
    for I := 0 to lvwPayouts.Items.Count -1 do
    begin
      if lvwPayouts.Items[I].Checked then
      begin
        dtmLoanC.qryLD3Pay.RecNo := I + 1;
        SettleAmount := SettleAmount + dtmLoanC.qryLD3Pay.FieldByName('Amount').AsCurrency;
      end;
    end;
    if SettleAmount > dtmPayouts.dsScoreOptions.FieldByName('LoanCapital').AsCurrency then
    begin
      MessageDlg('Total settlements exceed the select loan capital', mtError, [mbOK], 0);
      Abort;
    end;
  end;
  inherited;
end;

procedure TfrmManualOptionWizard.btnFinishClick(Sender: TObject);
var
  I: Integer;
begin
  with dtmPayouts do
  begin
    try
      dtmMain.dbData.BeginTrans;
      cmdManualOption.Parameters.ParamByName('LoanID').Value := LoanID;
      cmdManualOption.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
      cmdManualOption.Parameters.ParamByName('ProductID').Value := dsScoreOptions.FieldByName('ProductID').AsInteger;
      cmdManualOption.Parameters.ParamByName('Instalment').Value := dsScoreOptions.FieldByName('Instalment').AsCurrency;
      cmdManualOption.Parameters.ParamByName('Reason').Value := 0;//dtmLoanC.dsManOptionReasons.FieldByName('TypeKey').AsInteger;
      cmdManualOption.Execute;

      for I := 0 to lvwPayouts.Items.Count -1 do
      begin
        if lvwPayouts.Items[I].Checked then
        begin
          dtmLoanC.qryLD3Pay.RecNo := I + 1;
          cmdOptionPayout.Parameters.ParamByName('PayoutID').Value := dtmLoanC.qryLD3Pay.FieldByName('PayoutID').AsInteger;
          cmdOptionPayout.Parameters.ParamByName('OfferID').Value := cmdManualOption.Parameters.ParamByName('OfferID').Value;
          cmdOptionPayout.Execute;
        end;
      end;
    dtmMain.dbData.CommitTrans;
    except
      dtmMain.dbData.RollbackTrans;
      MessageDlg('An error occured. Please contact your systems administrator', mtError, [mbOK], 0);
      Abort;
    end;
  end;
  inherited;

end;

procedure TfrmManualOptionWizard.grdOptionsDblClick(Sender: TObject);
begin
  inherited;
  btnNext.Click;
end;

procedure TfrmManualOptionWizard.FormCreate(Sender: TObject);
begin
  inherited;
  dtmLoanC.dsManOptionReasons.Open;
end;

procedure TfrmManualOptionWizard.edtFilterCapitalChange(Sender: TObject);
var
  Filter: string;
begin
  inherited;
  if (edtFilterCapital.Text = '') and (edtFilterPeriod.Text = '')  then
    dtmPayouts.dsScoreOptions.Filtered := False
  else
  begin
    if edtFilterCapital.Text <> '' then
      Filter := 'sLoanCapital LIKE ''' + edtFilterCapital.Text + '%''';

    if edtFilterPeriod.Text <> '' then
    begin
      if Filter <> '' then
        Filter := Filter + ' AND ';

      Filter := Filter + 'sLoanPeriod LIKE ''' + edtFilterPeriod.Text + '%''';

    end;

    dtmPayouts.dsScoreOptions.Filter := Filter;
    dtmPayouts.dsScoreOptions.Filtered := True;
  end;
end;

end.
