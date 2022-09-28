unit fmGauge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Gauges, ExtCtrls;

type
  TfrmGauge = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Gauge1: TGauge;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetProg(iProg:integer);
    procedure SetMaxBound(BoundMax: integer);
    procedure IncProg;
    procedure MaxGauge;
  end;

implementation

{$R *.DFM}

{ TFGauge }

{WB 28/01/2000
 Inc the Gauge's progress by 1, used when looping a table,
 after the next statement}
procedure TfrmGauge.IncProg;
begin
  SetProg(Gauge1.Progress + 1);
end;

{WB 28/01/2000
 Show full progress and then reset & close the gauge form}
procedure TfrmGauge.MaxGauge;
begin
  Gauge1.Progress := Gauge1.MaxValue;
  Gauge1.Refresh;
  Gauge1.Progress := Gauge1.MinValue;
  Close;
end;

{WB 28/01/2000
 Set max value for gauge, used in table loop Max=Recordcount}
procedure TfrmGauge.SetMaxBound(BoundMax: integer);
begin
  Gauge1.MaxValue := BoundMax;
end;

{WB 28/01/2000
 Set the gauge's progess to iProg}
procedure TfrmGauge.SetProg(iProg: integer);
begin
  Self.Show;
  Gauge1.Progress := iProg;
  Self.Refresh;
  Gauge1.Refresh;
end;

end.
