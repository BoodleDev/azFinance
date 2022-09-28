unit pbBackGround;
{===============================================================================
 Author  : Wicus Botha
 Date    : 29/03/1999
 Unit    : This component is used to tile a bitmap on a form.
           Some bitmaps does not tile, because of size?
 PreConditions  : Bitmap source file.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TpbBackGround = class(TPaintBox)
  private
    { Private declarations }
    FSourceDir: string;
    FActive: boolean;
    BackGround: TBitMap;
    FOnPaint: TNotifyEvent;
    procedure SetSourceDir(const Value: string);
    procedure SetActive(const Value: boolean);
    procedure DrawBackGround;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property SourceDir:string read FSourceDir write SetSourceDir;
    property Active:boolean read FActive write SetActive;
    property OnPaint: TNotifyEvent read FOnPaint write FOnPaint;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TpbBackGround]);
end;

{ TpbBackGround }

constructor TpbBackGround.Create(AOwner: TComponent);
begin
  inherited;
  BackGround := TBitmap.Create;
  Align      := alClient;
  SourceDir  := '';
  Active     := False;
  Visible    := True;
end;

destructor TpbBackGround.Destroy;
begin
  BackGround.Free;
  BackGround := nil;
  inherited Destroy;
end;

{WB 29/03/2000
 Paint bitmap source file to canvas}
procedure TpbBackGround.DrawBackGround;
var
  x,y, w, h : integer;
begin
  if Active then
  begin
    w := BackGround.Width;  // Bitmap to tile Width
    h := BackGround.Height; // Bitmap to tile Height
    if w and h > 0 then     // Start tiling bitmap
    begin
      for x := 0 to (Width div w) do
        for y := 0 to (Height div h) do
          Self.Canvas.Draw(x*w,y*h,BackGround);
    end
    else                   // Bitmap is zero don not tile
      Active := False;
  end
  else
    Visible := False;
end;

{WB 29/03/2000
 Override  inherited paintbox procedure}
procedure TpbBackGround.Paint;
begin
  inherited;
  DrawBackGround;
  if Assigned(FOnPaint) then FOnPaint(Self);
end;

{WB 29/03/2000
 Set the tiling active or not}
procedure TpbBackGround.SetActive(const Value: boolean);
var
  i : integer;
begin
  FActive := Value;

  if SourceDir<>'' then
  begin
    try
      Visible := True;
      BackGround.LoadFromFile(SourceDir);
    except
      MessageDlg('Invalid source file: '+SourceDir,mtError,[mbOk],0);
    end;
  end;

  if (not FActive) and (Parent<>nil) then
  begin
    for i := 0 to Parent.ComponentCount-1 do
      if Parent.Components[i] is TWinControl then
        (Parent.Components[i] as TWinControl).RePaint;
  end;
  SendToBack;
  Refresh;
end;

{WB 29/03/2000
 Set Bitmap to tile source path}
procedure TpbBackGround.SetSourceDir(const Value: string);
begin
  FSourceDir := Value;
end;

end.

