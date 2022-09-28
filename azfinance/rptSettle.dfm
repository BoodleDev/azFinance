inherited repSettle: TrepSettle
  Tag = 1070
  Left = 1
  Top = 1
  Width = 1362
  Height = 736
  Caption = 'repSettle'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmMain.qryEntDet
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
    inherited qbColHeader: TQRBand
      Top = 1057
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
          1796.520833333334000000
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
      Top = 1068
      Height = 5
      Size.Values = (
        13.229166666666670000
        1846.791666666667000000)
      inherited qsdPageNo: TQRSysData
        Enabled = False
        Size.Values = (
          44.979166666666670000
          828.145833333333200000
          23.812500000000000000
          190.500000000000000000)
        FontSize = 8
      end
      inherited qlweb: TQRLabel
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1669.520833333333000000
          42.333333333333340000
          177.270833333333300000)
        FontSize = 6
      end
    end
    inherited qbDetail: TQRBand
      Top = 1061
      Height = 4
      Size.Values = (
        10.583333333333330000
        1846.791666666667000000)
    end
    inherited qrGroup: TQRGroup
      Top = 1057
      Height = 4
      Size.Values = (
        10.583333333333330000
        1846.791666666667000000)
    end
    inherited qbGrpFoot: TQRBand
      Top = 1065
      Height = 3
      Size.Values = (
        7.937500000000000000
        1846.791666666667000000)
    end
    inherited repTitleBand: TQRBand
      Height = 1009
      Font.Charset = ANSI_CHARSET
      Font.Name = 'Arial Narrow'
      ParentFont = False
      Size.Values = (
        2669.645833333333000000
        1846.791666666667000000)
      object QRLabel30: TQRLabel [0]
        Left = 8
        Top = 756
        Width = 366
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2000.250000000000000000
          968.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      inherited qlrepName: TQRLabel
        Left = 268
        Top = 126
        Width = 161
        Size.Values = (
          52.916666666666660000
          709.083333333333400000
          333.375000000000000000
          425.979166666666700000)
        Caption = 'Settlement Quotation'
        FontSize = 12
      end
      inherited qlCpy: TQRLabel
        Left = 360
        Top = 47
        Enabled = False
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          124.354166666666700000
          140.229166666666700000)
        FontSize = 8
      end
      inherited qlCpyName: TQRLabel
        Left = 418
        Top = 47
        Enabled = False
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
          124.354166666666700000
          145.520833333333300000)
        FontSize = 8
      end
      inherited qlCpyAdr: TQRLabel
        Left = 418
        Top = 65
        Enabled = False
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
          171.979166666666700000
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
          34.395833333333340000)
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
        Pen.Width = 2
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
      object QRLabel1: TQRLabel
        Left = 16
        Top = 362
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          957.791666666666800000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loan Balance'
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
      object lblIntToDateTitle: TQRLabel
        Left = 16
        Top = 384
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1016.000000000000000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Settlement Interest'
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
      object lblArrIntTitle: TQRLabel
        Left = 16
        Top = 407
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1076.854166666667000000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Future Dated Transactions'
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
      object lblDepBalTitle: TQRLabel
        Left = 16
        Top = 429
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1135.062500000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deposit Balance'
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
      object lblSettleFeeTitle: TQRLabel
        Left = 16
        Top = 452
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1195.916666666667000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Additional Charges'
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
      object lblFinalTitle: TQRLabel
        Left = 16
        Top = 476
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1259.416666666667000000
          320.145833333333400000)
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
      object lblIntToDate: TQRLabel
        Left = 225
        Top = 384
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          595.312500000000000000
          1016.000000000000000000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblIntToDate'
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
      object lblFutureTrans: TQRLabel
        Left = 249
        Top = 407
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          658.812500000000000000
          1076.854166666667000000
          84.666666666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R 0.00'
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
      object lblDepBal: TQRLabel
        Left = 236
        Top = 429
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          624.416666666666800000
          1135.062500000000000000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblDepBal'
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
      object lblLoanBal: TQRLabel
        Left = 231
        Top = 362
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          611.187500000000000000
          957.791666666666800000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblLoanBal'
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
      object lblAdditionalCharges: TQRLabel
        Left = 182
        Top = 452
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          481.541666666666700000
          1195.916666666667000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblAdditionalCharges'
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
      object lblFinal: TQRLabel
        Left = 242
        Top = 477
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          640.291666666666800000
          1262.062500000000000000
          103.187500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblFinal'
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
      object shpBottomLine: TQRShape
        Left = 201
        Top = 492
        Width = 97
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          531.812500000000000000
          1301.750000000000000000
          256.645833333333400000)
        Shape = qrsTopAndBottom
      end
      object shpBottomTop: TQRShape
        Left = 201
        Top = 474
        Width = 97
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          531.812500000000000000
          1254.125000000000000000
          256.645833333333400000)
        Shape = qrsHorLine
      end
      object qlAccCode: TQRLabel
        Left = 26
        Top = 169
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          68.791666666666680000
          447.145833333333400000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Client Code'
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
        Left = 26
        Top = 187
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          68.791666666666680000
          494.770833333333400000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Surname'
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
        Left = 26
        Top = 207
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          68.791666666666680000
          547.687500000000000000
          84.666666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name'
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
      object QRDBText23: TQRDBText
        Left = 100
        Top = 207
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          547.687500000000000000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
        Left = 100
        Top = 187
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          494.770833333333400000
          89.958333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
      object qdbtPersonKey: TQRDBText
        Left = 100
        Top = 169
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          447.145833333333400000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
      object QRLabel21: TQRLabel
        Left = 330
        Top = 187
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          873.124999999999900000
          494.770833333333400000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Employer'
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
      object QRDBText25: TQRDBText
        Left = 437
        Top = 169
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1156.229166666667000000
          447.145833333333400000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
      object QRShape5: TQRShape
        Left = 0
        Top = 517
        Width = 697
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          1367.895833333333000000
          1844.145833333333000000)
        Brush.Color = clSilver
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 312
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
          825.500000000000100000
          1844.145833333333000000)
        Brush.Color = clSilver
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel6: TQRLabel
        Left = 330
        Top = 169
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          873.124999999999900000
          447.145833333333400000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ID Number'
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
        Left = 26
        Top = 227
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          68.791666666666680000
          600.604166666666800000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Address'
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
      object QRDBText1: TQRDBText
        Left = 437
        Top = 187
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1156.229166666667000000
          494.770833333333400000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
        DataField = 'Employer'
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
        Left = 330
        Top = 207
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          873.124999999999900000
          547.687500000000000000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Employee Number'
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
        Left = 437
        Top = 207
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1156.229166666667000000
          547.687500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
        DataField = 'RefFld1'
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
      object QRLabel5: TQRLabel
        Left = 24
        Top = 575
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
          1521.354166666667000000
          1759.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'The Settlement Quotation has been generated to reflect all payme' +
          'nts made by you to date. Should any cheque or payment not be met' +
          ' timeously or at all and/or any payment be referred to us by you' +
          'r bank then notwithstanding the rights that Bruma Finance may ha' +
          've in terms of the Loan Agreement or otherwise, the Settlement Q' +
          'uotation will no longer be valid and you will need to obtain a r' +
          'evised quotation from Bruma Finance.'
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
        Top = 637
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
          1685.395833333333000000
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
        Top = 683
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
          1807.104166666667000000
          1759.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'This Settlement Quotation is furnished to you without predjudice' +
          ' to any rights Bruma Finance may have in terms of the Loan Agree' +
          'ment, or otherwise.'
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
        Top = 716
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
          1894.416666666667000000
          1759.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Should there be an error or omission in calculation you will rem' +
          'ain liable to Bruma Finance for all amounts due.'
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
        Left = 0
        Top = 732
        Width = 697
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          1936.750000000000000000
          1844.145833333333000000)
        Brush.Color = clSilver
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object qlSettleDate3: TQRLabel
        Left = 372
        Top = 756
        Width = 201
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          984.249999999999900000
          2000.250000000000000000
          531.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qlSettleDate3'
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
      object QRLabel11: TQRLabel
        Left = 24
        Top = 778
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          2058.458333333333000000
          211.666666666666700000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 24
        Top = 797
        Width = 28
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          2108.729166666667000000
          74.083333333333340000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 24
        Top = 817
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          2161.645833333333000000
          103.187500000000000000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 24
        Top = 836
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          2211.916666666667000000
          187.854166666666700000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 24
        Top = 855
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          2262.187500000000000000
          246.062500000000000000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 8
        Top = 909
        Width = 341
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2405.062500000000000000
          902.229166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'This quote as well as a copy of the bank deposit slip must be fa' +
          'xed to '
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
        Top = 950
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
          2513.541666666667000000
          701.145833333333400000)
        Brush.Color = clSilver
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 352
        Top = 950
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
          2513.541666666667000000
          531.812500000000000000)
        Brush.Color = clSilver
        Shape = qrsHorLine
      end
      object QRLabel17: TQRLabel
        Left = 352
        Top = 964
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333500000
          2550.583333333333000000
          60.854166666666680000)
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
      object QRShape4: TQRShape
        Left = 0
        Top = 150
        Width = 697
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          0.000000000000000000
          396.875000000000000000
          1844.145833333333000000)
        Brush.Color = clSilver
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object qlSettleDate1: TQRLabel
        Left = 16
        Top = 504
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1333.500000000000000000
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
      object qlSettleDate2: TQRLabel
        Left = 24
        Top = 552
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
          1460.500000000000000000
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
      object QRSysData1: TQRSysData
        Left = 594
        Top = 42
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          111.125000000000000000
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
        Left = 506
        Top = 62
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          164.041666666666700000
          214.312500000000000000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 506
        Top = 81
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          214.312500000000000000
          150.812500000000000000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qlUserID: TQRLabel
        Left = 594
        Top = 81
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          214.312500000000000000
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
      object qlFullname: TQRExpr
        Left = 171
        Top = 964
        Width = 94
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
          2550.583333333333000000
          248.708333333333300000)
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
        Top = 778
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          2058.458333333333000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bruma Finance'
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
        Top = 798
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
          2111.375000000000000000
          82.020833333333340000)
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
        Top = 817
        Width = 145
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          2161.645833333333000000
          383.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Business Banking Protea Park'
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
        Top = 836
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
          2211.916666666667000000
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
        Top = 855
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
          2262.187500000000000000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '40 7169 5595'
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
      object QRDBText4: TQRDBText
        Left = 100
        Top = 227
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          600.604166666666800000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
        Left = 100
        Top = 243
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          642.937500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
        Left = 100
        Top = 259
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          685.270833333333400000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
      object QRDBText7: TQRDBText
        Left = 100
        Top = 275
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          727.604166666666800000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
        DataField = 'Address4'
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
        Left = 100
        Top = 292
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          772.583333333333400000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmMain.qryEntDet
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
      object qlRefNo: TQRLabel
        Left = 16
        Top = 330
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          873.124999999999900000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlRefNo'
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
      object QRLabel10: TQRLabel
        Left = 506
        Top = 42
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          111.125000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Print Date'
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
      object QRImage1: TQRImage
        Left = 8
        Top = 8
        Width = 200
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333300000
          21.166666666666670000
          21.166666666666670000
          529.166666666666800000)
        Picture.Data = {
          07544269746D61704EAB0000424D4EAB0000000000003600000028000000C800
          000049000000010018000000000018AB0000202E0000202E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFD
          FDFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFDFDFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
          FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFD
          FFFFFFFFFFFFFEFEFEFBFBFBFBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
          FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFF
          FFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFC
          FCFCFBFBFBFCFCFCFCFCFCFDFDFDFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFF
          FFFFFFFDFDFDFEFEFEFFFFFFFDFDFDFCFCFCFBFBFBFBFBFBFDFDFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFAFAFAFAFAFAFC
          FCFCFEFEFEFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFF
          FEFEFEFCFCFCFBFBFBFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFEFEFEFCFCFCFBFBFBFBFBFBFBFBFBFDFDFDFEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBFBFBFBFBFBFBFBFBFB
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFDFDFDFDFDFDFDFDFDFCFCFCFCFCFCFDFDFDFDFDFDFCFCFCFDFDFDFDFDFDFC
          FCFCFCFCFCFDFDFDFCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
          F8F8F8F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8F8FDFDFDFFFFFFFFFF
          FFF9F9F9F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEFDFDFDFEFEFEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFDFDFD
          FDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFDFDFDFDFDFDFDFD
          FDFEFEFEFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
          FEFEFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFDFDFD
          FDFDFDFDFDFDFEFEFEFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFD
          FDFDFDFDFDFEFEFEFEFEFEFDFDFDFFFFFFFFFFFFFEFEFEFAFAFAF9F9F9F9F9F9
          FAFAFAFAFAFAFEFEFEFFFFFFFAFAFAF9F9F9FFFFFFFFFFFFFFFFFFF8F8F8FBFB
          FBFBFBFBF8F8F8FAFAFAFCFCFCFBFBFBF7F7F7F9F9F9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF9F9F9F7F7F7FAFAFAFBFBFBFBFBFBF9F9F9F7F7F7FDFDFD
          FBFBFBF9F9F9FFFFFFFFFFFFFFFFFFF9F9F9FBFBFBFCFCFCF8F8F8FAFAFAFCFC
          FCFBFBFBF8F8F8F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7
          F7F7F9F9F9FCFCFCFCFCFCFBFBFBF8F8F8F6F6F6FBFBFBFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9F9F9F7F7F7F9F9F9FCFCFCFCFCFCF9F9F9F7F7F7F9F9F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFB
          FBFBFBFBFBFBFBFBFAFAFAFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFAFA
          FBFBFBFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF4F4F4F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F6F6F6FEFEFEFFFFFFFCFCFCFAFAFAFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFCFCFEFE
          FEFFFFFFFFFFFFFEFEFEFCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFC
          FCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFFFFFF
          FFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFCFC
          FCFCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFEFEFEFFFFFFFF
          FFFFFFFFFFFDFDFDFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFC
          FCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6FFFFFFFFFFFFFFFF
          FFFFFFFFF7F7F7F6F6F6FFFFFFFFFFFFFEFEFEF6F6F6F3F3F3F5F5F5FDFDFDFF
          FFFFFFFFFFFFFFFFFCFCFCF3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFEFEFEF5F5F5
          F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAF3F3F3F4F4F4F7F7F7FFFF
          FFFFFFFFFFFFFFF7F7F7F4F4F4F4F4F4FCFCFCFFFFFFFFFFFFFFFFFFFDFDFDF4
          F4F4F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2FBFBFBFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEF9F9F9F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFF6F6F6F3F3
          F3FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2F2F2F6F6F6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF6F6F6F7F7F7F7F7F7
          F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F8F8F8F7F7F7F7F7F7F6F6
          F6FEFEFEFFFFFFFFFFFFFFFFFFF9F9F9EDEDEDEFEFEFEFEFEFEFEFEFEFEFEFEF
          EFEFEFEFEFEEEEEEF1F1F1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAFBFBFBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFFFFFFFFFFFFFE
          FEFEFAFAFAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFCFCFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAFFFFFFFFFFFFFFFFFFFCFC
          FCFAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFAFAFAFEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAFEFEFEFFFFFFFFFFFFFDFDFDFAFAFA
          FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFAFAFAFEFE
          FEFFFFFFFFFFFFFFFFFFF0F0F0F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF2F2F2F1
          F1F1FFFFFFFFFFFFFEFEFEF0F0F0EDEDEDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF2F2F2F0F0F0FFFFFFFFFFFFFFFFFFF5F5F5ECECECFBFBFBFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EBEBEBF4F4F4FFFFFFFFFFFFFFFFFFF2
          F2F2ECECECF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EEEEEEFEFEFE
          FFFFFFFFFFFFF8F8F8EBEBEBF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFAFAFAFDFDFDFFFFFFFFFFFFF9F9F9ECECECFAFAFAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFAFAFAEBEBEBF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F4F4F4F5F5F5F6F6F6F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F8F8F8FFFFFFFF
          FFFFFFFFFFFDFDFDE8E8E8E6E6E6E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E7E7E7
          EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFCFCF7F7F7FCFCFCFFFFFFFDFDFDF8F8F8FBFBFB
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBFBFBF8F8F8FEFEFEFFFFFFFFFFFFF9F9F9F8F8F8FDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8F9F9F9FEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDF8F8F8FCFCFCFFFFFFFFFFFFFAFAFAF7F7F7FEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7FEFEFEFFFFFFFFFFFFFF
          FFFFEBEBEBECECECFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDEAEAEAFFFFFFFFFFFF
          FDFDFDE9E9E9EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2E7E7
          E7FEFEFEFFFFFFFEFEFEE8E8E8EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFEFEE9E9E9EEEEEEFFFFFFFFFFFFFFFFFFECECECEAEAEAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E6E6E6FAFAFAFFFFFFFFFFFFECEC
          ECECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDEDEDE9E9E9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBE8E8E8EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF7F7F7EFEFEFF2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
          F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F0F0F0FDFDFDFFFFFFFFFFFFFFFFFF
          F5F5F5DEDEDEDDDDDDE0E0E0E0E0E0DFDFDFDFDFDFE3E3E3F7F7F7FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFBFBFBF5F5F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEF6F6F6F9F9F9FFFFFFFDFDFDF6F6F6FAFAFAFFFFFFFFFFFFFFFF
          FFFFFFFFFDFDFDF4F4F4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9
          F9F9F6F6F6FEFEFEFFFFFFFFFFFFF8F8F8F6F6F6FEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEF6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF5F5
          F5FAFAFAFFFFFFFFFFFFF7F7F7F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFBFBFBF5F5F5FDFDFDFFFFFFFFFFFFFFFFFFE5E5E5E7E7E7
          FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E5E5E5FFFFFFFFFFFFFDFDFDE0E0E0EBEB
          EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEE0E0E0FDFDFDFFFFFFFA
          FAFADDDDDDF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E6E6E6E6E6E6FFFFFFFFFFFFFFFFFFE4E4E4E6E6E6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF4F4F4DDDDDDF8F8F8FFFFFFFDFDFDDFDFDFEDEDEDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
          E4E4E4E0E0E0E0E0E0DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDDDD
          DDE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF5F5F5EBEBEBEDEDEDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
          EEEEEEEEEEEEEFEFEFEBEBEBF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E0E0
          E0D7D7D7D7D7D7D9D9D9E1E1E1F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9
          F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF3F3
          F3F7F7F7FFFFFFFCFCFCF2F2F2F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF2
          F2F2F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F3F3F3FEFEFE
          FFFFFFFFFFFFF6F6F6F4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3F3
          F3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF3F3F3FAFAFAFFFFFFFF
          FFFFF4F4F4F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F9F9F9F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFDCDCDCDFDFDFFFFFFFFFFFFFFFFF
          FFFFFFFFE0E0E0DCDCDCFFFFFFFFFFFFFDFDFDD7D7D7E7E7E7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE9E9E9D6D6D6FCFCFCFFFFFFF8F8F8D3D3D3EDEDED
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1DEDEDEFFFF
          FFFFFFFFFFFFFFDCDCDCE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
          F2F2D3D3D3F6F6F6FFFFFFFCFCFCD5D5D5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD8D8D8E2E2E2F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F7F7F7F7F7F7FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F6F6F6E9E9E9E9E9E9ECECECECECECECECECECECECECECECECECECECECECECEC
          ECEBEBEBE9E9E9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F1F1F1F4
          F4F4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F0F0F0FAFAFAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFF8F8F8FFFFFFFB
          FBFBEFEFEFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1F7F7F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F1F1F1FEFEFEFFFFFFFFFFFFF4F4
          F4F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF2F2F2F5F5F5FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFBFBFBF0F0F0F9F9F9FFFFFFFFFFFFF4F4F4F1F1F1
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F1F1F1FCFC
          FCFFFFFFFFFFFFFFFFFFD8D8D8DADADAFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBD7
          D7D7FFFFFFFFFFFFFCFCFCD1D1D1E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE6E6E6D0D0D0FBFBFBFFFFFFFCFCFCCFCFCFE1E1E1FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5DBDBDBFFFFFFFFFFFFFFFFFFD7
          D7D7DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0CDCDCDF5F5F5
          FFFFFFFEFEFED2D2D2DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8D9D9D9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBECEC
          ECE4E4E4E7E7E7EAEAEAEAEAEAE9E9E9E9E9E9E9E9E9E9E9E9EAEAEAE6E6E6EF
          EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EEEEEEF2F2F2FEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF2F2F2EEEEEEFCFCFCFFFFFFFBFBFBEEEEEEF7F7F7
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF0F0F0F2F2F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF1F1F1F2F2F2FFFFFFFFFFFFFFFFFFF2F2F2F1F1F1FEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEEFEFEFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBFBFBEEEEEEF7F7F7FFFFFFFFFFFFF9F9F9EDEDEDF6F6F6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF0F0F0EFEFEFFCFCFCFFFFFFFFFFFFFF
          FFFFD3D3D3D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D2D2D2FFFFFFFFFFFF
          FBFBFBCBCBCBE2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3CACA
          CAFBFBFBFFFFFFFFFFFFDCDCDCC6C6C6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEEEEEEC3C3C3D9D9D9FFFFFFFFFFFFFFFFFFD2D2D2D8D8D8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEC7C7C7F3F3F3FFFFFFFFFFFFE2E2
          E2C3C3C3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FC
          FCFCFFFFFFFFFFFFE8E8E8C3C3C3F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF5F5F5CDCDCDF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8E0
          E0E0E1E1E1E3E3E3E6E6E6EBEBEBEFEFEFEFEFEFF0F0F0ECECECFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF7F7F7EDEDEDEDEDEDF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFDFDFD
          F3F3F3EAEAEAF4F4F4FFFFFFFFFFFFFBFBFBECECECF6F6F6FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF4F4F4EBEBEBF5F5F5FFFFFFFFFFFFFFFFFFFEFEFEF4F4F4EB
          EBEBF6F6F6FFFFFFFFFFFFFFFFFFF2F2F2EFEFEFFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDEEEEEEF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEBEB
          EBF7F7F7FFFFFFFFFFFFFEFEFEF1F1F1EBEBEBF7F7F7FFFFFFFFFFFFFFFFFFFF
          FFFFFBFBFBEFEFEFEDEDEDEEEEEEFBFBFBFFFFFFFFFFFFFFFFFFCDCDCDD1D1D1
          FFFFFFFFFFFFFFFFFFFFFFFFD1D1D1CDCDCDFFFFFFFFFFFFFBFBFBC4C4C4DEDE
          DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFC3C3C3FAFAFAFFFFFFFF
          FFFFF8F8F8C3C3C3C9C9C9F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEC4C4C4
          C0C0C0D5D5D5FFFFFFFFFFFFFFFFFFCCCCCCD3D3D3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFEBEBEBBFBFBFF2F2F2FFFFFFFFFFFFFBFBFBCACACAC2C2C2F0
          F0F0FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE2E2E2BBBBBBE8E8E8FFFFFFFFFFFF
          FDFDFDCBCBCBC4C4C4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3C6C6C6C4C4
          C4F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3F0F0F0
          EEEEEEDFDFDFD5D6D5D0D0D0CECECECFCFCFD9D9D9FBFBFBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9
          F2F2F2F7F7F7ECECECF1F1F1F9F9F9FBFBFBFAFAFAF4F4F4ECECECF2F2F2FEFE
          FEFFFFFFFFFFFFFCFCFCF1F1F1F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFDEFEFEFEEEEEEF8F8F8FBFBFBFBFBFBF6F6F6EEEEEEF0F0F0FEFEFEFFFFFF
          FFFFFFFFFFFFF6F6F6F4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3F3
          F3F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF1F1F1F9F9F9FFFFFFFF
          FFFFFFFFFFFDFDFDEEEEEEEDEDEDF7F7F7FCFCFCFDFDFDF9F9F9EFEFEFEFEFEF
          F6F6F6F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFD6D6D6D8D8D8FFFFFFFFFFFFFFFF
          FFFFFFFFD9D9D9D6D6D6FFFFFFFFFFFFFCFCFCCDCDCDE3E3E3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE5E5E5CECECEFBFBFBFFFFFFFFFFFFFFFFFFEFEFEF
          BFBFBFC9C9C9EEEEEEFEFEFEFBFBFBE1E1E1BDBDBDDEDEDEDADADAD9D9D9FFFF
          FFFFFFFFFFFFFFD5D5D5DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
          EFEFCACACAF4F4F4FFFFFFFFFFFFFFFFFFF6F6F6C6C6C6C0C0C0E4E4E4FAFAFA
          FEFEFEF5F5F5D8D8D8BABABAD6D6D6FCFCFCFFFFFFFFFFFFFFFFFFF6F6F6C3C3
          C3C6C6C6ECECECFDFDFDFBFBFBE9E9E9C5C5C5C2C2C2F2F2F2FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7D5D4D4A8A8A8898A897070706566
          65626261606060545454696969F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDD2D2D2F6F6F6FEFE
          FEE2E2E2CBCBCBC4C4C4C8C8C8D8D8D8F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFF5
          F5F5D3D3D3EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7
          CECECEC5C5C5C4C4C4D0D0D0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF
          DFD9D9D9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD7D7D7E1E1E1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF4F4F4D2D2D2ECECECFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEDEDEDD2D2D2C5C5C5C3C3C3CFCFCFEBEBEBFFFFFFEAEAEAD3D3D3F6F6
          F6FFFFFFFFFFFFFFFFFFA7A7A7AEAEAEFFFFFFFFFFFFFFFFFFFFFFFFADADADA5
          A5A5FEFEFEFFFFFFF7F7F7969696C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC6C6C6949494F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B86B6B
          6B4D4D4D575757919191EFEFEFFFFFFFA7A7A7ABABABFFFFFFFFFFFFFFFFFFA5
          A5A5B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC8E8E8EE7E7E7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D28181815656564D4D4D6363639E9E
          9EEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C373737351
          5151515151737373C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFEDEDEDB2B1B17E7E7E7070707777778282828C8C8C91919192929295959580
          8080C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9A4A4A4E8E8E8CFCFCFA7A7A7ACACACB2
          B2B2ADADADA6A6A6B8B8B8EAEAEAFFFFFFFFFFFFFFFFFFE9E9E9A3A3A3D5D5D5
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8ACACACA8A8A8B1B1B1B0B0
          B0A8A8A8AFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBDAFAFAFF9F9F9FF
          FFFFFFFFFFFFFFFFFFFFFFF8F8F8ACACACC2C2C2FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE9E9E9A1A1A1D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFDCDCDCAFAFAFA8A8
          A8B3B3B3B5B5B5ABABABAAAAAADEDEDED4D4D4A4A4A4EDEDEDFFFFFFFFFFFFFF
          FFFF2B2B2B3B3B3BFFFFFFFFFFFFFFFFFFFFFFFF393939262626FCFCFCFFFFFF
          EBEBEB0A0A0A6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777770000
          00E3E3E3FFFFFFFFFFFFFFFFFFFEFEFE7676760404040808083333332A2A2A00
          0000393939DBDBDB3A3A3A353535FFFFFFFFFFFFFFFFFF2B2B2B4A4A4AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8000000C4C4C4FFFFFFFFFFFFFFFF
          FFFFFFFF9898981919190000002727273636361818180000003A3A3AC9C9C9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A0D0D0D0808083232322C2C2C000000
          0B0B0B838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBBABABA8080807979798B
          8B8B9595959595959393939090908F8F8F9191918585859B9B9BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDBDBDBAFAFAFBBBBBBAAAAAAD3D3D3F1F1F1F9F9F9F3F3F3D7D7D7
          ACACACABABABEBEBEBFFFFFFFFFFFFEAEAEAA9A9A9D8D8D8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFE3E3E3A5A5A5B9B9BAE5E5E5F8F8F8F8F8F8E2E2E2B3B3B3A8
          A8A8ECECECFFFFFFFFFFFFFFFFFFC2C2C2B5B5B5FAFAFAFFFFFFFFFFFFFFFFFF
          FFFFFFF8F8F8B2B2B2C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAA8A8
          A9DADADAFFFFFFFFFFFFFFFFFFDADADAA4A4A4B8B8B8E4E4E4FAFAFAFCFCFCF1
          F1F1CBCBCBAAAAAAB9B9B9B1B1B1EDEDEDFFFFFFFFFFFFFFFFFF2F2F2F3E3E3E
          FFFFFFFFFFFFFFFFFFFFFFFF3D3D3D2B2B2BFEFEFEFFFFFFECECEC1010107171
          71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B070707E5E5E5FFFFFFFF
          FFFFFEFEFE5E5E5E000000727272E0E0E0FBFBFBF8F8F8CACACA3E3E3E161616
          1F1F1F464646FFFFFFFFFFFFFFFFFF3131314F4F4FFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFAAAAAA000000C7C7C7FFFFFFFFFFFFFFFFFF7E7E7E0000004D
          4D4DCCCCCCF7F7F7FCFCFCF1F1F1A9A9A9181818000000B8B8B8FFFFFFFFFFFF
          FFFFFF828282000000686868DFDFDFFBFBFBF9F9F9D6D6D66363630000006B6B
          6BFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE6E6E69696967B7B7B8E8E8E939393909090909090909090
          9090909090909090909191917D7D7CE2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF1F1F0DDDDDDEAEAE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC
          ADADADAEAEAEE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAADADADB7B7
          B7F9F9F9FFFFFFEAEAEAA9A9A9D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBD
          BDBDB1B1B1F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFEFEFEFACACACC6C6C6FFFFFF
          FFFFFFFFFFFFC1C1C1B5B5B5FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8B2B2
          B2C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAA8A8A8DADADAFFFFFFFF
          FFFFEFEFEFAAAAAABBBBBAF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADA
          ABABABB2B2B2EDEDEDFFFFFFFFFFFFFFFFFF3030303F3F3FFFFFFFFFFFFFFFFF
          FFFFFFFF3E3E3E2B2B2BFEFEFEFFFFFFECECEC111111717171FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF7C7C7C080808E5E5E5FFFFFFFFFFFF9B9B9B000000
          8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5858580000004D4D4DFFFF
          FFFFFFFFFFFFFF3232324F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB
          ABAB000000C7C7C7FFFFFFFFFFFFB5B5B5000000656565FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE7E7E7676767C4C4C4FFFFFFFFFFFFC7C7C70000007171
          71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C000000B5B5B5FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC
          8888888686869393939191919090909090909090909090908F8F8F9090909392
          93818181A3A4A3FFFFFFFFFFFFFFFFFFFFFFFFECECEC7474742C2C2C1C1C1C30
          302F6E6E6DD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCA7A7A7D0D0D0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7A5A5A5E1E1E1FFFFFFEA
          EAEBA9A9A9D9D9D8FFFFFFFFFFFFFFFFFFFFFFFFF5F5F5AEAEAECBCBCBFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C3B6B6B6FDFDFDFFFFFFFFFFFFC1C1
          C1B5B5B5FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8B2B2B2C6C6C6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEAEAEAA8A8A8DADADAFFFFFFFFFFFFCECECEA6A6A6
          EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1ADADADEEEE
          EEFFFFFFFFFFFFFFFFFF3030303F3F3FFFFFFFFFFFFFFFFFFFFFFFFF3E3E3E2B
          2B2BFEFEFEFFFFFFECECEC111111717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7C7C7C080808E5E5E5FFFFFFF9F9F92A2A2A303030FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA0B0B0B434343FFFFFFFFFFFFFFFFFF32
          32324F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB000000C7C7C7
          FFFFFFFCFCFC3D3D3D131313F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555550F0F0FF7F7F7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFDFDFDA7A7A7E8E8E8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC8686868B8B8B9292929090
          8F9090909090909090909090909090909090909090909292927B7B7BE3E3E3FF
          FFFFFFFFFFFFFFFFE2E2E2343434000000000000000000000000000000363636
          D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBA8A8A8EAEAEAFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF1F1F1AAAAA9CDCDCDFFFFFFEBEBEBA9A9A9D8D8D8
          FFFFFFFFFFFFFFFFFFFFFFFFEFEFEFABABABD5D5D5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFC9C8C9B1B0B0F6F6F6FFFFFFFFFFFFC1C1C1B5B5B5FAFAFAFF
          FFFFFFFFFFFFFFFFFFFFFFF8F8F8B2B2B2C7C7C7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEAEAEAA8A8A8DADADAFFFFFFFEFEFEBBBBBBB7B7B7FDFDFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6AAAAAAEEEEEEFFFFFFFFFFFFFF
          FFFF3030303F3F3FFFFFFFFFFFFFFFFFFFFFFFFF3E3E3E2B2B2BFEFEFEFFFFFF
          ECECEC111111707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C0808
          08E5E5E5FFFFFFD9D9D9000000888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF3737373C3C3CFFFFFFFFFFFFFFFFFF3333334E4E4EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA000000C7C7C7FFFFFFECECEC1212
          12656565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF6F6F61F1F1F555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDDDDDD8888888B8B8B9191919090908F8F8F90909090909090
          90908F8F90909090909090929292818181A0A0A0FFFFFFFFFFFFFFFFFFF5F5F5
          353535000000000000000000000000000000000000000000676767FEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDADADAAAAAAAEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF6F6F6AEAEAEC8C8C8FFFFFFEBEBEBA9A9A9D6D6D6FFFFFFFFFFFFFFFF
          FFFFFFFFEEEEEEAAAAAAD6D7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB
          CBCBAFAFAFF4F4F4FFFFFFFFFFFFC2C2C2B3B3B3F9F9F9FFFFFFFFFFFFFFFFFF
          FFFFFFF8F8F8B2B2B2C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAA9A9
          A9DADADAFFFFFFFDFDFDB7B7B7BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDBDBDBAAAAAAEEEEEEFFFFFFFFFFFFFFFFFF3030303F3F3F
          FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E2C2C2CFEFEFEFFFFFFEDEDED0F0F0F6767
          67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C070707E5E5E5FFFFFFCC
          CCCC0000009A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          4747473C3C3CFFFFFFFFFFFFFFFFFF3333334A4A4AFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFACACAC000000C6C6C6FFFFFFE3E3E30C0C0C858585FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
          2323231919194444443B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B4545
          456A6A6AF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E88A
          8A8A898989929292909090929192919191929292929291919192919192919191
          908F8F929292777777D9D9D9FFFFFFFFFFFFFFFFFFB1B1B10000000000000101
          01000000000000010101000000000000323232EEEFEEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB
          A8A8A8E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0A9A9
          A9CFCFCFFFFFFFEBEBEBA9A9A9D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEAA
          AAAAD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBAFAFAFF4F4F4
          FFFFFFFFFFFFC3C3C3B0B0B0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8B2B2
          B2BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBA8A8A8DADADAFFFFFFFE
          FEFEBDBDBDB5B5B5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D2D2D2AAAAAAEEEEEEFFFFFFFFFFFFFFFFFF3030303F3F3FFFFFFFFFFFFFFFFF
          FFFFFFFF3E3E3E2C2C2CFEFEFEFFFFFFEDEDED0E0E0E565656FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF7A7A7A0A0A0AE7E7E7FFFFFFDDDDDD0303037B7B7B
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B2B2B3D3D3DFFFF
          FFFFFFFFFFFFFF363636343434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8
          A8A8010101CACACAFFFFFFF3F3F31A1A1A5E5E5EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F92F2F2F0C0C0C6767
          675F5F5F5D5D5D5D5D5D5D5D5D5D5D5D5E5E5E6868680303032E2E2EFDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9FA9A9A9A888889959595949495
          9696969797979797979797979797979797979797979595959696978B8B8A8C8C
          8CFEFEFEFFFFFFFFFFFFFFFFFF87878700000000000000000000000000000000
          00000000000000002E2E2EF5F5F5FFFFFFDDDDDDBABABAFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCA7A7A7CECECEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1A5A5A5E6E6E6FFFFFFEA
          EAEAABABABC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEAAAAAAD6D6D6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBAFAFAFF4F4F4FFFFFFFFFFFFC5C5
          C5A8A8A8E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6B2B2B2B1B1B1F6F6F6FF
          FFFFFFFFFFFFFFFFFFFFFFE8E8E8A6A6A6DFDFDFFFFFFFFFFFFFD3D3D3A5A5A5
          E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFAB8B8B8AEAEAEEDED
          EDFFFFFFFFFFFFFFFFFF3030303F3F3FFFFFFFFFFFFFFFFFFFFFFFFF3E3E3E2B
          2B2BFEFEFEFFFFFFEDEDED171717212121F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF6868681D1D1DF6F6F6FFFFFFFDFDFD3737371D1D1DF9F9F9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC010101474747FFFFFFFFFFFFFFFFFF3C
          3C3C060606DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090000000DCDCDC
          FFFFFFFFFFFF5C5C5C0C0C0CEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF696969060606EBEBEBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF2F2F2080808727272FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFBBBBBB8887879999999999999B9A9A9C9B9B9C9C9C9C9C
          9C9C9C9C9C9C9C9C9C9C9C9C9C9B9B9B9F9FA07E7E7EBBBBBBFFFFFFFFFFFFFF
          FFFFFFFFFFB3B3B3000000000000000000000000000000000000000000000000
          747474FFFFFFFFFFFF565656262626EAEAE9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCAEAEAEACACACDFDFDFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE2E2E2A8A8A8BFBFBFFDFDFDFFFFFFEAEAEAAFAFAFAFAFAF
          EDEDEDFFFFFFFFFFFFFFFFFFEEEEEEAAAAAAD6D6D6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFCBCBCBAFAFAFF4F4F4FFFFFFFFFFFFC6C6C6A9A9A9BCBCBCF8
          F8F8FFFFFFFFFFFFFFFFFFE0E0E0AEAEAEAAAAAACBCBCBFFFFFFFFFFFFFFFFFF
          FFFFFFD1D1D1A8A8A8ECECECFFFFFFFFFFFFF4F4F4B0B0B0B0B0B0ECECECFFFF
          FFFFFFFFFFFFFFFFFFFFFDFDFDC8C8C7A9A9A9B2B2B2EDEDEDFFFFFFFFFFFFFF
          FFFF343434444444FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E2B2B2BFEFEFEFFFFFF
          EDEDED2121210000006F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF7F7F71B1B1B4D4D
          4DFFFFFFFFFFFFFFFFFFB5B5B5000000606060FEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFE1E1E12727270000004D4D4DFFFFFFFFFFFFFFFFFF414141000000474747
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF4141411E1E1EF9F9F9FFFFFFFFFFFFDADA
          DA060606494949F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1313131AE
          AEAEFFFFFFFFFFFFDDDDDD090909454545F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
          F9F9F9484848090909DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6
          E6909190999A9A9C9C9C9E9D9E9E9F9EA09FA0A09FA0A0A0A1A1A0A1A0A0A1A0
          A0A0A09FA09F9E9FA0A0A07C7C7CE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFF5F5F5
          3B3B3B000000000000000000000000000000000000303030EBEBEAFFFFFFECEC
          EC1212120000008D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDBDBDBAFAFAFBFBEBFA9A9A8C9C9C9EAEAEAF3F3F3ECECECCECECE
          A6A6A6B2B2B2F2F2F2FFFFFFFFFFFFEAEAEAB0B0B0B1B1B1B4B4B4E3E3E3E9E9
          E9FCFCFCEFEFEFA8A8A8D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA
          CACAAEAEAEF5F5F5FFFFFFFFFFFFC3C3C3B3B3B3B3B3B3B6B6B6E2E2E2EEEEEE
          DEDEDEAFAFAFB4B4B4DEDEDEABABABC2C2C2E8E8E8EDEDEDD5D5D5A8A8A7BEBE
          BEFCFCFCFFFFFFFFFFFFFFFFFFE4E4E5A9A9A9ABABABD3D3D3EAEAEAEDEDEDE1
          E1E1B9B9B9ADADADC0C0C0AEAEAEEDEDEDFFFFFFEBEBEBBBBBBB262626323232
          BCBCBCBDBDBDF3F3F3FFFFFF383838252525FEFEFEFFFFFFEBEBEB1414144A4A
          4A202020515151C7C7C7E5E5E5CACACA454545000000BDBDBDFFFFFFFFFFFFFF
          FFFFFFFFFF828282000000383838AEAEAED5D5D5D0D0D0949494151515404040
          2929293C3C3CFFFFFFFFFFFFFFFFFF3030303B3B3B2C2C2C3D3D3DBDBDBDE5E5
          E5D4D4D46666660000009B9B9BFFFFFFFFFFFFFFFFFFFFFFFFADADAD0000002D
          2D2DA8A8A8DBDBDBE4E4E4CFCFCF838383090909131313C9C9C9FFFFFFFFFFFF
          FFFFFFA6A6A6000000313131ACACACD8D8D8D6D6D6A8A8A82E2E2E000000AAAA
          AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B5B49393939E9F9FA0
          A0A0A2A2A2A3A4A4A5A4A4A5A5A5A6A6A6A6A6A6A6A6A5A5A5A5A5A5A5A6A4A5
          989798909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E24646460000
          000000000000000000004D4D4DE3E3E3FFFFFFFFFFFF84848400000000000035
          3535EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB
          AAAAAAECECECD9D9D9ACACACA8A8A8ACACACA9A9A9A8A8A8C2C2C2F1F1F1FFFF
          FFFFFFFFFFFFFFE9E9E9A8A8A8D6D6D6C7C7C7A4A4A4A1A1A1D7D7D7F2F2F2A6
          A6A6D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8ACACACF4F4F4
          FFFFFFFFFFFFBFBFBFB6B6B6EFEFEFBBBBBBA5A5A5A9A9A9A5A5A5B0B0B0E3E3
          E3FFFFFFE4E4E4B0B0B0A7A7A7A9A9A9A5A5A5B8B8B9F2F2F2FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE8E8E8BABABAA6A6A6A8A8A8AAAAAAA6A6A6B3B3B3E9E9E9
          D7D7D7A6A6A6EDEDEDFFFFFFB5B5B51818180303030606061A1A1A1D1D1DD2D2
          D2FFFFFF494949373737FCFCFCFFFFFFECECEC1B1B1B898989DFDFDF2D2D2D0E
          0E0E0A0A0A0101010D0D0DA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9D9D9D1B1B1B000000010101030303080808626262FAFAFA484848454545FFFF
          FFFFFFFFFEFEFE383838666666ECECEC4A4A4A0E0E0E0A0A0A03030307070782
          8282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C33D3D3D070707090909
          0808080909090A0A0A5D5D5DE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1
          B12727270000000404040404040000002C2C2CB8B8B8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEBEBEB979898A0A0A0A4A3A3A6A6A6A8A7A7A9A9A9
          A9A9A9AAAAAAABAAAAAAAAAAABAAAAAAAAAAA9A9A9AFAFAF8B8B8BB0B0B0FFFF
          FFFFFFFFFFFFFFFFFFFFEEEEEEF5F5F5FFFFFFFFFFFFBABABA868686868686B9
          B9B9FFFFFFFFFFFFFFFFFFB3B3B3090909000000000000050505A6A6A6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBA8A8A8E9E9E9FFFF
          FFF6F6F6E2E2E2D9D9D9DDDDDDEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
          FBFBECECECFAFAFAFFFFFFE3E3E3D8D8D8EDEDEDFDFDFDEDEDEDF7F7F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4EEEEEEFDFDFDFFFFFFFFFFFFF2F2
          F2EFEFEFFFFFFFFEFEFEE6E6E6D9D9D9DFDFDFF5F5F5FFFFFFFFFFFFFFFFFFF8
          F8F8E1E1E1D9D9D9E3E3E3FAFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDE8E8E8DBDBDBDADADAE6E6E6FBFBFBFFFFFFF6F6F6EDEDEDFBFB
          FBFFFFFFF4F4F4D9D9D92D2D2D3A3A3ADADADAD9D9D9F8F8F8FFFFFFE4E4E4E2
          E2E2FFFFFFFFFFFFFDFDFDDDDDDDEAEAEAFFFFFFFFFFFFC0C0C0979797A8A8A8
          E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3BBBB
          BB979797A5A5A5D9D9D9FFFFFFFFFFFFE1E1E1E4E4E4FFFFFFFFFFFFFFFFFFE2
          E2E2E3E3E3FFFFFFFFFFFFCCCCCC999999A0A0A0DDDDDDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2A4A4A4959595B1B1B1E1E1
          E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAC3C3C39B
          9B9B9D9D9DC7C7C7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC8C8C8999898A7A7A7A8A8A8AAAAAAABABABADACACAEADADAFAEAEAFAE
          AEAFAEAEB0AEAEAFAEAEAEADADB6B5B5838382D3D3D3FFFFFFFFFFFFFFFFFFE7
          E7E74C4C4C565656C4C3C4F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E6E5
          80807F060606000000000000000000000000626262FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBA8A8A8E8E8E8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF313131464646FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDB0B0B0A2A2
          A2AAAAAAACABABADADADAFAFAFB1B1B1B2B2B2B3B3B3B4B3B3B4B3B3B4B3B3B3
          B3B3B4B4B3B4B3B3828382F0F0F0FFFFFFFFFFFFFFFFFFCCCCCC000000000000
          1515154444457575759595959D9D9D8B8B8B5D5E5D1A1B1A0000000000000101
          010101010000000000002F2F2EE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDCDCDCA8A8A8E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2F323232
          FFFFFFFFFFFFFBFBFBF8F8F87676766E6E6EF2F2F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EFEFA6A6A6A9A9A9ADADADB0B0B0B4
          B2B2B3B3B3B5B5B5B7B7B7B9B8B8B9B8B9BAB9B9B9B9B9B9B8B8BDBBBBAAAAA9
          8E8E8EFEFFFFFFFFFFFFFFFFFFFFFFD2D2D20505050000000000000000000000
          0000000000000000000000000000000000000001010100000000000001010100
          00000E0F0EC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8
          9F9F9FE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767676000000363636323232BDBD
          BDDEDEDE000000000000BABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE3E3E3A4A3A3AEAEAEB1B1B1B5B4B4B6B6B5B9B8B8BBBAB9
          BCBBBABCBBBBBEBCBCBDBCBBBDBCBCBDBBBBC3C1C19F9E9EA0A0A0FFFFFFFFFF
          FFFFFFFFFFFFFFD6D6D610101005050500000000000000000000000000000001
          0101000000000000000000010101010101000000000000000000020202A6A6A6
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECCFCFCFF2F2F2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF5F5F5808080353535575757DCDCDCFDFDFD7272726B
          6B6BF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D7D7D7A6A7A7B3B3B2B6B4B5B8B8B8BBBABABEBCBCBFBDBDC0BEBEC0BFBEC1BF
          BFC1BFBFC0BFBFC0BEBEC9C6C6929291BABAB9FFFFFFFFFFFFFFFFFFFFFFFFDB
          DBDB1D1D1D1616160B0B0B000000000000010101010101010101000000000000
          0000000000000101010000000000000000000000008A898AFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1ABABABB6B6
          B6B9B8B9BCBBBBBFBEBDC1BFBFC2C1C0C4C1C1C3C2C3C5C4C4C6C5C5C6C4C5C4
          C2C3CDCCCC898989C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFE0E0E02B2B2B1E1E1E
          1C1C1C1010100303030000000000000000000000000000000000000101010101
          010000000000000000000000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0AFAEAEBBBABABEBCBCC0BEBDC2
          C0C0C3C3C3C5C5C4C8C6C6C8C8C7C9C7C8C9C7C8C9C8C7C7C6C6D1D0D0848484
          D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFE9E9E93D3D3D2929292525251E1E1E1414
          1405050500000000000000000001010100000001010101010100000000000000
          0000000000797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD2D2D2B2B1B1BEBCBDC0BEBEC3C1C1C5C4C4C7C5C5C9C8C8
          CBCACACCCBCBCDCCCCCCCCCCCCCCCBCBCBCBD2D1D1828181E2E3E3FFFFFFFFFF
          FFFFFFFFFFFFFFF2F2F25353533737373232322828282121211818180A0A0A00
          0000000000010101000000000000000000000000010101000000000000838382
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D9D9D9B5B3B3C0BEBEC3C1C1C5C4C4C8C7C7CBC9C9CCCCCCCECFCED1CFD0D1D0
          D0D1D0CFD0D0D0D0D0D0D3D2D2818181ECECECFFFFFFFFFFFFFFFFFFFFFFFFF8
          F8F86767674343434142413535352B2B2B2222221B1B1B0E0E0E020202000000
          0000000101010000000000000000000000000000009A9A9AFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3E3B8B6B6C1C0
          C0C4C4C3C8C7C7CCCAC9CDCDCDD0D0D0D3D2D2D4D2D2D4D3D3D4D3D2D4D3D2D4
          D4D4D2D2D1818181F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE7A7A7A484848
          4F4F4F4444433939392C2C2C2424241D1D1D1212120404040000000000000101
          01000000000000000000000000BABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBCBABAC3C2C1C7C6C6CBC9C9CE
          CDCED1D0D1D3D2D2D4D4D4D6D6D5D7D7D6D7D7D6D7D6D6D9D8D7D2D1D0818080
          F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393935151515656565151504747
          473C3C3C3131312727271F1F1F17171708080800000000000001010100000000
          0000131313DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF9F9F9C4C3C2C3C2C2C9C8C8CDCDCDD0D0D0D3D2D2D6D5D5
          D8D7D7D9D9D8DADBD9D9DBD9DADAD9DDDDDBD3D3D2808080F7F7F7FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA9A9A95C5C5C6060605656565050514949493D3D3D33
          33332727271F1F1F1818180A0A0A0000000000000000000000003C3C3CFDFDFD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD3D2D2C0C0BFCBC9CACECECED2D1D1D5D4D3D7D6D6D9DAD8DBDDDBDEDE
          DDDFDEDDDFDEDDDFE0DED6D7D57E7E7DF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC0C0C06060606363635959594F4F4F4848484141413535352929291E1E1E
          1414140C0C0C020202000000000000010101A2A2A2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9C0C0
          BFCBCBCAD0D0CFD3D2D2D6D5D5D8D9D8DCDDDBE0DFDEE3E1E0E3E2E1E3E1E0E4
          E1E1DCDDDB7C7C7CF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DADADA
          D9D9D9D7D7D7D4D4D4D2D2D2D1D1D1CFCFCFCBCBCBCACACAC7C7C7C6C6C6C5C5
          C5C3C3C3BDBDBDC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCCCCBCACAC9C9D1D0D0D3
          D2D2D6D5D5D9DAD8DEDFDDE3E0DFE5E3E3E6E6E5E5E4E4E5E3E3E3E2E17A7B7A
          EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCEDEDEDF5
          F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E4C6C6C6D1D0D0D4D2D2D5D5D4D8D9D8
          DFDFDDE2DFDEE4E4E3E9E7E7E8E7E6E4E3E2E8E7E57A7A79E0E0E0FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E78F8F8F8D8D8D8989888182827B7C7C74
          74746C6C6C6464645D5D5D5454544B4B4B3D3D3D2B2A2BCDCDCDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDD1D1D1CDCCCCD4D2D2D6D6D4D9D9D8DDDEDCE2E0DFE3E3
          E2E7E6E5E6E6E5E3E1E1EBEAE97B7B7AD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB5B5B57878787B7A7A76767471706F6969686262625A5A5A515151
          4C4C4C4646463E3E3E1515157F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0F0F0CACAC9D2D0D1D6D5D5D8D9D7DBDDDBE0E0DDE4E1E1E4E2E1E3E2E1E1
          DEDEEBECEA818180C4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3
          9B9B9B9B9B9B9090908686857D7B7B7271716666665D5D5D5151514848483535
          35616161F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4CC
          CACAD5D4D5D7D7D7D9DBD9DCDDDBDFDFDDE1DFDEE0DFDEDDDDDCEAEBE98A8A89
          B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D3D3D3D3D3D3CECE
          CEC9CACAC5C4C4C0BFBFBABABAB5B5B5B1B1B1A6A6A69A9A9AEDEDEDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDEDECDCCCCD6D5D5
          D7D8D6D9D9D8DBDCDADBDDDBDBDDDBD9DAD8E7E7E79B9A9A7F8080DDDDDDD6D6
          D6D6D6D6D6D6D6D6D7D7D7D7D7DADADADFDFDFDFDFDFE0E0E0E1E1E1E2E2E2E3
          E4E3E4E4E4E8E8E7E0E0E0F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDEDEDDCDCCCCD5D4D5D7D6D6D7D7
          D7D7D8D7D8D8D7D8D7D5DDDDDBC7C7C67A7A798181807F7E7E7D7C7C7B7C7B7A
          7A797978787777777575757373737272716F6F6F6E6E6E6C6B6C6B6B6B5E5E5D
          5F5F5FD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2CDCCCBD2D1D1D5D5D4D5D5D5D5D5D5D5
          D4D4D3D1D1D6D5D4DEDEDED7D7D7D4D3D3D1D0CFCDCDCDCAC8C8C7C4C4C2C1C1
          BDBDBDB9B8B9B3B3B4AFAFAFAAAAAAA4A4A4939393A2A2A2ECECECFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEEEDEDD3D1D1CCCACBD2D0D0D3D2D1D2D1D1D1D0D0CFCECE
          CDCCCCCBCACAC8C7C7C5C4C3C3C1C0C0BFBEBCBBBBB7B7B7B4B3B3AFAFAFACAC
          ACA8A7A79A9A9A949394BBBCBBF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF9F9F9E0DFDFCBCCCBC7C8C7C9C9C9CCCBCBCBCACACAC8C8C8C6C6C6C4
          C4C2C1C1C0BFBEBDBCBBB8B8B8B6B5B5B0B0B0A9AAA9A0A0A09A9B9BAEADAEDF
          DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF7F6F7E2E0E0CECECDC5C3C3C1C0C0C0BEBEBFBEBEBEBDBCBCBABAB9B8B8B4
          B3B3AFAEAEAAA9AAA5A5A5ABABAABEBEBEE0E1E1FEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFDF1F1F1E4E3E3D6D5D5CECCCCC8C7C7C3C2C2C1C1C1C2C2C2C8C7C7D1D0D1
          E3E3E3F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Stretch = True
      end
      object QRMemo1: TQRMemo
        Left = 24
        Top = 64
        Width = 130
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333300000
          63.500000000000000000
          169.333333333333300000
          343.958333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Century Gothic'
        Font.Style = []
        Lines.Strings = (
          'Bruma Finance (Pty) Ltd'
          'PO Box 46059, Orange Grove, 2119'
          'Tel: 0861 33 11 33'
          'Fax: 087 943 1700'
          'Email: info@brumafinance.co.za')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRLabel4: TQRLabel
        Left = 8
        Top = 964
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2550.583333333333000000
          243.416666666666700000)
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
      object QRLabel18: TQRLabel
        Left = 345
        Top = 909
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          912.812500000000100000
          2405.062500000000000000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(011) 359 7228'
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
      object qrImportant: TQRRichText
        Left = 8
        Top = 880
        Width = 497
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2328.333333333333000000
          1314.979166666667000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Important: Please use reference number 1234 when making payment')
        ParentRichEdit = rdtImportant
      end
      object rdtImportant: TRichEdit
        Left = 304
        Top = 816
        Width = 353
        Height = 33
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Important: Please use reference number 1234 when making payment')
        ParentFont = False
        TabOrder = 78
      end
      object QRLabel31: TQRLabel
        Left = 8
        Top = 532
        Width = 32
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          21.166666666666670000
          1407.583333333333000000
          84.666666666666680000)
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
        Top = 552
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
          1460.500000000000000000
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
        Top = 575
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
          1521.354166666667000000
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
        Top = 637
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
          1685.395833333333000000
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
        Top = 683
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
          1807.104166666667000000
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
        Top = 716
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
          1894.416666666667000000
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
      object qlQuoteDate: TQRLabel
        Left = 594
        Top = 62
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          164.041666666666700000
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
    end
    object QRChildBand1: TQRChildBand
      Left = 48
      Top = 1073
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
          42.333333333333340000
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
end
