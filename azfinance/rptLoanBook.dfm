object repLoanBook: TrepLoanBook
  Tag = 1045
  Left = 137
  Top = 98
  Width = 590
  Height = 469
  Caption = 'Loan Book'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickReport: TQuickRep
    Left = 0
    Top = -5
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dtmLoanMan.cdsLoanBook
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      127
      2970
      127
      2100
      127
      127
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object qbColHeader: TQRBand
      Left = 48
      Top = 112
      Width = 698
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        150.8125
        1846.79166666667)
      BandType = rbColumnHeader
      object qlrepTitle: TQRLabel
        Left = 665
        Top = 16
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1759.47916666667
          42.3333333333333
          87.3125)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Report'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object qlCpy1: TQRLabel
        Left = 2
        Top = 2
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          5.29166666666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlCpyName'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrDprint: TQRSysData
        Left = 617
        Top = 2
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1632.47916666667
          5.29166666666667
          214.3125)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Date printed '
        Transparent = True
        FontSize = 7
      end
      object shpColH: TQRShape
        Left = 0
        Top = 29
        Width = 698
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          76.7291666666667
          1846.79166666667)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
      object qlCurrent: TQRLabel
        Left = 200
        Top = 37
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          529.166666666667
          97.8958333333333
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Live to date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlSToCurr: TQRLabel
        Left = 283
        Top = 37
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          748.770833333333
          97.8958333333333
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LTD - Prev month'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlCurrMonth: TQRLabel
        Left = 449
        Top = 37
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1187.97916666667
          97.8958333333333
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Curr. month'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlPrevMonth: TQRLabel
        Left = 579
        Top = 37
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1531.9375
          97.8958333333333
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Prev. month'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object qbPageFoot: TQRBand
      Left = 48
      Top = 236
      Width = 698
      Height = 29
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        76.7291666666667
        1846.79166666667)
      BandType = rbPageFooter
      object qsdPageNo: TQRSysData
        Left = 313
        Top = 9
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          828.145833333333
          23.8125
          190.5)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Page '
        Transparent = False
        FontSize = 8
      end
      object qlweb: TQRLabel
        Left = 631
        Top = 16
        Width = 67
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1669.52083333333
          42.3333333333333
          177.270833333333)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'www.graytech.co.za'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
    end
    object qbDetail: TQRBand
      Left = 48
      Top = 172
      Width = 698
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.5
        1846.79166666667)
      BandType = rbDetail
      object qdbtCurrent: TQRDBText
        Left = 213
        Top = 0
        Width = 37
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          563.5625
          0
          97.8958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.cdsLoanBook
        DataField = 'Current'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qdbtMETotals: TQRDBText
        Left = 334
        Top = 0
        Width = 44
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          883.708333333333
          0
          116.416666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.cdsLoanBook
        DataField = 'METotals'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText45: TQRDBText
        Left = 0
        Top = 0
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          0
          0
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.cdsLoanBook
        DataField = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qdbtCurrMonth: TQRDBText
        Left = 466
        Top = 0
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1232.95833333333
          0
          134.9375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.cdsLoanBook
        DataField = 'CurrMonth'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qdbtPrevMonth: TQRDBText
        Left = 595
        Top = 0
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1574.27083333333
          0
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.cdsLoanBook
        DataField = 'PrevMonth'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object qrGroup: TQRGroup
      Left = 48
      Top = 169
      Width = 698
      Height = 3
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = qbDetail
      Size.Values = (
        7.9375
        1846.79166666667)
      FooterBand = qbGrpFoot
      Master = QuickReport
      ReprintOnNewPage = False
    end
    object qbGrpFoot: TQRBand
      Left = 48
      Top = 196
      Width = 698
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1846.79166666667)
      BandType = rbGroupFooter
      object QRShape1: TQRShape
        Left = 0
        Top = 2
        Width = 697
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          5.29166666666667
          1844.14583333333)
        Shape = qrsRectangle
      end
    end
    object repTitleBand: TQRBand
      Left = 48
      Top = 48
      Width = 698
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = repTitleBandBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        169.333333333333
        1846.79166666667)
      BandType = rbTitle
      object qlrepName: TQRLabel
        Left = 307
        Top = 5
        Width = 83
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          812.270833333333
          13.2291666666667
          219.604166666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan book'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object qlCpy: TQRLabel
        Left = 0
        Top = 31
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          82.0208333333333
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Company'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlCpyName: TQRLabel
        Left = 58
        Top = 31
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          153.458333333333
          82.0208333333333
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlCpyName'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlCpyAdr: TQRLabel
        Left = 58
        Top = 48
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          153.458333333333
          127
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlCpyAdr'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object qlAppID: TQRLabel
        Left = 685
        Top = 13
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1812.39583333333
          34.3958333333333
          34.3958333333333)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = '100'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object shpTitleTop: TQRShape
        Left = 0
        Top = 23
        Width = 698
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          7.9375
          0
          60.8541666666667
          1846.79166666667)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
      object shpTitleBot: TQRShape
        Left = 0
        Top = 59
        Width = 698
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          156.104166666667
          1846.79166666667)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
      object qlApp: TQRLabel
        Left = 0
        Top = 0
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          0
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'azFinance'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
  end
end
