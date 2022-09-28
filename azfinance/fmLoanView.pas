//~~ Move ? OR Add MESum
unit fmLoanView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, CheckLst, Buttons, DB, Unit32,
  DBGrdClr, ComCtrls;

type
  TfrmLoanView = class(TForm)
    pnlTop: TPanel;
    cbxLoanView: TComboBox;
    Label2: TLabel;
    TimerType: TTimer;
    pcView: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    grdInformation: TDBGrdClr;
    grdBalance: TDBGrdClr;
    grdAge: TDBGrdClr;
    GroupBox1: TGroupBox;
    cbxFlds: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    cbxFlds2: TComboBox;
    cbxOps2: TComboBox;
    cbxOps: TComboBox;
    edtValue: TComboBox;
    edtValue2: TComboBox;
    btnFilterData: TSpeedButton;
    btnClearFilter: TSpeedButton;
    imgRed: TImage;
    imgGreen: TImage;
    stsLoan: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxLoanViewChange(Sender: TObject);
    procedure grdInformationDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TimerTypeTimer(Sender: TObject);
    procedure grdInformationKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdInformationEnter(Sender: TObject);
    procedure btnFilterDataClick(Sender: TObject);
    procedure btnClearFilterClick(Sender: TObject);
    procedure grdInformationColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure cbxFldsChange(Sender: TObject);
    procedure edtValueDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure edtValue2DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cbxFlds2Change(Sender: TObject);
    procedure pcViewChange(Sender: TObject);
  private
    { Private declarations }
    CurrentLookup : string;
    LookUpFld: String;
    FldList : TStringList;
    function LoanInfoView(inCol:integer):Boolean;
    function LoanBalView(inCol:integer):Boolean;
    function LoanAgeView(inCol:integer):Boolean;
    function GetFilter(inCBXfld,inOpt,inVal:string):string;
    function GetPayPeriod(inOpt,inVal:string):string;
    procedure SetGridView;
    procedure LoadFldList;
    procedure SetRobot(isReady:boolean);
    procedure SetComboFilter(cbxFldLU, cbxFldFilter: TComboBox);
    procedure MoveFilter;
    procedure SetCBXStyle(DropDown: Boolean; cbxFldFilter: TComboBox);
  public
    { Public declarations }
  end;

implementation

uses dmLoanMan, dmMain, uLSConst, uLScentral;

{$R *.DFM}

procedure TfrmLoanView.FormCreate(Sender: TObject);
begin
  dtmLoanMan := TdtmLoanMan.Create(self);
  FldList := TStringList.Create;
  LoadFldList;
  Self.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors([grdInformation,grdBalance,grdAge]);
  dtmLoanMan.qryLoanView.Open;
  SetRobot(False);
end;

procedure TfrmLoanView.FormDestroy(Sender: TObject);
begin
  FldList.Free;
  FldList := nil;
  FilterDataSet(dtmLoanMan.qryLoanView,'');
  dtmLoanMan.qryLoanView.Close;
  dtmLoanMan.Free;
  dtmLoanMan := nil;
end;

procedure TfrmLoanView.FormShow(Sender: TObject);
begin
  TimerType.Enabled := True;
end;

function TfrmLoanView.LoanAgeView(inCol: integer): Boolean;
begin
  if inCol in [0,2,3,10,14,15,16,17,18] then
    Result := True
  else
    Result := False;
end;

function TfrmLoanView.LoanBalView(inCol: integer): Boolean;
begin
  if inCol in [0,2,3,9,10,11,12,17,18] then
    Result := True
  else
    Result := False;
end;

function TfrmLoanView.LoanInfoView(inCol: integer): Boolean;
begin
  if inCol in [0,1,2,3,4,5,6,7,8] then
    Result := True
  else
    Result := False;
end;

procedure TfrmLoanView.SetGridView;
var
  i : integer;
begin
  for i := 0 to grdInformation.Columns.Count -1 do
  begin
    case dtmLoanMan.CurLoanView of
      LMInfoView : grdInformation.Columns[i].Visible := LoanInfoView(i);
      LMBalView  : grdInformation.Columns[i].Visible := LoanBalView(i);
      LMAgeView  : grdInformation.Columns[i].Visible := LoanAgeView(i);
    end;
  end;
end;

procedure TfrmLoanView.cbxLoanViewChange(Sender: TObject);
begin
  case cbxLoanView.ItemIndex of
    0: dtmLoanMan.CurLoanView := LMInfoView;
    1: dtmLoanMan.CurLoanView := LMBalView;
    2: dtmLoanMan.CurLoanView := LMAgeView;
  end;
  SetGridView;
  grdInformation.Realign;
end;


procedure TfrmLoanView.grdInformationDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Color extended period
  if (Column.FieldName = 'ExtendPrd') and (Column.Field.AsInteger>0) then
    TDBGrid(Sender).Canvas.Brush.Color := clYellow;
  // Color total cash available
  if (Column.FieldName = 'TotCashAvl') and (Column.Field.AsCurrency>0.10) and
    (Column.Field.AsCurrency > dtmLoanMan.qryLoanView.FieldByName('AccBal').AsCurrency) then
        TDBGrid(Sender).Canvas.Brush.Color := clAqua;
  // Color balance view
  if dtmLoanMan.CurLoanView = LMBalView then
  begin
  end;
  // Color age view
  if dtmLoanMan.CurLoanView = LMAgeView then
  begin
    if (Column.FieldName = 'ArrearsAmt') and (Column.Field.AsCurrency>0.10) then
      TDBGrid(Sender).Canvas.Brush.Color := clRed;
    if (Column.FieldName = 'ArrearsBucket') and (Column.Field.AsCurrency>0.10) then
      TDBGrid(Sender).Canvas.Brush.Color := clFuchsia
  end;
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  {if Column.FieldName = 'Status' then
  begin
    grdLoanView.Canvas.FillRect(Rect);
    grdLoanView.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1,
      GetLoanStatus(dtmLoanMan.qryLoanView.FieldByName('Status').AsInteger));
  end;} {if}
end;

{Views
non visible - ActiveInd
//Allways visible
0  PersonKey
1  Surname
2  LoanKey
3  LoanType

//Loan Info view
4  LoanCapital  --- AmtToFin //ww
5  MthIns       --- PayIns   //ww
6  LoanPeriod
7  IntRate
8  TotInterest

//Loan balance view
9  AccBal
10  LoanBal
11 AvlBal
12 DepositBal
18 TotCashAvl

//Loan age view
14 ArrearsBucket
15 ArrearsAmt
16 NoOfPayment,
17 ExtendPeriod
}
procedure TfrmLoanView.TimerTypeTimer(Sender: TObject);
begin
  CurrentLookUp := '';
end;

procedure TfrmLoanView.grdInformationKeyPress(Sender: TObject; var Key: Char);
begin
  CurrentLookUp := CurrentLookUp + Key;
  TDBGrid(Sender).DataSource.DataSet.Locate(LookUpFld,CurrentLookUp,
    [loCaseInsensitive,loPartialKey]);
end;

procedure TfrmLoanView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TimerType.Enabled := False;
end;

procedure TfrmLoanView.grdInformationEnter(Sender: TObject);
begin
  if TDBGrid(Sender).SelectedIndex<2 then
    LookUpFld := TDBGrid(Sender).SelectedField.FieldName
  else
    LookUpFld := TDBGrid(Sender).Fields[0].FieldName;
end;

procedure TfrmLoanView.LoadFldList;
var
 i : integer;
begin
  FldList.Clear;
  FldList.Add(fldLoanType);
  FldList.Add(fldAmtToFin);
  FldList.Add(fldPayIns);
  FldList.Add(fldLoanPrd);
  FldList.Add(fldAccBal);
  FldList.Add(fldLoanBal);
  FldList.Add(fldAvlBal);
  FldList.Add(fldDepBal);
  FldList.Add(fldArrAmt);
  FldList.Add(fldNoOfPay);
  FldList.Add(fldExtPrd);
  FldList.Add(fldArrears);
  FldList.Add(fldLastDPay);
  FldList.Add(fldLnStatus);
  FldList.Add(fldActionInd);
  FldList.Add('Paid period=payprd'); //Arrears Freq.
  //
  cbxFlds.Items.Clear;
  for i := 0 to FldList.Count-1 do
  begin
    cbxFlds.Items.Add(FldList.Names[i]);
  end;
  cbxFlds2.Items := cbxFlds.Items;
  cbxFlds.DropDownCount  := FldList.Count;
  cbxFlds2.DropDownCount := FldList.Count;
end;

function TfrmLoanView.GetPayPeriod(inOpt, inVal: string): string;
var
  DateB, DateE : TDate;
  iM : integer;
begin
  try
    iM := -1*ABS(StrToInt(inVal));
    DateB := IncMonth(Date,iM);
    DateB := StrToDate('01/'+FormatDateTime('mm/yyyy',DateB));
    DateE := DateToEndOfMonth(DateB);
    if inOpt <> '=' then
      Result := 'LastDPay'+inOpt+''''+DateToStr(DateB)+''''
    else
    begin
      Result := 'LastDPay >= '''+DateToStr(DateB)+''' and LastDPay <='''+
        DateToStr(DateE)+'''';
    end;
  except
    MesDlg('Value must be a number.','E');
    Result := '';
  end;
end;

function TfrmLoanView.GetFilter(inCBXfld, inOpt, inVal: string): string;
begin
  if inCBXfld='payprd' then // Arrears Frequency
  begin
    if inVal= '-99' then
      Result := 'LastDPay = null'
    else
      Result := GetPayPeriod(inOpt,inVal);
  end
  else
  begin
    if (inCBXfld='LoanType') or (inCBXfld='LastDPay') then
      Result := inCBXfld+inOpt+''''+inVal+''''
    else
      Result := inCBXfld+inOpt+inVal;
  end;    
end;

procedure TfrmLoanView.btnFilterDataClick(Sender: TObject);
var
 tmpFil : string;
begin
  if cbxFlds.ItemIndex = -1 then
    if cbxFlds2.ItemIndex > -1 then
      MoveFilter;                                                          
  tmpFil := '';
  try
    if edtValue.Style = csSimple then
      tmpFil := GetFilter(FldList.Values[cbxFlds.Text],cbxOps.Text,edtValue.Text)
    else
      tmpFil := GetFilter(FldList.Values[cbxFlds.Text],cbxOps.Text,
        edtValue.Items.Values[edtValue.Items.Names[edtValue.ItemIndex]]);
    if cbxFlds2.ItemIndex <> -1 then
    begin
      if edtValue2.Style = csSimple then
        tmpFil := tmpFil +' and '+ GetFilter(FldList.Values[cbxFlds2.Text],cbxOps2.Text,edtValue2.Text)
      else
        tmpFil := tmpFil +' and '+ GetFilter(FldList.Values[cbxFlds2.Text],cbxOps2.Text,
          edtValue2.Items.Values[edtValue2.Items.Names[edtValue2.ItemIndex]]);
    end;
    FilterDataSet(dtmLoanMan.qryLoanView,tmpFil);
    SetRobot(True);
  except
    MesDlg('Error in filter, could not filter data.','E');
    FilterDataSet(dtmLoanMan.qryLoanView,'');
    SetRobot(False);
  end;
end;

procedure TfrmLoanView.MoveFilter;
begin
  cbxFlds.ItemIndex := cbxFlds2.ItemIndex;
  cbxFldsChange(Self);
  cbxops.ItemIndex := cbxOps2.ItemIndex;
  if edtValue2.Style = csSimple then
    edtValue.Text := edtValue2.Text
  else
  begin
    edtValue.Style := edtValue2.Style;
    edtValue.ItemIndex := edtValue2.ItemIndex;
  end;
  cbxFlds2.ItemIndex := -1;
  cbxFlds2Change(self);
  cbxOps2.ItemIndex := -1;
  edtValue2.Text := '';
end;

procedure TfrmLoanView.btnClearFilterClick(Sender: TObject);
begin
  FilterDataSet(dtmLoanMan.qryLoanView,'');
  cbxFlds.ItemIndex := -1;
  cbxFldsChange(Self);
  cbxOps.ItemIndex := -1;
  edtValue.Text := '';
  cbxFlds2.ItemIndex := -1;
  cbxFlds2Change(Self);
  cbxOps2.ItemIndex := -1;
  edtValue2.Text := '';
  SetRobot(False);
end;

procedure TfrmLoanView.SetRobot(isReady: boolean);
begin
  imgGreen.Visible := isReady;
  imgRed.Visible   := not isReady;
  stsLoan.SimpleText := '  Number of loans : ' +
    IntToStr(dtmLoanMan.qryLoanView.RecordCount);
end;

procedure TfrmLoanView.grdInformationColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  Abort;
end;

procedure TfrmLoanView.cbxFldsChange(Sender: TObject);
begin
  SetComboFilter(cbxFlds,edtValue);
end;

procedure TfrmLoanView.cbxFlds2Change(Sender: TObject);
begin
  SetComboFilter(cbxFlds2,edtValue2);
end;

procedure TfrmLoanView.SetComboFilter(cbxFldLU,cbxFldFilter: TComboBox);
begin
  if cbxFldLU.Text = FldList.Names[FldList.IndexOf(fldLnStatus)] then
  begin
    BuildLoanStatusList(cbxFldFilter.Items);
    SetCBXStyle(True,cbxFldFilter);
  end
  else if cbxFldLU.Text = FldList.Names[FldList.IndexOf(fldActionInd)] then
  begin
    dtmLoanMan.BuildActionIndList(cbxFldFilter.Items);
    SetCBXStyle(True,cbxFldFilter);
  end
  else
    SetCBXStyle(False,cbxFldFilter);
end;

procedure TfrmLoanView.SetCBXStyle(DropDown: Boolean;
  cbxFldFilter: TComboBox);
begin
  if DropDown then
  begin
    cbxFldFilter.Style := csOwnerDrawFixed;
    cbxFldFilter.ItemHeight := 14;
    cbxFldFilter.ItemIndex := 0;
  end
  else
  begin
    cbxFldFilter.Style := csSimple;
    cbxFldFilter.Clear;
  end;
end;

procedure TfrmLoanView.edtValueDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  edtValue.Canvas.FillRect(Rect);
  edtValue.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1, edtValue.Items.Names[Index]);
end;

procedure TfrmLoanView.edtValue2DrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  edtValue2.Canvas.FillRect(Rect);
  edtValue2.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1, edtValue2.Items.Names[Index]);
end;

procedure TfrmLoanView.pcViewChange(Sender: TObject);
begin
  case pcView.ActivePageIndex of
    0: dtmLoanMan.CurLoanView := LMInfoView;
    1: dtmLoanMan.CurLoanView := LMBalView;
    2: dtmLoanMan.CurLoanView := LMAgeView;
  end;
  SetGridView;
  //grdLoanView.Realign;
end;

end.


