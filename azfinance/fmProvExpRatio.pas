unit fmProvExpRatio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, NoEdit;

type
  TfrmProvExpRatio = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnOk: TButton;
    NoEdit1: TNoEdit;
    cmbMonthEndStart: TComboBox;
    cmbMonthEndEnd: TComboBox;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NoEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure NoEdit1Enter(Sender: TObject);
    procedure NoEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbMonthEndStartEnter(Sender: TObject);
    procedure cmbMonthEndStartExit(Sender: TObject);
    procedure cmbMonthEndEndEnter(Sender: TObject);
    procedure cmbMonthEndEndExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProvExpRatio: TfrmProvExpRatio;
  LoanProvAmount : Currency;
  StartDate, EndDate : String;

implementation

uses dmReports;

{$R *.DFM}

procedure TfrmProvExpRatio.btnOkClick(Sender: TObject);
begin
  LoanProvAmount := StrToFloat(NoEdit1.Text);
  StartDate := cmbMonthEndStart.Text;
  EndDate := cmbMonthEndEnd.Text;

  If NoEdit1.Text = '' then
     ShowMessage('Please enter values for the Provision Amount')
  else
  if cmbMonthEndStart.Text = '' then
     ShowMessage('Please enter values for the starting year')
  else
  if cmbMonthEndEnd.Text = '' then
     ShowMessage('Please enter values for the ending year')
  else
  Close;
end;

procedure TfrmProvExpRatio.FormCreate(Sender: TObject);
begin
  NoEdit1.Text := '';
  dtmReports.qryMonthEndDate.Open;
  dtmReports.qryMonthEndDate.First;
  while not dtmReports.qryMonthEndDate.Eof Do
  begin
    cmbMonthEndStart.Items.Add(dtmReports.qryMonthEndDate.FieldByName('MonthEndDate').AsString);
    cmbMonthEndEnd.Items.Add(dtmReports.qryMonthEndDate.FieldByName('MonthEndDate').AsString);
    dtmReports.qryMonthEndDate.Next;
  end;
end;

procedure TfrmProvExpRatio.NoEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = vk_return then
  btnOk.Click;
end;

procedure TfrmProvExpRatio.NoEdit1Enter(Sender: TObject);
begin
  NoEdit1.Color := clInfoBk;
end;

procedure TfrmProvExpRatio.NoEdit1Exit(Sender: TObject);
begin
  NoEdit1.Color := clWindow;
end;

procedure TfrmProvExpRatio.FormShow(Sender: TObject);
begin
  NoEdit1.SetFocus;
end;

procedure TfrmProvExpRatio.cmbMonthEndStartEnter(Sender: TObject);
begin
  cmbMonthEndStart.Color := clInfoBk;
end;

procedure TfrmProvExpRatio.cmbMonthEndStartExit(Sender: TObject);
begin
  cmbMonthEndStart.Color := clWindow;
end;

procedure TfrmProvExpRatio.cmbMonthEndEndEnter(Sender: TObject);
begin
  cmbMonthEndEnd.Color := clInfoBk;
end;

procedure TfrmProvExpRatio.cmbMonthEndEndExit(Sender: TObject);
begin
  cmbMonthEndEnd.Color := clWindow;
end;

end.
