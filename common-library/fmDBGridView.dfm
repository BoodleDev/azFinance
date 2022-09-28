inherited frmDBGridView: TfrmDBGridView
  Tag = 23
  Caption = 'frmDBGridView'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object grdMain: TDBGrid [1]
    Left = 0
    Top = 0
    Width = 471
    Height = 350
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
