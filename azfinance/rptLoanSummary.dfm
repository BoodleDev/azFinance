inherited repLoanSummary: TrepLoanSummary
  Tag = 1066
  Left = 163
  Top = 127
  Width = 473
  Height = 308
  HorzScrollBar.Position = 0
  Caption = 'repLoanSummary'
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
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    inherited qbColHeader: TQRBand
      Height = 78
      Font.Charset = ANSI_CHARSET
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      Size.Values = (
        206.375
        2717.27083333333)
      inherited qlrepTitle: TQRLabel
        Size.Values = (
          44.9791666666667
          2629.95833333333
          42.3333333333333
          87.3125)
        FontSize = 8
      end
      object QRLabel5: TQRLabel [1]
        Left = 268
        Top = 44
        Width = 49
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          709.083333333333
          116.416666666667
          129.645833333333)
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
      object QRLabel7: TQRLabel [2]
        Left = 353
        Top = 30
        Width = 39
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          933.979166666667
          79.375
          103.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total deferred interest'
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
      object QRLabel11: TQRLabel [3]
        Left = 421
        Top = 44
        Width = 44
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1113.89583333333
          116.416666666667
          116.416666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Available balance'
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
      object QRLabel13: TQRLabel [4]
        Left = 508
        Top = 61
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1344.08333333333
          161.395833333333
          129.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Loan'
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
      object QRLabel15: TQRLabel [5]
        Left = 596
        Top = 30
        Width = 39
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          1576.91666666667
          79.375
          103.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total credits received'
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
      object QRLabel16: TQRLabel [6]
        Left = 658
        Top = 44
        Width = 49
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1740.95833333333
          116.416666666667
          129.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total net add. dr /cr'
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
      object QRLabel4: TQRLabel [7]
        Left = 753
        Top = 30
        Width = 35
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          1992.3125
          79.375
          92.6041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total interest earned'
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
      object QRLabel6: TQRLabel [8]
        Left = 828
        Top = 44
        Width = 36
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          2190.75
          116.416666666667
          95.25)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Arrears amount'
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
      object QRLabel3: TQRLabel [9]
        Left = 906
        Top = 30
        Width = 36
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          2397.125
          79.375
          95.25)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Capital balance owed'
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
      object QRLabel17: TQRLabel [10]
        Left = 985
        Top = 30
        Width = 36
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          2606.14583333333
          79.375
          95.25)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total balance owed'
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
        Top = 44
        Size.Values = (
          89.9583333333333
          0
          116.416666666667
          92.6041666666667)
        FontSize = 8
      end
      inherited qlSandN: TQRLabel
        Left = 53
        Top = 61
        Size.Values = (
          44.9791666666667
          140.229166666667
          161.395833333333
          227.541666666667)
        FontSize = 8
      end
      inherited qlLoanC: TQRLabel
        Left = 189
        Top = 61
        Size.Values = (
          44.9791666666667
          500.0625
          161.395833333333
          44.9791666666667)
        FontSize = 8
      end
      inherited qlLoanT: TQRLabel
        Left = 218
        Top = 61
        Size.Values = (
          44.9791666666667
          576.791666666667
          161.395833333333
          31.75)
        FontSize = 8
      end
      inherited QRLabel1: TQRLabel
        Left = 175
        Top = 61
        Size.Values = (
          44.9791666666667
          463.020833333333
          161.395833333333
          23.8125)
        FontSize = 8
      end
    end
    inherited qbDetail: TQRBand [1]
      Top = 211
      Size.Values = (
        39.6875
        2717.27083333333)
      inherited qdbtLC: TQRDBText
        Left = 189
        Size.Values = (
          44.9791666666667
          500.0625
          0
          76.7291666666667)
        FontSize = 8
      end
      inherited qdbtLT: TQRDBText
        Left = 218
        Size.Values = (
          44.9791666666667
          576.791666666667
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
        Left = 104
        Size.Values = (
          44.9791666666667
          275.166666666667
          0
          211.666666666667)
        FontSize = 8
      end
      object QRDBText12: TQRDBText [4]
        Left = 349
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
          923.395833333333
          0
          113.770833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'TotInterest'
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
      object QRDBText9: TQRDBText [5]
        Left = 590
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
          1561.04166666667
          0
          119.0625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'TotCRRec'
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
      object QRDBText10: TQRDBText [6]
        Left = 664
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
          1756.83333333333
          0
          113.770833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'TotAddDC'
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
      object QRDBText5: TQRDBText [7]
        Left = 746
        Top = 0
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1973.79166666667
          0
          111.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'TotIntEarn'
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
      object QRDBText7: TQRDBText [8]
        Left = 817
        Top = 0
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2161.64583333333
          0
          124.354166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'ArrearsAmt'
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
      object QRDBText11: TQRDBText [9]
        Left = 908
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
          2402.41666666667
          0
          89.9583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'LoanBal'
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
      object QRDBText6: TQRDBText [10]
        Left = 991
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
          2622.02083333333
          0
          79.375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'AccBal'
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
      object QRExpr9: TQRExpr [11]
        Left = 276
        Top = 0
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          730.25
          0
          108.479166666667)
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
        Expression = 'AmtToFin'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr12: TQRExpr [12]
        Left = 469
        Top = 0
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1240.89583333333
          0
          232.833333333333)
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
        Expression = 'AmtToFin+TotInterest'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRDBText8: TQRDBText [13]
        Left = 437
        Top = 0
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1156.22916666667
          0
          74.0833333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'AvlBal'
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
      inherited qdbtSurname: TQRDBText
        Left = 53
        Size.Values = (
          44.9791666666667
          140.229166666667
          0
          100.541666666667)
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup [2]
      Top = 190
      Size.Values = (
        55.5625
        2717.27083333333)
      inherited qlGroupTxt: TQRLabel
        Width = 24
        Size.Values = (
          44.9791666666667
          0
          2.64583333333333
          63.5)
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Arial Narrow'
        FontSize = 8
      end
    end
    inherited qbGrpFoot: TQRBand [3]
      Top = 226
      Size.Values = (
        105.833333333333
        2717.27083333333)
      object QRShape3: TQRShape
        Left = 216
        Top = 4
        Width = 810
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.64583333333333
          571.5
          10.5833333333333
          2143.125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 216
        Top = 26
        Width = 810
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.64583333333333
          571.5
          68.7916666666667
          2143.125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRExpr6: TQRExpr
        Left = 793
        Top = 8
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2098.14583333333
          21.1666666666667
          187.854166666667)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(ArrearsAmt)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 24
        Top = 8
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          21.1666666666667
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Totals'
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
      object QRExpr13: TQRExpr
        Left = 968
        Top = 8
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2561.16666666667
          21.1666666666667
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(AccBal)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 886
        Top = 8
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2344.20833333333
          21.1666666666667
          153.458333333333)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(LoanBal)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 722
        Top = 8
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1910.29166666667
          21.1666666666667
          174.625)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(TotIntEarn)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 640
        Top = 8
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1693.33333333333
          21.1666666666667
          177.270833333333)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(TotAddDC)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 566
        Top = 8
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1497.54166666667
          21.1666666666667
          182.5625)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(TotCRRec)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr16: TQRExpr
        Left = 445
        Top = 8
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1177.39583333333
          21.1666666666667
          296.333333333333)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(AmtToFin+TotInterest)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 413
        Top = 8
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1092.72916666667
          21.1666666666667
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(AvlBal)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 325
        Top = 8
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          859.895833333333
          21.1666666666667
          177.270833333333)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(TotInterest)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr21: TQRExpr
        Left = 252
        Top = 8
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          666.75
          21.1666666666667
          171.979166666667)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(AmtToFin)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 216
        Top = 23
        Width = 810
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.64583333333333
          571.5
          60.8541666666667
          2143.125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRLabel2: TQRLabel
        Left = 64
        Top = 8
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
          21.1666666666667
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
      object QRSysData1: TQRSysData
        Left = 89
        Top = 8
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
          21.1666666666667
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
    end
    inherited repTitleBand: TQRBand [4]
      Size.Values = (
        169.333333333333
        2717.27083333333)
      inherited qlrepName: TQRLabel
        Left = 451
        Top = 8
        Width = 124
        Size.Values = (
          52.9166666666667
          1193.27083333333
          21.1666666666667
          328.083333333333)
        Caption = 'Loans summary'
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
    inherited qbPageFoot: TQRBand [5]
      Top = 306
      Height = 46
      Size.Values = (
        121.708333333333
        2717.27083333333)
      inherited qsdPageNo: TQRSysData
        Size.Values = (
          44.9791666666667
          1262.0625
          66.1458333333333
          190.5)
        FontSize = 8
      end
      inherited qlweb: TQRLabel
        Top = 33
        Size.Values = (
          29.1041666666667
          2540
          87.3125
          177.270833333333)
        FontSize = 6
      end
      object QRShape6: TQRShape
        Left = 216
        Top = 4
        Width = 810
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.64583333333333
          571.5
          10.5833333333333
          2143.125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 216
        Top = 26
        Width = 810
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.64583333333333
          571.5
          68.7916666666667
          2143.125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRLabel10: TQRLabel
        Left = 24
        Top = 8
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          21.1666666666667
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cumulative totals'
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
      object QRExpr20: TQRExpr
        Left = 793
        Top = 8
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2098.14583333333
          21.1666666666667
          187.854166666667)
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
        Expression = 'sum(ArrearsAmt)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr22: TQRExpr
        Left = 969
        Top = 8
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2563.8125
          21.1666666666667
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
        Expression = 'sum(AccBal)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr19: TQRExpr
        Left = 886
        Top = 8
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2344.20833333333
          21.1666666666667
          153.458333333333)
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
        Expression = 'sum(LoanBal)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr18: TQRExpr
        Left = 722
        Top = 8
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1910.29166666667
          21.1666666666667
          174.625)
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
        Expression = 'sum(TotIntEarn)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr17: TQRExpr
        Left = 640
        Top = 8
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1693.33333333333
          21.1666666666667
          177.270833333333)
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
        Expression = 'sum(TotAddDC)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr11: TQRExpr
        Left = 566
        Top = 8
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1497.54166666667
          21.1666666666667
          182.5625)
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
        Expression = 'sum(TotCRRec)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 445
        Top = 8
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1177.39583333333
          21.1666666666667
          296.333333333333)
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
        Expression = 'sum(AmtToFin+TotInterest)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr14: TQRExpr
        Left = 413
        Top = 8
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1092.72916666667
          21.1666666666667
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
        Expression = 'sum(AvlBal)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr15: TQRExpr
        Left = 325
        Top = 8
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          859.895833333333
          21.1666666666667
          177.270833333333)
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
        Expression = 'sum(TotInterest)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 252
        Top = 8
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          666.75
          21.1666666666667
          171.979166666667)
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
        Expression = 'sum(AmtToFin)'
        Mask = 'R#,#0.00;(R#,#0.00)'
        FontSize = 8
      end
      object QRShape8: TQRShape
        Left = 216
        Top = 23
        Width = 810
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.64583333333333
          571.5
          60.8541666666667
          2143.125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
    end
    inherited SummaryBand1: TQRBand
      Top = 266
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
