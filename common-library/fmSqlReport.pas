unit fmSqlReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, fmMain;

type
  TfrmSqlReport = class(TForm)
    wb: TWebBrowser;
  private
    { Private declarations }
    FReportParamStr: string;
    FReportServerURL: string;
    FReportPath: string;
  public
    { Public declarations }
    procedure Execute;
    property ReportServerURL: string read FReportServerURL write FReportServerURL;
    property ReportPath: string read FReportPath write FReportPath;
    property ReportParamStr: string read FReportParamStr write FReportParamStr;
  end;

var
  frmSqlReport: TfrmSqlReport;

implementation

{$R *.dfm}

procedure TfrmSqlReport.Execute;
var
  url: OleVariant;
begin
//  ------------------------------------------------------------------
//  Examples
//
//  ReportServerURL := 'http://10.11.0.118/ReportServer';   //Prod
//  ReportServerURL := 'http://10.11.0.119/ReportServer';   //Dev

//  RdlDocpath := '/AZFinance/Bruma';
//  RdlDocpath := '/AZFinance/Boodle';
//  RdlDocpath := '?/IT/Test/AffordabilitySummary';

//  ParamStr := '&rs:Command=Render&rs:Format=PDF&rc:Parameters=Collapse&rc:Toolbar=true&AccountId=695793';
//  ParamStr := '&rc:Parameters=Collapse&AccountId=' + IntToStr(FLoanID) ;
//  ParamStr := '&rs:Command=Render&rs:Format=HTML4.0&AccountID=' + IntToStr(LoanId);
//  -------------------------------------------------------------------
  ReportParamStr := '&rc:Parameters=false' + ReportParamStr;
  Show;
  url := ReportServerURL + ReportPath + ReportParamStr;
  wb.navigate(url);
end;

//http://10.11.0.118/ReportServer?/IT/Test/AffordabilitySummary&rc:Parameters=false&AccountID=240753

//http://10.11.0.118/ReportServer?/IT/Test/AffordabilitySummary&AccountID=240753

end.

