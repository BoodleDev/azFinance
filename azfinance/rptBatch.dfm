inherited repBatch: TrepBatch
  Tag = 1046
  Left = 252
  Top = 181
  Width = 1039
  Height = 579
  Caption = 'repBatch'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    inherited qbColHeader: TQRBand
      Top = 129
      Height = 49
      Color = clSilver
      Size.Values = (
        129.645833333333300000
        1846.791666666667000000)
      inherited qlrepTitle: TQRLabel
        Size.Values = (
          44.979166666666670000
          1759.479166666667000000
          42.333333333333340000
          87.312500000000000000)
        FontSize = 8
      end
      inherited qlCpy1: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          5.291666666666667000
          145.520833333333300000)
        FontSize = 8
      end
      inherited qrDprint: TQRSysData
        Size.Values = (
          44.979166666666670000
          1632.479166666667000000
          5.291666666666667000
          214.312500000000000000)
        FontSize = 7
      end
      inherited shpColH: TQRShape
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          76.729166666666700000
          1846.791666666670000000)
      end
      object qlBatchNo: TQRLabel
        Left = 0
        Top = 32
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          84.666666666666680000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Batch no'
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
      object qlPersonKey: TQRLabel
        Left = 64
        Top = 32
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          84.666666666666680000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Client code'
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
      object qlLoanKey: TQRLabel
        Left = 136
        Top = 32
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          359.833333333333400000
          84.666666666666680000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Account No.'
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
      object qlTransCode: TQRLabel
        Left = 211
        Top = 32
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          558.270833333333400000
          84.666666666666680000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Trans code'
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
      object qlTransDate: TQRLabel
        Left = 356
        Top = 32
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666800000
          84.666666666666680000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Post date'
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
        Left = 284
        Top = 32
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          751.416666666666800000
          84.666666666666680000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Effect date'
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
      object qlAmount: TQRLabel
        Left = 446
        Top = 32
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1180.041666666667000000
          84.666666666666680000
          119.062500000000000000)
        Alignment = taLeftJustify
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
      object qlUserID: TQRLabel
        Left = 653
        Top = 32
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          84.666666666666680000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UserID'
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
      object qlRefNo: TQRLabel
        Left = 506
        Top = 32
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          84.666666666666680000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RefNo'
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
      object QRLabel1: TQRLabel
        Left = 588
        Top = 32
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          84.666666666666680000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RefNo2'
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
      Top = 229
      Height = 47
      Size.Values = (
        124.354166666666700000
        1846.791666666667000000)
      inherited qsdPageNo: TQRSysData
        Top = 26
        Size.Values = (
          44.979166666666670000
          828.145833333333200000
          68.791666666666680000
          190.500000000000000000)
        FontSize = 8
      end
      inherited qlweb: TQRLabel
        Size.Values = (
          29.104166666666670000
          1669.520833333333000000
          42.333333333333340000
          177.270833333333300000)
        FontSize = 6
      end
      object QRShape1: TQRShape
        Left = 418
        Top = 1
        Width = 85
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.645833333333330000
          1105.958333333330000000
          2.645833333333330000
          224.895833333333000000)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 418
        Top = 24
        Width = 85
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.645833333333330000
          1105.958333333330000000
          63.500000000000000000
          224.895833333333000000)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRExpr1: TQRExpr
        Left = 434
        Top = 6
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1148.291666666667000000
          15.875000000000000000
          174.625000000000000000)
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
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(Amount)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 418
        Top = 21
        Width = 85
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.645833333333330000
          1105.958333333330000000
          55.562500000000000000
          224.895833333333000000)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object qlPageTot: TQRLabel
        Left = 0
        Top = 6
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          15.875000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Page total'
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
    inherited qbDetail: TQRBand
      Top = 185
      Height = 16
      Size.Values = (
        42.333333333333340000
        1846.791666666667000000)
      object qdbtBatchNo: TQRDBText
        Left = 0
        Top = 2
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          5.291666666666667000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'BatchNo'
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
      object qdbtPersonKey: TQRDBText
        Left = 64
        Top = 2
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          5.291666666666667000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
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
      object qdbtLoanID: TQRDBText
        Left = 136
        Top = 2
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          359.833333333333400000
          5.291666666666667000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'AccountNo'
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
      object qdbtTransCode: TQRDBText
        Left = 210
        Top = 2
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          555.625000000000000000
          5.291666666666667000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'TransCode'
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
      object qdbtTransDate: TQRDBText
        Left = 355
        Top = 2
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          939.270833333333400000
          5.291666666666667000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'PostDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = 'dd/mm/yyyy'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qdbtEffDate: TQRDBText
        Left = 282
        Top = 2
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          746.125000000000000000
          5.291666666666667000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'EffectDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = 'dd/mm/yyyy'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qdbtAmount: TQRDBText
        Left = 453
        Top = 2
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1198.562500000000000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
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
      object qdbtUserID: TQRDBText
        Left = 654
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1730.375000000000000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'UserID'
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
      object qdbtRefNo: TQRDBText
        Left = 507
        Top = 2
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          5.291666666666667000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
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
      object qdbtRefNo2: TQRDBText
        Left = 588
        Top = 2
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          5.291666666666667000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'RefNo2'
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
      Top = 178
      Height = 7
      Size.Values = (
        18.520833333333330000
        1846.791666666667000000)
    end
    inherited qbGrpFoot: TQRBand
      Top = 201
      Height = 28
      Size.Values = (
        74.083333333333340000
        1846.791666666667000000)
      object qshpTopSum: TQRShape
        Left = 409
        Top = 1
        Width = 85
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.645833333333330000
          1082.145833333330000000
          2.645833333333330000
          224.895833333333000000)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object qshpBotSum2: TQRShape
        Left = 409
        Top = 24
        Width = 85
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.645833333333330000
          1082.145833333330000000
          63.500000000000000000
          224.895833333333000000)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object qexprSumAmt: TQRExpr
        Left = 425
        Top = 6
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1124.479166666667000000
          15.875000000000000000
          174.625000000000000000)
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
      object qshpBotSum1: TQRShape
        Left = 409
        Top = 21
        Width = 85
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          2.645833333333330000
          1082.145833333330000000
          55.562500000000000000
          224.895833333333000000)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object qlRepTot: TQRLabel
        Left = 0
        Top = 6
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          15.875000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Report total'
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
      object QRSysData1: TQRSysData
        Left = 304
        Top = 6
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333200000
          15.875000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
    end
    inherited repTitleBand: TQRBand
      Height = 81
      Size.Values = (
        214.312500000000000000
        1846.791666666667000000)
      inherited qlrepName: TQRLabel
        Top = 4
        Size.Values = (
          52.916666666666660000
          793.750000000000000000
          10.583333333333330000
          259.291666666666700000)
        FontSize = 12
      end
      inherited qlCpy: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          82.020833333333340000
          140.229166666666700000)
        FontSize = 8
      end
      inherited qlCpyName: TQRLabel
        Size.Values = (
          44.979166666666670000
          153.458333333333300000
          82.020833333333340000
          145.520833333333300000)
        FontSize = 8
      end
      inherited qlCpyAdr: TQRLabel
        Top = 49
        Size.Values = (
          44.979166666666670000
          153.458333333333300000
          129.645833333333300000
          87.312500000000000000)
        FontSize = 6
      end
      inherited qlAppID: TQRLabel
        Size.Values = (
          44.979166666666670000
          1812.395833333333000000
          34.395833333333340000
          34.395833333333340000)
        FontSize = 6
      end
      inherited shpTitleTop: TQRShape
        Size.Values = (
          7.937500000000000000
          0.000000000000000000
          60.854166666666700000
          1846.791666666670000000)
      end
      inherited shpTitleBot: TQRShape
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          156.104166666667000000
          1846.791666666670000000)
      end
      inherited qlApp: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          0.000000000000000000
          140.229166666666700000)
        FontSize = 8
      end
    end
  end
end
