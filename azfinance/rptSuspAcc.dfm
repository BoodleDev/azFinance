inherited repSuspAcc: TrepSuspAcc
  Left = 1
  Top = 99
  Width = 793
  Height = 427
  VertScrollBar.Position = 23
  Caption = 'repSuspAcc'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Top = -15
    DataSet = dtmBatchSusp.qryBatchHistory
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
      Top = 116
      Height = 46
      Size.Values = (
        121.708333333333
        1846.79166666667)
      inherited qlrepTitle: TQRLabel
        Top = 17
        Size.Values = (
          44.9791666666667
          1759.47916666667
          44.9791666666667
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
        Top = 35
        Size.Values = (
          5.29166666666667
          0
          92.6041666666667
          1846.79166666667)
      end
    end
    inherited qbPageFoot: TQRBand
      Top = 339
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
      Top = 195
      Height = 18
      Size.Values = (
        47.625
        1846.79166666667)
      object QRDBText1: TQRDBText
        Left = 6
        Top = 2
        Width = 42
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          15.875
          5.29166666666667
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmBatchSusp.qryBatchHistory
        DataField = 'TransNo'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 61
        Top = 2
        Width = 42
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          161.395833333333
          5.29166666666667
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmBatchSusp.qryBatchHistory
        DataField = 'BatchNo'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 126
        Top = 2
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          333.375
          5.29166666666667
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmBatchSusp.qryBatchHistory
        DataField = 'TransDate'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 214
        Top = 2
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          566.208333333333
          5.29166666666667
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmBatchSusp.qryBatchHistory
        DataField = 'EffectDate'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 302
        Top = 2
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          799.041666666667
          5.29166666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmBatchSusp.qryBatchHistory
        DataField = 'RefNo'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 380
        Top = 2
        Width = 36
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1005.41666666667
          5.29166666666667
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmBatchSusp.qryBatchHistory
        DataField = 'Refno2'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 476
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1259.41666666667
          5.29166666666667
          100.541666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmBatchSusp.qryBatchHistory
        DataField = 'Amount'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qrGroup: TQRGroup
      Top = 162
      Height = 33
      Size.Values = (
        87.3125
        1846.79166666667)
      object QRLabel1: TQRLabel
        Left = 5
        Top = 12
        Width = 47
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          13.2291666666667
          31.75
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TransNo'
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
        Left = 61
        Top = 12
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          161.395833333333
          31.75
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Batch No'
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
      object QRLabel3: TQRLabel
        Left = 125
        Top = 12
        Width = 63
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          330.729166666667
          31.75
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Trans. Date'
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
      object QRLabel4: TQRLabel
        Left = 213
        Top = 12
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          563.5625
          31.75
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Effective Date'
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
      object QRLabel5: TQRLabel
        Left = 301
        Top = 12
        Width = 67
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          796.395833333333
          31.75
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reference 1'
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
      object QRLabel6: TQRLabel
        Left = 381
        Top = 12
        Width = 67
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1008.0625
          31.75
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reference 2'
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
      object QRLabel7: TQRLabel
        Left = 469
        Top = 12
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1240.89583333333
          31.75
          119.0625)
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
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    inherited qbGrpFoot: TQRBand
      Top = 213
      Height = 126
      Size.Values = (
        333.375
        1846.79166666667)
      object QRLabel9: TQRLabel
        Left = 40
        Top = 52
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          105.833333333333
          137.583333333333
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Amount'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 8
        Top = 72
        Width = 96
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          21.1666666666667
          190.5
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No. of Transactions'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 128
        Top = 52
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          137.583333333333
          174.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(Amount)'
        Mask = 'R ###,###,##0.00'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 165
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
          436.5625
          190.5
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Count'
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 8
        Top = 97
        Width = 566
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          21.1666666666667
          256.645833333333
          1497.54166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '*Note: Some suspense transactions may be currently allocated for' +
          ' batch processing and do not reflect on this report.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 17
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          44.9791666666667
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Summary'
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
    end
    inherited repTitleBand: TQRBand
      Height = 68
      Size.Values = (
        179.916666666667
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 277
        Width = 144
        Size.Values = (
          52.9166666666667
          732.895833333333
          13.2291666666667
          381)
        Caption = 'Suspense Account'
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
  end
end
