unit fmLoanSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrmLoanSummary = class(TForm)
    GroupBox1: TGroupBox;
    grdLoanSummary: TDBGrid;
    GroupBox2: TGroupBox;
    grdAccountSummary: TDBGrid;
    grdFeeSummary: TDBGrid;
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
    procedure edtIDChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdLoanSummaryDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoanSummary: TfrmLoanSummary;

implementation

uses dmLS, dmMain;

{$R *.dfm}

procedure TfrmLoanSummary.edtIDChange(Sender: TObject);
begin
  if dtmLS.dsLoanSummary.Active then
  begin
    dtmLS.dsLoanSummary.Parameters[0].Value := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
    dtmLS.dsLoanSummary.Requery;

    dtmLS.dsAccountSummary.Parameters[0].Value := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
    dtmLS.dsAccountSummary.Requery;
    //dtmLS.spLoanCons.Parameters[1].Value := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
    //dtmLS.spLoanCons.Requery;
  end;
end;

procedure TfrmLoanSummary.FormCreate(Sender: TObject);
begin
  dtmLS.dsFeeSummary.Open;
  dtmLS.dsLoanSummary.Open;
  dtmLS.dsAccountSummary.Open;
  edtIDChange(nil);
end;

procedure TfrmLoanSummary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmLS.dsLoanSummary.Close;
  dtmLS.dsAccountSummary.Close;
  dtmLS.dsFeeSummary.Close;
end;

procedure TfrmLoanSummary.grdLoanSummaryDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if TDBGrid(Sender).DataSource.DataSet.RecordCount > 0 then
  if TDBGrid(Sender).DataSource.DataSet.FieldByName('LoanRef').AsString = '' then
    if not (gdSelected in State) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := clBtnFace;
      TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

procedure TfrmLoanSummary.FormShow(Sender: TObject);
var
  I: Integer;
begin
  grdFeeSummary.Columns[0].Title.Caption := '';
  for I := 1 to grdFeeSummary.Columns.Count - 1 do
  begin
    grdFeeSummary.Columns[I].Width := 120;
    grdFeeSummary.Columns[I].Title.Alignment := taRightJustify;
  end;
end;

end.
