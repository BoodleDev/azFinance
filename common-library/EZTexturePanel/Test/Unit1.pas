unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, EZTexturePanel, StdCtrls;

type
  TForm1 = class(TForm)
    EZTexturePanel1: TEZTexturePanel;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure EZTexturePanel1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private declarations }
    Resizing: Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.EZTexturePanel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin



      //Temp.Canvas.FillRect(Rect(Width-8,Height-8,Width,Height));
end;

end.
