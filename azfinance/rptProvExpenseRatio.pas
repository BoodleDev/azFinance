unit rptProvExpenseRatio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLand, QuickRpt, Qrctrls, ExtCtrls, TeEngine, TeeFunci, Series,
  TeeProcs, Chart, DBChart, QrTee, db, Grids, DBGrids;

type
  TrepProvExpenseRatio = class(TrepBaseLand)
    SUM: TQRDBText;
    RATIO: TQRDBText;
    PostDate: TQRDBText;
    PROVEXPENSE: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qrcProvExpRatio: TQRChart;
    QRDBChart1: TQRDBChart;
    Series1: TBarSeries;
    QRChart1: TQRChart;
    QRDBChart2: TQRDBChart;
    BarSeries1: TBarSeries;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure InputQueries;
    procedure DoCalculations;
  public
    { Public declarations }
  end;

var
  repProvExpenseRatio: TrepProvExpenseRatio;

implementation

uses dmReports, fmProvExpRatio;

{$R *.DFM}

procedure TrepProvExpenseRatio.FormCreate(Sender: TObject);
begin
  inherited;
  dtmReports.cdsProvExpRatio.Close;
  dtmReports.cdsProvExpRatio.CreateDataSet;
  InputQueries;
end;

procedure TrepProvExpenseRatio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmReports.Free;
  dtmReports.cdsProvExpRatio.Close;
  dtmReports.cdsProvExpRatio.Free;
end;

procedure TrepProvExpenseRatio.InputQueries;
begin
  frmProvExpRatio := TfrmProvExpRatio.Create(self);
  Try
    frmProvExpRatio.ShowModal;
  finally
    frmProvExpRatio.Free;
  end;
  DoCalculations;
 end;

procedure TrepProvExpenseRatio.DoCalculations;
begin
//This clears the title of the chart and putting in the inputed fields from the input query
   Try
     qrcProvExpRatio.Chart.Title.Text.Clear;
     qrcProvExpRatio.Chart.Title.Text.Add('Provision Expense Ratio for '+StartDate);
     qrcProvExpRatio.Chart.Title.Text.Add('to '+EndDate);

     dtmReports.GetDateParams;
   Except
   End;
end;

end.
