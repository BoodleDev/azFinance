unit rptGLAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls;

type
  TrepGLAcc = class(TrepBasePort)
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    qlDefInt: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    AmountD: TQRLabel;
    AmountC: TQRLabel;
    qlRange: TQRLabel;
    qlDRange: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    BalAmount: Currency;
  public
    { Public declarations }
  end;

implementation

uses dmLS2GL, dmMain;

{$R *.DFM}

procedure TrepGLAcc.FormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  dtmLS2GL.DoSQLforGLAcc;
  dtmLS2GL.cdsGLReport.Open;
  if dtmLS2GL.DefIntToGL then
    qlDefInt.Enabled := True;
  if dtmLS2GL.UseDates then
    qlDRange.Caption := dtmLS2GL.DateRangeStr;
  if dtmLS2GL.UseTransNo then
    qlRange.Caption := 'Transaction range - from  '+IntToStr(dtmLS2GL.bhFromNo)+
      ' to  '+IntToStr(dtmLS2GL.bhToNo);
  Screen.Cursor := crDefault;
end;

procedure TrepGLAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmLs2GL.qryGLTDet.Close;
end;

procedure TrepGLAcc.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  BalAmount := 0.00;
//  if dtmLS2GL.DefIntToGL then
//    BalAmount := BalAmount + dtmLS2GL.qryDeferredInt.Fields[0].AsCurrency;
end;

procedure TrepGLAcc.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if  dtmLS2GL.cdsGLReport.FieldByName('DC').AsString = 'C' then
    BalAmount := BalAmount - dtmLS2GL.cdsGLReport.FieldByName('Amount').AsCurrency
  else
    BalAmount := BalAmount + dtmLS2GL.cdsGLReport.FieldByName('Amount').AsCurrency;
end;

procedure TrepGLAcc.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  AmountD.Caption := CurrToStrf(abs(BalAmount),ffCurrency,2);
  AmountC.Caption := CurrToStrf(abs(BalAmount),ffCurrency,2);
  AmountD.Enabled := BalAmount > 0;
  AmountC.Enabled := not AmountD.Enabled;
end;

end.
