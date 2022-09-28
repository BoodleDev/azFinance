inherited frmDBBaseGrd: TfrmDBBaseGrd
  Tag = 21
  Left = 167
  Top = 109
  Caption = 'frmDBBaseGrd'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMBase: TPanel [1]
    Left = 0
    Top = 0
    Width = 483
    Height = 363
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object grdBase: TDBGrid
      Left = 0
      Top = 156
      Width = 483
      Height = 207
      Align = alBottom
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
