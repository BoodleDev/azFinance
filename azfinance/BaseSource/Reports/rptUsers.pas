unit rptUsers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, uConst;

type
  TrepUsers = class(TrepBasePort)
    ChildBand1: TQRChildBand;
    txtGroup: TQRDBText;
    lblName: TQRLabel;
    lblSurname: TQRLabel;
    lblUserID: TQRLabel;
    lblApp: TQRLabel;
    txtName: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmUsers;

{$R *.DFM}

end.
