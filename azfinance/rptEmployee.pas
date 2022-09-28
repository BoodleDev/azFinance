{===============================================================================
 Programmer             : Wynand Wessels
 Date                   : 25/01/2001
 Unit                   : Prints the report for use with employers.
 PreConditions          : none.
 PostConditions         : none.
 History                :
 ==============================================================================}
unit rptEmployee;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLandTag, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepEmployee = class(TrepBaseLandTag)
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    qrLogo: TQRImage;
    QRDBText5: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmReports;

{$R *.DFM}

procedure TrepEmployee.FormCreate(Sender: TObject);
begin
  inherited;
{  if FileExists('\\summitsrvr\gtdata\ls2data\logo.jpg') then
  begin
   // qrLogo.Picture.LoadFromFile(ReadIniStr(ls2IniFile,'Path','Main')+'\logo.jpg');
    qrLogo.Picture.LoadFromFile('\\summitsrvr\gtdata\ls2data\logo.jpg');
  end
}
end;

end.
