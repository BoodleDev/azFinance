inherited frmDBBaseGrdCF: TfrmDBBaseGrdCF
  Tag = 18
  Left = 168
  Top = 110
  Caption = 'frmDBBaseGrdCF'
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMBase: TPanel [1]
    Left = 0
    Top = 0
    Width = 479
    Height = 354
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object grdBase: TDBGrdCF
      Left = 0
      Top = 147
      Width = 479
      Height = 207
      Align = alBottom
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OddColor = clInfoBk
      SelColor = clNavy
      SelColorFont = clWhite
    end
  end
end
