{===============================================================================
 Author  : Willene le Roux
 Date    : 21/11/2002
 Unit    : Report using transsetup table data
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
unit rptTransSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, uConst;

type
  TrepTransSetup = class(TForm)
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
    txtTransCode: TQRDBText;
    txtDescription: TQRDBText;
    txtDefaultVal: TQRDBText;
    txtGLAccount: TQRDBText;
    lblTransCode: TQRLabel;
    lblDescription: TQRLabel;
    lblDefaultVal: TQRLabel;
    lblGLAccount: TQRLabel;
    lblContraAcc: TQRLabel;
    txtContraAcc: TQRDBText;
    txtUserID: TQRDBText;
    txtDateAdded: TQRDBText;
    lblUserID: TQRLabel;
    lblDateAdd: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmTransSetup;

{$R *.DFM}

procedure TrepTransSetup.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qlCpyName.Caption   := dtmMain.SysCpyName;
  qlCpy1.Caption      := qlCpyName.Caption;
  qlCpyAdr.Caption    := dtmMain.SysCpyDetail;
  qlrepTitle.Caption  := qlrepName.Caption;
end;

procedure TrepTransSetup.FormCreate(Sender: TObject);
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
   qlAppID.Caption := IntToStr(AppID);
end;

end.
