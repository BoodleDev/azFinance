unit rptUserGroups;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, uConst;

type
  TrepUsergroups = class(TrepBasePort)
    QRSubDetail2: TQRSubDetail;
    ChildBand1: TQRChildBand;
    txtDescription: TQRDBText;
    txtAppFrm: TQRDBText;
    txtObject: TQRDBText;
    expObjID: TQRExpr;
    lblEnabled: TQRLabel;
    lblVisible: TQRLabel;
    ImgE: TQRImage;
    imgV: TQRImage;
    imgAE: TQRImage;
    imgAV: TQRImage;
    lblE: TQRLabel;
    lblV: TQRLabel;
    Shape: TQRShape;
    lblCode: TQRLabel;
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmSecGrp;

{$R *.DFM}

procedure TrepUsergroups.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ImgE.Enabled  := dtmSecGrp.qryFrmObj.FieldByName('ObjE').AsInteger = 1;
  ImgV.Enabled  := dtmSecGrp.qryFrmObj.FieldByName('ObjV').AsInteger = 1;
  shape.Enabled := dtmSecGrp.qryFrmObj.FieldByName('ObjE').AsInteger = 1;
  shape.Enabled := dtmSecGrp.qryFrmObj.FieldByName('ObjV').AsInteger = 1;
end;

procedure TrepUsergroups.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ImgAE.Enabled := dtmSecGrp.qryAppFrm.FieldByName('ObjE').AsInteger = 1;
  ImgAV.Enabled := dtmSecGrp.qryAppFrm.FieldByName('ObjV').AsInteger = 1;
end;

end.
