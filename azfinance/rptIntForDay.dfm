inherited repIntForDay: TrepIntForDay
  Tag = 1059
  Left = 235
  Top = 179
  Width = 387
  Height = 248
  HorzScrollBar.Position = 264
  Caption = 'Interest for day'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Left = -256
    DataSet = dtmReports.cdsIntToDate
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
      Height = 20
      Size.Values = (
        52.9166666666667
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
    end
    inherited qbPageFoot: TQRBand
      Top = 224
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
      Top = 166
      Height = 18
      Size.Values = (
        47.625
        1846.79166666667)
      object QRDBText1: TQRDBText
        Left = 184
        Top = 0
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          486.833333333333
          0
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsIntToDate
        DataField = 'DateRun'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 472
        Top = 0
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1248.83333333333
          0
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsIntToDate
        DataField = 'IntForDay'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 336
        Top = 0
        Width = 32
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          889
          0
          84.6666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsIntToDate
        DataField = 'Amount'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Top = 145
      Size.Values = (
        55.5625
        1846.79166666667)
      object QRLabel1: TQRLabel
        Left = 184
        Top = 0
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          0
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date of run'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 288
        Top = 0
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          762
          0
          293.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interest from last monthend'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 464
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
          1227.66666666667
          0
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interest for day'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qbGrpFoot: TQRBand
      Top = 184
      Size.Values = (
        105.833333333333
        1846.79166666667)
      object QRExpr1: TQRExpr
        Left = 391
        Top = 5
        Width = 122
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1034.52083333333
          13.2291666666667
          322.791666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Sum(cdsIntToDate.IntForDay)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 451
        Top = 21
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          1193.27083333333
          55.5625
          171.979166666667)
        Shape = qrsTopAndBottom
      end
      object QRShape3: TQRShape
        Left = 451
        Top = 0
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          1193.27083333333
          0
          171.979166666667)
        Shape = qrsHorLine
      end
    end
    inherited repTitleBand: TQRBand
      Height = 77
      Size.Values = (
        203.729166666667
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 277
        Top = 4
        Width = 143
        Size.Values = (
          52.9166666666667
          732.895833333333
          10.5833333333333
          378.354166666667)
        Caption = 'Interest for the day'
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
        Size.Values = (
          7.9375
          0
          60.8541666666667
          1846.79166666667)
      end
      inherited shpTitleBot: TQRShape
        Size.Values = (
          2.64583333333333
          0
          156.104166666667
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
