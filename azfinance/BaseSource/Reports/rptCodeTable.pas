{===============================================================================
 Author  : Willene le Roux
 Date    : 21/11/2002
 Unit    : Report using code table data
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

unit rptCodeTable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, uConst;

type
  TrepCodeTable = class(TForm)
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
    lblDescription: TQRLabel;
    lblDateAdd: TQRLabel;
    lblUserID: TQRLabel;
    txtDescription: TQRDBText;
    txtDateAdd: TQRDBText;
    txtUserID: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
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

uses dmMain, dmCodeTbl;

{$R *.DFM}

procedure TrepCodeTable.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qlCpyName.Caption  := dtmMain.SysCpyName;
  qlCpy1.Caption     := qlCpyName.Caption;
  qlCpyAdr.Caption   := dtmMain.SysCpyDetail;
  qlrepTitle.Caption := qlrepName.Caption;
end;

procedure TrepCodeTable.FormCreate(Sender: TObject);
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
