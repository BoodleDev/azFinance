unit fmLoanCons;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, DBCtrls, StdCtrls, Grids, DBGrids,
  DBGrdClr, Mask, TeeProcs, TeEngine, Chart, DBChart, Series;

type
  TfrmLoanCons = class(TfrmBase)
    pnlBottom: TPanel;
    Label1: TLabel;
    grdPay: TDBGrdClr;
    pnlTop: TPanel;
    Label2: TLabel;
    grdLoan: TDBGrdClr;
    pnlCurrentDetail: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dbtCode: TDBText;
    dbtName: TDBText;
    dbtSurname: TDBText;
    Label12: TLabel;
    dbtIDnum: TDBText;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    edtID: TDBEdit;
    Splitter1: TSplitter;
    procedure edtIDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdLoanDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS, uLScentral;

{$R *.DFM}

procedure TfrmLoanCons.edtIDChange(Sender: TObject);
begin
  inherited;
  if dtmLS.spLoanCons.Active then
  begin
    dtmLS.spLoanCons.Parameters[1].Value := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
    dtmLS.spLoanCons.Requery;
  end;
end;

procedure TfrmLoanCons.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdLoan);
  dtmMain.SetGrdColors(grdPay);
  dtmLS.spLoanCons.Open;
  edtIDChange(nil);
end;

procedure TfrmLoanCons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmLS.spLoanCons.Close;
end;

procedure TfrmLoanCons.grdLoanDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dtmLS.spLoanCons.FieldByName('Status').IsNull then
    if not (gdSelected in State) then
      TDBGrid(Sender).Canvas.Font.Color := clBlue;
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
  //
  if Column.FieldName = 'Status' then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    if Column.Field.IsNull then
      TDBGrid(Sender).Canvas.TextOut(Rect.Left+2,Rect.Top+2,'Totals')
    else
      TDBGrid(Sender).Canvas.TextOut(Rect.Left+2,Rect.Top+2,
        GetLoanStatus(Column.Field.AsInteger));
  end;
end;

end.
