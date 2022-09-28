unit fmLDStruc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, StdCtrls, NoEdit, Grids, DBGrids,
  DBGrdClr, Unit32, Mask, DBCtrls;

type
  TfrmLDStruc = class(TfrmBase)
    pnlReStruc: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    lblNewI: TLabel;
    cbxType: TComboBox;
    dtpDate: TDateTimePicker;
    edtAmt: TNoEdit;
    edtPrdFor: TNoEdit;
    btnAddST: TToolButton;
    grdContract: TDBGrdClr;
    pnlStruc: TPanel;
    grdStruc: TDBGrdClr;
    Label2: TLabel;
    btnSave: TToolButton;
    btnReset: TToolButton;
    edtDate: TDBEdit;
    btnRate: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddSTClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdContractDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtDateChange(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnRateClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure grdStrucDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    FLoanID: integer;
    procedure SetLoanID(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: integer read FLoanID write SetLoanID;
  end;

implementation

uses dmLCST, dmMain, uLCCentral;

{$R *.DFM}

procedure TfrmLDStruc.FormCreate(Sender: TObject);
begin
  inherited;
  dtmLCST := TdtmLCST.Create(Self);
  dtmLCST.SetDBCon(dtmMain.dbData);
end;

procedure TfrmLDStruc.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmLCST.Free;
  dtmLCST := nil;
end;

procedure TfrmLDStruc.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors([grdStruc,grdContract]);
  cbxType.ItemIndex := 0;
//  FilterDataSet(dtmLCST.cdsContract,'PayNo>0');
  edtDate.DataSource := dtmLCST.dtsContract;
end;

procedure TfrmLDStruc.btnAddSTClick(Sender: TObject);
begin
  inherited;
//  if FormatDateTime('dd',dtpDate.Date) =  // only works for monthly instalments
//    FormatDateTime('dd',dtmLCST.qryLDS.FieldByName('FirstInsDate').AsDateTime) then
  if (dtmLCST.cdsContract.FieldByName('Type').AsInteger in [ttNorI,ttFixI]) then
  begin
    edtDate.DataSource := nil;
    // Extend contract
    if cbxType.ItemIndex = 1 then
      dtmLCST.ExtendContract(dtpDate.DateTime,StrToInt(edtPrdFor.Text))
    else
      // Add new intalments
      dtmLCST.AddNewStrucType(dtpDate.DateTime,StrToInt(edtPrdFor.Text),
         StrToFloat(edtAmt.Text));
    edtDate.DataSource := dtmLCST.dtsContract;
  end
  else
    MesDlg('Date must be an instlament date.','E');
end;

procedure TfrmLDStruc.SetLoanID(const Value: integer);
begin
  FLoanID := Value;
  dtmLCST.LoanID := LoanID;
  dtpDate.Date := dtmLCST.qryLDS.FieldByName('FirstInsDate').AsDateTime;
end;

procedure TfrmLDStruc.grdContractDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  str : string;  
begin
  inherited;
  if Column.FieldName = 'PayNo' then
  begin
    if Column.Field.AsInteger < 0 then
      grdContract.Canvas.FillRect(Rect);
  end;
  //
  if Column.FieldName = 'Type' then
  begin
    grdContract.Canvas.FillRect(Rect);
    str := GetTypeDesc(Column.Field.AsInteger);
    grdContract.Canvas.TextOut(Rect.Left+2,Rect.Top+1,str);
  end;
end;

procedure TfrmLDStruc.edtDateChange(Sender: TObject);
begin
  inherited;
  if dtmLCST.cdsContract.Active then
    dtpDate.Date := dtmLCST.cdsContract.FieldByName('EffectDate').AsDateTime;
end;

procedure TfrmLDStruc.btnResetClick(Sender: TObject);
begin
  inherited;
  edtDate.DataSource := nil;
  dtmLCST.BuildAndRunContract(False);
  edtDate.DataSource := dtmLCST.dtsContract;
end;

procedure TfrmLDStruc.btnRateClick(Sender: TObject);
begin
  inherited;
  edtDate.DataSource := nil;
  dtmLCST.DoRateChanges;
  edtDate.DataSource := dtmLCST.dtsContract;
end;

procedure TfrmLDStruc.btnSaveClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to overwrite the current structure?','C')
    = mrYes then
  begin
    dtmLCST.BuildStruc;
    dtmLCST.MarkLoanForLCD;
    dtmLCST.UpdLoanEndDate;
    MesDlg('Structure updated.','I');
  end;   
end;

procedure TfrmLDStruc.grdStrucDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  str : string;
begin
  inherited;
  if Column.FieldName = 'Type' then
  begin
    grdStruc.Canvas.FillRect(Rect);
    str := GetTypeDesc(Column.Field.AsInteger);
    grdStruc.Canvas.TextOut(Rect.Left+2,Rect.Top+1,str);
  end; 
end;

end.
