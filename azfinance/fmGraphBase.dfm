inherited frmGraphBase: TfrmGraphBase
  Tag = 1020
  Left = 86
  Top = 147
  Width = 645
  Height = 397
  Caption = 'Graphs'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 601
    Top = 40
    Height = 323
    Visible = False
    object btnPrint: TToolButton
      Left = 0
      Top = 36
      Caption = 'Print'
      ImageIndex = 1
      OnClick = btnPrintClick
    end
  end
  inherited pnlBBase: TPanel
    Top = 40
    Width = 601
    Height = 323
    TabOrder = 3
  end
  object dbGraphs: TDBChart
    Left = 0
    Top = 40
    Width = 601
    Height = 323
    AllowPanning = pmHorizontal
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = 16744448
    Gradient.Visible = True
    LeftWall.Color = 16777088
    PrintProportional = False
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      '')
    Title.Visible = False
    Legend.Alignment = laBottom
    Legend.TextStyle = ltsRightValue
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object ser1Graph: TBarSeries
      ColorEachPoint = True
      Marks.Arrow.Color = clBlack
      Marks.ArrowLength = 20
      Marks.BackColor = clWhite
      Marks.Style = smsPercent
      Marks.Visible = True
      SeriesColor = clRed
      ValueFormat = '#,##0'
      XLabelsSource = 'Description'
      BarStyle = bsRectGradient
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1
      YValues.Order = loNone
      YValues.ValueSource = 'sumLC'
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 40
    Align = alTop
    BevelInner = bvLowered
    ParentColor = True
    TabOrder = 2
    object lblGraphType: TLabel
      Left = 8
      Top = 12
      Width = 54
      Height = 14
      Caption = 'Graph type'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 240
      Top = 12
      Width = 67
      Height = 14
      Caption = 'Graph figures'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 311
      Top = 7
      Width = 209
      Height = 23
      Shape = bsFrame
    end
    object btnPrintGrp: TSpeedButton
      Left = 573
      Top = 2
      Width = 62
      Height = 36
      Caption = 'Print graph'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 2
      OnClick = btnPrintClick
    end
    object cbxGrpType: TComboBox
      Left = 72
      Top = 9
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbxGrpTypeChange
      Items.Strings = (
        'Loan types'
        'Loan use'
        'Arrears stats'
        'Loan period'
        'Loan status')
    end
    object rbtnNo: TRadioButton
      Left = 323
      Top = 11
      Width = 75
      Height = 17
      Caption = 'No of loans'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = rbtnNoClick
    end
    object rbtnAmt: TRadioButton
      Left = 408
      Top = 11
      Width = 103
      Height = 17
      Caption = 'Loan capital total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtnNoClick
    end
  end
  object dtsGraph: TDataSource
    Left = 96
    Top = 72
  end
end
