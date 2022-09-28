unit rptLoanBook;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  TrepLoanBook = class(TForm)
    QuickReport: TQuickRep;
    qbColHeader: TQRBand;
    qlrepTitle: TQRLabel;
    qlCpy1: TQRLabel;
    qrDprint: TQRSysData;
    shpColH: TQRShape;
    qlCurrent: TQRLabel;
    qlSToCurr: TQRLabel;
    qbPageFoot: TQRBand;
    qsdPageNo: TQRSysData;
    qlweb: TQRLabel;
    qbDetail: TQRBand;
    qdbtCurrent: TQRDBText;
    qdbtMETotals: TQRDBText;
    QRDBText45: TQRDBText;
    qrGroup: TQRGroup;
    qbGrpFoot: TQRBand;
    repTitleBand: TQRBand;
    qlrepName: TQRLabel;
    qlCpy: TQRLabel;
    qlCpyName: TQRLabel;
    qlCpyAdr: TQRLabel;
    qlAppID: TQRLabel;
    shpTitleTop: TQRShape;
    shpTitleBot: TQRShape;
    qlApp: TQRLabel;
    qdbtCurrMonth: TQRDBText;
    qdbtPrevMonth: TQRDBText;
    qlCurrMonth: TQRLabel;
    qlPrevMonth: TQRLabel;
    QRShape1: TQRShape;
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLoanMan;

{$R *.DFM}

procedure TrepLoanBook.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qlCpyName.Caption  := dtmMain.SysCpyName;
  qlCpy1.Caption     := qlCpyName.Caption;
  qlCpyAdr.Caption   := dtmMain.SysCpyDetail;
  qlrepTitle.Caption := qlrepName.Caption;
end;

procedure TrepLoanBook.FormCreate(Sender: TObject);
var
  i : integer;
begin
  if CurrencyString <> 'R' then
  begin
    for i := 0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[i] is TQRExpr) then
      begin
        (Self.Components[i] as TQRExpr).Mask := CurrencyString+'###,#0.00;('+
          CurrencyString+'###,#0.00)';
      end;
    end;
  end;
end;

end.
