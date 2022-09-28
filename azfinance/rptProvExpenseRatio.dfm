inherited repProvExpenseRatio: TrepProvExpenseRatio
  Left = 36
  Top = 58
  Width = 956
  Height = 660
  VertScrollBar.Position = 14
  Caption = 'Provision Expense Ratio'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Top = -14
    DataSet = dtmReports.qryProvisionExRatio
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
      Height = 41
      Size.Values = (
        108.479166666667
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
        Top = 37
        Size.Values = (
          5.29166666666667
          0
          97.8958333333333
          2717.27083333333)
      end
    end
    inherited qbPageFoot: TQRBand
      Top = 257
      Height = 184
      Size.Values = (
        486.833333333333
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
      object qrcProvExpRatio: TQRChart
        Left = 72
        Top = 452
        Width = 689
        Height = 281
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          743.479166666667
          190.5
          1195.91666666667
          1822.97916666667)
        object QRDBChart1: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Foot.Font.Charset = DEFAULT_CHARSET
          Foot.Font.Color = clRed
          Foot.Font.Height = -11
          Foot.Font.Name = 'Arial'
          Foot.Font.Style = [fsBold]
          Foot.Text.Strings = (
            'Year')
          Title.Alignment = taLeftJustify
          Title.Text.Strings = (
            'Provision Expense Ratio, 2002 - 2004')
          LeftAxis.LabelsSeparation = 70
          LeftAxis.LabelStyle = talValue
          LeftAxis.Title.Caption = 'Ratio'
          Legend.TextStyle = ltsXValue
          object Series1: TBarSeries
            ColorEachPoint = True
            Marks.ArrowLength = 20
            Marks.Style = smsXValue
            Marks.Visible = True
            DataSource = dtmReports.qryProvisionExRatio
            SeriesColor = clRed
            Title = 'Average Gross Portfolio'
            XLabelsSource = 'MONTHNO'
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
    inherited qbDetail: TQRBand
      Top = 194
      Height = 23
      Size.Values = (
        60.8541666666667
        2717.27083333333)
      object SUM: TQRDBText
        Left = 328
        Top = 6
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          867.833333333334
          15.875
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryProvisionExRatio
        DataField = 'SUM'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object RATIO: TQRDBText
        Left = 512
        Top = 6
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          15.875
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryProvisionExRatio
        DataField = 'RATIO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object PostDate: TQRDBText
        Left = 720
        Top = 6
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1905
          15.875
          285.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryProvisionExRatio
        DataField = 'MONTHENDDATE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object PROVEXPENSE: TQRDBText
        Left = 104
        Top = 8
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          21.1666666666667
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.qryProvisionExRatio
        DataField = 'PROVEXP'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    inherited qrGroup: TQRGroup
      Top = 153
      Height = 41
      Size.Values = (
        108.479166666667
        2717.27083333333)
      object QRLabel1: TQRLabel
        Left = 64
        Top = 16
        Width = 186
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          169.333333333333
          42.3333333333333
          492.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan Loss Provision Expense'
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
        Left = 272
        Top = 16
        Width = 187
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          719.666666666667
          42.3333333333333
          494.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Average Gross Loan Portfolio'
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
        Left = 512
        Top = 16
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          42.3333333333333
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
        Left = 736
        Top = 14
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1947.33333333333
          37.0416666666667
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Year'
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
      Top = 217
      Size.Values = (
        105.833333333333
        2717.27083333333)
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        169.333333333333
        2717.27083333333)
      inherited qlrepName: TQRLabel
        Left = 399
        Width = 228
        Size.Values = (
          52.9166666666667
          1055.6875
          13.2291666666667
          603.25)
        Caption = '910 - Provision Expense Ratio'
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
      Top = 460
      Width = 943
      Height = 281
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        743.479166666667
        232.833333333333
        1217.08333333333
        2495.02083333333)
      object QRDBChart2: TQRDBChart
        Left = -1
        Top = -1
        Width = 1
        Height = 1
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Foot.Font.Charset = DEFAULT_CHARSET
        Foot.Font.Color = clRed
        Foot.Font.Height = -11
        Foot.Font.Name = 'Arial'
        Foot.Font.Style = [fsBold]
        Foot.Text.Strings = (
          'Year')
        Title.Alignment = taLeftJustify
        Title.Text.Strings = (
          'Provision Expense Ratio, 2002 - 2004')
        LeftAxis.LabelsSeparation = 70
        LeftAxis.LabelStyle = talValue
        LeftAxis.Title.Caption = 'Ratio'
        Legend.TextStyle = ltsXValue
        object BarSeries1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = dtmReports.qryProvisionExRatio
          SeriesColor = clRed
          Title = 'Average Gross Portfolio'
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
