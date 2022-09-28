unit rptConsPay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  TrepConsPay = class(TForm)
    QuickReport: TQuickRep;
    repTitleBand: TQRBand;
    shpTitleTop: TQRShape;
    shpTitleBot: TQRShape;
    qbColHeader: TQRBand;
    qlrepTitle: TQRLabel;
    qlrepName: TQRLabel;
    qlCpy: TQRLabel;
    qlCpyName: TQRLabel;
    qlCpyAdr: TQRLabel;
    qbPageFoot: TQRBand;
    qsdPageNo: TQRSysData;
    qbDetail: TQRBand;
    qrGroup: TQRGroup;
    qbGrpFoot: TQRBand;
    qlCpy1: TQRLabel;
    qrDprint: TQRSysData;
    qlweb: TQRLabel;
    shpColH: TQRShape;
    qlAppID: TQRLabel;
    qlApp: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repConsPay : TrepConsPay;

implementation

uses dmMain, dmLS;

{$R *.DFM}

procedure TrepConsPay.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qlCpyName.Caption  := dtmMain.SysCpyName;
  qlCpy1.Caption     := qlCpyName.Caption;
  qlCpyAdr.Caption   := dtmMain.SysCpyDetail;
  qlrepTitle.Caption := qlrepName.Caption;
end;

procedure TrepConsPay.FormCreate(Sender: TObject);
var
  i : integer;
begin
  if CurrencyString <> 'R' then
  begin
    for i := 0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[i] is TQRExpr) then
      begin
        (Self.Components[i] as TQRExpr).Mask := CurrencyString+'###,###,###,#0.00;('+
          CurrencyString+'###,###,###,#0.00)';
      end;
    end;
  end;
end;

end.
