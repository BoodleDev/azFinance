inherited repAffordability: TrepAffordability
  Left = 145
  Top = 114
  Width = 839
  Height = 501
  Caption = 'repAffordability'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmAffordability.qryReport
    Font.Height = -11
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
      Size.Values = (
        124.354166666667
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
      Top = 386
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
      Top = 227
      Height = 16
      AfterPrint = qbDetailAfterPrint
      Size.Values = (
        42.3333333333333
        1846.79166666667)
      object QRDBText4: TQRDBText
        Left = 120
        Top = 0
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          317.5
          0
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmAffordability.qryReport
        DataField = 'Description'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 376
        Top = 0
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          994.833333333333
          0
          100.541666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmAffordability.qryReport
        DataField = 'Amount'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Height = 50
      BeforePrint = qrGroupBeforePrint
      Size.Values = (
        132.291666666667
        1846.79166666667)
      Expression = 'qryReport.LoanID'
      object QRDBText1: TQRDBText
        Left = 72
        Top = 8
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          190.5
          21.1666666666667
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmAffordability.qryReport
        DataField = 'LoanID'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 72
        Top = 32
        Width = 203
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          190.5
          84.6666666666667
          537.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Income as per payslip and bank statement'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 501
        Top = 32
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1325.5625
          84.6666666666667
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmAffordability.qryReport
        DataField = 'MonthGross'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 24
        Top = 8
        Width = 40
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          63.5
          21.1666666666667
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan ID:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qbGrpFoot: TQRBand
      Top = 266
      Height = 120
      BeforePrint = qbGrpFootBeforePrint
      Size.Values = (
        317.5
        1846.79166666667)
      object QRDBText2: TQRDBText
        Left = 40
        Top = 88
        Width = 633
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          232.833333333333
          1674.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = dtmAffordability.qryReport
        DataField = 'Note'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlNote: TQRLabel
        Left = 40
        Top = 72
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          105.833333333333
          190.5
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Note:'
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
      object QRLabel2: TQRLabel
        Left = 72
        Top = 2
        Width = 148
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          190.5
          5.29166666666667
          391.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EQUALS: Adjusted Net Income'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlNetIncome: TQRLabel
        Left = 506
        Top = 3
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1338.79166666667
          7.9375
          156.104166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlNetIncome'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 72
        Top = 20
        Width = 158
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          190.5
          52.9166666666667
          418.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LESS: Minimum amount to remain'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 500
        Top = 20
        Width = 65
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1322.91666666667
          52.9166666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmAffordability.qryReport
        DataField = 'HomeAmount'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 64
        Top = 37
        Width = 501
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          169.333333333333
          97.8958333333333
          1325.5625)
        Shape = qrsHorLine
      end
      object QRLabel4: TQRLabel
        Left = 72
        Top = 43
        Width = 223
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          190.5
          113.770833333333
          590.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EQUALS: Maximum Allowable Instalment'
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
      object QRDBText7: TQRDBText
        Left = 512
        Top = 41
        Width = 53
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1354.66666666667
          108.479166666667
          140.229166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmAffordability.qryReport
        DataField = 'MaxInstal'
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
      object QRShape3: TQRShape
        Left = 488
        Top = 2
        Width = 77
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          1291.16666666667
          5.29166666666667
          203.729166666667)
        Shape = qrsHorLine
      end
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        169.333333333333
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 258
        Width = 182
        Size.Values = (
          52.9166666666667
          682.625
          13.2291666666667
          481.541666666667)
        Caption = 'Affordability Calculation'
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
    object QRGroup1: TQRGroup
      Left = 48
      Top = 209
      Width = 698
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625
        1846.79166666667)
      Expression = 'qryReport.Category'
      FooterBand = QRBand1
      Master = QuickReport
      ReprintOnNewPage = False
      object qlCategory: TQRLabel
        Left = 72
        Top = 2
        Width = 53
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          190.5
          5.29166666666667
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlCategory'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 48
      Top = 243
      Width = 698
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.8541666666667
        1846.79166666667)
      BandType = rbGroupFooter
      object qlTotalAmount: TQRLabel
        Left = 496
        Top = 6
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1312.33333333333
          15.875
          182.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlTotalAmount'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 488
        Top = 2
        Width = 77
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          1291.16666666667
          5.29166666666667
          203.729166666667)
        Shape = qrsHorLine
      end
    end
  end
end
