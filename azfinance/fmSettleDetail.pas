//~~ limit deposit balance
unit fmSettleDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, Unit32, NoEdit, dmSettle, uFinMath, ComCtrls,QuickRpt, Qrctrls,
  Menus;

type
  TCurFunction = function(I : integer):Currency; stdcall;
  TfrmSettleDetail = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    lblSetteHead: TLabel;
    Label3: TLabel;
    lblLoanBal: TLabel;
    lblArrInt: TLabel;
    lblSettleFee: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    lblTotal: TLabel;
    Label7: TLabel;
    chkDepBal: TCheckBox;
    lblFinal: TLabel;
    lblDepBal: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblDiscount: TLabel;
    Label5: TLabel;
    btnSettleAcc: TSpeedButton;
    btnPrint: TSpeedButton;
    edtDiscount: TNoEdit;
    edtSettle: TNoEdit;
    chkIntToD: TCheckBox;
    lblLoanInd2: TLabel;
    dtpSettleDate: TDateTimePicker;
    edtIntToDate: TEdit;
    procedure chkDepBalClick(Sender: TObject);
    procedure btnSettleAccClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure chkIntToDClick(Sender: TObject);
    procedure edtSettleChange(Sender: TObject);
    procedure edtDiscountChange(Sender: TObject);
    procedure edtSettleKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtpSettleDateChange(Sender: TObject);
    procedure edtIntToDateKeyPress(Sender: TObject; var Key: Char);
    procedure edtIntToDateChange(Sender: TObject);
    procedure edtIntToDateExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    LabelTop  : Integer;
    dtmSettle : TdtmSettle;
    LoanBal   : Currency;
    IntToDate : Currency;
    ArrInt    : Currency;
    DepBal    : Currency;
    SettleFee : Currency;
    Discount  : Currency;
    tmpInt, tmpDep : Currency;
    TotalSettle : Currency; //only for display reasons
    FinalSettle : Currency; //only for display reasons
    procedure RefreshTotalsLabels;
    function SettleThisLoan: Boolean;
    procedure SetLabels;
    procedure SetFinalSettleAmt;
    function CallDll(DllName, DllFunc:string; inLoanID:integer): Currency;
//    procedure SetRepObject(QlblName: array of TQRCustomLabel; QShpName : Array of TQRShape; ChkVisible, ExtraLBL : Boolean);
    procedure EditInterestToDate;
  public
    { Public declarations }
    procedure ShowSettlementDetail(inLoanID:integer);
  end;

implementation

uses uLSConst, rptSettle, dmMain, dmSecFrm;

{$R *.DFM}

procedure TfrmSettleDetail.ShowSettlementDetail(inLoanID:integer);
begin
  Screen.Cursor := crHourGlass;
  dtmSettle.SettleDate := dtpSettleDate.Date;
  dtmSettle.CurLoanID := inLoanID;
  try
    edtSettle.OnChange   := nil;
    edtDiscount.OnChange := nil;
    // Assign values
    LoanBal  := dtmSettle.GetCapitalBal;
    // Check for loan startdate bigger than ME date
    IntToDate:= dtmSettle.GetIntUpToDate;
    ArrInt   := dtmSettle.GetArrBucket;
    DepBal   := dtmSettle.GetDepBal;
    Discount := 0;
    if (FileExists(AppDir+'Settlement.dll')) and (LoanBal>0.01) then
      SettleFee := CallDll('Settlement.dll','GetSettlementFee',inLoanID)
    else
      SettleFee := 0.00;
    SetFinalSettleAmt;
    // Use form values
    lblSetteHead.Caption := 'Settlement detail for Loan No. '+
      dtmSettle.qryGetLDS.FieldByName('RefNo').AsString+' on '+DateToStr(dtpSettleDate.Date);
    SetLabels;
    edtSettle.OnChange   := edtSettleChange;
    edtDiscount.OnChange := edtDiscountChange;
//    btnSettleAcc.Enabled := ((LoanBal > 0.01) and (LoanBal < -0.01));
  finally
    Screen.Cursor := crDefault;
  end;
  if not self.Visible then Self.ShowModal;
end;

procedure TfrmSettleDetail.RefreshTotalsLabels;
begin
  lblTotal.Caption := FloatToStrF(TotalSettle,ffCurrency,15,2);
  lblFinal.Caption := FloatToStrF(FinalSettle,ffCurrency,15,2)
end;

procedure TfrmSettleDetail.SetFinalSettleAmt;
begin
  tmpInt := IntToDate;
  tmpDep := DepBal;
  //
  TotalSettle := LoanBal+ArrInt;
  //
  if chkIntToD.Checked then
    TotalSettle := TotalSettle + IntToDate
  else
    tmpInt := 0;
  //
  if chkDepBal.Checked then
    TotalSettle := TotalSettle + DepBal
  else
    tmpDep := 0;
  //
  FinalSettle := TotalSettle + SettleFee - Discount;
  RefreshTotalsLabels;
end;

procedure TfrmSettleDetail.chkIntToDClick(Sender: TObject);
begin
  SetFinalSettleAmt;
  if chkIntToD.Checked then
    //lblIntToDate.Caption := FloatToStrF(IntToDate,ffCurrency,15,2)
    edtIntToDate.Text := FormatFloat('#,##0.00',IntToDate)//FloatToStrF(IntToDate,ffCurrency,15,2)
  else
    //lblIntToDate.Caption := FloatToStrF(0.00,ffCurrency,15,2);
    edtIntToDate.Text := FormatFloat('#,##0.00',0);//FloatToStrF(0.00,ffCurrency,15,2)
end;

procedure TfrmSettleDetail.chkDepBalClick(Sender: TObject);
begin
  SetFinalSettleAmt;
  if chkDepBal.Checked then
    lblDepBal.Caption := FloatToStrF(DepBal,ffCurrency,15,2)
  else
    lblDepBal.Caption := FloatToStrF(0.00,ffCurrency,15,2);
end;

procedure TfrmSettleDetail.btnSettleAccClick(Sender: TObject);
begin
  if MesDlg('Are you sure you want to settle this account with'#10#13+
    'an amount of: '+lblFinal.Caption,'C') = mrYes then
  begin
    //Do settlement
    Screen.Cursor := crHourGlass;
    try
      if SettleThisLoan then
        Close;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

function TfrmSettleDetail.SettleThisLoan: Boolean;
begin
  try
    if dtmSettle.GetLoanStatus in [lnsApproved,lnsOpen{,lnsExtended}] then
    begin
      // Get new batch number
      dtmSettle.SetSettlementBatchNo;
      if LoanBal > 0 then
        dtmSettle.SettleThisLoan(LoanBal,tmpInt,ArrInt,tmpDep,SettleFee,Discount)
      else
        dtmSettle.SettleLoanMinus(LoanBal);
      // Show batch number
      MesDlg('The loan was settled with batch number: '+dtmSettle.ShowBatchNo,'I');
      Result := True;
    end
    else
    begin
      MesDlg('Can not settle loan in this status.','E');
      Result := False;
    end;
  except
    Result := False;
  end;
end;

function TfrmSettleDetail.CallDll(DllName, DllFunc: string;
  inLoanID:integer): Currency;
var
  HInst : THandle;
  FPointer : TFarProc;
  SettleFunct : TCurFunction;
begin
  Result := 0.00;
  HInst := LoadLibrary(PChar(DllName));
  if HInst > 0 then
    try
      FPointer := GetProcAddress(HInst,PChar(DllFunc));
      if FPointer <> nil then
      begin
        SettleFunct := TCurFunction(FPointer);
        Result := SettleFunct(inLoanID);
      end;
    finally
      FreeLibrary(HInst);
    end
  else
    ShowMessage(DllName +' library not found.');
end;

procedure TfrmSettleDetail.SetLabels;
begin
  lblLoanBal.Caption   := FloatToStrF(LoanBal,ffCurrency,15,2);
  //lblIntToDate.Caption := FloatToStrF(IntToDate,ffCurrency,15,2);
  edtIntToDate.Text    := FormatFloat('#,##0.00',IntToDate);//FloatToStrF(IntToDate,ffCurrency,15,2);
  lblArrInt.Caption    := FloatToStrF(ArrInt,ffCurrency,15,2);
  lblSettleFee.Caption := FloatToStrF(SettleFee,ffCurrency,15,2);
  edtSettle.Text       := FloatToStrF(SettleFee,ffFixed,15,2);
  lblDepBal.Caption    := FloatToStrF(DepBal,ffCurrency,15,2);
  lblTotal.Caption     := FloatToStrF(TotalSettle,ffCurrency,15,2);
  lblFinal.Caption     := FloatToStrF(FinalSettle,ffCurrency,15,2);
end;

// WW 08/02/2001  - composes the settlement report fields
procedure TfrmSettleDetail.btnPrintClick(Sender: TObject);
var
  SettleReport : TrepSettle;
begin
  LabelTop := 218;
  SettleReport := TrepSettle.Create(nil);
  try
    {if not btnSettleAcc.Enabled then
    SettleReport.qlrepName.Caption     := 'Provisional Early Settlement '+
        'Notice for effect '+ DateToStr(dtpSettleDate.Date);   }
    SettleReport.lblLoanBal.Caption    := FloatToStrF(LoanBal,ffCurrency,15,2);
    SettleReport.qlSettleDate1.Caption := 'THIS SETTLEMENT QUOTATION IS VALID UNTIL ' +
      DateToStr(dtpSettleDate.Date);
    SettleReport.qlSettleDate2.Caption := 'The Settlement Quotation reflected herein is valid until ' +
      DateToStr(dtpSettleDate.Date) + ' ("the Settlement Date").';
    SettleReport.qlSettleDate3.Caption := DateToStr(dtpSettleDate.Date);

    SettleReport.qlRefNo.Caption := 'LOAN REFERENCE NO: ' + dtmSettle.qryGetLDS.FieldByName('RefNo').AsString;
    SettleReport.LoanRef := dtmSettle.qryGetLDS.FieldByName('RefNo').AsString;
    SettleReport.qlUserID.Caption := dtmMain.CurrentID;

  {  if chkIntToD.Checked then
    begin  }
      SettleReport.lblIntToDate.Caption  := FloatToStrF(IntToDate,ffCurrency,15,2);
      //SetRepObject([SettleReport.lblIntToDateTitle, SettleReport.lblIntToDate],[], True, False);
  {  end
    else
    begin
      SettleReport.lblIntToDate.Enabled      := False;
      SettleReport.lblIntToDateTitle.Enabled := False;
      SetRepObject([SettleReport.lblTotal],[SettleReport.shpMain, SettleReport.shpLine], False, False); 
    end;   }

    //SettleReport.lblArrInt.Caption  := FloatToStrF(ArrInt,ffCurrency,15,2);
    
{   SetRepObject([SettleReport.lblArrIntTitle, SettleReport.lblArrInt],[], True, False);
    if chkDepBal.Checked then
    begin   }
      SettleReport.lblDepBal.Caption  := FloatToStrF(DepBal,ffCurrency,15,2);
  {    SetRepObject([SettleReport.lblDepBalTitle, SettleReport.lblDepBal],[], True, False);
    end
    else
    begin
      SettleReport.lblDepBal.enabled      := False;
      SettleReport.lblDepBalTitle.Enabled := False;
     SetRepObject([SettleReport.lblTotal],[SettleReport.shpMain, SettleReport.shpLine], False, False);
    end;      }
(*    SetRepObject([SettleReport.lblSettlefee, SettleReport.lblSettleFeeTitle],[], True, True);
    SetRepObject([SettleReport.lblDiscountTitle, SettleReport.lblDiscount],[], True, True);
    SetRepObject([SettleReport.lblFinalTitle, SettleReport.lblFinal],[SettleReport.shpBottomTop ,SettleReport.shpBottomLine], True, True);
    SettleReport.lblTotal.Caption      := FloatToStrF(TotalSettle,ffCurrency,15,2);  *)
    SettleReport.lblAdditionalCharges.Caption  := FloatToStrF(SettleFee,ffCurrency,15,2);
    //SettleReport.lblDiscount.Caption   := FloatToStrF(Discount,ffCurrency,15,2);
    SettleReport.lblFinal.Caption      := FloatToStrF(FinalSettle,ffCurrency,15,2);
    SettleReport.QuickReport.Preview;
  finally
    SettleReport.Free;
  end;

end;

procedure TfrmSettleDetail.edtSettleChange(Sender: TObject);
begin
  if Trim(edtSettle.Text) <> '' then
    SettleFee := StrToFloat(edtSettle.Text)
  else
    SettleFee := 0;
  SetFinalSettleAmt;
end;

procedure TfrmSettleDetail.edtDiscountChange(Sender: TObject);
begin
  if Trim(edtDiscount.Text) <> '' then
    Discount := StrToFloat(edtDiscount.Text)
  else
    Discount := 0;
  SetFinalSettleAmt;
end;

procedure TfrmSettleDetail.edtSettleKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key='-' then
    Abort;
end;

procedure TfrmSettleDetail.FormCreate(Sender: TObject);
begin
  dtpSettleDate.DateTime := date;
  dtmSettle := TdtmSettle.Create(Self);
  dtmSettle.dbSettle.Connected := False;
  dtmSettle.dbSettle.ConnectionString := dtmMain.dbData.ConnectionString;
  dtmSettle.dbSettle.Connected := True;
end;

procedure TfrmSettleDetail.FormDestroy(Sender: TObject);
begin
  dtmSettle.dbSettle.Connected := False;
  dtmSettle.dbSettle.ConnectionString := '';
  dtmSettle.Free;
  dtmSettle := nil;
end;

// V - 20/11/2003 Set the settle date
procedure TfrmSettleDetail.dtpSettleDateChange(Sender: TObject);
begin
//  btnSettleAcc.Enabled := dtmSecFrm.CanEnable(btnSettleAcc) and (dtpSettleDate.DateTime = date);
  ShowSettlementDetail(dtmSettle.CurLoanID);
end;

//procedure TfrmSettleDetail.SetRepObject(QlblName: array of TQRCustomLabel; QShpName : Array of TQRShape;
//                           ChkVisible, ExtraLBL : Boolean);
//var
//  i: Integer;
//  QLabel : TQRCustomLabel;
//  QShape : TQRShape;
//
//begin
//  if not ChkVisible then
//  begin
//    for i := Low(QlblName) to High(QlblName) do
//    begin
//      QLabel := QlblName[i];
//      if QLabel.Name = 'lblTotal' then
//        QLabel.Top := QLabel.Top - 19
//      else
//        QLabel.Top := QLabel.Top - 20;
//    end;
//    for i := Low(QShpName) to High(QShpName) do
//    begin
//      QShape := QShpName[i];
//      if QShape.Name = 'shpLine' then
//        QShape.Top := QShape.Top - 20
//      else
//        QShape.Height := QShape.Height - 20;
//    end;
//  end
//  else
//  begin
//    for i := Low(QShpName) to High(QShpName) do
//    begin
//      QShape := QShpName[i];
//      QShape.Top := (LabelTop + (20*(i+1))) + 20;
//    end;
//    for i := Low(QlblName) to High(QlblName) do
//    begin
//      QLabel := QlblName[i];
//      if ExtraLBL then
//        QLabel.Top := LabelTop + 40
//      else
//        QLabel.Top := LabelTop;
//    end;
//    LabelTop := LabelTop + 20;
//  end;
//end;

procedure TfrmSettleDetail.edtIntToDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = Char(vk_Return) then
    EditInterestToDate;
end;

procedure TfrmSettleDetail.EditInterestToDate;
begin
  IntToDate := StrToFloat(StringReplace(edtIntToDate.Text,',','',[rfReplaceAll]));
  SetFinalSettleAmt;
end;

procedure TfrmSettleDetail.edtIntToDateChange(Sender: TObject);
begin
  if edtIntToDate.Text <> '' then
    EditInterestToDate;
end;

procedure TfrmSettleDetail.edtIntToDateExit(Sender: TObject);
begin
  if edtIntToDate.Text = '' then
    edtIntToDate.Text := '0.00';
  EditInterestToDate;
end;

procedure TfrmSettleDetail.FormShow(Sender: TObject);
begin
  dtmSecFrm.SetForm(Self);
end;

end.

