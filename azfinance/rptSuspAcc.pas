unit rptSuspAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, Unit32;

type
  TrepSuspAcc = class(TrepBasePort)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repSuspAcc: TrepSuspAcc;

implementation

uses dmBatchSusp;

{$R *.DFM}

procedure TrepSuspAcc.FormCreate(Sender: TObject);
begin
  inherited;
  case MesDlg('Do you want to view all transactions?', 'C') of
    mrNo: begin
            qrGroup.Enabled := False;
            qbDetail.Enabled := False;
          end;
    //mrCancel:
  end;
end;

end.
