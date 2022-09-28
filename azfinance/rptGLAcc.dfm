inherited repGLAcc: TrepGLAcc
  Tag = 1055
  Left = 220
  Top = 149
  Width = 424
  Height = 291
  VertScrollBar.Position = 160
  Caption = 'repGLAcc'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Top = -128
    BeforePrint = QuickReportBeforePrint
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
      Top = 127
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
    end
    inherited qbPageFoot: TQRBand
      Top = 292
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
      Top = 218
      Height = 21
      BeforePrint = qbDetailBeforePrint
      Size.Values = (
        55.5625
        1846.79166666667)
      object QRDBText3: TQRDBText
        Left = 120
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
          317.5
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
      object QRExpr1: TQRExpr
        Left = 423
        Top = 0
        Width = 96
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1119.1875
          0
          254)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'IF(DC = '#39'D'#39', Amount,'#39'-'#39')'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 284
        Top = 0
        Width = 94
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          751.416666666667
          0
          248.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'IF(DC = '#39'C'#39',Amount,'#39'-'#39')'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Top = 197
      Size.Values = (
        55.5625
        1846.79166666667)
      object QRLabel1: TQRLabel
        Left = 120
        Top = 0
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          0
          248.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GL Account number'
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
        Left = 352
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
          931.333333333334
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
      object QRLabel3: TQRLabel
        Left = 488
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
          1291.16666666667
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
    end
    inherited qbGrpFoot: TQRBand
      Top = 239
      Height = 53
      BeforePrint = qbGrpFootBeforePrint
      Size.Values = (
        140.229166666667
        1846.79166666667)
      object QRShape1: TQRShape
        Left = 120
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
          317.5
          -5.29166666666667
          447.145833333333)
        Shape = qrsHorLine
      end
      object qlDefInt: TQRLabel
        Left = 120
        Top = 10
        Width = 62
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          317.5
          26.4583333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deferred intrest'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 458
        Top = 9
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1211.79166666667
          23.8125
          161.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'SUM OF Debit'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 120
        Top = 27
        Width = 99
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          317.5
          71.4375
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Debitors control account'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object AmountD: TQRLabel
        Left = 340
        Top = 24
        Width = 38
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          899.583333333333
          63.5
          100.541666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AmountD'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object AmountC: TQRLabel
        Left = 480
        Top = 24
        Width = 39
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1270
          63.5
          103.1875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AmountC'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited repTitleBand: TQRBand
      Height = 79
      Size.Values = (
        209.020833333333
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 255
        Top = 8
        Width = 187
        Size.Values = (
          52.9166666666667
          674.6875
          21.1666666666667
          494.770833333333)
        Caption = 'GL transaction summary'
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
        Top = 30
        Size.Values = (
          44.9791666666667
          153.458333333333
          79.375
          145.520833333333)
        FontSize = 8
      end
      inherited qlCpyAdr: TQRLabel
        Size.Values = (
          44.9791666666667
          153.458333333333
          127
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
        Width = 697
        Height = 8
        Size.Values = (
          21.1666666666667
          0
          60.8541666666667
          1844.14583333333)
      end
      inherited shpTitleBot: TQRShape
        Top = 67
        Height = 8
        Size.Values = (
          21.1666666666667
          0
          177.270833333333
          1846.79166666667)
      end
      inherited qlApp: TQRLabel
        Size.Values = (
          44.9791666666667
          0
          0
          140.229166666667)
        FontSize = 8
      end
    end
  end
end
