inherited repLoanView: TrepLoanView
  Tag = 1067
  Left = -4
  Top = -4
  Width = 1032
  Height = 776
  Caption = 'repLoanView'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmLoanMan.qryLoanView
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
    PrinterSettings.FirstPage = 26
    PrinterSettings.LastPage = 26
    inherited qbColHeader: TQRBand
      Top = 125
      Height = 63
      Size.Values = (
        166.6875
        1846.79166666667)
      inherited qlrepTitle: TQRLabel
        Left = 599
        Width = 99
        Size.Values = (
          44.9791666666667
          1584.85416666667
          42.3333333333333
          261.9375)
        Caption = 'Loan summary view'
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
      object qlClientC: TQRLabel
        Left = 0
        Top = 32
        Width = 35
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          0
          84.6666666666667
          92.6041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Client code'
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
      object qlSandN: TQRLabel
        Left = 61
        Top = 46
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          161.395833333333
          121.708333333333
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Surname & Initials'
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
      object qlLoanC: TQRLabel
        Left = 175
        Top = 46
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          463.020833333333
          121.708333333333
          97.8958333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Loan ID'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = False
        FontSize = 8
      end
      object qlLoanT: TQRLabel
        Left = 214
        Top = 46
        Width = 12
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          566.208333333333
          121.708333333333
          31.75)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'LT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = False
        FontSize = 8
      end
      object qlFld1: TQRLabel
        Left = 256
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
          677.333333333333
          84.6666666666667
          145.520833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Client code'
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
      object qlFld2: TQRLabel
        Left = 336
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
          889
          84.6666666666667
          145.520833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Client code'
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
      object qlFld3: TQRLabel
        Left = 417
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
          1103.3125
          84.6666666666667
          145.520833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Client code'
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
      object qlFld4: TQRLabel
        Left = 497
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
          1314.97916666667
          84.6666666666667
          145.520833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Client code'
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
      object qlFld5: TQRLabel
        Left = 577
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
          1526.64583333333
          84.6666666666667
          145.520833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Client code'
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
      object qlFld6: TQRLabel
        Left = 650
        Top = 32
        Width = 44
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1719.79166666667
          84.6666666666667
          116.416666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Extended period'
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
      Top = 254
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
      Top = 196
      Height = 18
      Size.Values = (
        47.625
        1846.79166666667)
      object qdbtPsnKey: TQRDBText
        Left = 0
        Top = 0
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          0
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'EntCode'
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
      object qdbtSurname: TQRDBText
        Left = 61
        Top = 0
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          161.395833333333
          0
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'Surname'
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
      object qdbtLC: TQRDBText
        Left = 175
        Top = 0
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          463.020833333333
          0
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'LoanID'
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
      object qdbtLT: TQRDBText
        Left = 214
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
          566.208333333333
          0
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'LoanType'
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
      object qdbtFld3: TQRDBText
        Left = 443
        Top = 0
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1172.10416666667
          0
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'ToUse'
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
      object qdbtFld4: TQRDBText
        Left = 523
        Top = 0
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1383.77083333333
          0
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'ToUse'
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
      object qdbtFld6: TQRDBText
        Left = 666
        Top = 0
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1762.125
          0
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'ExtendPrd'
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
      object qdbtFld5: TQRDBText
        Left = 603
        Top = 0
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1595.4375
          0
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'ToUse'
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
      object qdbtFld2: TQRDBText
        Left = 362
        Top = 0
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          957.791666666667
          0
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'ToUse'
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
      object QRExpr16: TQRExpr
        Left = 232
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
          613.833333333333
          0
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
        Expression = 'if(LoanPeriod<=NoOfPay,if(AccBal<>0.00,'#39'*'#39','#39' '#39'),'#39' '#39')'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object qdbtFld1: TQRDBText
        Left = 282
        Top = 0
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          746.125
          0
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'ToUse'
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
      object QRDBText1: TQRDBText
        Left = 682
        Top = 0
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1804.45833333333
          0
          68.7916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmLoanMan.qryLoanView
        DataField = 'Status'
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
    end
    inherited qrGroup: TQRGroup
      Top = 188
      Height = 8
      Size.Values = (
        21.1666666666667
        1846.79166666667)
    end
    inherited qbGrpFoot: TQRBand
      Top = 214
      Size.Values = (
        105.833333333333
        1846.79166666667)
      object qrexp1: TQRExpr
        Left = 253
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
          669.395833333333
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
        Expression = 'sum(ToUses)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 216
        Top = 4
        Width = 450
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
          1190.625)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 216
        Top = 26
        Width = 450
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
          1190.625)
        Brush.Color = clBlack
        Shape = qrsRectangle
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
      object qrexp2: TQRExpr
        Left = 333
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
          881.0625
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
        Expression = 'sum(ToUses)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object qrexp3: TQRExpr
        Left = 414
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
          1095.375
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
        Expression = 'sum(ToUses)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object qrexp4: TQRExpr
        Left = 494
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
          1307.04166666667
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
        Expression = 'sum(ToUses)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object qrexp5: TQRExpr
        Left = 574
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
          1518.70833333333
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
        Expression = 'sum(ToUses)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object qrexp6: TQRExpr
        Left = 635
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
          1680.10416666667
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
        Expression = 'sum(ToUses)'
        Mask = 'R###,###,###,#0.00;(R###,###,###,#0.00)'
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 216
        Top = 23
        Width = 450
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
          1190.625)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRSysData1: TQRSysData
        Left = 144
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
          381
          21.1666666666667
          171.979166666667)
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
      Height = 77
      Size.Values = (
        203.729166666667
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 272
        Top = 4
        Width = 154
        Size.Values = (
          52.9166666666667
          719.666666666667
          10.5833333333333
          407.458333333333)
        Caption = 'Loan summary view'
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
    end
  end
end
