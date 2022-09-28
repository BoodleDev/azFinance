unit fmPayLoanSettle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, XSBuiltIns;

type
  TfrmPayLoanSettle = class(TForm)
    Label1: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
    Label2: TLabel;
    dtpSettleDate: TDateTimePicker;
    grdSettlements: TDBGrid;
    procedure dtpSettleDateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdLoansDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure grdSettlementsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure AddSettlements();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPayLoanSettle: TfrmPayLoanSettle;

implementation

uses SettlementService, dmPayouts;

{$R *.dfm}

procedure TfrmPayLoanSettle.dtpSettleDateChange(Sender: TObject);
begin
  AddSettlements();
end;

procedure TfrmPayLoanSettle.AddSettlements();
var
  arrTrans: ArrayOfTransaction;
begin
  Screen.Cursor := crHourGlass;
  try
    with dtmPayouts do
    begin
      cdsSettlePayouts.DisableControls;
      cdsSettlePayouts.First;
      while not cdsSettlePayouts.Eof do
      begin
        arrTrans := GetSettlementSoap.GetSettlement(cdsSettlePayouts.FieldByName('LoanID').AsInteger,
          DateTimeToXSDateTime(dtpSettleDate.DateTime));

        cdsSettlePayouts.Edit;
        cdsSettlePayouts.FieldByName('Settlement').AsBCD := arrTrans[Length(arrTrans) - 1 ].Balance.AsBcd;
        cdsSettlePayouts.Post;

        cdsSettlePayouts.Next;
    end;
    cdsSettlePayouts.First;
    cdsSettlePayouts.EnableControls;
  end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPayLoanSettle.FormCreate(Sender: TObject);
var
  I: integer;
begin
  with dtmPayouts do
  begin
    dsSettlePayouts.Open;
    cdsSettlePayouts.CreateDataSet;
    while not dsSettlePayouts.Eof do
    begin
      cdsSettlePayouts.Append;

      for I := 0 to dsSettlePayouts.FieldCount - 1 do
      begin
        cdsSettlePayouts.Fields[I].Value := dsSettlePayouts.Fields[I].Value;
      end;

      cdsSettlePayouts.Post;

      dsSettlePayouts.Next;
    end;
  end;

  dtpSettleDate.DateTime := Date + 7;
  dtpSettleDateChange(dtpSettleDate);
end;

procedure TfrmPayLoanSettle.grdLoansDblClick(Sender: TObject);
begin
  if btnOK.Enabled then
    btnOK.Click;
end;

procedure TfrmPayLoanSettle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmPayouts.dsSettlePayouts.Close;
  dtmPayouts.cdsSettlePayouts.Close;
end;

procedure TfrmPayLoanSettle.btnOKClick(Sender: TObject);
begin
  dtmPayouts.AddLoanSettlement(dtmPayouts.LoanID,
    dtmPayouts.cdsSettlePayouts.FieldByName('LoanID').AsInteger,
    dtmPayouts.cdsSettlePayouts.FieldByName('RefNo').AsString,
    dtmPayouts.cdsSettlePayouts.FieldByName('Reference').AsString,
    dtpSettleDate.DateTime,
    dtmPayouts.cdsSettlePayouts.FieldByName('Settlement').AsCurrency,
    dtmPayouts.cdsSettlePayouts.FieldByName('PayIns').AsCurrency);
end;

procedure TfrmPayLoanSettle.grdSettlementsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'LoanStatus' then
    if not (gdSelected in State) then
      if not dtmPayouts.cdsSettlePayouts.FieldByName('StatusColor').IsNull then
      begin
        grdSettlements.Canvas.Brush.Color := StringToColor(dtmPayouts.cdsSettlePayouts.FieldByName('StatusColor').AsString);
        grdSettlements.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
end;

end.
