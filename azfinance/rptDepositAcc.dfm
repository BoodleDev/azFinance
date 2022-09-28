inherited repDepositAcc: TrepDepositAcc
  Tag = 1050
  Caption = 'repDepositAcc'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmLS.cdsDA
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
        Left = 115
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
          304.270833333333
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
        Width = 93
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
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Transaction date'
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
        Left = 217
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
          574.145833333333
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
      object qlDebit: TQRLabel
        Left = 419
        Top = 19
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1108.60416666667
          50.2708333333333
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Debit'
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
      object qlCredit: TQRLabel
        Left = 532
        Top = 19
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1407.58333333333
          50.2708333333333
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Credit'
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
    end
    inherited qbPageFoot: TQRBand
      Top = 474
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
      BeforePrint = qbDetailBeforePrint
      Size.Values = (
        50.2708333333333
        1846.79166666667)
      object qdbtBatchNo: TQRDBText
        Left = 115
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
          304.270833333333
          2.64583333333333
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsDA
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
        DataSet = dtmLS.cdsDA
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
        Left = 216
        Top = 1
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          571.5
          2.64583333333333
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsDA
        DataField = 'TansDesc'
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
      object qdbtBalance: TQRDBText
        Left = 673
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
          1780.64583333333
          2.64583333333333
          42.3333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsDA
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
      object qdbtD: TQRExpr
        Left = 364
        Top = 1
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          963.083333333333
          2.64583333333333
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
        Expression = 'if(Debit>0,Debit,'#39#39')'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object qdbtC: TQRExpr
        Left = 484
        Top = 1
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          2.64583333333333
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
        Expression = 'if(Debit<0,Debit,'#39#39')'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Height = 7
      Size.Values = (
        18.5208333333333
        1846.79166666667)
    end
    inherited qbGrpFoot: TQRBand
      Top = 438
      Height = 36
      BeforePrint = qbGrpFootBeforePrint
      Size.Values = (
        95.25
        1846.79166666667)
      inherited qshpTopSum: TQRShape
        Left = 361
        Width = 211
        Size.Values = (
          2.64583333333333
          955.145833333333
          2.64583333333333
          558.270833333333)
      end
      inherited qshpBotSum2: TQRShape
        Left = 361
        Width = 211
        Size.Values = (
          2.64583333333333
          955.145833333333
          63.5
          558.270833333333)
      end
      inherited qlTotal: TQRLabel
        Size.Values = (
          44.9791666666667
          31.75
          15.875
          92.6041666666667)
        FontSize = 8
      end
      object qltotD: TQRLabel [3]
        Left = 422
        Top = 6
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1116.54166666667
          15.875
          74.0833333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qltotD'
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
      object qlTotC: TQRLabel [4]
        Left = 549
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
          1452.5625
          15.875
          52.9166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'totC'
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
      inherited qshpBotSum1: TQRShape
        Left = 361
        Width = 211
        Size.Values = (
          2.64583333333333
          955.145833333333
          55.5625
          558.270833333333)
      end
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        870.479166666667
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 287
        Width = 123
        Size.Values = (
          52.9166666666667
          759.354166666667
          10.5833333333333
          325.4375)
        Caption = 'Deposit account'
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
        Size.Values = (
          293.6875
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
