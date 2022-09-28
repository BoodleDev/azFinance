inherited repLCPD: TrepLCPD
  Tag = 1060
  Left = 170
  Top = 113
  Width = 603
  Height = 410
  HorzScrollBar.Position = 149
  Caption = 'repLCPD'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Left = -141
    DataSet = dtmLCD.cdsContract
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
      Top = 367
      Height = 52
      Size.Values = (
        137.583333333333
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
          830.791666666667
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
      inherited qlAccDet: TQRLabel
        Size.Values = (
          44.9791666666667
          31.75
          42.3333333333333
          227.541666666667)
        FontSize = 8
      end
      inherited QRDBText4: TQRDBText
        Size.Values = (
          44.9791666666667
          267.229166666667
          42.3333333333333
          108.479166666667)
        FontSize = 8
      end
      inherited QRDBText5: TQRDBText
        Size.Values = (
          44.9791666666667
          489.479166666667
          42.3333333333333
          116.416666666667)
        FontSize = 8
      end
      inherited QRLabel5: TQRLabel
        Size.Values = (
          44.9791666666667
          452.4375
          42.3333333333333
          13.2291666666667)
        FontSize = 8
      end
      inherited shpColH: TQRShape
        Size.Values = (
          5.29166666666667
          0
          76.7291666666667
          1846.79166666667)
      end
      object qlTransNo: TQRLabel
        Left = 1
        Top = 34
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2.64583333333333
          89.9583333333333
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object qlPayDate: TQRLabel
        Left = 40
        Top = 34
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          89.9583333333333
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pay desc.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object qlTotCumInt: TQRLabel
        Left = 644
        Top = 36
        Width = 42
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1703.91666666667
          95.25
          111.125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Int. calc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object qlInstalment: TQRLabel
        Left = 160
        Top = 34
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          423.333333333333
          89.9583333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Effect. date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object qlInterest: TQRLabel
        Left = 285
        Top = 36
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          754.0625
          95.25
          119.0625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Amount'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object qlBalance: TQRLabel
        Left = 505
        Top = 36
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1336.14583333333
          95.25
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Balance'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object qlIntRate: TQRLabel
        Left = 573
        Top = 36
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1516.0625
          95.25
          113.770833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Int. rate'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qbPageFoot: TQRBand
      Top = 475
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
      Top = 421
      Height = 14
      BeforePrint = qbDetailBeforePrint
      Size.Values = (
        37.0416666666667
        1846.79166666667)
      object qdbtInstalment: TQRDBText
        Left = 160
        Top = 1
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          423.333333333333
          2.64583333333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLCD.cdsContract
        DataField = 'EffectDate'
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
      object qdbtIntPart: TQRDBText
        Left = 292
        Top = 1
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          772.583333333333
          2.64583333333333
          100.541666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLCD.cdsContract
        DataField = 'Amount'
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
      object qdbtCapPart: TQRDBText
        Left = 413
        Top = 1
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1092.72916666667
          2.64583333333333
          68.7916666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLCD.cdsContract
        DataField = 'IntME'
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
      object qdbtBal: TQRDBText
        Left = 509
        Top = 1
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1346.72916666667
          2.64583333333333
          105.833333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLCD.cdsContract
        DataField = 'Balance'
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
      object qdbtIntRate: TQRDBText
        Left = 584
        Top = 1
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1545.16666666667
          2.64583333333333
          89.9583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLCD.cdsContract
        DataField = 'IntRate'
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
      object qlPayDesc: TQRLabel
        Left = 40
        Top = 0
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          0
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlPayDesc'
        Color = clWhite
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
      object qdbtTotCumInt: TQRDBText
        Left = 648
        Top = 1
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1714.5
          2.64583333333333
          97.8958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLCD.cdsContract
        DataField = 'Interest'
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
      object QRExpr3: TQRExpr
        Left = 1
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
          2.64583333333333
          0
          103.1875)
        Alignment = taLeftJustify
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
        Expression = 'IF(PayNo>0, PayNo, '#39#39')'
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Top = 419
      Height = 2
      Size.Values = (
        5.29166666666667
        1846.79166666667)
    end
    inherited qbGrpFoot: TQRBand
      Top = 435
      Size.Values = (
        105.833333333333
        1846.79166666667)
      object QRExpr1: TQRExpr [0]
        Left = 265
        Top = 7
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          701.145833333333
          18.5208333333333
          174.625)
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
        Expression = 'sum(Amount)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRExpr2: TQRExpr [1]
        Left = 385
        Top = 6
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1018.64583333333
          15.875
          142.875)
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
        Expression = 'sum(IntME)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      inherited qshpTopSum: TQRShape
        Left = 240
        Width = 200
        Size.Values = (
          2.64583333333333
          635
          2.64583333333333
          529.166666666667)
      end
      inherited qshpBotSum2: TQRShape
        Left = 240
        Width = 200
        Size.Values = (
          2.64583333333333
          635
          63.5
          529.166666666667)
      end
      inherited qlTotal: TQRLabel
        Size.Values = (
          44.9791666666667
          31.75
          15.875
          92.6041666666667)
        FontSize = 8
      end
      inherited qshpBotSum1: TQRShape
        Left = 240
        Width = 200
        Size.Values = (
          2.64583333333333
          635
          55.5625
          529.166666666667)
      end
    end
    inherited repTitleBand: TQRBand
      Height = 319
      Size.Values = (
        844.020833333333
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 270
        Width = 158
        Size.Values = (
          52.9166666666667
          714.375
          10.5833333333333
          418.041666666667)
        Caption = 'Loan contract details'
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
      inherited qlClientDet: TQRLabel
        Size.Values = (
          44.9791666666667
          127
          216.958333333333
          161.395833333333)
        FontSize = 8
      end
      inherited qlNameSurname: TQRLabel
        Size.Values = (
          44.9791666666667
          127
          267.229166666667
          285.75)
        FontSize = 10
      end
      inherited qlAccCode: TQRLabel
        Top = 137
        Size.Values = (
          44.9791666666667
          1185.33333333333
          362.479166666667
          201.083333333333)
        FontSize = 8
      end
      inherited qdbtPersonKey: TQRDBText
        Top = 137
        Size.Values = (
          44.9791666666667
          1420.8125
          362.479166666667
          108.479166666667)
        FontSize = 8
      end
      inherited qshpLoanDet: TQRShape
        Height = 105
        Size.Values = (
          277.8125
          0
          563.5625
          1846.79166666667)
      end
      inherited qlLoanDet: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          568.854166666667
          179.916666666667)
        FontSize = 8
      end
      inherited qlTotLoan: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          661.458333333333
          142.875)
        FontSize = 8
      end
      inherited qlLoanCode: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          616.479166666667
          108.479166666667)
        FontSize = 8
      end
      inherited qlStartDate: TQRLabel
        Size.Values = (
          44.9791666666667
          672.041666666667
          661.458333333333
          142.875)
        FontSize = 8
      end
      inherited qlPayIns: TQRLabel
        Size.Values = (
          44.9791666666667
          672.041666666667
          748.770833333333
          277.8125)
        FontSize = 8
      end
      inherited qlLoanPrd: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          706.4375
          177.270833333333)
        FontSize = 8
      end
      inherited qdbtLoanID: TQRDBText
        Size.Values = (
          44.9791666666667
          256.645833333333
          616.479166666667
          89.9583333333333)
        FontSize = 8
      end
      inherited qdbtStartDate: TQRDBText
        Size.Values = (
          44.9791666666667
          968.375
          661.458333333333
          121.708333333333)
        FontSize = 8
      end
      inherited qdbtLPrd: TQRDBText
        Size.Values = (
          44.9791666666667
          256.645833333333
          706.4375
          145.520833333333)
        FontSize = 8
      end
      inherited qdbtPayIns: TQRDBText
        Size.Values = (
          44.9791666666667
          968.375
          748.770833333333
          87.3125)
        FontSize = 8
      end
      inherited qlTotLoanAmt: TQRLabel
        Size.Values = (
          44.9791666666667
          256.645833333333
          661.458333333333
          127)
        FontSize = 8
      end
      inherited qlsAmtFin: TQRLabel
        Size.Values = (
          44.9791666666667
          672.041666666667
          706.4375
          251.354166666667)
        FontSize = 8
      end
      inherited qdbtAmtFin: TQRDBText
        Size.Values = (
          44.9791666666667
          968.375
          706.4375
          121.708333333333)
        FontSize = 8
      end
      inherited qlsInstDate: TQRLabel
        Size.Values = (
          44.9791666666667
          1307.04166666667
          664.104166666667
          230.1875)
        FontSize = 8
      end
      inherited qdbtInsDate: TQRDBText
        Size.Values = (
          44.9791666666667
          1582.20833333333
          664.104166666667
          153.458333333333)
        FontSize = 8
      end
      inherited qlNoInst: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          748.770833333333
          179.916666666667)
        FontSize = 8
      end
      inherited qdbtNoInst: TQRDBText
        Size.Values = (
          44.9791666666667
          256.645833333333
          748.770833333333
          116.416666666667)
        FontSize = 8
      end
      inherited qlArrAmt: TQRLabel
        Size.Values = (
          44.9791666666667
          1307.04166666667
          616.479166666667
          235.479166666667)
        FontSize = 8
      end
      inherited qdbtArrAmt: TQRDBText
        Size.Values = (
          44.9791666666667
          1582.20833333333
          616.479166666667
          153.458333333333)
        FontSize = 8
      end
      inherited QRLabel12: TQRLabel
        Top = 155
        Size.Values = (
          44.9791666666667
          1185.33333333333
          410.104166666667
          222.25)
        FontSize = 8
      end
      inherited qlLoanStatus: TQRLabel
        Top = 155
        Size.Values = (
          44.9791666666667
          1420.8125
          410.104166666667
          82.0208333333333)
        FontSize = 8
      end
      inherited QRExprMemo1: TQRExprMemo
        Size.Values = (
          44.9791666666667
          127
          317.5
          679.979166666667)
        FontSize = 10
      end
      inherited QRLabel1: TQRLabel
        Width = 79
        Size.Values = (
          44.9791666666667
          1185.33333333333
          267.229166666667
          209.020833333333)
        Caption = 'ID no                 '
        FontSize = 8
      end
      inherited QRLabel2: TQRLabel
        Top = 119
        Width = 84
        Size.Values = (
          44.9791666666667
          1185.33333333333
          314.854166666667
          222.25)
        Caption = 'Reference no.  '
        FontSize = 8
      end
      inherited QRDBText2: TQRDBText
        Top = 119
        Size.Values = (
          44.9791666666667
          1420.8125
          314.854166666667
          82.0208333333333)
        FontSize = 8
      end
      inherited qlIDno: TQRLabel
        Size.Values = (
          44.9791666666667
          1420.8125
          267.229166666667
          66.1458333333333)
        FontSize = 8
      end
      inherited qlNetPay: TQRLabel
        Size.Values = (
          44.9791666666667
          672.041666666667
          616.479166666667
          264.583333333333)
        FontSize = 8
      end
      inherited qlNetPayAmt: TQRLabel
        Size.Values = (
          44.9791666666667
          968.375
          616.479166666667
          164.041666666667)
        FontSize = 8
      end
    end
    inherited qlLM: TQRLabel
      Size.Values = (
        44.9791666666667
        113.770833333333
        814.916666666667
        13.2291666666667)
      FontSize = 10
    end
    inherited qlRM: TQRLabel
      Size.Values = (
        44.9791666666667
        1976.4375
        814.916666666667
        13.2291666666667)
      FontSize = 10
    end
  end
end
