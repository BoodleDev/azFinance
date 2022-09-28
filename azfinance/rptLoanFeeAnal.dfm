inherited repLoanFeeAnal: TrepLoanFeeAnal
  Tag = 1063
  Left = 217
  Top = 156
  Width = 379
  Height = 324
  HorzScrollBar.Position = 0
  Caption = 'Loan fee analysis'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Left = 8
    DataSet = dtmReports.cdsLSum
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
      Size.Values = (
        164.041666666667
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
      inherited lblLegend: TQRLabel
        Size.Values = (
          44.9791666666667
          0
          0
          539.75)
        FontSize = 8
      end
      inherited qlClientC: TQRLabel
        Size.Values = (
          89.9583333333333
          0
          84.6666666666667
          92.6041666666667)
        FontSize = 8
      end
      inherited qlSandN: TQRLabel
        Left = 54
        Size.Values = (
          44.9791666666667
          142.875
          121.708333333333
          227.541666666667)
        FontSize = 8
      end
      inherited qlLoanC: TQRLabel
        Left = 193
        Size.Values = (
          44.9791666666667
          510.645833333333
          121.708333333333
          44.9791666666667)
        FontSize = 8
      end
      inherited qlLoanT: TQRLabel
        Left = 226
        Size.Values = (
          44.9791666666667
          597.958333333333
          121.708333333333
          31.75)
        FontSize = 8
      end
      inherited QRLabel1: TQRLabel
        Left = 177
        Size.Values = (
          44.9791666666667
          468.3125
          121.708333333333
          23.8125)
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 281
        Top = 32
        Width = 62
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          743.479166666667
          84.6666666666667
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan amount'
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
        Left = 457
        Top = 32
        Width = 65
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1209.14583333333
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Amount to finance'
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
        Left = 538
        Top = 32
        Width = 65
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1423.45833333333
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Monthly installment'
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
      object QRLabel5: TQRLabel
        Left = 677
        Top = 32
        Width = 65
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1791.22916666667
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Payable installment'
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
      object QRLabel6: TQRLabel
        Left = 744
        Top = 32
        Width = 65
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1968.5
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Loan period'
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
      object QRLabel7: TQRLabel
        Left = 813
        Top = 32
        Width = 65
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          2151.0625
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'No. of installments'
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
      object QRLabel8: TQRLabel
        Left = 881
        Top = 32
        Width = 65
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          2330.97916666667
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'No. of inst. remaining'
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
      object QRLabel9: TQRLabel
        Left = 946
        Top = 32
        Width = 84
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          2502.95833333333
          84.6666666666667
          222.25)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Estimated total mth. owed'
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
      object QRLabel10: TQRLabel
        Left = 372
        Top = 32
        Width = 62
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          984.25
          84.6666666666667
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Financed fees'
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
      object QRLabel11: TQRLabel
        Left = 618
        Top = 32
        Width = 57
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1635.125
          84.6666666666667
          150.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Monthly fees'
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
    inherited qbPageFoot: TQRBand
      Height = 29
      Size.Values = (
        76.7291666666667
        2717.27083333333)
      inherited qsdPageNo: TQRSysData
        Top = 9
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
      Size.Values = (
        39.6875
        2717.27083333333)
      object QRExpr3: TQRExpr [0]
        Left = 840
        Top = 0
        Width = 173
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2222.5
          0
          457.729166666667)
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
        Expression = 'FeeToInsTot*(LoanPeriod-NoOfPay)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRExpr1: TQRExpr [1]
        Left = 314
        Top = 0
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          830.791666666667
          0
          296.333333333333)
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
        Expression = 'AmtToFin - LoanCapital'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr2: TQRExpr [2]
        Left = 826
        Top = 0
        Width = 102
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2185.45833333333
          0
          269.875)
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
        Expression = 'LoanPeriod-NoOfPay'
        FontSize = 8
      end
      inherited qdbtLC: TQRDBText
        Left = 194
        Size.Values = (
          44.9791666666667
          513.291666666667
          0
          76.7291666666667)
        FontSize = 8
      end
      inherited qdbtLT: TQRDBText
        Left = 226
        Size.Values = (
          44.9791666666667
          597.958333333333
          0
          113.770833333333)
        FontSize = 8
      end
      inherited qdbtCode: TQRDBText
        Size.Values = (
          44.9791666666667
          0
          0
          95.25)
        FontSize = 8
      end
      inherited myExpr1: TQRExpr
        Left = 108
        Size.Values = (
          44.9791666666667
          285.75
          0
          211.666666666667)
        FontSize = 8
      end
      inherited qdbtSurname: TQRDBText
        Left = 54
        Size.Values = (
          44.9791666666667
          142.875
          0
          100.541666666667)
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 821
        Top = 1
        Width = 44
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2172.22916666667
          2.64583333333333
          116.416666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'NoOfPay'
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
      object QRDBText5: TQRDBText
        Left = 747
        Top = 1
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1976.4375
          2.64583333333333
          145.520833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'LoanPeriod'
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
      object QRDBText4: TQRDBText
        Left = 699
        Top = 1
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1849.4375
          2.64583333333333
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'PayIns'
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
      object QRDBText3: TQRDBText
        Left = 564
        Top = 1
        Width = 32
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1492.25
          2.64583333333333
          84.6666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'MthIns'
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
      object QRDBText2: TQRDBText
        Left = 470
        Top = 1
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1243.54166666667
          2.64583333333333
          121.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'AmtToFin'
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
      object QRDBText1: TQRDBText
        Left = 286
        Top = 1
        Width = 57
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          756.708333333333
          2.64583333333333
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'LoanCapital'
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
      object QRDBText9: TQRDBText
        Left = 614
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
          1624.54166666667
          0
          140.229166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'FeeToInsTot'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Size.Values = (
        55.5625
        2717.27083333333)
      inherited qlGroupTxt: TQRLabel
        Size.Values = (
          44.9791666666667
          0
          2.64583333333333
          76.7291666666667)
        FontSize = 8
      end
    end
    inherited qbGrpFoot: TQRBand
      Size.Values = (
        105.833333333333
        2717.27083333333)
      object QRShape2: TQRShape
        Left = 251
        Top = 21
        Width = 768
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          664.104166666667
          55.5625
          2032)
        Shape = qrsTopAndBottom
      end
      object QRLabel12: TQRLabel
        Left = 64
        Top = 4
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          169.333333333333
          10.5833333333333
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rec.'
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
      object QRExpr10: TQRExpr
        Left = 815
        Top = 4
        Width = 198
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2156.35416666667
          10.5833333333333
          523.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
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
        Expression = 'sum(FeeToInsTot *(LoanPeriod-NoOfPay))'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr9: TQRExpr
        Left = 671
        Top = 4
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1775.35416666667
          10.5833333333333
          161.395833333333)
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
        Expression = 'sum(PayIns)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 580
        Top = 4
        Width = 88
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1534.58333333333
          10.5833333333333
          232.833333333333)
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
        Expression = 'sum(FeeToInsTot)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 536
        Top = 4
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1418.16666666667
          10.5833333333333
          158.75)
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
        Expression = 'sum(MthIns)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 442
        Top = 4
        Width = 74
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1169.45833333333
          10.5833333333333
          195.791666666667)
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
        Expression = 'sum(AmtToFin)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 286
        Top = 4
        Width = 140
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          756.708333333333
          10.5833333333333
          370.416666666667)
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
        Expression = 'sum(AmtToFin - LoanCapital)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 89
        Top = 4
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          235.479166666667
          10.5833333333333
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 251
        Top = 1
        Width = 768
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          664.104166666667
          2.64583333333333
          2032)
        Shape = qrsHorLine
      end
      object QRExpr4: TQRExpr
        Left = 258
        Top = 4
        Width = 85
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          682.625
          10.5833333333333
          224.895833333333)
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
        Expression = 'sum(LoanCapital)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        169.333333333333
        2717.27083333333)
      inherited qlrepName: TQRLabel
        Left = 425
        Top = 8
        Width = 176
        Size.Values = (
          52.9166666666667
          1124.47916666667
          21.1666666666667
          465.666666666667)
        Caption = 'Loan fee analysis (401)'
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
    inherited SummaryBand1: TQRBand
      Size.Values = (
        105.833333333333
        2717.27083333333)
      inherited qMemFil: TQRMemo
        Size.Values = (
          124.354166666667
          21.1666666666667
          5.29166666666667
          1209.14583333333)
        FontSize = 8
      end
    end
  end
end
