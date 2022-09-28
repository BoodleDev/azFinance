unit rptLoanFees;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLandTag, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepLoanFees = class(TrepBaseLandTag)
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    lblFee1: TQRLabel;
    lblFee2: TQRLabel;
    lblFee3: TQRLabel;
    lblFee4: TQRLabel;
    lblFee5: TQRLabel;
    lblFee6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    procedure SetFeeCaption(ql :TQRLabel);
  public
    { Public declarations }
  end;


implementation

uses dmReports;

{$R *.DFM}

procedure TrepLoanFees.SetFeeCaption(ql: TQRLabel);
begin
  ql.Caption := dtmReports.qryLFeeD.FieldByName('Description').AsString;
  dtmReports.qryLFeeD.Next;
end;

// WW 25/01/2001 - This will populate labels (fee1-6) with there descriptions -
procedure TrepLoanFees.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  dtmReports.qryLFeeD.Active := True;
  dtmReports.qryLFeeD.First;
  // for u do 1 to 6
  SetFeeCaption(lblFee1);
  SetFeeCaption(lblFee2);
  SetFeeCaption(lblFee3);
  SetFeeCaption(lblFee4);
  SetFeeCaption(lblFee5);
  SetFeeCaption(lblFee6);
  // for u do 1 to 6
  dtmReports.qryLFeeD.Active := False;
end;

end.
