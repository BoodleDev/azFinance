unit rptGLContra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, Db, Grids, DBGrids;

type
  TrepGLContra = class(TrepBasePort)
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape1: TQRShape;
    qlDRange: TQRLabel;
    qlRange: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmLS2GL;

{$R *.DFM}

procedure TrepGLContra.FormCreate(Sender: TObject);
begin
  inherited;
  if dtmLS2GL.UseDates then
    qlDRange.Caption := dtmLS2GL.DateRangeStr;
  if dtmLS2GL.UseTransNo then
    qlRange.Caption := 'Transaction range - from  '+IntToStr(dtmLS2GL.bhFromNo)+
      ' to  '+IntToStr(dtmLS2GL.bhToNo);
end;

end.
