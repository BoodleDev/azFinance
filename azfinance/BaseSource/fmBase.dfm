object frmBase: TfrmBase
  Tag = 15
  Left = 196
  Top = 134
  Width = 542
  Height = 368
  Caption = 'frmBase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlbDBBase: TToolBar
    Left = 498
    Top = 0
    Width = 36
    Height = 339
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 36
    Color = clBtnFace
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ParentColor = False
    ShowCaptions = True
    TabOrder = 0
    object btnExit: TToolButton
      Left = 0
      Top = 0
      Caption = '  Exit  '
      ImageIndex = 2
      Wrap = True
      OnClick = btnExitClick
    end
  end
  object pnlBBase: TPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 339
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
  end
end
