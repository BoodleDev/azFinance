inherited repLoanFees: TrepLoanFees
  Tag = 1064
  Left = 235
  Top = 131
  Width = 427
  Height = 337
  HorzScrollBar.Position = 0
  Caption = 'Loan fees'
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
        Left = 202
        Size.Values = (
          44.9791666666667
          534.458333333333
          121.708333333333
          44.9791666666667)
        FontSize = 8
      end
      inherited qlLoanT: TQRLabel
        Left = 240
        Size.Values = (
          44.9791666666667
          635
          121.708333333333
          31.75)
        FontSize = 8
      end
      inherited QRLabel1: TQRLabel
        Left = 185
        Size.Values = (
          44.9791666666667
          489.479166666667
          121.708333333333
          23.8125)
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 292
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
          772.583333333333
          84.6666666666667
          164.041666666667)
        Alignment = taLeftJustify
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
        Left = 372
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
          984.25
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
        Left = 461
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
          1219.72916666667
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
        Left = 552
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
          1460.5
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
      object lblFee1: TQRLabel
        Left = 642
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
          1698.625
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fee 1'
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
      object lblFee2: TQRLabel
        Left = 704
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
          1862.66666666667
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fee 2'
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
      object lblFee3: TQRLabel
        Left = 766
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
          2026.70833333333
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fee 3'
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
      object lblFee4: TQRLabel
        Left = 828
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
          2190.75
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fee 4'
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
      object lblFee5: TQRLabel
        Left = 890
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
          2354.79166666667
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fee 5'
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
      object lblFee6: TQRLabel
        Left = 952
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
          2518.83333333333
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fee 6'
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
      inherited qdbtLC: TQRDBText
        Left = 203
        Size.Values = (
          44.9791666666667
          537.104166666667
          0
          76.7291666666667)
        FontSize = 8
      end
      inherited qdbtLT: TQRDBText
        Left = 241
        Size.Values = (
          44.9791666666667
          637.645833333333
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
        Left = 114
        Size.Values = (
          44.9791666666667
          301.625
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
      object QRDBText1: TQRDBText
        Left = 296
        Top = 0
        Width = 57
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          783.166666666667
          0
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
      object QRDBText2: TQRDBText
        Left = 392
        Top = 0
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1037.16666666667
          0
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
      object QRDBText3: TQRDBText
        Left = 494
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
          1307.04166666667
          0
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
      object QRDBText4: TQRDBText
        Left = 583
        Top = 0
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1542.52083333333
          0
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
      object QRDBText5: TQRDBText
        Left = 660
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
          1746.25
          0
          66.1458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'Fee1'
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
      object QRDBText6: TQRDBText
        Left = 722
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
          1910.29166666667
          0
          66.1458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'Fee2'
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
      object QRDBText7: TQRDBText
        Left = 784
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
          2074.33333333333
          0
          66.1458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'Fee3'
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
      object QRDBText8: TQRDBText
        Left = 845
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
          2235.72916666667
          0
          66.1458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'Fee4'
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
        Left = 907
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
          2399.77083333333
          0
          66.1458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'Fee5'
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
      object QRDBText10: TQRDBText
        Left = 969
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
          2563.8125
          0
          66.1458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'Fee6'
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
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          664.104166666667
          55.5625
          2032)
        Shape = qrsTopAndBottom
      end
      object QRExpr1: TQRExpr
        Left = 941
        Top = 4
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2489.72916666667
          10.5833333333333
          140.229166666667)
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
        Expression = 'sum(Fee6)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 879
        Top = 4
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2325.6875
          10.5833333333333
          140.229166666667)
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
        Expression = 'sum(Fee5)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 817
        Top = 4
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2161.64583333333
          10.5833333333333
          140.229166666667)
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
        Expression = 'sum(Fee4)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 756
        Top = 4
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2000.25
          10.5833333333333
          140.229166666667)
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
        Expression = 'sum(Fee3)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 694
        Top = 4
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1836.20833333333
          10.5833333333333
          140.229166666667)
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
        Expression = 'sum(Fee2)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 632
        Top = 4
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1672.16666666667
          10.5833333333333
          140.229166666667)
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
        Expression = 'sum(Fee1)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 562
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
          1486.95833333333
          10.5833333333333
          142.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 474
        Top = 4
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1254.125
          10.5833333333333
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
      object QRExpr9: TQRExpr
        Left = 365
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
          965.729166666667
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
      object QRExpr10: TQRExpr
        Left = 268
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
          709.083333333333
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
      object QRLabel6: TQRLabel
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
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        169.333333333333
        2717.27083333333)
      inherited qlrepName: TQRLabel
        Left = 454
        Top = 8
        Width = 118
        Size.Values = (
          52.9166666666667
          1201.20833333333
          21.1666666666667
          312.208333333333)
        Caption = 'Loan fees (400)'
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
