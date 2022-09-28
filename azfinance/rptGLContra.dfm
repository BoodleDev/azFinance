inherited repGLContra: TrepGLContra
  Tag = 1056
  Left = 179
  Top = 119
  Width = 465
  Height = 318
  Caption = 'repGLContra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmLS2GL.cdsGLReport
    Font.Charset = ANSI_CHARSET
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      127
      2970
      127
      2100
      127
      127
      0)
    inherited qbColHeader: TQRBand
      Top = 125
      Height = 70
      Size.Values = (
        185.208333333333
        1846.79166666667)
      inherited qlrepTitle: TQRLabel
        Size.Values = (
          44.9791666666667
          1759.47916666667
          42.3333333333333
          87.3125)
        FontSize = 8
      end
      inherited qlCpy1: TQRLabel
        Size.Values = (
          44.9791666666667
          5.29166666666667
          5.29166666666667
          145.520833333333)
        FontSize = 8
      end
      inherited qrDprint: TQRSysData
        Size.Values = (
          44.9791666666667
          1632.47916666667
          5.29166666666667
          214.3125)
        FontSize = 7
      end
      inherited shpColH: TQRShape
        Size.Values = (
          5.29166666666667
          0
          76.7291666666667
          1846.79166666667)
      end
      object qlDRange: TQRLabel
        Left = 0
        Top = 35
        Width = 68
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          0
          92.6041666666667
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Effective date'
        Color = clSilver
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
      object qlRange: TQRLabel
        Left = 0
        Top = 51
        Width = 89
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          0
          134.9375
          235.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Transaction range'
        Color = clSilver
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
    inherited qbPageFoot: TQRBand
      Top = 267
      Size.Values = (
        76.7291666666667
        1846.79166666667)
      inherited qsdPageNo: TQRSysData
        Size.Values = (
          44.9791666666667
          828.145833333333
          23.8125
          190.5)
        FontSize = 8
      end
      inherited qlweb: TQRLabel
        Size.Values = (
          29.1041666666667
          1669.52083333333
          42.3333333333333
          177.270833333333)
        FontSize = 6
      end
    end
    inherited qbDetail: TQRBand
      Top = 216
      Height = 35
      Size.Values = (
        92.6041666666667
        1846.79166666667)
      object QRExpr2: TQRExpr
        Left = 264
        Top = 0
        Width = 108
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          698.5
          0
          285.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'IF(DC = '#39'C'#39', Amount,'#39'-'#39')'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 433
        Top = 0
        Width = 108
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1145.64583333333
          0
          285.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'IF(DC = '#39'D'#39', Amount,'#39'-'#39')'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 94
        Top = 0
        Width = 40
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          248.708333333333
          0
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS2GL.cdsGLReport
        DataField = 'GLaccNo'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 166
        Top = 16
        Width = 56
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          439.208333333333
          42.3333333333333
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS2GL.cdsGLReport
        DataField = 'ContraAccNo'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 432
        Top = 16
        Width = 108
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1143
          42.3333333333333
          285.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'IF(DC = '#39'C'#39', Amount,'#39'-'#39')'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 265
        Top = 16
        Width = 108
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          701.145833333333
          42.3333333333333
          285.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'IF(DC = '#39'D'#39', Amount,'#39'-'#39')'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Top = 195
      Size.Values = (
        55.5625
        1846.79166666667)
      object QRLabel1: TQRLabel
        Left = 349
        Top = 0
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          923.395833333333
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Debit'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 509
        Top = 0
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1346.72916666667
          0
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Credit'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 93
        Top = 0
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          246.0625
          0
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GL account'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 165
        Top = 0
        Width = 71
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          436.5625
          0
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Contra account'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qbGrpFoot: TQRBand
      Top = 251
      Height = 16
      Size.Values = (
        42.3333333333333
        1846.79166666667)
      object QRShape1: TQRShape
        Left = 94
        Top = -2
        Width = 169
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.5208333333333
          248.708333333333
          -5.29166666666667
          447.145833333333)
        Shape = qrsHorLine
      end
    end
    inherited repTitleBand: TQRBand
      Height = 77
      Size.Values = (
        203.729166666667
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Top = 4
        Size.Values = (
          52.9166666666667
          793.75
          10.5833333333333
          259.291666666667)
        FontSize = 12
      end
      inherited qlCpy: TQRLabel
        Size.Values = (
          44.9791666666667
          0
          82.0208333333333
          140.229166666667)
        FontSize = 8
      end
      inherited qlCpyName: TQRLabel
        Size.Values = (
          44.9791666666667
          153.458333333333
          82.0208333333333
          145.520833333333)
        FontSize = 8
      end
      inherited qlCpyAdr: TQRLabel
        Top = 49
        Size.Values = (
          44.9791666666667
          153.458333333333
          129.645833333333
          87.3125)
        FontSize = 6
      end
      inherited qlAppID: TQRLabel
        Size.Values = (
          44.9791666666667
          1812.39583333333
          34.3958333333333
          34.3958333333333)
        FontSize = 6
      end
      inherited shpTitleTop: TQRShape
        Height = 26
        Size.Values = (
          68.7916666666667
          0
          60.8541666666667
          1846.79166666667)
      end
      inherited shpTitleBot: TQRShape
        Top = 67
        Height = 5
        Size.Values = (
          13.2291666666667
          0
          177.270833333333
          1846.79166666667)
      end
      inherited qlApp: TQRLabel
        Size.Values = (
          44.9791666666667
          0
          0
          132.291666666667)
        FontSize = 8
      end
    end
  end
end
