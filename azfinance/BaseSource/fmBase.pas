unit fmBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls;

type
  TfrmBase = class(TForm)
    tlbDBBase: TToolBar;
    btnExit: TToolButton;
    pnlBBase: TPanel;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TfrmBase.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmBase.FormShow(Sender: TObject);
begin
  Self.Color := dtmMain.ScrPnlColor;
  tlbDBBase.Color := dtmMain.RecBarColor;
end;

end.
