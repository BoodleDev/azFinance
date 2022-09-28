unit fmReportDates;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, DBCtrls, ExtCtrls;

type
  TfrmRptDates = class(TForm)
    Label1: TLabel;
    cmbStartDate: TDBComboBox;
    Panel1: TPanel;
    btnCancel: TSpeedButton;
    btnOK: TSpeedButton;
    Panel2: TPanel;
    cmbEndDate: TComboBox;
    Label2: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ParamOption : Integer;
    procedure PanelVisible;
  end;

var
  frmRptDates: TfrmRptDates;
  MonthEndStart, MonthEndEnd : String;

implementation

uses dmReports;

{$R *.DFM}

procedure TfrmRptDates.btnOkClick(Sender: TObject);
begin
  MonthEndStart := cmbStartDate.Text;
  MonthEndEnd := cmbEndDate.Text;
//  dtmReports.qryRepAtRisk.Parameters[0].Value := MonthEndDate;
  Close;
end;

procedure TfrmRptDates.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRptDates.FormCreate(Sender: TObject);
begin
  dtmReports.qryMonthEndDates.Open;
  dtmReports.qryMonthEndDates.First;
  While not dtmReports.qryMonthEndDates.Eof do
  begin
    cmbStartDate.Items.Add(dtmReports.qryMonthEndDates.FieldByName('MonthEndDate').AsString);
    cmbEndDate.Items.Add(dtmReports.qryMonthEndDates.FieldByName('MonthEndDate').AsString);
    dtmReports.qryMonthEndDates.Next;
  end;
end;

procedure TfrmRptDates.PanelVisible;
begin
  Panel2.Visible := True;
  Label1.Caption := 'Start Date';
  Label2.Visible := True;
  cmbEndDate.Visible := True;
end;

end.
