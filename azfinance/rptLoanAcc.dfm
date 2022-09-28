inherited repLoanAcc: TrepLoanAcc
  Tag = 1061
  Left = 204
  Top = 115
  Width = 482
  Height = 363
  Caption = 'repLoanAcc'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmLS.cdsLA
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
        92.6041666666667
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
        Left = 2
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
      inherited qlAccDet: TQRLabel
        Size.Values = (
          44.9791666666667
          31.75
          2.64583333333333
          227.541666666667)
        FontSize = 8
      end
      inherited QRDBText4: TQRDBText
        Size.Values = (
          44.9791666666667
          267.229166666667
          2.64583333333333
          108.479166666667)
        FontSize = 8
      end
      inherited QRDBText5: TQRDBText
        Left = 177
        Size.Values = (
          44.9791666666667
          468.3125
          2.64583333333333
          116.416666666667)
        FontSize = 8
      end
      inherited QRLabel5: TQRLabel
        Size.Values = (
          44.9791666666667
          452.4375
          2.64583333333333
          13.2291666666667)
        FontSize = 8
      end
      object qlBatchNo: TQRLabel
        Left = 123
        Top = 19
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          325.4375
          50.2708333333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ref no'
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
      object qlEffDate: TQRLabel
        Left = 5
        Top = 19
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          50.2708333333333
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Trans date'
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
      object qlTransDesc: TQRLabel
        Left = 185
        Top = 19
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          489.479166666667
          50.2708333333333
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Transaction'
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
        Left = 647
        Top = 19
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1711.85416666667
          50.2708333333333
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
      object qlAddDC: TQRLabel
        Left = 333
        Top = 19
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          881.0625
          50.2708333333333
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Add D/C'
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
        Left = 432
        Top = 19
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1143
          50.2708333333333
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Instalment'
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
        Left = 548
        Top = 19
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1449.91666666667
          50.2708333333333
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interest'
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
      Top = 532
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
      Top = 419
      Height = 19
      Size.Values = (
        50.2708333333333
        1846.79166666667)
      object qdbtBatchNo: TQRDBText
        Left = 123
        Top = 1
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          325.4375
          2.64583333333333
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsLA
        DataField = 'RefNo'
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
      object qdbtEffDate: TQRDBText
        Left = 5
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
          13.2291666666667
          2.64583333333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsLA
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
      object qdbtTransDesc: TQRDBText
        Left = 185
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          489.479166666667
          2.64583333333333
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsLA
        DataField = 'TransDesc'
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
      object qdbtAddDC: TQRDBText
        Left = 345
        Top = 1
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          912.8125
          2.64583333333333
          92.6041666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsLA
        DataField = 'AddDC'
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
        Left = 674
        Top = 1
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1783.29166666667
          2.64583333333333
          42.3333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsLA
        DataField = 'Bal'
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
        Left = 463
        Top = 1
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1225.02083333333
          2.64583333333333
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsLA
        DataField = 'Credit'
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
        Left = 568
        Top = 1
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          2.64583333333333
          66.1458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsLA
        DataField = 'Debit'
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
      Height = 7
      Size.Values = (
        18.5208333333333
        1846.79166666667)
      Expression = 'PersonKey'
    end
    inherited qlLM: TQRLabel [4]
      Size.Values = (
        44.9791666666667
        113.770833333333
        814.916666666667
        13.2291666666667)
      FontSize = 10
    end
    inherited qlRM: TQRLabel [5]
      Size.Values = (
        44.9791666666667
        1976.4375
        814.916666666667
        13.2291666666667)
      FontSize = 10
    end
    inherited repTitleBand: TQRBand [6]
      Size.Values = (
        870.479166666667
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 276
        Width = 146
        Size.Values = (
          52.9166666666667
          730.25
          10.5833333333333
          386.291666666667)
        Caption = 'Client loan account'
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
        Width = 46
        Size.Values = (
          44.9791666666667
          153.458333333333
          129.645833333333
          121.708333333333)
        Font.Height = -11
        FontSize = 8
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
          132.291666666667)
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
        Size.Values = (
          44.9791666666667
          1185.33333333333
          267.229166666667
          201.083333333333)
        FontSize = 8
      end
      inherited qdbtPersonKey: TQRDBText
        Size.Values = (
          44.9791666666667
          1420.8125
          267.229166666667
          108.479166666667)
        FontSize = 8
      end
      inherited qshpLoanDet: TQRShape
        Left = -8
        Size.Values = (
          293.6875
          -21.1666666666667
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
          664.104166666667
          142.875)
        FontSize = 8
      end
      inherited qlLoanCode: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          616.479166666667
          153.458333333333)
        FontSize = 8
      end
      inherited qlStartDate: TQRLabel
        Size.Values = (
          44.9791666666667
          672.041666666667
          664.104166666667
          142.875)
        FontSize = 8
      end
      inherited qlPayIns: TQRLabel
        Size.Values = (
          44.9791666666667
          672.041666666667
          756.708333333333
          277.8125)
        FontSize = 8
      end
      inherited qlLoanPrd: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          709.083333333333
          177.270833333333)
        FontSize = 8
      end
      inherited qlCurRateL: TQRLabel
        Size.Values = (
          44.9791666666667
          34.3958333333333
          801.6875
          182.5625)
        FontSize = 8
      end
      inherited qdbtLoanKey: TQRDBText
        Size.Values = (
          44.9791666666667
          256.645833333333
          616.479166666667
          116.416666666667)
        FontSize = 8
      end
      inherited qdbtStartDate: TQRDBText
        Size.Values = (
          44.9791666666667
          968.375
          664.104166666667
          121.708333333333)
        FontSize = 8
      end
      inherited qdbtLPrd: TQRDBText
        Size.Values = (
          44.9791666666667
          256.645833333333
          709.083333333333
          145.520833333333)
        FontSize = 8
      end
      inherited qdbtPayIns: TQRDBText
        Size.Values = (
          44.9791666666667
          968.375
          756.708333333333
          87.3125)
        FontSize = 8
      end
      inherited qlTotLoanAmt: TQRLabel
        Size.Values = (
          44.9791666666667
          256.645833333333
          664.104166666667
          127)
        FontSize = 8
      end
      inherited qlsAmtFin: TQRLabel
        Size.Values = (
          44.9791666666667
          672.041666666667
          709.083333333333
          251.354166666667)
        FontSize = 8
      end
      inherited qdbtAmtFin: TQRDBText
        Size.Values = (
          44.9791666666667
          968.375
          709.083333333333
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
          756.708333333333
          179.916666666667)
        FontSize = 8
      end
      inherited qdbtNoInst: TQRDBText
        Size.Values = (
          44.9791666666667
          256.645833333333
          756.708333333333
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
        Size.Values = (
          44.9791666666667
          1185.33333333333
          317.5
          222.25)
        FontSize = 8
      end
      inherited qlLoanStatus: TQRLabel
        Size.Values = (
          44.9791666666667
          1420.8125
          317.5
          82.0208333333333)
        FontSize = 8
      end
      inherited qlRate: TQRLabel
        Size.Values = (
          44.9791666666667
          256.645833333333
          801.6875
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
    end
    inherited qbGrpFoot: TQRBand [7]
      Top = 438
      Height = 54
      Size.Values = (
        142.875
        1846.79166666667)
      object QRExpr1: TQRExpr [0]
        Left = 317
        Top = 6
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          838.729166666667
          15.875
          166.6875)
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
        Expression = 'sum(AddDC)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRExpr2: TQRExpr [1]
        Left = 435
        Top = 6
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1150.9375
          15.875
          150.8125)
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
        Expression = 'sum(Credit)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRExpr3: TQRExpr [2]
        Left = 540
        Top = 6
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1428.75
          15.875
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
        Expression = 'sum(Debit)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      inherited qshpTopSum: TQRShape
        Left = 294
        Size.Values = (
          2.64583333333333
          777.875
          2.64583333333333
          796.395833333333)
      end
      inherited qshpBotSum2: TQRShape
        Left = 294
        Size.Values = (
          2.64583333333333
          777.875
          63.5
          796.395833333333)
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
        Left = 294
        Size.Values = (
          2.64583333333333
          777.875
          55.5625
          796.395833333333)
      end
      object qlSettementAmt: TQRLabel
        Left = 12
        Top = 30
        Width = 76
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          31.75
          79.375
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlSettementAmt'
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
    end
    object SumBand: TQRBand
      Left = 48
      Top = 492
      Width = 698
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        105.833333333333
        1846.79166666667)
      BandType = rbSummary
      object lblBulk: TQRLabel
        Left = 8
        Top = 6
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          15.875
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Note'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object memQrBulkNote: TQRMemo
        Left = 45
        Top = 6
        Width = 638
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          119.0625
          15.875
          1688.04166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
end
