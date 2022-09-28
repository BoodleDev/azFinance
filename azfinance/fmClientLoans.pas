unit fmClientLoans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DBGrdClr,
  ComCtrls, ToolWin, Menus, fmLookup, DBStyleGrid;

type
  TfrmClientLoans = class(TfrmBase)
    pnlTop: TPanel;
    Label2: TLabel;
    grdLoan: TDBStyleGrid;
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
    pnlBottom: TPanel;
    Label1: TLabel;
    grdPay: TDBStyleGrid;
    btnReports: TToolButton;
    ppmReports: TPopupMenu;
    ConsolidatedPaymentReport1: TMenuItem;
    procedure grdLoanDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtIDChange(Sender: TObject);
    procedure btnReportsClick(Sender: TObject);
    procedure ConsolidatedPaymentReport1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientLoans: TfrmClientLoans;

implementation

uses dmMain, dmLS, uLScentral, rptConsPay;

{$R *.DFM}

procedure TfrmClientLoans.grdLoanDrawColumnCell(Sender: TObject;
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

procedure TfrmClientLoans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmLS.spLoanCons.Close;
end;

procedure TfrmClientLoans.edtIDChange(Sender: TObject);
begin
  inherited;
  if dtmLS.spLoanCons.Active then
  begin
    dtmLS.spLoanCons.Parameters[1].Value := dtmMain.qryEntID.FieldByName('EntityID').AsInteger;
    dtmLS.spLoanCons.Requery;
  end;
end;

procedure TfrmClientLoans.btnReportsClick(Sender: TObject);
begin
  inherited;
  ppmReports.Popup(btnReports.ClientOrigin.x + btnReports.Width,
    btnReports.ClientOrigin.y + btnReports.Height);
end;

procedure TfrmClientLoans.ConsolidatedPaymentReport1Click(Sender: TObject);
var
 repConsPay : TRepConsPay;
begin
  inherited;
  dtmLS.qryClientLU.Open;
  dtmLS.qryClientLU.Locate('IDVal',dtmMain.qryEntDet.fieldbyname('EntityID').AsString ,[]);
  dtmLS.CalcCons;
  repConsPay := TrepConsPay.Create(self);
  if dtmLS.qryContracts.RecordCount > 0 then
    repConsPay.QuickReport.preview
  else
    MessageDlg('No records returned.',mtInformation,[mbOk],0);  
  repConsPay.Free;
end;

procedure TfrmClientLoans.FormCreate(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors([grdLoan,grdPay]);
  dtmLS.spLoanCons.Open;
  edtIDChange(nil);
end;

end.
