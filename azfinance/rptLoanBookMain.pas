unit rptLoanBookMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  TrepLoanBookMain = class(TForm)
    QuickReport: TQuickRep;
    qbColHeader: TQRBand;
    qlrepTitle: TQRLabel;
    qlCpy1: TQRLabel;
    qrDprint: TQRSysData;
    shpColH: TQRShape;
    lblCurrent: TQRLabel;
    qlPrevMonth: TQRLabel;
    qlCurrMonth: TQRLabel;
    lblSToCurr: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    qlTotCrRcvd: TQRLabel;
    qlAmtDue: TQRLabel;
    qlTotAddDC: TQRLabel;
    qlTotIntEarned: TQRLabel;
    qlTotDepInt: TQRLabel;
    ql30Days: TQRLabel;
    ql150Days: TQRLabel;
    ql60Days: TQRLabel;
    ql120Days: TQRLabel;
    ql90Days: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    qbPageFoot: TQRBand;
    qsdPageNo: TQRSysData;
    qlweb: TQRLabel;
    qbDetail: TQRBand;
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
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
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

procedure TrepLoanBookMain.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qlCpyName.Caption   := dtmMain.SysCpyName;
  qlCpyAdr.Caption    := dtmMain.SysCpyDetail;
//  qlBranchName.Caption:= dtmMain.CurBranchName;
  qlrepTitle.Caption := qlrepName.Caption;
  qlCpy1.Caption   := dtmMain.SysCpyName;
end;

procedure TrepLoanBookMain.FormCreate(Sender: TObject);
var
  i : integer;
begin
//  repAcc.qbDetail.Enabled := MesDlg('Print deltails?','C') = mrYes;
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
