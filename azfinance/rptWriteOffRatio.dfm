inherited repWriteOffRatio: TrepWriteOffRatio
  Left = 0
  Top = 54
  Width = 1008
  Height = 614
  Caption = 'repWriteOffRatio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmReports.qryAvGrossPortfolio
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      127
      2100
      127
      2970
      127
      127
      0)
    inherited qbColHeader: TQRBand
      Height = 73
      Size.Values = (
        193.145833333333
        2717.27083333333)
      inherited qlrepTitle: TQRLabel
        Size.Values = (
          44.9791666666667
          2629.95833333333
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
          2502.95833333333
          5.29166666666667
          214.3125)
        FontSize = 7
      end
      inherited shpColH: TQRShape
        Size.Values = (
          5.29166666666667
          0
          76.7291666666667
          2717.27083333333)
      end
    end
    inherited qbPageFoot: TQRBand
      Top = 273
      Size.Values = (
        76.7291666666667
        2717.27083333333)
      inherited qsdPageNo: TQRSysData
        Size.Values = (
          44.9791666666667
          1262.0625
          23.8125
          190.5)
        FontSize = 8
      end
      inherited qlweb: TQRLabel
        Size.Values = (
          29.1041666666667
          2540
          42.3333333333333
          177.270833333333)
        FontSize = 6
      end
    end
    inherited qbDetail: TQRBand
      Top = 209
      Height = 24
      Size.Values = (
        63.5
        2717.27083333333)
      object QRDBText1: TQRDBText
        Left = 160
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
          423.333333333333
          0
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryAvGrossPortfolio
        DataField = 'COUNT'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 320
        Top = 0
        Width = 123
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          846.666666666667
          0
          325.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryAvGrossPortfolio
        DataField = 'WRITEOFFAMOUNT'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 528
        Top = 0
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1397
          0
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryAvGrossPortfolio
        DataField = 'SUM'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 704
        Top = 0
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1862.66666666667
          0
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryAvGrossPortfolio
        DataField = 'RATIO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 792
        Top = 0
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2095.5
          0
          285.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryAvGrossPortfolio
        DataField = 'MONTHENDDATE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    inherited qrGroup: TQRGroup
      Top = 185
      Height = 24
      Size.Values = (
        63.5
        2717.27083333333)
      object QRLabel1: TQRLabel
        Left = 136
        Top = 0
        Width = 133
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          359.833333333333
          0
          351.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Number of Write-Offs'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 328
        Top = 0
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          867.833333333334
          0
          291.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Write Off Amount'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 472
        Top = 0
        Width = 151
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1248.83333333333
          0
          399.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Average Gross Portfolio'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 704
        Top = 0
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1862.66666666667
          0
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ratio'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 800
        Top = 0
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2116.66666666667
          0
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Period'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    inherited qbGrpFoot: TQRBand
      Top = 233
      Size.Values = (
        105.833333333333
        2717.27083333333)
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        169.333333333333
        2717.27083333333)
      inherited qlrepName: TQRLabel
        Left = 439
        Width = 149
        Size.Values = (
          52.9166666666667
          1161.52083333333
          13.2291666666667
          394.229166666667)
        Caption = '920 - Write-off Ratio'
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
          2682.875
          34.3958333333333
          34.3958333333333)
        FontSize = 6
      end
      inherited shpTitleTop: TQRShape
        Size.Values = (
          7.9375
          0
          60.8541666666667
          2717.27083333333)
      end
      inherited shpTitleBot: TQRShape
        Size.Values = (
          2.64583333333333
          0
          156.104166666667
          2717.27083333333)
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
    object QRChart1: TQRChart
      Left = 88
      Top = 425
      Width = 841
      Height = 295
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        780.520833333333
        232.833333333333
        1124.47916666667
        2225.14583333333)
      object QRDBChart1: TQRDBChart
        Left = -1
        Top = -1
        Width = 1
        Height = 1
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TQRChart')
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = dtmReports.qryAvGrossPortfolio
          SeriesColor = clRed
          Title = 'WriteOffRatio'
          XLabelsSource = 'MONTHENDDATE'
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'MONTHENDDATE'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'RATIO'
        end
      end
    end
  end
end
