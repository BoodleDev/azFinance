unit fmDeclineCancelLoan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, DBCtrls, Mask;

type
  TfrmDeclineCancelLoan = class(TForm)
    cmbStatusReason: TDBLookupComboBox;
    Label1: TLabel;
    chlSubReason: TCheckListBox;
    btnCancel: TButton;
    btnOK: TButton;
    Label2: TLabel;
    edtStatusReasonID: TDBEdit;
    procedure edtStatusReasonIDChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chlSubReasonDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure chlSubReasonClickCheck(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    FSubReasonList: TStringList;
    FStatusID: Integer;
    procedure SetSubReasonList(const Value: TStringList);
    procedure SetStatusID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property SubReasonList: TStringList read FSubReasonList write SetSubReasonList;
    property StatusID: Integer read FStatusID write SetStatusID;
  end;

var
  frmDeclineCancelLoan: TfrmDeclineCancelLoan;

implementation

uses dmLoanC, DB;

{$R *.dfm}

procedure TfrmDeclineCancelLoan.edtStatusReasonIDChange(Sender: TObject);
begin
  chlSubReason.Items.Clear;

  with dtmLoanC do
  begin
    if dsStatusSubReason.Active then
    begin
      dsStatusSubReason.First;
      while not dsStatusSubReason.Eof do
      begin
        chlSubReason.Items.Add(
          dsStatusSubReason.FieldByName('Description').AsString + '=' +
          dsStatusSubReason.FieldByName('StatusSubReasonID').AsString);

        dsStatusSubReason.Next;
      end;

      btnOK.Enabled := (chlSubReason.Items.Count = 0) and (qryLoanDet.FieldByName('CurReason').AsInteger > 0);
    end;
  end;
end;

procedure TfrmDeclineCancelLoan.FormCreate(Sender: TObject);
begin
  btnOK.Enabled := False;
  SubReasonList := TStringList.Create;

  dtmLoanC.dsStatusReason.Open;
  dtmLoanC.dsStatusSubReason.Open;
end;

procedure TfrmDeclineCancelLoan.chlSubReasonDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Description: String;
begin
  Description := chlSubReason.Items.Names[Index];

  chlSubReason.Canvas.FillRect(Rect);
  chlSubReason.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1, Description);
end;

procedure TfrmDeclineCancelLoan.chlSubReasonClickCheck(Sender: TObject);
var
  I: Integer;
begin
  if not dtmLoanC.dsStatusReason.FieldByName('MultipleSubReasons').AsBoolean then
  begin
    for I := 0 to chlSubReason.Items.Count - 1 do
    begin
      if chlSubReason.Checked[I] and not chlSubReason.Selected[I] then
        chlSubReason.Checked[I] := False;
    end;
  end;

  btnOK.Enabled := False;
  
  for I := 0 to chlSubReason.Items.Count - 1 do
    if chlSubReason.Checked[I] then
    begin
      btnOK.Enabled := True;
      break;
    end;
end;

procedure TfrmDeclineCancelLoan.SetSubReasonList(const Value: TStringList);
begin
  FSubReasonList := Value;
end;

procedure TfrmDeclineCancelLoan.btnOKClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to chlSubReason.Items.Count - 1do
    if chlSubReason.Checked[I] then
      SubReasonList.Add(chlSubReason.Items.Values[chlSubReason.Items.Names[I]]);

  ModalResult := mrOK;
end;

procedure TfrmDeclineCancelLoan.SetStatusID(const Value: Integer);
begin
  FStatusID := Value;

  dtmLoanC.dsStatusReason.Filter := 'StatusID = ' + IntToStr(StatusID);
  dtmLoanC.dsStatusReason.Filtered := True;
end;

end.
