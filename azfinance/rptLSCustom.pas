unit rptLSCustom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, rptBaseLand, Unit32, DB;

type
  TrepLSCustom = class(TrepBaseLand)
    qlcFld4: TQRLabel;
    qlcFld5: TQRLabel;
    qlcFld8: TQRLabel;
    qlcFld9: TQRLabel;
    qlcFld6: TQRLabel;
    qlcFld7: TQRLabel;
    qdbtcFld2: TQRDBText;
    qdbtcFld3: TQRDBText;
    qdbtcFld4: TQRDBText;
    qdbtcFld5: TQRDBText;
    qdbtcFld6: TQRDBText;
    qrecFld6: TQRExpr;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    qrecFld1: TQRExpr;
    qrecFld2: TQRExpr;
    qrecFld3: TQRExpr;
    qrecFld4: TQRExpr;
    qrecFld5: TQRExpr;
    QRLabel8: TQRLabel;
    qlClientC: TQRLabel;
    qlSandN: TQRLabel;
    qlLoanC: TQRLabel;
    qlLoanT: TQRLabel;
    qlGroupTxt: TQRLabel;
    qdbtPsnKey: TQRDBText;
    qdbtSurname: TQRDBText;
    qdbtLC: TQRDBText;
    qdbtLT: TQRDBText;
    qlcFld1: TQRLabel;
    qlcFld2: TQRLabel;
    qlcFld3: TQRLabel;
    qdbtcFld9: TQRDBText;
    qdbtcFld8: TQRDBText;
    qdbtcFld7: TQRDBText;
    qdbtcFld1: TQRDBText;
    qrecFld7: TQRExpr;
    qrecFld8: TQRExpr;
    qrecFld9: TQRExpr;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    SummaryBand1: TQRBand;
    qMemFil: TQRMemo;
    procedure FormCreate(Sender: TObject);
    procedure qrGroupBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure SetReportDB;
    procedure SetLabelAndDBText(NoToSet: integer;
      inLabel,inDBFld: string);
    procedure SetSpecificLabelAndDBtext(qFldLabel:TQRLabel;qFldDataFld:TQRDBText;
      qFldExp:TQRExpr;inLabel,inDBFld:string;fldInd:integer);
  public
    { Public declarations }
  end;

implementation

uses dmMESum;

{$R *.DFM}

procedure TrepLSCustom.FormCreate(Sender: TObject);
begin
  if dtmMESum.ExistingReport then
    qlrepName.Caption := dtmMESum.qryMEReports.FieldByName('RepName').AsString
  else
    qlrepName.Caption := 'azFinance Custom report';
  inherited;
  SetReportDB;
end;

procedure TrepLSCustom.SetReportDB;
var
  i,j : integer;
begin
  i := 1;
  for j := 0 to dtmMESum.repList.Count-1 do
  begin
    SetLabelAndDBText(i,dtmMESum.repList[j],
      dtmMESum.fldList.Values[dtmMESum.repList[j]]);
    i := i + 1;
  end;
//  qrGroup.Expression := dtmMain.repGroup;
end;

procedure TrepLSCustom.SetLabelAndDBText(NoToSet: integer; inLabel,
  inDBFld: string);
var
  fldInd: integer;
begin
  fldInd := dtmMESum.cdsMESum.FieldList.IndexOf(inDBFld);
  case NoToSet of
    1: SetSpecificLabelAndDBtext(qlcFld1,qdbtcFld1,qrecFld1,inLabel,inDBFld,fldInd);
    2: SetSpecificLabelAndDBtext(qlcFld2,qdbtcFld2,qrecFld2,inLabel,inDBFld,fldInd);
    3: SetSpecificLabelAndDBtext(qlcFld3,qdbtcFld3,qrecFld3,inLabel,inDBFld,fldInd);
    4: SetSpecificLabelAndDBtext(qlcFld4,qdbtcFld4,qrecFld4,inLabel,inDBFld,fldInd);
    5: SetSpecificLabelAndDBtext(qlcFld5,qdbtcFld5,qrecFld5,inLabel,inDBFld,fldInd);
    6: SetSpecificLabelAndDBtext(qlcFld6,qdbtcFld6,qrecFld6,inLabel,inDBFld,fldInd);
    7: SetSpecificLabelAndDBtext(qlcFld7,qdbtcFld7,qrecFld7,inLabel,inDBFld,fldInd);
    8: SetSpecificLabelAndDBtext(qlcFld8,qdbtcFld8,qrecFld8,inLabel,inDBFld,fldInd);
    9: SetSpecificLabelAndDBtext(qlcFld9,qdbtcFld9,qrecFld9,inLabel,inDBFld,fldInd);
  end;
end;

procedure TrepLSCustom.SetSpecificLabelAndDBtext(qFldLabel:TQRLabel;
  qFldDataFld:TQRDBText;qFldExp:TQRExpr;inLabel,inDBFld:string;fldInd:integer);
begin
  qFldLabel.Caption := inLabel;
  if fldInd <> -1 then
  begin
    qFldDataFld.DataField := inDBFld;
    if dtmMESum.cdsMESum.Fields[fldInd].DataType = ftBCD then
      qFldExp.Expression := 'sum('+inDBFld+')';
  end;    
end;

procedure TrepLSCustom.qrGroupBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
{ if Trim(qrGroup.Expression) <> '' then
    qlGroupTxt.Caption := dtmMESum.GetFldName(dtmMain.repGroup)+' - '+
      dtmMESum.cdsMESum.FieldByName(dtmMain.repGroup).AsString
  else
    qlGroupTxt.Caption := 'No grouping';}
end;

end.
