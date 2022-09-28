object Form1: TForm1
  Left = 192
  Top = 114
  Width = 870
  Height = 640
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 384
    Top = 168
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 208
    Top = 232
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Memo1: TMemo
    Left = 496
    Top = 72
    Width = 185
    Height = 169
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object EZTexturePanel1: TEZTexturePanel
    Left = 200
    Top = 360
    Width = 209
    Height = 41
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clBtnFace
    Ctl3D = True
    TabOrder = 0
    OnMouseMove = EZTexturePanel1MouseMove
    Settings.AlphaBlendColor = clRed
    Settings.AlphaBlend = 80
    Settings.BorderColor = clWindowFrame
    Settings.Moveable = True
    Settings.Sizeable = True
    Settings.GradientColor1 = clGray
    Settings.GradientColor2 = clBtnFace
    Settings.GradientType = gtTopBottom
    Settings.GradientX0 = 114
    Settings.GradientY0 = 50
    Settings.TextureType = ttBlend
    Settings.TextureScale = 1.000000000000000000
    Settings.TextureSmooth = False
    Settings.ShadeAngle = 315
    Settings.ShadeColor = clBlack
    Settings.ShadeDiffusion = 3
    Settings.ShadeHeight = 5
    Settings.ShadeShow = False
    TheData = {0A000000455A5431340000000000}
  end
end
