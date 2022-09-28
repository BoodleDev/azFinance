unit fmSettleArrears;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NumEdit;

type
  TfrmSettleArrears = class(TForm)
    sclMain: TScrollBox;
    lblDate: TLabel;
    lblArrearsAmt: TLabel;
    lblArrearsInt: TLabel;
    lblIntCharged: TLabel;
    lblIntToDate: TLabel;
    lblAddCharges: TLabel;
    lblAddPayments: TLabel;
    lblTotal: TLabel;
    bvlTotal: TBevel;
    bvlDate: TBevel;
    imgExpandArrears: TImage;
    imgExpandCharges: TImage;
    dtpSettleDate: TDateTimePicker;
    edtArrearsAmt: TNumEdit;
    edtArrearsInt: TNumEdit;
    edtIntCharged: TNumEdit;
    edtIntToDate: TNumEdit;
    edtAddCharges: TNumEdit;
    edtAddPayments: TNumEdit;
    edtTotal: TNumEdit;
    imgRetractArrears: TImage;
    imgRetractCharges: TImage;
    procedure dtpSettleDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgExpandArrearsClick(Sender: TObject);
    procedure imgRetractArrearsClick(Sender: TObject);
    procedure imgRetractChargesClick(Sender: TObject);
  private
    IntArray: array of array of string;
    CharArray: array of array of string;
    FLoanID: Integer;
    FSettleDate: TDate;
    procedure SetSettleDate(const Value: TDate);
    procedure CalculateSettlement;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
    property SettleDate: TDate read FSettleDate write SetSettleDate;
  end;

var
  frmSettleArrears: TfrmSettleArrears;

const
  LineHeight = 15;

implementation

uses dmSettleArrears, dmMain;

{$R *.dfm}

{ TfrmSettleArrears }

procedure TfrmSettleArrears.SetSettleDate(const Value: TDate);
begin
  FSettleDate := Value;
  CalculateSettlement;
end;

procedure TfrmSettleArrears.dtpSettleDateChange(Sender: TObject);
begin
  SettleDate := dtpSettleDate.Date;
end;

procedure TfrmSettleArrears.FormShow(Sender: TObject);
begin
  dtpSettleDate.Date := Date;
  dtpSettleDateChange(dtpSettleDate);
end;

procedure TfrmSettleArrears.CalculateSettlement;
var
  AddCharges: Currency;
  AddPayments: Currency;
  ArrearsAmt: Currency;
  IntCharged: Currency;
  IntToDate: Currency;
begin
  with dtmSettleArrears do
  begin
    try
   {   ArrearsAmt := GetArrearsAmount(LoanID, SettleDate);
      dsInterestSum.Parameters[0].Value := LoanID;
      dsInterestSum.Open;
      IntCharged := dsInterestSum.Fields[0].AsCurrency;

      dsChargesSum.Parameters[0].Value := LoanID;
      dsChargesSum.Open;
      AddCharges := dsChargesSum.Fields[0].AsCurrency;

      if ArrearsAmt < 0 then
      begin
        AddPayments := ArrearsAmt;
        ArrearsAmt := 0;
      end
      else
        AddPayments := 0;

      IntToDate := CalcArrearsIntToDate(LoanID, SettleDate);

      edtArrearsAmt.Text := FormatFloat('#,##0.00',ArrearsAmt);
      edtIntCharged.Text := FormatFloat('#,##0.00', IntCharged);
      edtIntToDate.Text  := FormatFloat('#,##0.00',IntToDate);

      edtArrearsInt.Text := FormatFloat('#,##0.00', IntCharged + IntToDate);

      edtAddCharges.Text := FormatFloat('#,##0.00', AddCharges);
      edtAddPayments.Text := FormatFloat('#,##0.00', AddPayments);

      edtTotal.Text := FormatFloat('#,##0.00',ArrearsAmt + IntCharged +
        IntToDate + AddCharges + AddPayments);                }

      CalculateSettlement(LoanID, SettleDate, ArrearsAmt,
        AddPayments, AddCharges, IntCharged, IntToDate);

      edtArrearsAmt.Text := FormatFloat('#,##0.00',ArrearsAmt);
      edtIntCharged.Text := FormatFloat('#,##0.00', IntCharged);
      edtIntToDate.Text  := FormatFloat('#,##0.00',IntToDate);

      edtArrearsInt.Text := FormatFloat('#,##0.00', IntCharged + IntToDate);

      edtAddCharges.Text := FormatFloat('#,##0.00', AddCharges);
      edtAddPayments.Text := FormatFloat('#,##0.00', AddPayments);

      edtTotal.Text := FormatFloat('#,##0.00',ArrearsAmt + IntCharged +
        IntToDate + AddCharges + AddPayments);
    finally
      dsInterestSum.Close;
      dsChargesSum.Close;
    end;
  end;
end;

procedure TfrmSettleArrears.imgExpandArrearsClick(Sender: TObject);
var
  DisplayHeight: Integer;
  lblControl: TLabel;
  I, J: Integer;
begin
  try
    Screen.Cursor := crHourGlass;

    if Sender = imgExpandArrears then
    begin
      if Length(IntArray) = 0 then
      begin
        with dtmSettleArrears do
        begin
          try
            dsInterestTrans.Parameters[0].Value := LoanID;
            dsInterestTrans.Open;
            SetLength(IntArray,dsInterestTrans.RecordCount,4);
            dsInterestTrans.First;
            while not dsInterestTrans.Eof do
            begin
              IntArray[dsInterestTrans.RecNo -1, 0] := dsInterestTrans.FieldByName('EffectDate').AsString;
              IntArray[dsInterestTrans.RecNo -1, 1] := dsInterestTrans.FieldByName('Description').AsString;
              IntArray[dsInterestTrans.RecNo -1, 2] := dsInterestTrans.FieldByName('RefNo').AsString;
              IntArray[dsInterestTrans.RecNo -1, 3] := FormatFloat('#,##0.00',dsInterestTrans.FieldByName('Amount').AsCurrency);
              dsInterestTrans.Next;
            end;
          finally
            dsInterestTrans.Close;
          end;
        end;
      end;
      imgExpandArrears.Hide;
      imgRetractArrears.Show;

      if Length(IntArray) > 0 then
      begin
        DisplayHeight := (Length(IntArray) + 1) * LineHeight;

        for I := 0 to sclMain.ControlCount - 1 do
          if sclMain.Controls[I].Top > TImage(Sender).Top + 10 then
            sclMain.Controls[I].Top := sclMain.Controls[I].Top + DisplayHeight;

        for I := Low(IntArray) to High(IntArray) do
        begin
          for J := 0 to 3 do
          begin
            lblControl := TLabel.Create(Self);
            lblControl.Name := 'lblArrears' + IntToStr(I) + IntToStr(J);
            lblControl.Parent := sclMain;
            lblControl.Caption := IntArray[I, J];
            lblControl.Top := edtIntCharged.Top + edtIntCharged.Height + ((I + 1) * LineHeight);
            lblControl.AutoSize := False;
            lblControl.Color := clWhite;
            case J of
              0:  begin
                    lblControl.Left := 50;
                    lblControl.Width := 70;
                  end;
              1:  begin
                    lblControl.Left := 120;
                    lblControl.Width := 140;
                  end;
              2:  begin
                    lblControl.Left := 260;
                    lblControl.Width := 50;
                  end;
              3:  begin
                    lblControl.Left := 310;
                    lblControl.Width := 65;
                    lblControl.Alignment := taRightJustify;
                  end;
            end;
          end;
        end;
      end;
    end
    else
    begin
      if Length(CharArray) = 0 then
      begin
        with dtmSettleArrears do
        begin
          try
            dsChargesTrans.Parameters[0].Value := LoanID;
            dsChargesTrans.Open;
            SetLength(CharArray, dsChargesTrans.RecordCount, 4);
            dsChargesTrans.First;
            while not dsChargesTrans.Eof do
            begin
              CharArray[dsChargesTrans.RecNo -1, 0] := dsChargesTrans.FieldByName('EffectDate').AsString;
              CharArray[dsChargesTrans.RecNo -1, 1] := dsChargesTrans.FieldByName('Description').AsString;
              CharArray[dsChargesTrans.RecNo -1, 2] := dsChargesTrans.FieldByName('RefNo').AsString;
              CharArray[dsChargesTrans.RecNo -1, 3] := FormatFloat('#,##0.00',dsChargesTrans.FieldByName('Amount').AsCurrency);
              dsChargesTrans.Next;
            end;
          finally
            dsChargesTrans.Close;
          end;
        end;
      end;
      imgExpandCharges.Hide;
      imgRetractCharges.Show;

      if Length(CharArray) > 0 then
      begin
        DisplayHeight := (Length(CharArray) + 1) * LineHeight;

        for I := 0 to sclMain.ControlCount - 1 do
          if sclMain.Controls[I].Top > TImage(Sender).Top + 10 then
            sclMain.Controls[I].Top := sclMain.Controls[I].Top + DisplayHeight;

        for I := Low(CharArray) to High(CharArray) do
        begin
          for J := 0 to 3 do
          begin
            lblControl := TLabel.Create(Self);
            lblControl.Name := 'lblCharges' + IntToStr(I) + IntToStr(J);
            lblControl.Parent := sclMain;
            lblControl.Caption := CharArray[I, J];
            lblControl.Top := edtAddCharges.Top + edtAddCharges.Height + ((I + 1) * LineHeight);
            lblControl.AutoSize := False;
            lblControl.Color := clWhite;
            case J of
              0:  begin
                    lblControl.Left := 50;
                    lblControl.Width := 70;
                  end;
              1:  begin
                    lblControl.Left := 120;
                    lblControl.Width := 140;
                  end;
              2:  begin
                    lblControl.Left := 260;
                    lblControl.Width := 50;
                  end;
              3:  begin
                    lblControl.Left := 310;
                    lblControl.Width := 65;
                    lblControl.Alignment := taRightJustify;
                  end;
            end;
          end;
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSettleArrears.imgRetractArrearsClick(Sender: TObject);
var
  I, J: Integer;
  lblControl: TControl;
  DisplayHeight: Integer;
begin
  imgExpandArrears.Show;
  imgRetractArrears.Hide;

  for I := Low(IntArray) to High(IntArray) do
  begin
    for J := 0 to 3 do
    begin
      lblControl := TControl(FindComponent('lblArrears' + IntToStr(I) + IntToStr(J)));
      if lblControl <> nil then
        FreeAndNil(lblControl);
    end;
  end;
  if Length(IntArray) > 0 then
  begin
    DisplayHeight := (Length(IntArray) + 1) * LineHeight;

    for I := 0 to sclMain.ControlCount - 1 do
      if sclMain.Controls[I].Top > TImage(Sender).Top + 10 then
        sclMain.Controls[I].Top := sclMain.Controls[I].Top - DisplayHeight;
  end;
end;

procedure TfrmSettleArrears.imgRetractChargesClick(Sender: TObject);
var
  I, J: Integer;
  lblControl: TControl;
  DisplayHeight: Integer;
begin
  imgExpandCharges.Show;
  imgRetractCharges.Hide;

  for I := Low(CharArray) to High(CharArray) do
  begin
    for J := 0 to 3 do
    begin
      lblControl := TControl(FindComponent('lblCharges' + IntToStr(I) + IntToStr(J)));
      if lblControl <> nil then
        FreeAndNil(lblControl);
    end;
  end;
  if Length(CharArray) > 0 then
  begin
    DisplayHeight := (Length(CharArray) + 1) * LineHeight;

    for I := 0 to sclMain.ControlCount - 1 do
      if sclMain.Controls[I].Top > TImage(Sender).Top + 10 then
        sclMain.Controls[I].Top := sclMain.Controls[I].Top - DisplayHeight;
  end;
end;

procedure TfrmSettleArrears.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;

end.
