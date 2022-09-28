unit SlidingPanel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, buttons, inifiles;

type
  TSlidingPanelState = (psOpen,psClose);

type
  TPinButton = class(TSpeedButton)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    procedure Click; override;
  end;

type
  TTitlePanel = class(TPanel)
  private
    procedure DrawBar;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Paint; override;
  published
    { Published declarations }
  end;

type
  TSlidingPanel = class(TPanel)
  private
    FPinState: TSlidingPanelState;
    FTitle: String;
    FCurrentChild: TControl;
    FTitleColor: TColor;
    procedure SetPinState(const Value: TSlidingPanelState);
    procedure SetTitle(const Value: String);
    procedure SetCurrentChild(const Value: TControl);
    procedure SetTitleColor(const Value: TColor);
    { Private declarations }
  protected
    { Protected declarations }
    imgPinLeft: TBitmap;
    imgPinDown: TBitmap;
    pnlTitle: TPanel;
    btnPin: TPinButton;
    Partner: TControl;
    property CurrentChild: TControl read FCurrentChild write SetCurrentChild;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure WndProc(var Mesg : TMessage); override;
    procedure AddChild(Child: TControl);
  published
    { Published declarations }
    property Title: String read FTitle write SetTitle;
    property TitleColor: TColor read FTitleColor write SetTitleColor;
    property PinState: TSlidingPanelState read FPinState write SetPinState;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TSlidingPanel]);
end;

{ TSlidingPanel }

procedure TSlidingPanel.AddChild(Child: TControl);
begin
  CurrentChild := Child;
end;

constructor TSlidingPanel.Create(AOwner: TComponent);
var
  I: Integer;
  ini: TInifile;
begin
  inherited;
  Self.Width := 25;
  Self.Height := 300;

  if not (csDesigning in Self.ComponentState) then
  begin
  for I := 0 to AOwner.ComponentCount - 1 do
    if (AOwner.Components[I] is TControl) and not (AOwner.Components[I] is TSlidingPanel) then
    begin
      if TControl(AOwner.Components[I]).Align = alClient then
      begin
        Partner := TControl(AOwner.Components[I]);
        Break;
      end;
    end;
  end;

  pnlTitle := TTitlePanel.Create(Self);
  pnlTitle.Parent := Self;
  pnlTitle.Align := alLeft;
  pnlTitle.Width := 16;
  TitleColor := clGray;
 // pnlTitle.Color := clGray;
  pnlTitle.Caption := '';

  btnPin := TPinButton.Create(self);
  btnPin.Parent := pnlTitle;
  btnPin.Top := 0;
  btnPin.Left := 0;
  btnPin.Height := 18;
  btnPin.Width := 16;
  btnPin.Flat := True;

  imgPinLeft := TBitmap.Create;
  imgPinLeft.Width := btnPin.Width;
  imgPinLeft.Height := btnPin.Height;
  imgPinDown := TBitmap.Create;
  imgPinDown.Width := btnPin.Width;
  imgPinDown.Height := btnPin.Height;

  //OffsetRect(rCloseButton, -k, -CAPTION_WIDTH - k);
  //OffsetRect(rExpandButton, -k, -CAPTION_WIDTH - k)
  if not(csDesigning in Self.ComponentState) then
  begin
    Ini := TIniFile.Create('AZ.ini');
    if Ini.ReadInteger('MenuBar','PinState',1) = 1 then
      Self.PinState := psOpen
    else
      Self.Pinstate := psClose;
    Ini.Free;
  end;

  //Self.PinState := psClose;
end;

{ TbtnPin }                

procedure TPinButton.Click;
begin
  inherited;
  with TSlidingPanel(Parent.Parent) do
  begin
  case PinState of
    psClose: begin
         PinState := psOpen;
         Partner.Align := alClient;
       end;
    psOpen: begin
         PinState := psClose;
         with Partner do
         begin
           Align := alNone;
           Anchors := [akTop,akBottom,akRight];
           Width := Width + 80;
           Left := Left - 80;
         end;   
       end;
  end;
  end;
end;

constructor TPinButton.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TSlidingPanel.Destroy;
var
  ini: TInifile;
  Value: Integer;
begin
  inherited;
  if not(csDesigning in Self.ComponentState) then
  begin
    Ini := TIniFile.Create('AZ.ini');
    if Self.PinState = psOpen then
      Value := 1
    else
      Value := 0;
    Ini.WriteInteger('MenuBar','PinState',Value)
  end;
end;

procedure TSlidingPanel.SetCurrentChild(const Value: TControl);
begin
  FCurrentChild := Value;
  if Self.PinState = psClose then
    CurrentChild.Hide
  else
    CurrentChild.Show;
end;

procedure TSlidingPanel.SetPinState(const Value: TSlidingPanelState);
begin
  FPinState := Value;
  case Self.PinState of
    psOpen:  begin
               Self.Width := 105;
               btnPin.Glyph.Assign(imgPinDown);
               imgPinDown.Canvas.Brush.Color := clBlack;
               imgPinDown.Canvas.Polygon([Point(btnPin.Left + 4,btnPin.Top + 4),
                  Point(btnPin.Left + 10, btnPin.Top + 4),Point(btnPin.Left + 7, btnPin.Top + 7)]);
               //imgPinDown.Canvas.Polygon([Point(btnPin.Left + 3,btnPin.Top + 5),
               //   Point(btnPin.Left + 11, btnPin.Top + 5),Point(btnPin.Left + 7, btnPin.Top + 11)]);
             end;
    psClose: begin
               Self.Width := 25;
               btnPin.Glyph.Assign(imgPinLeft);
               imgPinLeft.Canvas.Brush.Color := clBlack;
               {imgPinLeft.Canvas.Polygon([Point(btnPin.Left + 2,btnPin.Top + 7),
                  Point(btnPin.Left + 8, btnPin.Top + 7),Point(btnPin.Left + 5, btnPin.Top + 4)]);}
               imgPinLeft.Canvas.Polygon([Point(btnPin.Left + 8,btnPin.Top + 3),
                  Point(btnPin.Left + 8, btnPin.Top + 9),Point(btnPin.Left + 5, btnPin.Top + 6)]);
              end;
  end;
  btnPin.Repaint;
end;

procedure TSlidingPanel.SetTitle(const Value: String);
begin
  FTitle := Value;
  Self.pnlTitle.Repaint;
end;

procedure TSlidingPanel.SetTitleColor(const Value: TColor);
begin
  FTitleColor := Value;
  Self.pnlTitle.Repaint;
end;

procedure TSlidingPanel.WndProc(var Mesg: TMessage);
begin
  //if Mesg.LParam = LongInt(Self) then
  if PinState = psClose then
  begin
    if (Mesg.Msg = CM_MOUSELEAVE) and
      ((Mouse.CursorPos.x  - Application.MainForm.Left) > (Self.Left +  Self.Width)) then
      begin
        if Assigned(CurrentChild) then
          CurrentChild.Hide;
        Self.Width := 25;
        Partner.Align := alClient;
        TitleColor := clGray;
      end;
    if (Mesg.Msg = CM_MOUSEENTER) then
     //and ((Mouse.CursorPos.x  - Application.MainForm.Left) > (Self.Left +  Self.Width)) then
    begin
      Partner.Align := alNone;
      Partner.Anchors := [akTop,akBottom,akLeft,akRight];
      Self.Width := 105;
      if Assigned(CurrentChild) then
        CurrentChild.Show;
      TitleColor := clHighlight;
    end;
  end;
  inherited;
end;

{ TTitlePanel }

procedure TTitlePanel.DrawBar;
var
  lf : TLogFont;
  tf : TFont;
begin
  with Self.Canvas do
  begin
    Font.Name := 'Tahoma';
    Font.Style := Font.Style + [fsBold];
    Font.Size  := 8;
    Font.Color := clWhite;
    tf := TFont.Create;
    try
      tf.Assign(Font);
      GetObject(tf.Handle, sizeof(lf), @lf);
      lf.lfEscapement := 900;
      lf.lfHeight := Font.Height - 2;
      tf.Handle := CreateFontIndirect(lf);
      Font.Assign(tf);
    finally
      tf.Free;
    end;
    TextOut(-2, Self.Height - 10, TSlidingPanel(Parent).Title);
  end;
end;

procedure TTitlePanel.Paint;
begin
  inherited;
  Self.Color := TSlidingPanel(Parent).TitleColor;
  Self.Canvas.Brush.Color := TSlidingPanel(Parent).TitleColor;
  Self.Canvas.FillRect(Self.ClientRect);
  Self.DrawBar;
end;

end.
