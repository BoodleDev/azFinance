unit fmSuspMulti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Unit32;

type
  TfrmSuspMulti = class(TForm)
    grdMain: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure grdMainCellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    FTotAmount: Currency;
    procedure SetTotAmount(const Value: Currency);
    { Private declarations }
  public
    { Public declarations }
    property TotAmount: Currency read FTotAmount write SetTotAmount;
  end;

implementation

uses dmBatchSusp;

{$R *.DFM}

{ TfrmSuspMulti }

procedure TfrmSuspMulti.SetTotAmount(const Value: Currency);
begin
  FTotAmount := Value;
end;

procedure TfrmSuspMulti.Button1Click(Sender: TObject);
var
  MultiTotal: Currency;
begin
  MultiTotal := dtmBatchSusp.GetMultiSuspTotal;
  if FloatTostr(MultiTotal) = FloatToStr(TotAmount) then
    ModalResult := mrOK
  else if FloatTostr(MultiTotal) < FloatToStr(TotAmount) then
    MesDlg('The total allocation is less than the suspense amount','E')
  else
    MesDlg('The total allocation is more than the suspense amount','E');
end;

procedure TfrmSuspMulti.grdMainCellClick(Column: TColumn);
begin
  if Column.Index = 2 then
    grdMain.Options := grdMain.Options + [dgEditing]
  else
    grdMain.Options := grdMain.Options - [dgEditing];
end;

procedure TfrmSuspMulti.Button2Click(Sender: TObject);
begin
  dtmBatchSusp.cdsMultiSusp.EmptyDataSet;
  ModalResult := mrCancel;
end;

end.
