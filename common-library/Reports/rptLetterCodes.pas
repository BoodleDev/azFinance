unit rptLetterCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls;

type
  TrepLettercodes = class(TrepBasePort)
    txtCodeID: TQRDBText;
    txtName: TQRDBText;
    txtFieldName: TQRDBText;
    txtDescription: TQRDBText;
    txtApplication: TQRDBText;
    lblCodeID: TQRLabel;
    lblName: TQRLabel;
    lblFieldName: TQRLabel;
    lblDescription: TQRLabel;
    lblApplication: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmLoadLet;

{$R *.DFM}

end.
