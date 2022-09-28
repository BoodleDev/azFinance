inherited repBulkAcc: TrepBulkAcc
  Tag = 1047
  Top = 132
  Height = 361
  Caption = 'repBulkAcc'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    BeforePrint = QuickReportBeforePrint
    DataSet = dtmLS.qryBulkAcc
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Page.Values = (
      127
      2970
      127
      2100
      127
      127
      0)
    ShowProgress = False
    inherited qbColHeader: TQRBand
      Top = 353
      Color = clSilver
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
        Enabled = False
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
      object qlBatchNo: TQRLabel [3]
        Left = 115
        Top = 32
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
          84.6666666666667
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
      object qlEffDate: TQRLabel [4]
        Left = 5
        Top = 32
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          84.6666666666667
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Effective date'
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
      object qlTransDesc: TQRLabel [5]
        Left = 217
        Top = 32
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
          84.6666666666667
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
      object qlDebit: TQRLabel [6]
        Left = 419
        Top = 32
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
          84.6666666666667
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
      object qlCredit: TQRLabel [7]
        Left = 532
        Top = 32
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
          84.6666666666667
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
      object qlBalance: TQRLabel [8]
        Left = 647
        Top = 32
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
          84.6666666666667
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
      object qlAccDet: TQRLabel [9]
        Left = 1
        Top = 16
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2.64583333333333
          42.3333333333333
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Account details'
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
      object QRDBText4: TQRDBText [10]
        Left = 101
        Top = 16
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          267.229166666667
          42.3333333333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Color = clWhite
        DataSet = dtmLS.qryBulkState
        DataField = 'EntCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel [11]
        Left = 171
        Top = 16
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          452.4375
          42.3333333333333
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText [12]
        Left = 177
        Top = 16
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          468.3125
          42.3333333333333
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Color = clWhite
        DataSet = dtmLS.qryBulkState
        DataField = 'LoanKey'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      inherited shpColH: TQRShape
        Enabled = False
        Size.Values = (
          5.29166666666667
          0
          76.7291666666667
          1846.79166666667)
      end
    end
    inherited qbPageFoot: TQRBand
      Top = 516
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
        DataSet = dtmLS.qryBulkAcc
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
        DataSet = dtmLS.qryBulkAcc
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
        Width = 54
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
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.qryBulkAcc
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
      object qdbtD: TQRExpr
        Left = 330
        Top = 1
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          873.125
          2.64583333333333
          314.854166666667)
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
        Expression = 'IF(AmtPost>0,AmtPost,'#39#39')'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object qdbtC: TQRExpr
        Left = 450
        Top = 1
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1190.625
          2.64583333333333
          314.854166666667)
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
        Expression = 'IF(AmtPost<0,AmtPost,'#39#39')'
        Mask = 'R###,#0.00;(R###,#0.00)'
        FontSize = 8
      end
      object QRBalance: TQRLabel
        Left = 665
        Top = 0
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1759.47916666667
          0
          58.2083333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0.00'
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
    inherited qrGroup: TQRGroup
      Top = 400
      BeforePrint = qrGroupBeforePrint
      Size.Values = (
        55.5625
        1846.79166666667)
      object QRLabel1: TQRLabel
        Left = 217
        Top = 3
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          574.145833333333
          7.9375
          219.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Opening Balance'
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
      object QRLabel2: TQRLabel
        Left = 665
        Top = 0
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1759.47916666667
          0
          58.2083333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0.00'
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
    inherited qbGrpFoot: TQRBand
      Top = 440
      Height = 36
      BeforePrint = qbGrpFootBeforePrint
      Size.Values = (
        95.25
        1846.79166666667)
      object qlTotal: TQRLabel
        Left = 12
        Top = 6
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          31.75
          15.875
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Totals'
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
      object qltotD: TQRLabel
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
      object qlTotC: TQRLabel
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
      object QRShape5: TQRShape
        Left = 360
        Top = 1
        Width = 212
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.64583333333333
          952.5
          2.64583333333333
          560.916666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 360
        Top = 21
        Width = 212
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          5.29166666666667
          952.5
          55.5625
          560.916666666667)
        Brush.Color = clBlack
        Shape = qrsTopAndBottom
      end
    end
    inherited repTitleBand: TQRBand
      Height = 305
      Size.Values = (
        806.979166666667
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 310
        Top = 4
        Width = 78
        Size.Values = (
          52.9166666666667
          820.208333333333
          10.5833333333333
          206.375)
        Caption = 'Statement'
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
        Top = 49
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
      object qlClientDet: TQRLabel
        Left = 48
        Top = 82
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          127
          216.958333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Client details'
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
      object qlNameSurname: TQRLabel
        Left = 48
        Top = 101
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          127
          267.229166666667
          285.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlNameSurname'
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
      object qlAccCode: TQRLabel
        Left = 448
        Top = 141
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1185.33333333333
          373.0625
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Account code'
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
      object qdbtPersonKey: TQRDBText
        Left = 537
        Top = 141
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1420.8125
          373.0625
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsBulkState
        DataField = 'EntCode'
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
      object QRLabel12: TQRLabel
        Left = 448
        Top = 160
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1185.33333333333
          423.333333333333
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Account status'
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
      object qlLoanStatus: TQRLabel
        Left = 537
        Top = 160
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1420.8125
          423.333333333333
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'status'
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
      object QRExprMemo1: TQRExprMemo
        Left = 48
        Top = 120
        Width = 257
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          127
          317.5
          679.979166666667)
        RemoveBlankLines = True
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Lines.Strings = (
          '{qryAdr.Address1}'
          '{qryAdr.Address2}'
          '{qryAdr.Address3}'
          '{qryAdr.Address4}'
          '{qryAdr.AddressCode}'
          '')
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 448
        Top = 101
        Width = 28
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1185.33333333333
          267.229166666667
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ID no'
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
      object qlIDno: TQRLabel
        Left = 537
        Top = 101
        Width = 25
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1420.8125
          267.229166666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'none'
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
      object QRLabel4: TQRLabel
        Left = 448
        Top = 120
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1185.33333333333
          317.5
          206.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reference no.'
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
      object QRDBText2: TQRDBText
        Left = 537
        Top = 120
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1420.8125
          317.5
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsBulkState
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
      object qshpLoanDet: TQRShape
        Left = 0
        Top = 213
        Width = 698
        Height = 90
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          238.125
          0
          563.5625
          1846.79166666667)
        Shape = qrsRectangle
      end
      object qlLoanDet: TQRLabel
        Left = 5
        Top = 215
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          568.854166666667
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan details'
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
      object qlTotLoan: TQRLabel
        Left = 5
        Top = 250
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          661.458333333333
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total loan'
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
      object qlLoanCode: TQRLabel
        Left = 5
        Top = 233
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          616.479166666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan ID'
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
      object qlStartDate: TQRLabel
        Left = 246
        Top = 250
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          650.875
          661.458333333333
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Start date'
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
      object qlPayInss: TQRLabel
        Left = 246
        Top = 283
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          650.875
          748.770833333333
          277.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Payable instalment'
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
      object qlLoanPrd: TQRLabel
        Left = 5
        Top = 267
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          706.4375
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan period'
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
      object qdbtLoanID: TQRDBText
        Left = 89
        Top = 233
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          235.479166666667
          616.479166666667
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsBulkState
        DataField = 'LoanID'
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
      object qdbtStartDate: TQRDBText
        Left = 358
        Top = 250
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          661.458333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsBulkState
        DataField = 'StartDate'
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
      object qdbtLPrd: TQRDBText
        Left = 89
        Top = 267
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          235.479166666667
          706.4375
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsBulkState
        DataField = 'LoanPeriod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '# months'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlTotLoanAmt: TQRLabel
        Left = 89
        Top = 250
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          235.479166666667
          661.458333333333
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlTotLoan'
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
      object qlsAmtFin: TQRLabel
        Left = 246
        Top = 267
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          650.875
          706.4375
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Amount financed'
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
      object qlsInstDate: TQRLabel
        Left = 486
        Top = 251
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1285.875
          664.104166666667
          230.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Instalment date'
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
      object qdbtInsDate: TQRDBText
        Left = 590
        Top = 251
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1561.04166666667
          664.104166666667
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsBulkState
        DataField = 'FirstInsDate'
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
      object qlNoInst: TQRLabel
        Left = 5
        Top = 283
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          748.770833333333
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No inst. paid'
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
      object qdbtNoInst: TQRDBText
        Left = 89
        Top = 283
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          235.479166666667
          748.770833333333
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLS.cdsBulkState
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
      object qlArrAmts: TQRLabel
        Left = 486
        Top = 233
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1285.875
          616.479166666667
          235.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Arrears amount'
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
      object qlAmtFin: TQRLabel
        Left = 358
        Top = 267
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          706.4375
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlAmtFin'
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
      object qlPayIns: TQRLabel
        Left = 358
        Top = 283
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          748.770833333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlPayIns'
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
      object qlArrAmt: TQRLabel
        Left = 590
        Top = 233
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1561.04166666667
          616.479166666667
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlArrAmt'
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
      Top = 476
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
    object qlRM: TQRLabel
      Left = 747
      Top = 308
      Width = 5
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1976.4375
        814.916666666667
        13.2291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '-'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object qlLM: TQRLabel
      Left = 43
      Top = 308
      Width = 5
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        113.770833333333
        814.916666666667
        13.2291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '-'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object qryAdr: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select EntityID, TypeID, AddressType,'#13#10'   Address1, Address2, Ad' +
      'dress3, Address4, AddressCode'#13#10'from Address'#13#10'where EntityID=:Ent' +
      'ityID and TypeID=1 and AddressType=:DefAdr'
    IndexFieldNames = 'EntityID;AddressType'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 27
      end
      item
        Name = 'DefAdr'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 1
      end>
    Left = 32
    Top = 16
  end
end
