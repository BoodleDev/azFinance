unit rptCube;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLand, QuickRpt, Qrctrls, ExtCtrls, db;

type
  TrepCube = class(TrepBaseLand)
    ql8: TQRLabel;
    ql7: TQRLabel;
    ql6: TQRLabel;
    ql5: TQRLabel;
    ql4: TQRLabel;
    ql3: TQRLabel;
    ql2: TQRLabel;
    ql1: TQRLabel;
    qdbt0: TQRDBText;
    qdbt1: TQRDBText;
    qdbt2: TQRDBText;
    qdbt3: TQRDBText;
    qdbt4: TQRDBText;
    qdbt5: TQRDBText;
    qdbt6: TQRDBText;
    qdbt7: TQRDBText;
    qdbt8: TQRDBText;
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    iCnt, iTot : integer;
    procedure SetFontStyle(fntStyle : TFontStyles);
  public
    { Public declarations }
    procedure SetRepDataSet(DataSet : TDataSet);
  end;

implementation

{$R *.DFM}

{ TrepCube }

procedure TrepCube.SetRepDataSet(DataSet: TDataSet);
begin
  QuickReport.DataSet := DataSet;
  qdbt0.DataSet := DataSet;
  qdbt1.DataSet := DataSet;
  qdbt2.DataSet := DataSet;
  qdbt3.DataSet := DataSet;
  qdbt4.DataSet := DataSet;
  qdbt5.DataSet := DataSet;
  qdbt6.DataSet := DataSet;
  qdbt7.DataSet := DataSet;
  qdbt8.DataSet := DataSet;
end;

procedure TrepCube.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  iCnt := 0;
  iTot := QuickReport.DataSet.RecordCount-1;
end;

procedure TrepCube.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if Self.Tag <> 10 then
  begin
    if (iCnt=0) or (iCnt=iTot) then
      SetFontStyle([fsBold])
    else
      SetFontStyle([]);
    Inc(iCnt);
  end;
end;

procedure TrepCube.SetFontStyle(fntStyle: TFontStyles);
begin
  qdbt0.Font.Style := fntStyle;
  qdbt1.Font.Style := fntStyle;
  qdbt2.Font.Style := fntStyle;
  qdbt3.Font.Style := fntStyle;
  qdbt4.Font.Style := fntStyle;
  qdbt5.Font.Style := fntStyle;
  qdbt6.Font.Style := fntStyle;
  qdbt7.Font.Style := fntStyle;
  qdbt8.Font.Style := fntStyle;
end;

end.
