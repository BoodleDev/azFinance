unit fmLoanAuthenticationDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, DBDateTimePicker;

type
  TfrmLoanAuthenticationDetail = class(TForm)
    cmbBureau: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpCompleteDate: TDBDateTimePicker;
    cmbResult: TDBComboBox;
    Label3: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cmbResultDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoanAuthenticationDetail: TfrmLoanAuthenticationDetail;

implementation

uses dmFraud;

{$R *.dfm}

procedure TfrmLoanAuthenticationDetail.FormCreate(Sender: TObject);
begin
  dtpCompleteDate.Date := Date;
end;

procedure TfrmLoanAuthenticationDetail.cmbResultDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  Result: String;
begin
  if cmbResult.Items.Strings[Index] = 'True' then
    Result := 'Accept'
  else if cmbResult.Items.Strings[Index] = 'False' then
    Result := 'Reject';

  cmbResult.Canvas.FillRect(Rect);
  cmbResult.Canvas.TextOut(rect.Left + 2, Rect.Top + 2, Result);
end;

end.
