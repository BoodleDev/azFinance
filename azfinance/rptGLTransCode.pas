unit rptGLTransCode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls;

type
  TrepGLTransCode = class(TrepBasePort)
    QRExpr1: TQRExpr;
    QRDBText3: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    qlDefInt: TQRLabel;
    QRLabel6: TQRLabel;
    AmountD: TQRLabel;
    AmountC: TQRLabel;
    qlDRange: TQRLabel;
    qlRange: TQRLabel;
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

procedure TrepGLTransCode.FormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  dtmLS2GL.DoSQLforGLTrans;
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

procedure TrepGLTransCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmLs2GL.qryGLTDet.Close;
end;

procedure TrepGLTransCode.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  BalAmount := 0.00;
//  if dtmLS2GL.DefIntToGL then
//    BalAmount := BalAmount + dtmLS2GL.qryDeferredInt.Fields[0].AsCurrency;
end;

procedure TrepGLTransCode.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if  dtmLS2GL.cdsGLReport.FieldByName('DC').AsString = 'C' then
    BalAmount := BalAmount - dtmLS2GL.cdsGLReport.FieldByName('Amount').AsCurrency
  else
    BalAmount := BalAmount + dtmLS2GL.cdsGLReport.FieldByName('Amount').AsCurrency;
end;

procedure TrepGLTransCode.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  AmountD.Caption := CurrToStrf(abs(BalAmount),ffCurrency,2);
  AmountC.Caption := CurrToStrf(abs(BalAmount),ffCurrency,2);
  AmountD.Enabled := BalAmount > 0;
  AmountC.Enabled := not AmountD.Enabled;
end;

end.
