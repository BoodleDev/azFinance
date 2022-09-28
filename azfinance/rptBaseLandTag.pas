unit rptBaseLandTag;
{Report Grp =
0:Clients
1:Branch
2:Employer
3:Funder
4:Loan type}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLand, Qrctrls, QuickRpt, ExtCtrls, DBClient;

type
  TrepBaseLandTag = class(TrepBaseLand)
    qlGroupTxt: TQRLabel;
    lblLegend: TQRLabel;
    qlClientC: TQRLabel;
    qlSandN: TQRLabel;
    qlLoanC: TQRLabel;
    qlLoanT: TQRLabel;
    qdbtLC: TQRDBText;
    qdbtLT: TQRDBText;
    qdbtSurname: TQRDBText;
    qdbtCode: TQRDBText;
    QRLabel1: TQRLabel;
    myExpr1: TQRExpr;
    SummaryBand1: TQRBand;
    qMemFil: TQRMemo;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrGroupBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    ReportDataSet : TClientDataSet;
    function SetGrpTxtForInst(inTypeName,inFldName:string): string;
  public
    { Public declarations }
  end;

implementation

uses dmReports, dmMain;

{$R *.DFM}

procedure TrepBaseLandTag.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  case dtmReports.ReportGrp of
    0: qrGroup.Expression := '';
    1: qrGroup.Expression := 'BranchKey';
    2: qrGroup.Expression := 'InstKey';
    3: qrGroup.Expression := 'FunderKey';
    4: qrGroup.Expression := 'LoanType';
  end;
  //
  if dtmReports.CurFilter <> '' then
    qMemFil.Lines.Add(dtmReports.CurFilter);
end;

procedure TrepBaseLandTag.qrGroupBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  case dtmReports.ReportGrp of
    1: begin
         qlGroupTxt.Caption := 'Branch name:  ';
//            dtmReports.GetBranchName(ReportDataSet.FieldByName('BranchKey').AsString);
       end;
    2: qlGroupTxt.Caption := SetGrpTxtForInst('Employer','InstKey');
    3: qlGroupTxt.Caption := SetGrpTxtForInst('Funder','FunderKey');
    else
      qlGroupTxt.Caption := '';
  end;
end;

function TrepBaseLandTag.SetGrpTxtForInst(inTypeName,
  inFldName: string): string;
begin
  Result := inTypeName+' name:  ';
  if dtmReports.qryLinkLU.Locate('EntCode',
    ReportDataSet.FieldByName(inFldName).AsString,[]) then
   Result := Result+ dtmReports.qryLinkLU.FieldByName('EntCode').AsString +' - '+
     dtmReports.qryLinkLU.FieldByName('Name').AsString;
end;

procedure TrepBaseLandTag.FormCreate(Sender: TObject);
begin
  inherited;
{ IF reports changes or ClientDataSet stay active then
  move this out of here to each summary report}
  if dtmReports.cdsLSum.Active then
    ReportDataSet := dtmReports.cdsLSum
  else
    ReportDataSet := dtmReports.cdsDSum;

  qbDetail.Enabled := dtmReports.PrintDetail;
end;

procedure TrepBaseLandTag.FormDestroy(Sender: TObject);
begin
  inherited;
  ReportDataSet := nil;
end;

end.
