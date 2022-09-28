inherited frmDBBaseGrdCF: TfrmDBBaseGrdCF
  Tag = 18
  Left = 167
  Top = 109
  Caption = 'frmDBBaseGrdCF'
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
    object grdBase: TDBGrdCF
      Left = 0
      Top = 156
      Width = 483
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
