unit fmBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, dbGrids, Unit32, IniFiles;

type
  TfrmBase = class(TForm)
    tlbDBBase: TToolBar;
    btnExit: TToolButton;
    pnlBBase: TPanel;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain, uConst;

{$R *.DFM}

procedure TfrmBase.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmBase.FormShow(Sender: TObject);
begin
  {Self.Color := dtmMain.ScrPnlColor;
  tlbDBBase.Color := dtmMain.RecBarColor; }
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  //ReadFormGrids(Self,StoreDef);
end;

procedure TfrmBase.FormDestroy(Sender: TObject);
begin
  //WriteFormGrids(Self,StoreDef);
end;

end.
