unit fmIntToDate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, pbBackGround, Grids, DBGrids, StdCtrls,
  dmReports;

type
  TfrmIntToDate = class(TForm)
    tbrIntToDate: TToolBar;
    btnExit: TToolButton;
    pbIntToDate: TpbBackGround;
    pnlIntToDate: TPanel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    DBGrid1: TDBGrid;
    btnGetData: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnGetDataClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dtmReport : TdtmReports;
  public
    { Public declarations }
  end;


implementation

uses dmMain;

{$R *.DFM}

procedure TfrmIntToDate.FormCreate(Sender: TObject);
begin
  dtmReport := TdtmReports.Create(self);
  pbIntToDate.SourceDir := dtmMain.BackGroundSrc;
  pbIntToDate.Active    := True;
  tbrIntToDate.Color    := dtmMain.RecBarColor;
  pnlIntToDate.Color    := dtmMain.ScrPnlColor;
  dtpFrom.Date          := Date;
  dtpTo.Date            := Date
end;

procedure TfrmIntToDate.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmIntToDate.btnGetDataClick(Sender: TObject);
begin
  dtmReport.cdsIntToDate.Active := False;
  dtmReport.qryIntToDate.Active := False;
  dtmReport.qryIntToDate.Parameters[0].Value := dtpFrom.Date;
  dtmReport.qryIntToDate.Parameters[1].Value := dtpTo.Date;
  dtmReport.cdsIntToDate.Open;
end;

procedure TfrmIntToDate.FormDestroy(Sender: TObject);
begin
  dtmReport.Free;
  dtmReport := nil;
end;

end.
