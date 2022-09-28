unit fmCrystalProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, CRAXDRT_TLB;

type
  TfrmCrystalProgress = class(TForm)
    ProgressBar: TProgressBar;
    Label1: TLabel;
    tmrProgress: TTimer;
    procedure tmrProgressTimer(Sender: TObject);
  private
    FPrintingtatus: IPrintingStatus;
    procedure SetPrintingtatus(const Value: IPrintingStatus);
    { Private declarations }
  public
    { Public declarations }
    property Printingtatus: IPrintingStatus read FPrintingtatus write SetPrintingtatus;
  end;

var
  frmCrystalProgress: TfrmCrystalProgress;

implementation

{$R *.dfm}

{ TfrmCrystalProgress }

procedure TfrmCrystalProgress.SetPrintingtatus(const Value: IPrintingStatus);
begin
  FPrintingtatus := Value;
  ProgressBar.Position := 0;
  //ShowMessage('Start');
  //ProgressBar.Max := Printingtatus.NumberOfPages;
  tmrProgress.Enabled := True;
end;

procedure TfrmCrystalProgress.tmrProgressTimer(Sender: TObject);
begin
  ProgressBar.Position := Printingtatus.Progress;//Printingtatus.NumberOfRecordSelected;
  Label1.Caption := IntToStr(Printingtatus.Progress);
  Label1.Refresh;
  ProgressBar.Refresh;
  //ShowMessage('Hello');
end;

end.
