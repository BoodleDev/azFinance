inherited repSettlement: TrepSettlement
  Tag = 1070
  Left = 396
  Top = 128
  Width = 925
  Height = 780
  VertScrollBar.Position = 413
  Caption = 'repSettle'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    Top = -381
    DataSet = dsSettlementDetails
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnNeedData = QuickReportNeedData
    Page.Values = (
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    Units = Native
    inherited qbColHeader: TQRBand
      Top = 209
      Height = 0
      Size.Values = (
        0.000000000000000000
        1846.791666666667000000)
      inherited qlrepTitle: TQRLabel
        Left = 679
        Top = 8
        Width = 19
        Enabled = False
        Size.Values = (
          44.979166666666670000
          1796.520833333333000000
          21.166666666666670000
          50.270833333333330000)
        Caption = 'asd'
        FontSize = 8
      end
      inherited qlCpy1: TQRLabel
        Enabled = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          5.291666666666667000
          145.520833333333300000)
        FontSize = 8
      end
      inherited qrDprint: TQRSysData
        Enabled = False
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
    end
    inherited qbPageFoot: TQRBand
      Top = 950
      Height = 5
      Size.Values = (
        13.229166666666670000
        1846.791666666667000000)
      inherited qsdPageNo: TQRSysData
        Enabled = False
        Size.Values = (
          44.979166666666670000
          828.145833333333300000
          23.812500000000000000
          190.500000000000000000)
        FontSize = 8
      end
      inherited qlweb: TQRLabel
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1669.520833333333000000
          42.333333333333330000
          177.270833333333300000)
        FontSize = 6
      end
    end
    inherited qbDetail: TQRBand
      Top = 409
      Height = 21
      Size.Values = (
        55.562500000000000000
        1846.791666666667000000)
      object QRDBText9: TQRDBText
        Left = 19
        Top = 3
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          50.270833333333330000
          7.937500000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'Description'
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
      object QRDBText10: TQRDBText
        Left = 259
        Top = 3
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          685.270833333333300000
          7.937500000000000000
          100.541666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
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
    end
    inherited qrGroup: TQRGroup
      Top = 209
      Height = 200
      Size.Values = (
        529.166666666666700000
        1846.791666666667000000)
      object QRLabel1: TQRLabel
        Left = 19
        Top = 175
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          50.270833333333330000
          463.020833333333300000
          301.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LOAN REFERENCE NO.'
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
      object QRLabel19: TQRLabel
        Left = 148
        Top = 18
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          391.583333333333300000
          47.625000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Surname:'
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
      object QRLabel20: TQRLabel
        Left = 15
        Top = 19
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          50.270833333333330000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'First Name:'
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
      object QRDBText23: TQRDBText
        Left = 97
        Top = 19
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          50.270833333333330000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'Name'
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
      object QRDBText22: TQRDBText
        Left = 206
        Top = 18
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          47.625000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'Name2'
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
      object QRDBText25: TQRDBText
        Left = 97
        Top = 36
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          95.250000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'RegNo'
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
      object QRLabel6: TQRLabel
        Left = 15
        Top = 36
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          95.250000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ID Number:'
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
        Left = 15
        Top = 52
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          137.583333333333300000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Address:'
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
      object QRDBText4: TQRDBText
        Left = 97
        Top = 52
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          137.583333333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'Address1'
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
      object QRDBText5: TQRDBText
        Left = 97
        Top = 68
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          256.645833333333300000
          179.916666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'Address2'
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
      object QRDBText6: TQRDBText
        Left = 96
        Top = 83
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          219.604166666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'Address3'
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
      object QRDBText8: TQRDBText
        Left = 96
        Top = 100
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          264.583333333333300000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'AddressCode'
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
      object QRShape6: TQRShape
        Left = 0
        Top = 160
        Width = 697
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          0.000000000000000000
          423.333333333333300000
          1844.145833333333000000)
        Brush.Color = clSilver
        Shape = qrsHorLine
      end
      object QRDBText3: TQRDBText
        Left = 139
        Top = 175
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          367.770833333333300000
          463.020833333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'RefNo'
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
      object QRLabel26: TQRLabel
        Left = 15
        Top = 68
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          179.916666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Suburb:'
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
      object QRLabel27: TQRLabel
        Left = 15
        Top = 84
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          222.250000000000000000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'City:'
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
      object QRLabel28: TQRLabel
        Left = 15
        Top = 100
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          264.583333333333300000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Postal Code:'
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
      object QRSysData1: TQRSysData
        Left = 434
        Top = 18
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1148.291666666667000000
          47.625000000000000000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 434
        Top = 35
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1148.291666666667000000
          92.604166666666670000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quotation Date'
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
      object qlQuoteDate: TQRLabel
        Left = 522
        Top = 35
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1381.125000000000000000
          92.604166666666670000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlQuoteDate'
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
      object QRLabel24: TQRLabel
        Left = 434
        Top = 54
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1148.291666666667000000
          142.875000000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quoted by'
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
      object qlUserID: TQRLabel
        Left = 522
        Top = 54
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1381.125000000000000000
          142.875000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlUserID'
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
      object QRLabel3: TQRLabel
        Left = 268
        Top = 142
        Width = 161
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          709.083333333333300000
          375.708333333333300000
          425.979166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Settlement Quotation'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
    end
    inherited qbGrpFoot: TQRBand
      Top = 430
      Height = 520
      Size.Values = (
        1375.833333333333000000
        1846.791666666667000000)
      object lblFinalTitle: TQRLabel
        Left = 16
        Top = 6
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          15.875000000000000000
          320.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SETTLEMENT AMOUNT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 8
        Top = 45
        Width = 697
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          119.062500000000000000
          1844.145833333333000000)
        Brush.Color = clSilver
        Shape = qrsHorLine
      end
      object QRLabel5: TQRLabel
        Left = 24
        Top = 103
        Width = 665
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          63.500000000000000000
          272.520833333333400000
          1759.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'The Settlement Quotation has been generated to reflect all payme' +
          'nts made by you to date. Should any cheque or payment not be met' +
          ' timeously or at all and/or any payment be referred to us by you' +
          'r bank then notwithstanding the rights that Boodle (PTY) Ltd may' +
          ' have in terms of the Loan Agreement or otherwise, the Settlemen' +
          't Quotation will no longer be valid and you will need to obtain ' +
          'a revised quotation from Boodle (PTY) Ltd.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 24
        Top = 165
        Width = 665
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          63.500000000000000000
          436.562499999999900000
          1759.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Should the Settlement Date be a date in the future then the sett' +
          'lement amount does not include payments from the date when the S' +
          'ettlement Quotation was calculated to the actual Settlement Date' +
          ' and such payments will still need to be made by you as and when' +
          ' they fall due.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 24
        Top = 211
        Width = 665
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          63.500000000000000000
          558.270833333333400000
          1759.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'This Settlement Quotation is furnished to you without predjudice' +
          ' to any rights Boodle (PTY) Ltd may have in terms of the Loan Ag' +
          'reement, or otherwise.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 24
        Top = 244
        Width = 665
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          645.583333333333400000
          1759.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Should there be an error or omission in calculation you will rem' +
          'ain liable to Boodle (PTY) Ltd for all amounts due.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 8
        Top = 260
        Width = 697
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          687.916666666666800000
          1844.145833333333000000)
        Brush.Color = clSilver
        Shape = qrsHorLine
      end
      object QRLabel11: TQRLabel
        Left = 24
        Top = 306
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          809.625000000000000000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Account Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 24
        Top = 325
        Width = 25
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          63.500000000000000000
          859.895833333333300000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bank'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 24
        Top = 345
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          912.812500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Branch'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 24
        Top = 364
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          963.083333333333300000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Branch Code'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 24
        Top = 383
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          1013.354166666667000000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Account Number'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 8
        Top = 437
        Width = 587
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1156.229166666667000000
          1553.104166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'This quote as well as a copy of the bank deposit slip must be fa' +
          'xed to 087 231 3679 or emailed to support@boodle.co.za.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 8
        Top = 478
        Width = 265
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          1264.708333333333000000
          701.145833333333400000)
        Brush.Color = clSilver
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 352
        Top = 478
        Width = 201
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          931.333333333333500000
          1264.708333333333000000
          531.812500000000000000)
        Brush.Color = clSilver
        Shape = qrsHorLine
      end
      object QRLabel17: TQRLabel
        Left = 352
        Top = 492
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          1301.750000000000000000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qlFullname: TQRExpr
        Left = 171
        Top = 492
        Width = 116
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          452.437500000000000000
          1301.750000000000000000
          306.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Name + '#39' '#39' + Name2'
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 128
        Top = 306
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          809.625000000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Boodle (PTY) Ltd'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlBankName: TQRLabel
        Left = 128
        Top = 326
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          862.541666666666700000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ABSA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlBranchName: TQRLabel
        Left = 128
        Top = 345
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          912.812500000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Universal branch'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlBranchCode: TQRLabel
        Left = 128
        Top = 364
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          963.083333333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '632 005'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlAcountNo: TQRLabel
        Left = 128
        Top = 383
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          1013.354166666667000000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '407 856 1385'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 8
        Top = 492
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1301.750000000000000000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Signed as received'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object rdtImportant: TRichEdit
        Left = 8
        Top = 407
        Width = 353
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Important: Please use reference number 1234 when making payment')
        ParentFont = False
        TabOrder = 23
      end
      object QRLabel31: TQRLabel
        Left = 8
        Top = 60
        Width = 32
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          158.750000000000000000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOTE:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 8
        Top = 80
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          211.666666666666700000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 8
        Top = 103
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          272.520833333333300000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 8
        Top = 165
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          436.562500000000000000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 8
        Top = 211
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          558.270833333333300000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 8
        Top = 244
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          645.583333333333300000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '5.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlSettlementAmount: TQRLabel
        Left = 260
        Top = 5
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          687.916666666666700000
          13.229166666666670000
          58.208333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 388
        Top = 285
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          754.062500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dsSettlementDetails
        DataField = 'ExpiryDate'
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
      object qlSettleDate2: TQRLabel
        Left = 24
        Top = 80
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          211.666666666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlSettleDate2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlSettleDate1: TQRLabel
        Left = 16
        Top = 30
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          79.375000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlSettleDate1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 24
        Top = 285
        Width = 363
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          754.062500000000000000
          960.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'This settlement amount must be paid into the following bank acco' +
          'unt before'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    inherited repTitleBand: TQRBand
      Height = 161
      Font.Charset = ANSI_CHARSET
      Font.Name = 'Arial Narrow'
      ParentFont = False
      Size.Values = (
        425.979166666666700000
        1846.791666666667000000)
      inherited qlrepName: TQRLabel
        Left = 268
        Top = 126
        Width = 161
        Enabled = False
        Size.Values = (
          52.916666666666670000
          709.083333333333300000
          333.375000000000000000
          425.979166666666700000)
        Caption = 'Settlement Quotation'
        FontSize = 12
      end
      inherited qlCpy: TQRLabel
        Left = 264
        Top = 103
        Enabled = False
        Size.Values = (
          44.979166666666670000
          698.500000000000000000
          272.520833333333300000
          140.229166666666700000)
        FontSize = 8
      end
      inherited qlCpyName: TQRLabel
        Left = 322
        Top = 103
        Enabled = False
        Size.Values = (
          44.979166666666670000
          851.958333333333300000
          272.520833333333300000
          145.520833333333300000)
        FontSize = 8
      end
      inherited qlCpyAdr: TQRLabel
        Left = 378
        Top = 105
        Enabled = False
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          277.812500000000000000
          87.312500000000000000)
        FontSize = 6
      end
      inherited qlAppID: TQRLabel
        Top = 5
        Enabled = False
        Size.Values = (
          44.979166666666670000
          1812.395833333333000000
          13.229166666666670000
          34.395833333333330000)
        FontSize = 6
      end
      inherited shpTitleTop: TQRShape
        Top = 1
        Height = 2
        Enabled = False
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          2.645833333333333000
          1846.791666666667000000)
      end
      inherited shpTitleBot: TQRShape
        Top = 143
        Width = 697
        Height = 12
        Size.Values = (
          31.750000000000000000
          0.000000000000000000
          378.354166666666700000
          1844.145833333333000000)
        Shape = qrsHorLine
      end
      inherited qlApp: TQRLabel
        Enabled = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          0.000000000000000000
          140.229166666666700000)
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 512
        Top = 24
        Width = 176
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          1354.666666666667000000
          63.500000000000000000
          465.666666666666700000)
        Picture.Data = {
          0A544A504547496D61676525250000FFD8FFE000104A46494600010101006000
          600000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC0001108005B010A03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD52
          66C522B135E25FB50FC76BCF833A0E9B16956AB36B3AA9904134EB986058F6EF
          6600E4B7CE303A7524F1B5BC3FE05FED71E2A97C7161A3F8AE71ADD86A97296A
          B32C31C72DBC8EC1508DA154AE4F208C8CE41E369F0F119C6170D89585A8FDE7
          FA9F6982E11CD330CB659A518AF66AEF7D5DB7B2F2FD0FB7852D471B6EFCB352
          57B87C585145140085B14523751FE14D6638040FC28F201C5A8DD4C56DC7F1A5
          6FC29087839A5A6AB0248F4A75318514514005145140051451400514514008CD
          8A6EE3F8D2B546D9653DBF1A407CCBFB40FED6FA97C36F184DE1BF0E69B67717
          568236B9BAD403B26E65DC235452B93828776EEE4638CD74DFB387ED2C7E311B
          BD2757B586CBC456AA67C5AA3082787705DEB9276152CA0A9639C823A90BF197
          C72CFF00C2E0F1912727FB4E719F5F988AF50FD86541F8C17FEBFD8D37FE8F82
          BF37C2E718AA99AFB194BDC6DAB743FA2733E12CAB0DC26B190A7FBD508CB9B5
          BB6ED7BF96A7D55F1EBE33C5F05FC1E9A98B3FED1BFB99D6DAD6DB78505882C5
          98F5DA029E80E4951C6723E7CF87FF00B74EB171E28B683C5FA769B0E8B29F2E
          4B8D3629164809231210CEDB90739000383919C60E8FEDFC008FC138F5BCFF00
          DA35F200CFE39FE94B38CE31786CC7D8D295A31B69DFFAB9A707F08E5599641F
          59C5D3E6A9539B5EB1B3695BEEB9FAF71C9E62861D0D3EA1B5E214F4DA2A6AFD
          256C7F39BDC4A29AEDB48A40DFFD6A043C52D46AC724629F4C05A28A2803E3CF
          F82817FC7C7817D76DF7FED0AF993E1BF3F10BC31B8F0755B5EBCFFCB64E2BE9
          BFF82817FAEF02FF00BB7DFCE0AF94743D564D075AB0D4A245924B3B88EE111B
          A31460C011F502BF1DCEE4A9E6F39BE8E3F923FAEB82E94ABF0953A50DE4A697
          CE523F5AE12046B8F4E69FB8FD6BF3A356FDAEBE266A97AD3C1ACC1A4A3051F6
          5B3B388C6A40009064576E7AF2C7AD558BF6AEF8A70CA8DFF09399429CED7B2B
          6C373D0E23CE3E9CFBD7D83E29C0AD1737DC7E46BC30CF24AEDC13EDCCFF00CA
          C7E91063F8D34499C9ED5F2BFC24FDB62D35CD42DF4BF1A59C3A44F70E123D4E
          D895B504E71E606398C7DD1BB2C32493B40CD7D4D1C8244DCAC195BA1F6AFA3C
          263A863A1CF4257FD0FCF336C971D92D6F618EA7CAFA3E8FD1F515A4DA3248C7
          AD7CD7F1DBF6BE83C07AB4FE1EF0ADA5BEB1AB5B9DB73793B31B6B79030063C2
          F2ED80C0E080A700927701D7FED5BF132E3E1CFC2F9974E95E1D5F5593EC56D2
          C4FB5E20549790608390A08047466535F9D5C76008CE3DABE5B88339A9846B0B
          41DA6F767E9DC07C1B47388BCC71EAF493B28FF335BB7E4BF1677BADFC79F887
          E22BA4B9BBF186AB1C8A9B00B29CDAA6324F2916D5CF3D48CD54B3F8CDE3DB1B
          C86E23F196B8F244E1D566D425910907382ACC5587B1041AEDBE11FECABE2BF8
          A3636FAB4B2C3A1E8738DC975700BCB28C30CC710C6465472C5461B23762BABF
          1B7EC3FE27D074D377A0EAB6DE2392304C96AD17D9653CA81E5E5995B82C4E4A
          FDDE339AF918E0F37AB0FAD479ADBEFAFC91FACD4CDF843095FF00B3E5ECD35A
          7C2ACBC9BB5BF134FE137EDB7AB69F756BA778DE28B50B1770ADAB5BA08E6854
          96259D146D7032A3E50A428270E6BECED3F53B7D5ACA0BBB49A3B8B69D1648A6
          898323A9195604750477AFC8E9A192D6578A5468A58D8AB23290558704107B83
          EA2BEBAFD85FE244ECFAAF822E9E49218D0EA163924AC4BB82CA9CB700B32300
          07569093C8AFA1C8B3BAB3AAB098A77BECDEF7EC7C0F1D7056130D8479AE591E
          551F8A2B6B3EABB79F43EC0DD4126A366EFD38F5AF05F8DFFB58E89F0DE69349
          D1123D7FC40A59268C39105A903FE5A300773670360E786C95E33F738AC551C1
          C1D5AF2B247E1D97E5B8BCDABAC3E0A0E727DBF36FA23DF5589EBC52EEAFCE8D
          6BF6BAF89BAAEA32DCC3AD41A5A3818B5B3B388C6BC01C798AEDCFBB75CD5587
          F6AFF8A50CD1BB789BCF55604C72595BED600F4388C1C1E9C1CF35F32F8A7029
          DAD2FB8FD2A3E1867928A7782F2E67FE47E90062738A5DD5F2B7C23FDB66CF5E
          BEB6D2BC6965169173712089353B5245AEE25B1E62B1DD18FBA3396192C4ED02
          BEA58E4122860C08619041E2BE8F098EC3E361CF46573F3CCD726C7E4B5BD863
          A9F2BE9D9FA31CD21033DABC3BE2FF00ED69E19F867712E9B609FF00091EB719
          2AF6F6B28586060C14ACB2E0ED6FBDF280C72B83B720D27ED65F17E6F865E048
          ECF4E90C5ACEB5E65BC132B323411803CD95580C6E1B91472082E187DD22BF3D
          F90C493CFA9EDEFF00D2BE633CCF258197D5F0FF001DB57DBB1FA5F04704D3CF
          29BC7E3DBF657B462B4E6B6EDBECB6D0F7AF127EDA9F1135C83CAB43A6E8A3CC
          DCB359DA96936F3F29F319D7EB85CE453BC39FB6A7C43D1E1482F7FB375B064D
          CD25D5B1494AF1950632AA3EA54F5E735E77E0BF81FE38F881A6FF0068683E1E
          B8BBB1CE05CBBC70C6FC9042348CA1F05483B7382307069BE32F821E37F87B62
          2FF5EF0FDCDA58B1C35C2B24D1A7200DED1B10992C00DC464F02BE3BEB99C727
          D679A5CBDEDA1FAEFF0064F073A9F50E5A5CF7B5AFEF5FB6F730FC6DE253E32F
          176AFAE1B7FB21D42E5EE4C1BF7F97B8E719C0CFE55EDDFB0CFF00C960BFFF00
          B03CDFFA3A0AF9D96BE89FD86BFE4B05FF00FD81E6FF00D1D056393CE55333A7
          396EDDCEEE30A30C3F0D6228D3568C6292F44D23B7FDBFBEEF827EB79FFB46BE
          3FEC7EB5F5FF00EDFDF77C13F5BCFF00DA35F207AFD7FA5747107FC8D27FF6EF
          E48E2F0FFF00E499A1FF006FFF00E9523F5E216DB6F19FF645735F113E2468FF
          000C7C3371ADEB970218233B638970649E423E58E352796383D718C12480091D
          1AB05B78C9EC99FD2BF383F698F89F3FC4AF89F7E52663A4E972358D8C624CA6
          14E1E41C904BB03C8032AA99CE2BF47CDB32596E1D4D2BC9E88FE73E13E1C971
          2661EC1BB538EB27E5D979BFF33AEF1D7EDADE36F115C3A682B6DE1CB10E1A36
          8E2135C15DB82AECE0A609E78504600C9E73E5975F19BC7B75752DC49E32D795
          E462C445A8CB1AE4FA2AB0007B018A77C2DF845E21F8B9ADC9A6E816F1810AEF
          B8BBB92520801076EF6009CB11800024F5C60123E82FF86049C8C7FC26D1E7FE
          C17FFDBABF3B853CE7365EDA2DB5EB65F23FA06BE2383F85E6B07521052B6BEE
          F33F9BB3D4F3DF03FED89E3FF0ADC46BA85CC1E23B2CC6AD0DEC61240A383B64
          400EE23F89C372071EBF667C25F8CFA07C62D0DEFF004491D2681B65CD8DC802
          7809CED2C01230C01218120F2339040F817E327C0DD7BE0B6A5045A9B437BA7D
          D9716D7D6C4ED6C1FBAE08CA3E369C671F3603360D5BFD9AFC7173E09F8C1A04
          916E683519974DB98463E7495828EA38DAE51B8C1C2E33CD7A19766D8CC0E2A3
          84C65DA6EDAEEAFD7D0F0B88785726CEB2A966D93A51924E49C748CADBA6BA3F
          BB5DCFD2C562D4EA8E2391D2A4AFD44FE643E3CFF8281FFAEF02FF00BB7DFCE0
          AF90F9ED5F5E7FC140BFD77817FDDBEFE7057C9DA4E9936B5AB59E9F6FB7CFBB
          9D208F774DCCC157F522BF19E208B966938AF2FC91FD89C0338D2E18A1524EC9
          73BFFC9E47A1FC31FD9D7C67F162CCDF6956B6F67A565D5350D42431C5232900
          8500166EE3705DB95619C8C5741E2EFD8FBE21F84B4B37CB6F65AE22E5A48349
          99E4954004E423A216E98C2E4F3D2BEFCF0FE8B67E1FD0F4FD32C22F22CACE04
          8208F716DA8AA15464F27000193CD686C1B6BECE1C2F83F65CB36F9BBDFF0043
          F1DAFE27E70F14E7494553BE916BA79BDCFC85DB86C57DA5FB127C5AB9D7AC6F
          BC19AADE497371A7C42E2C1A662CC2D8108D1E71D118AE324F0F8180A00F9EBF
          695D0ECFC3BF1CBC59656317936DF6849F66491BE5892473CFAB3B1F6E07415A
          BFB24DF4F6BF1F7C3714533C71DC2DCC732AB1C3AFD9E46C11E9B954FD5457C7
          65752797668A8A7A7372BFBEC7EBFC4D428F1170BCB1928D9FB3F691EEACB9AD
          F35A1EB1FF000501F9A6F02E403F2DF76F7B7AF9374DB19354D46D2CE1C79D71
          22C299E9B98851FA9AFAE3F6FEB59997C1170B139810DE46D2ED3B159BC92AA4
          F404856C0EA769E3838F90ADEEA4B5B88A781B6491B2C91B83C8618208FC68CF
          FDDCD26E4B4D3F242E036DF0BD154F7F7FE5EF48FD6ED2EC2DB4CD3EDAD2D208
          EDAD608D628E18542A46A1400AA070001DAAC3280BD79F5AC4F06F8AB4EF1A78
          5F4ED674A9D67B1BC856446C8C8EC55BD181C823B10476ADB92408A4B600C673
          5FB0425070528BD0FE44AD19C2A4A1356927677EE7E6DFED49636DA7FC7AF16C
          3696F1DB45E6C321489028DCF6F1BBB60772CCCC4F7249AB1FB27123F680F0A0
          CF56B91FF92B2D637ED07E2AB0F1A7C64F13EAFA5C9E758CB3AC51CC082B2797
          1A44594824152509041E41078ADEFD91EC6E2F3E3D787268616923B55B89A765
          1C469E43A6E3EDB9D47FC0857E374ED2CE9726DED3F5FF0023FB0EB46547831C
          6BE8FD859DFBF26DF79F5E7ED39F1526F855F0DA5B8B0709AD6A128B3B37DA18
          444825E42091D14360E0FCC5320826BF38771919998E59B96F73DFD89AFADBF6
          FE984977E08881C3A25E311E99307F81AF96BC3FA2CBE25D7F4CD2617549EFEE
          A2B5476190ACEE1413ED935DBC455E75F305416CAD6F9FFC39E3787783C3E5F9
          0FF684B4954E6727D945B497A697F99DEFC2FF00D9D3C67F162C4EA1A55ADBD9
          E97F308EFB5094C714ACA402A800663C93F305DB952376462B6FC69FB22FC41F
          05E966FCDB59EB512E4C91E932BCB2A0F5D8C8A5BD3E5C9E738C735FA07A1E93
          69A0E8B65A7D8C42DECED6148618D7385450001CF3C018ABAC8181E33F5AFA78
          70BE1151E5937CD6DEFD7D0FCCEB789F9BFD69D4A718AA77D236E9EBBDCFC856
          51C823EA3D3BE315F6AFEC51F16AE35DD2EF7C17AADD497373A6A09F4F6958B3
          7D9B215A3CE3808DB7196E448028C2607CEBFB47F87ECBC2FF001BBC55A7E9F1
          986D16749963CF0AD2C492301E8373B607402B6BF645D42E2CBE3CF87A086431
          C57697104EA31878FC877DA7DB7221FF00808AF8FCAEA4F2DCD151BFDAE57F91
          FAEF1461E8710F0C3C638D9A87B48F75A737E5A1D57EDCD7D7127C52D26D1A79
          0DAC3A524B145BBE54769650CC0762422E7FDD15E1FE00D0E1F1378E3C3DA44E
          1FECB7DA85BDB4DE51DADB1A455620F638EF5ED5FB726EFF0085BDA7923AE8F0
          E3FEFF004F5E43F0A7518B46F899E15BC9E68EDEDA2D52D8CB34CC15234F3577
          31278000C9C9F4A3324A59C4A33DB997DDA15C372953E11A72A5A495395ADDF5
          FC6E7EA3E9BA7DB695616F65670476B696F1AC51410A0448D54602A81C000740
          28D574FB5D5B4FB8B2BC823BAB4B88DA29609903A48A4105594F04119C8353C6
          C1973DBD7D7DE894854624F18E6BF61B4792DD0FE40E6939F35F53F28FC71A1C
          5E19F1AEBFA45BB48F6FA7DFCF6B134D8DEC89232A96C01938039C0CD7B6FEC3
          5FF257F50FFB03CBFF00A3A0AF1EF8A5AA47AC7C4BF15DE41711DDC136A972D0
          CD1386478FCD6D8548E08DB8E457B07EC2F93F17B50F51A34C7FF23415F8EE5A
          947388A8AD399FEA7F607124E73E109CEABF79D38DEFDF43B8FDBFBEEF827EB7
          9FFB46BE40F5FF003DABED2FDBDF46371E17F0BEAC24F96DAF24B5D98EBE6A6E
          DDF87938FF008157C5839C76F5F6FF001ABE218B8E6726FAF2FE48CBC3EA919F
          0D538C778F3A7FF8137FAA3F5AF53BE8F4BD06E2F26388ADEDDA56C7A0524FF2
          AFC94DD8EA79FF00EB57EB3C17369E22F0E47340F1DDD8DE5B86475395911972
          08F620D7E4F5F59CFA65E5C5ADD42F6D750BB452C32AEC6470482A41E41041E0
          FE38AF6F8B3DE8D1974D7F43E23C28E58CF1B07F17B9FF00B77F4CF70F827FB4
          F47F05FC24FA35B785FF00B41E5B97B99EE5F50316E6202F09E51DA02AA8EBD4
          13DEBA5D6BF6F0F155C5C2B691A06976106DF9A3BC696E1B77A865318C7E15E3
          DF0EBE0EEB9F14ACF5093C3F358CF776257CCD3A698C53B29FBACB901482411F
          7B3C7206467B2D13F63CF897AB5C14B8D32CF491FF003D2F6F10AB7FDFADE7F3
          15E3E1F119D4B0F1A7874F9168AC97E67D6E6196F06D2C755AD984A3ED5BBC94
          A52DDEBB7E563CF7C7DF143C49F132FA2BBF11EA8F7CD0865862DAB1C7106393
          B514000FFB5F7880324E0575BFB30FC3CBCF1DFC58D1E58E19BFB334AB88EFEE
          EEA351B62319DD1A9278CB3A818EB8DC7B1C7AB784FF0060DD525983F89FC476
          D6D12C83741A4AB4AD227B48E17637A7C8D5F53FC3EF875A1FC33F0EC3A36836
          BF66B54259DC9CC9339EAEEDFC4C7F4000180001EA65F91E32BE256271CEC96B
          AEECF9CE21E37CA30796CF2DC9126E49C74568C53DEDDDFF004CE9E3E38F6152
          531142E714FAFD30FE6E3E3CFF00828183E778148FEEDE8E9EF07F9FC2BE4ED2
          3539B47D5ECB50B60A67B59D268F7E48DCAC19738ED915FA2BFB507C2C9BE297
          C359ADF4F4DFACE9F20BCB34DC144ACA0868C9C13CAB36064658264819AFCDEE
          564C118E7904723D8D7E47C4946787CC3EB0F695ADF2FF00863FAC3C39C650C7
          645F51BFBD4F9935E526DDFD35B7C8FD6BD0F58B4D7347B2D46C665B8B4BA812
          78655E032328653CF3C822B419B6F24E057E6A7C2FFDA33C67F09ECBEC1A4DD5
          BDE6943714B0D42332451B3104B2ED2AC39078DDB72CC71939AE8BC5BFB627C4
          2F156932582CBA7E8A24C87B8D2E06498A9520A86776DBD73B970C081822BE9E
          9F1460FD8A954BA97556EA7E5F5FC31CE1625C2938BA77D257B69E6B739BFDA5
          B59B5D7BE38F8B2F2CA5F3E0FB44706FDA47CF1C291B8E7AE191867A1ED5A7FB
          245ACD71F1F3C352451348B08B99246032117ECF22E49EC32C07D48AF1F3DC8C
          7B9FEA4D7D9BFB11FC27BAD1ECEFBC6BA9DBBDBB5FC22DB4F56382D06433C98F
          46654DB9C1F909E8C09F8ECB213CC7345592B7BDCCFEFBFF00C03F62E25AD478
          7F85A5839CAEF93D9AEEF4B7E5A9EC9FB407C2FF00F85B5F0DEFB4A836A6A701
          177612392009901C038238652C993C0DF9C1C57E6A5E5ACFA75E4F6B730496D7
          30C862961914AC91B2920A30ECC0E460F35FAE981F515E45F18BF669F0AFC5A6
          92FA546D275E2B81A95A81990852AA2553C381F2FA361140602BEDB3CC965985
          AB507EFAE8FAA3F16E08E33870FF003613189BA3277BADE2FF00C99F08F817E2
          D78BBE1BC33C5E1BD6E6D3A09D83C908449632D800B057520120004819E07A0A
          D9F167ED13F103C6DA6DD69BA9788653A7DC8D92DB5BC490875230549550C548
          C8209C1CD775E27FD89FC7BA2ACF269B369DAE44AF88A3867314EEB9E18AB808
          BC76DE7F1ACCD03F639F893ACC922DCD8D8E8A146435FDE290FEC3CADE7F3C57
          C4AC26734E3EC1465CAFA743F6979AF076267F5F9CA939EF769737DD6BDCF106
          C9CF73D493FE35F6E7EC57F0766F0DE8B3F8D7528F65D6AD088AC6360CAC96FB
          B716209C1F3084238E88A41F9C81A1F097F630D03C23710EA5E29997C4BA8272
          2D5A302CD0E17F80E4C8410D82D8041FB9900D7D1DB768C01C0AFA9C8F21A985
          A8B138ADD6CBFCCFCBF8DB8EA866987796E5B7F66FE296D7B744BB5FFC8F8F3F
          6FFB748EF7C11328F9DA3BC53F4061C0FF00C78D7CB3E1BD664F0DF8934BD5E1
          412C963770DD2231C0628E1C027D3E5EB5FA13FB52FC2D93E277C33B8165179B
          ACE98DF6CB3551F3498077C60ED27E652700632CA992066BF3947D3F1E2BC0E2
          2A3530D987D616D2B35F2B1F7DE1E6330F98641F5093BCA1CD192F2936D3F4D6
          DF23F5BB49D56D757D2ED6F6CEE23BAB4B889658A68981575232181EE0820D5C
          2C5413D857E6A7C2FF00DA2BC65F09EC4E9FA55D417BA58DC63B1D46332C7133
          104B290CAC39078DDB72CC71939AE87C5DFB637C43F15693269E92D868A24C87
          B8D2E06498A9520A86776DBD7395C3020608AFA7A7C5183F629CD352B6AADFA9
          F9856F0C73858A74E8B8BA77D24DDB4F35BDCE6BF692D7AD3C47F1BBC577D632
          79B6FF00684837E31968A2489F1EDB91B07BF5AD8FD91F4FB8BCF8F5E1F9A188
          C915AA5C4D3B0FF9669E43A063FF0002741FF02AF1CF618CF619E7E95F697EC4
          9F096E344D32F7C69AADAC905C6A11AC1A7AC80A936F90CD2633D1D826323388
          F2386AF8ECAE9CF30CD1574BED733FCFFE01FAFF001357A1C3FC2F2C1B95DF22
          A51EEEEACDFC96A69FEDB1F0DAEBC4FE0DB0F12D844D34DA233FDA238D727ECE
          FB77B9C0C908541F40A5C9E95F0CAFCCC4FE63FA57EBCB461C61B9523041E95F
          23FC69FD8BE4BED46EF5AF023DBC0B2FEF5F449BF76BBB0C5BC97E8B93B708D8
          504B7CC0600FA7E20C92AE227F5BC2ABC9EEBBF99F9BF0171A61B2FA1FD9798B
          E582F865D15DDDA7F9DFEF386F873FB6878A7C1DA4C5A76B1610F896082311C5
          3CB3186E38E06F7C307E3039009EA49A8FE257ED9DE28F1AE952E9BA45941E1B
          B59E331CF245299E77041042B95508307B2EE0470C2BCC752F827E3FD26F64B5
          9BC1DADB4B19C335BD9493467FDD7405587D0914BA6FC12F1F6AD7D15AC1E0DD
          696690E14DCD949047C02799240157A7722BE67EBD9C7B3FABBE6B6DB7EB63F4
          8FEC4E0F55FEBFFBBBEFF12B7ADAF6FC0E279C824E7F1AFB97F625F86773E19F
          08DF789AFE230DC6B7B05B46EB865B74CED7E402039627B82A10F7AE6FE0BFEC
          5F269FA859EB7E3992DEE162C4C9A2C3975DD852BE73F43825B28B95240F9997
          20FD71122C718551851C002BE9787F24AB87A9F5AC52B3E8BF567E6FC79C6986
          CC68FF0065E5D2E683F8A5D1D9DD25F3EA78D7ED75E0EFF84ABE0AEAB2C7134D
          77A5489A84403850A1091231CF5022690E3FFD47F3AC1CF233D3FCF15FAE7A8D
          85BEA9633D9DE411DCDACF1B452C32A8647460410C0F04107915F97BF173E1D5
          D7C2FF00881A9F87E6123430C81ED2670499ADDB98DB2540638F94E38DCAC067
          6D72F15E0DA9471515A5ACFF0043D3F0AF3687B3AD9554767F1C7D344FEED1FC
          CFB7FF0064CF881078DBE11E9F64CE9FDA1A2A8D3E689401F228C44C1739C140
          064E3E657E38AF9DBF6BAF82B75E0BF175D78B2C220FA06B13179BCACFFA3DC3
          72E1F3D9DB2C0E719C8C0E33E7DF027E305CFC1DF1B45A9E26BBD26E0086FECE
          2930648F3C3A83C17527233EAC3237135FA27A5EAFE1EF89DE174BAB392D75BD
          1AFE2C15601D1D48E5194F7EC548C8230464577615D2CFF00B0D5656A91FEAFF
          00E678B9A4319C07C40F30A10E6C3D5BFA59EAE3E4D3D5797CCFCB6F0F788351
          F0AEB16BAA693792D8EA16CDBE39E03823D41EC41E410783C835EDFA4FEDB7F1
          0F4BD3E2B69A2D1F5291060DD5DDAB891F9EA7CB9157DB851D2BD17E207EC2D0
          5D5C4F73E0DD685986E534ED4C3346097E4098659542F40558E460B73C790EB3
          FB21FC4DD2EF9ADE1D1A0D56318FF48B3BC8BCB3F4F3191B8E9CA8AF9B582CE3
          2C6E3454ADFDDD51FA1BCEB83B89231A98CE4E65FCFEEBF4BF5FBCB7E20FDB23
          E246B6D01B6BCB0D13CBCE7FB3ECD4F999C7DEF34C9D3DB1D7BD7B6FEC9DFB42
          F883E246AD7FE1AF123C77D776F6BF6B82F92158DDD44815C49B485CFEF136ED
          51C039AF1BD07F62BF88DAC5B896E534BD1DB760C379765A4C7AFEE95D7D3F8B
          BD7D39F00BF670B1F82B26A17CFA89D6756BC5117DA1A01108A2073B14649E4F
          24E7076AF031CFBB94D3CE258A8D4C437C9D6FFE47C571562383E9659530F97C
          60EB69CAE29E8EFD65E9E67B346DBA9F4C8D76D3EBF433F001AE01EB5F3D7C6E
          FD91F46F8877171AC787E48F41D7E5679A6CA936F74E54FDE51F7096C12EA0F5
          625589CD7D0AD48CA3D71F8D71E270B47190F675A3747A9976698CCA6BAC4E0A
          A38497F5AAEA8FCE2F107EC9FF0013340B8B941A0AEA5042322E6C6E6364938C
          FCAACCAE7F151D3F1ACCD27F66BF897AAC7E643E14BB45CE09BA92280FD71230
          38AFD2E0B8FF00EBD28FCABE5DF0A609CAEA4EC7E9D1F14739F67C92841BEF67
          F95CF92FE12FEC4ABA3EAD0EA7E37BCB5D463818B269765B8C2E401B5A4760A4
          8073F205C1217248CAD7B57C6CF8A56DF03FE1FF00F69C16693CE644B3B2B4E5
          232E4138240380115DBDF6E38CD7A56DC9CF27B5797FED0FF08E6F8C1E013A55
          9DCADA6A56D729796AD2B6222E032957C027055DBA77DA7B60FB1F5186030952
          1818DA4D69EA7C87F6D54CFB35A1573CA9CD4F995FA24BD17E2F73E72F0DFEDD
          FE288758B6FEDED1B4B9F4ADC04EBA7C72473AA9EAC85A46048EBB4819E995EB
          5F4FFC3BF8DDE0FF008A1669268DAB45F6BD9BA4D3EE0F9773170A5B287A81B8
          0DCB95CE4026BF363C51E13D63C17AA3E99AE69D71A6DEA6498AE108DC3246E5
          3D197703861907B1AC952473C8F4E4D7C061B88B1D849F2625737AE8CFDE732F
          0F725CDE946B65B2F66FA38BE68BF95FF267EBCAE1B3E9D4629781DB8AFCB8D3
          3E3378EF47911ED7C61AD0118DAB1C97D248807A6C6257F4AB3AA7C77F885ACE
          D371E30D59369C8FB35C1B7FCFCBDB9FC6BE863C5986717FBB95CF817E14E65C
          F655E16EFAFE563F487C55E3AD03C0DA73DFEB7AADAE9B6E37106770ACE42962
          A83AB3601F94024E3A57CB7F123F6EAB98B56583C0FA65B4D6316E596EF57898
          995B76018D15D485C0CE58E4EEC6D5C73F276A5A8DDEAD7735E5F5CCD7D7931D
          D25C5CB992473EA58E4938F5F4A6D9DADC6A1790DADB5BCB7573348B1C50C2A6
          4776270AAAA39273DABC2C671362B15EE6163CBF8B3EDF28F0D72DCBBF7F994F
          DAB5D368FF009FE27DEFFB37FED292FC64B9BED275AB4B7B1D72D62FB42FD903
          795345BB0C4039DA577460E5B92DC74A83E367EC8BA2FC42BABAD6BC3F32683A
          FCACD2CC1949B6BA7DA7EF01F7096C12EB9EAC4AB139ACAFD927F67ED53E1E49
          73E29F116EB4D4AF2D9ADA0D3C303E5445D58BC9D7E72517001E075E4E17E99D
          BED5F6983C34F1D818C7318DDFE27E359B6614723CF6AD6E1DA9CB05B5B6F35A
          EEAFFF0000FCE2D7BF652F899A0CF7083401A8C30FFCBC58DCC6EB27BAA960E7
          FEF9CD67693FB35FC4BD5A11241E14BB452719BA92381BFEF99194E3F0AFD2FD
          A00A063A11FA579DFEAAE0B9B994A563E8A3E28E73ECB9250837DECFFCCF93FE
          117EC4E9A2EA916A7E36BCB7D4FC9937C7A5D9EE6B7908FBA656600B0CE4ECC0
          1C0C92322BEAE86148A3544508AA3685518007614F0A1BAF34EC57D2E0F0387C
          0C392846C7E759B6778ECF2B7B7C754E66B6ECBD10DD9EA697CB14B4B5DE7843
          42633CD1B0714EA28019E58FA5284029D45003180AF23FDA17E02D97C68F0FC6
          D14AB65E21B15636574D9D8D9C662900EA8D81C8E5480467956F5E6A632EEC57
          3E22853C4D374AAABC59DD81C757CBB110C56165CB38EA9FF5DCFC94F10787F5
          1F0AEB379A4EAD69258EA36AFE5CD6F2F553D8FA10410411C1041048393EB1FB
          22F89753D1FE3468D63653CCB63AA7990DDDAA30D92AAC4EE84E78CA91B81EB8
          2C07DE20FDA1F15BE03F853E30428759B5921D42350916A566C12E11436EDB92
          0861D786040DCD8C139ACAF857FB33F83BE136ACFAAE9CB79A86A855912EF529
          15DE256C6E0815554671D719C123382457C161F8771385C742A5297EED3BEFAD
          BB58FDD71DE21E5F9A649530B8AA4FDB4A2D5AD78DEDA493E967AF73D5F686CE
          47D699712186192448CCACAA5822E32C40E83240CFD48A938EDC8F6A194375FA
          57E89A9FCF9E4CE22D7E2F787E78FC3ED712CB60BAFC12DDE9ED749859218E25
          95A4665255142B03F3953ED5D568FAB41AC69F1DDDBF0AF90CB95251D495746D
          A48DCAC0A900F04115C3EB3F03741D73C25A5787A7BAD452D74FD37FB2629A19
          95256B7DD017562171F38B74538038660319E3AFF0CF86EDBC2BA5BD8DAC9349
          0BDD5C5D9699816DF34CF338E00E034840F603249E6B9A9FB6E66AA2D0F42BFD
          53D946549BE6BBBAE96E8FEED2DE5E66C2D3A9ABDE9D5D479E211415CD2D1400
          9B68DB4B4500376FBD0541A75140183E2CF03E85E38D2DF4ED774CB7D52D1F27
          65C20628C54AEE53D558063865C119E0D7CFDE32FD857C33AA4A66F0EEB379A1
          BBC80982751750AA018DAB92AE39E72CEDD4F1E9F4F1EA29ADD6BCEC56070B8A
          56AF4D3FCCF772ECF332CA5DF055E50F24F4FBB63E15BEFD847C6D1DE4AB65AC
          E873DAA9FDDCB3C92C4EC3D4A08D82FD371AAFFF000C2FE3FEDA9F878FD2E67F
          FE335F77FA51D187D6BC7FF5672E97BDCAFEF3ED1788FC44925ED23FF80A3E4C
          F0E7EC13651CFBF5EF14DC5CC4531E4E9D6CB0B2BF1FC6E5C11D7F84678FA57D
          03E01F835E0FF86D1B7F606896F6733821AE5819272A7195F31C96DBF2A9DB9C
          71D2BB3FE2FD2963EFF535EAE1B2DC26135A34D27F89F2598F1266B9BAE5C657
          94976D97DCB414463A76A5DBEF4AB4B5EA1F3626DA36D2D14009B68A5A2800A2
          8A2800A28A2800A28A280108CD18A5A2801BB68D838A751400D0B8A4F2FDE9F4
          5003768A5DA2968A4022AEDEF9A5A28A607FFFD9}
        Stretch = True
      end
      object QRLabel10: TQRLabel
        Left = 24
        Top = 23
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          60.854166666666670000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Boodle (Pty) Ltd'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 24
        Top = 39
        Width = 161
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          103.187500000000000000
          425.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PO Box 72263, Parkview, 2122'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 24
        Top = 55
        Width = 161
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          145.520833333333300000
          425.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0861 BOODLE (266 353)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 24
        Top = 71
        Width = 161
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          187.854166666666700000
          425.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'info@boodle.co.za'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 24
        Top = 87
        Width = 161
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          230.187500000000000000
          425.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'boodle.co.za'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 233
        Top = 24
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          616.479166666666700000
          63.500000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #169' 2016 Boodle (Pty) Ltd '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel40: TQRLabel
        Left = 233
        Top = 40
        Width = 273
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          616.479166666666700000
          105.833333333333300000
          722.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Registered Address: 26 Girton Road, Parktown, 2193'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 233
        Top = 56
        Width = 225
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          616.479166666666700000
          148.166666666666700000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Company Reg No: 2010/020539/07'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 233
        Top = 72
        Width = 273
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          616.479166666666700000
          190.500000000000000000
          722.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A Registered Credit Provider NCRCP5361'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel43: TQRLabel
        Left = 233
        Top = 88
        Width = 161
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          616.479166666666700000
          232.833333333333300000
          425.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Directors: S Goldberg'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRChildBand1: TQRChildBand
      Left = 48
      Top = 955
      Width = 698
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = True
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1846.791666666667000000)
      object QRLabel23: TQRLabel
        Left = 16
        Top = 427
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          1129.770833333333000000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Settlement amount'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
  end
  object QRHTMLFilter1: TQRHTMLFilter
    Left = 512
    Top = 19
  end
  object dsSettlementDetails: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT ED.EntCode, ED.Name, ED.Name2, ED.RegNo, ED.RefFld1, AD.A' +
      'ddress1, '#13#10#9'AD.Address2, AD.Address3, AD.Address4, AD.AddressCod' +
      'e, LD.RefNo, '#13#10#9'US.Name + '#39' '#39' + US.Surname AS CreateUser, ST.Cre' +
      'ateDate, ST.ExpiryDate,'#13#10#9'EM.Name AS Employer, TR.Description, S' +
      'UM(TR.Amount) AS Amount'#13#10'FROM DCC_Settlement ST'#13#10'LEFT JOIN lsLoa' +
      'nDetail LD ON ST.AccountID = LD.LoanID'#13#10'LEFT JOIN EntityData ED ' +
      'ON LD.EntityID = ED.EntityID'#13#10'LEFT JOIN lsEntPsnAdd PA ON ED.Ent' +
      'ityID = PA.EntityID'#13#10'LEFT JOIN Address AD ON ED.EntityID = AD.En' +
      'tityID'#13#10#9'AND AD.AddressType = 2'#13#10'LEFT JOIN SecurityTbl US ON ST.' +
      'CreateUserID = US.USerKey'#13#10'LEFT JOIN DCC_SettlementTransaction T' +
      'R ON ST.SettlementID = TR.SettlementID'#13#10'LEFT JOIN EntityData EM ' +
      'ON PA.EmpID = EM.EntityID'#13#10'WHERE ST.SettlementID = :SettlementID' +
      #13#10'GROUP BY ED.EntCode, ED.Name, ED.Name2, ED.RegNo, ED.RefFld1, ' +
      'AD.Address1, '#13#10#9'AD.Address2, AD.Address3, AD.Address4, AD.Addres' +
      'sCode, LD.RefNo, '#13#10#9'US.Name, US.Surname, ST.CreateDate, ST.Expir' +
      'yDate, EM.NAme, TR.Description'#13#10'ORDER BY'#13#10#9'CASE TR.Description W' +
      'HEN '#39'Balance'#39' THEN 1 ELSE 2 END, TR.Description'
    Parameters = <
      item
        Name = 'SettlementID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 368
    Top = 48
    object dsSettlementDetailsEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object dsSettlementDetailsName: TStringField
      FieldName = 'Name'
      Size = 80
    end
    object dsSettlementDetailsName2: TStringField
      FieldName = 'Name2'
      Size = 80
    end
    object dsSettlementDetailsRegNo: TStringField
      FieldName = 'RegNo'
      Size = 15
    end
    object dsSettlementDetailsRefFld1: TStringField
      FieldName = 'RefFld1'
      Size = 15
    end
    object dsSettlementDetailsAddress1: TStringField
      FieldName = 'Address1'
      Size = 50
    end
    object dsSettlementDetailsAddress2: TStringField
      FieldName = 'Address2'
      Size = 35
    end
    object dsSettlementDetailsAddress3: TStringField
      FieldName = 'Address3'
      Size = 35
    end
    object dsSettlementDetailsAddress4: TStringField
      FieldName = 'Address4'
      Size = 35
    end
    object dsSettlementDetailsAddressCode: TStringField
      FieldName = 'AddressCode'
      Size = 4
    end
    object dsSettlementDetailsRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object dsSettlementDetailsCreateUser: TStringField
      FieldName = 'CreateUser'
      ReadOnly = True
      Size = 51
    end
    object dsSettlementDetailsCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object dsSettlementDetailsExpiryDate: TDateTimeField
      FieldName = 'ExpiryDate'
    end
    object dsSettlementDetailsEmployer: TStringField
      FieldName = 'Employer'
      Size = 80
    end
    object dsSettlementDetailsDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object dsSettlementDetailsAmount: TBCDField
      FieldName = 'Amount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
end
