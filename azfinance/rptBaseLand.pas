unit rptBaseLand;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  TrepBaseLand = class(TForm)
    QuickReport: TQuickRep;
    qbColHeader: TQRBand;
    qlrepTitle: TQRLabel;
    qlCpy1: TQRLabel;
    qrDprint: TQRSysData;
    shpColH: TQRShape;
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
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TrepBaseLand.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qlCpyName.Caption   := dtmMain.SysCpyName;
  qlCpyAdr.Caption    := dtmMain.SysCpyDetail;
//  qlBranchName.Caption:= dtmMain.CurBranchName;
  qlrepTitle.Caption := qlrepName.Caption;
  qlCpy1.Caption   := dtmMain.SysCpyName;
end;

procedure TrepBaseLand.FormCreate(Sender: TObject);
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
