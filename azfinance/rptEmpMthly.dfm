inherited repEmpMthly: TrepEmpMthly
  Tag = 1053
  Left = 232
  Top = 130
  Width = 360
  Height = 297
  HorzScrollBar.Position = 0
  Caption = 'Employer weekly report'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Left = 8
    DataSet = dtmReports.cdsLSum
    Font.Charset = ANSI_CHARSET
    Font.Height = -11
    Font.Name = 'Arial Narrow'
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
      Height = 63
      Size.Values = (
        166.6875
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
        Width = 119
        Size.Values = (
          44.9791666666667
          0
          0
          314.854166666667)
        Caption = 'Employee weekly report for '
        FontSize = 8
      end
      inherited qlClientC: TQRLabel
        Width = 55
        Size.Values = (
          89.9583333333333
          0
          84.6666666666667
          145.520833333333)
        Caption = 'Employee number'
        FontSize = 8
      end
      inherited qlSandN: TQRLabel
        Size.Values = (
          44.9791666666667
          166.6875
          121.708333333333
          227.541666666667)
        FontSize = 8
      end
      inherited qlLoanC: TQRLabel
        Enabled = False
        Size.Values = (
          44.9791666666667
          502.708333333333
          121.708333333333
          44.9791666666667)
        FontSize = 8
      end
      inherited qlLoanT: TQRLabel
        Enabled = False
        Size.Values = (
          44.9791666666667
          584.729166666667
          121.708333333333
          31.75)
        FontSize = 8
      end
      inherited QRLabel1: TQRLabel
        Enabled = False
        Size.Values = (
          44.9791666666667
          455.083333333333
          121.708333333333
          23.8125)
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 562
        Top = 32
        Width = 49
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1486.95833333333
          84.6666666666667
          129.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Payable instalment'
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
        Left = 468
        Top = 32
        Width = 55
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1238.25
          84.6666666666667
          145.520833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Remaining term'
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
        Left = 271
        Top = 32
        Width = 51
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.4375
          717.020833333333
          84.6666666666667
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ID Number'
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
        Left = 353
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
          933.979166666667
          84.6666666666667
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Outstanding balance'
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
        Left = 672
        Top = 32
        Width = 48
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1778
          84.6666666666667
          127)
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
      object QRLabel8: TQRLabel
        Left = 768
        Top = 32
        Width = 48
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          2032
          84.6666666666667
          127)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total due'
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
      object QRLabel13: TQRLabel
        Left = 839
        Top = 32
        Width = 51
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          2219.85416666667
          84.6666666666667
          134.9375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Client number'
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
        Left = 943
        Top = 32
        Width = 51
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.6041666666667
          2495.02083333333
          84.6666666666667
          134.9375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Ref no'
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
      Top = 291
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
      Top = 196
      BeforePrint = qbDetailBeforePrint
      Size.Values = (
        39.6875
        2717.27083333333)
      inherited qdbtCode: TQRDBText [0]
        Width = 33
        Size.Values = (
          44.9791666666667
          0
          0
          87.3125)
        DataField = 'RefFld1'
        FontSize = 8
      end
      inherited qdbtLC: TQRDBText [1]
        Left = 271
        Width = 30
        Size.Values = (
          44.9791666666667
          717.020833333333
          0
          79.375)
        DataField = 'RegNo'
        FontSize = 8
      end
      inherited qdbtLT: TQRDBText [2]
        Left = 577
        Width = 30
        Size.Values = (
          44.9791666666667
          1526.64583333333
          0
          79.375)
        Alignment = taRightJustify
        DataField = 'PayIns'
        FontSize = 8
      end
      inherited myExpr1: TQRExpr
        Left = 386
        Width = 29
        Size.Values = (
          44.9791666666667
          1021.29166666667
          0
          76.7291666666667)
        Expression = 'Accbal'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      inherited qdbtSurname: TQRDBText
        Size.Values = (
          44.9791666666667
          166.6875
          0
          100.541666666667)
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 672
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
          1778
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
      object qrlblTotalDue: TQRLabel
        Left = 761
        Top = 0
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2013.47916666667
          0
          142.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlblTotalDue'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 417
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
          1103.3125
          0
          248.708333333333)
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
        Transparent = True
        WordWrap = True
        Expression = 'LoanPeriod - NoOfPay'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 839
        Top = 0
        Width = 90
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2219.85416666667
          0
          238.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'EntCode +'#39'-'#39' + LoanID'
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 943
        Top = 0
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2495.02083333333
          0
          71.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmReports.cdsLSum
        DataField = 'RefNo'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Top = 175
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
      Top = 211
      BeforePrint = qbGrpFootBeforePrint
      Size.Values = (
        105.833333333333
        2717.27083333333)
      object QRShape1: TQRShape
        Left = 350
        Top = 1
        Width = 260
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          926.041666666667
          2.64583333333333
          687.916666666667)
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 350
        Top = 23
        Width = 260
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          926.041666666667
          60.8541666666667
          687.916666666667)
        Shape = qrsTopAndBottom
      end
      object QRExpr3: TQRExpr
        Left = 361
        Top = 6
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          955.145833333334
          15.875
          145.520833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Sum(AccBal)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 554
        Top = 6
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1465.79166666667
          15.875
          142.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(PayIns)'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 747
        Top = 1
        Width = 71
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          1976.4375
          2.64583333333333
          187.854166666667)
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 747
        Top = 23
        Width = 71
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          1976.4375
          60.8541666666667
          187.854166666667)
        Shape = qrsTopAndBottom
      end
      object qrlblTotal: TQRLabel
        Left = 792
        Top = 6
        Width = 23
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2095.5
          15.875
          60.8541666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'None'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        169.333333333333
        2717.27083333333)
      inherited qlrepName: TQRLabel
        Left = 399
        Top = 8
        Width = 228
        Size.Values = (
          52.9166666666667
          1055.6875
          21.1666666666667
          603.25)
        Caption = 'Employee  weekly report (501)'
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
      object qrLogo: TQRImage
        Left = 921
        Top = 24
        Width = 105
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.8125
          2436.8125
          63.5
          277.8125)
        Stretch = True
      end
    end
    inherited SummaryBand1: TQRBand
      Top = 251
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
