object repCodeTable: TrepCodeTable
  Tag = 48
  Left = 184
  Top = 95
  Width = 580
  Height = 366
  Caption = 'repCodeTable'
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
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dtmCodeTbl.qryCodeTbl
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
      Height = 65
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
        171.979166666667
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
      object QRDBText1: TQRDBText
        Left = 208
        Top = 32
        Width = 69
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          550.333333333333
          84.6666666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmCodeTbl.qryTypeTbl
        DataField = 'TypeDesc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Book Antiqua'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 55
        Width = 699
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          7.9375
          0
          145.520833333333
          1849.4375)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
    end
    object qbPageFoot: TQRBand
      Left = 48
      Top = 259
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
      Top = 201
      Width = 698
      Height = 18
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
        47.625
        1846.79166666667)
      BandType = rbDetail
      object txtDescription: TQRDBText
        Left = 0
        Top = 5
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          13.2291666666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmCodeTbl.qryCodeTbl
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
      object txtDateAdd: TQRDBText
        Left = 256
        Top = 5
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          677.333333333333
          13.2291666666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmCodeTbl.qryCodeTbl
        DataField = 'DateAdded'
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
      object txtUserID: TQRDBText
        Left = 400
        Top = 5
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          13.2291666666667
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmCodeTbl.qryCodeTbl
        DataField = 'UserID'
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
      Top = 177
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
      LinkBand = qbDetail
      Size.Values = (
        63.5
        1846.79166666667)
      FooterBand = qbGrpFoot
      Master = QuickReport
      ReprintOnNewPage = False
      object lblDescription: TQRLabel
        Left = 0
        Top = 0
        Width = 64
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
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Description'
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
      object lblDateAdd: TQRLabel
        Left = 256
        Top = 0
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          677.333333333333
          0
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date added'
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
      object lblUserID: TQRLabel
        Left = 400
        Top = 0
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          0
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'User ID'
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
      object QRShape1: TQRShape
        Left = 0
        Top = 16
        Width = 699
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          7.9375
          0
          42.3333333333333
          1849.4375)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
    end
    object qbGrpFoot: TQRBand
      Left = 48
      Top = 219
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
        Left = 305
        Top = 5
        Width = 87
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          806.979166666667
          13.2291666666667
          230.1875)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Code Table'
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
        Left = 677
        Top = 13
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1791.22916666667
          34.3958333333333
          55.5625)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'appID'
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
    end
  end
end
