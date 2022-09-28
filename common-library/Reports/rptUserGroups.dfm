inherited repUsergroups: TrepUsergroups
  Tag = 51
  Left = 219
  Top = 99
  Width = 525
  Height = 347
  Caption = 'Usergroups'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickReport: TQuickRep
    DataSet = dtmSecGrp.qryAppFrm
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
      Height = 57
      Size.Values = (
        150.8125
        1846.79166666667)
      inherited qlrepTitle: TQRLabel
        Left = 640
        Width = 58
        Size.Values = (
          44.9791666666667
          1693.33333333333
          42.3333333333333
          153.458333333333)
        Caption = 'Usergroups'
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
      object txtDescription: TQRDBText
        Left = 316
        Top = 32
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          836.083333333333
          84.6666666666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmSecGrp.qryUserGrp
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
      object lblCode: TQRLabel
        Left = 0
        Top = 33
        Width = 115
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          87.3125
          304.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'E = Enabled  V = Visible'
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
    inherited qbPageFoot: TQRBand
      Top = 261
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
      Top = 187
      Height = 17
      BeforePrint = qbDetailBeforePrint
      Size.Values = (
        44.9791666666667
        1846.79166666667)
      object txtAppFrm: TQRDBText
        Left = 56
        Top = 0
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          148.166666666667
          0
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmSecGrp.qryAppFrm
        DataField = 'ObjDescLU'
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
      object expObjID: TQRExpr
        Left = 0
        Top = 0
        Width = 191
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
          505.354166666667)
        Alignment = taLeftJustify
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
        Expression = 'IF(qryAppFrm.ObjID=-2,'#39'Report:'#39','#39'Form:'#39')'
        FontSize = 8
      end
      object imgAE: TQRImage
        Left = 632
        Top = -1
        Width = 13
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1672.16666666667
          -2.64583333333333
          34.3958333333333)
        AutoSize = True
        Picture.Data = {
          07544269746D61703E020000424D3E0200000000000036000000280000000D00
          00000D000000010018000000000008020000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFF000000FFFFFF00000000
          0000FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00}
      end
      object imgAV: TQRImage
        Left = 664
        Top = -1
        Width = 13
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1756.83333333333
          -2.64583333333333
          34.3958333333333)
        AutoSize = True
        Picture.Data = {
          07544269746D61703E020000424D3E0200000000000036000000280000000D00
          00000D000000010018000000000008020000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFF000000FFFFFF00000000
          0000FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000FFFF
          FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          FFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00}
      end
    end
    inherited qrGroup: TQRGroup
      Top = 169
      Height = 18
      Size.Values = (
        47.625
        1846.79166666667)
      object lblEnabled: TQRLabel
        Left = 632
        Top = 0
        Width = 7
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1672.16666666667
          0
          18.5208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'E'
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
      object lblVisible: TQRLabel
        Left = 664
        Top = 0
        Width = 9
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1756.83333333333
          0
          23.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'V'
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
      object lblE: TQRLabel
        Left = 312
        Top = 0
        Width = 7
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          825.5
          0
          18.5208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'E'
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
      object lblV: TQRLabel
        Left = 344
        Top = 0
        Width = 9
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          910.166666666667
          0
          23.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'V'
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
      Top = 221
      Size.Values = (
        105.833333333333
        1846.79166666667)
    end
    inherited repTitleBand: TQRBand
      Size.Values = (
        169.333333333333
        1846.79166666667)
      inherited qlrepName: TQRLabel
        Left = 304
        Width = 90
        Size.Values = (
          52.9166666666667
          804.333333333333
          13.2291666666667
          238.125)
        Caption = 'Usergroups'
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
        Enabled = False
        Size.Values = (
          44.9791666666667
          1791.22916666667
          34.3958333333333
          55.5625)
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
        Enabled = False
        Size.Values = (
          44.9791666666667
          0
          0
          132.291666666667)
        FontSize = 8
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 48
      Top = 204
      Width = 698
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.9791666666667
        1846.79166666667)
      Master = QuickReport
      DataSet = dtmSecGrp.qryFrmObj
      PrintBefore = False
      PrintIfEmpty = True
      object txtObject: TQRDBText
        Left = 216
        Top = 2
        Width = 41
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          571.5
          5.29166666666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtmSecGrp.qryFrmObj
        DataField = 'ObjDescLU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object ImgE: TQRImage
        Left = 312
        Top = -2
        Width = 13
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          825.5
          -5.29166666666667
          34.3958333333333)
        AutoSize = True
        Picture.Data = {
          07544269746D617072000000424D72000000000000003E000000280000000D00
          00000D000000010001000000000034000000C40E0000C40E0000020000000000
          000000000000FFFFFF00FFF80000FFF80000FFF80000FBF80000F1F80000E4F8
          0000EE780000FF380000FFB80000FFF80000FFF80000FFF80000FFF80000}
      end
      object imgV: TQRImage
        Left = 344
        Top = -2
        Width = 13
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          910.166666666667
          -5.29166666666667
          34.3958333333333)
        AutoSize = True
        Picture.Data = {
          07544269746D617072000000424D72000000000000003E000000280000000D00
          00000D000000010001000000000034000000C40E0000C40E0000020000000000
          000000000000FFFFFF00FFF80000FFF80000FFF80000FBF80000F1F80000E4F8
          0000EE780000FF380000FFB80000FFF80000FFF80000FFF80000FFF80000}
      end
      object Shape: TQRShape
        Left = 216
        Top = 12
        Width = 143
        Height = 1
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          571.5
          31.75
          378.354166666667)
        Shape = qrsHorLine
      end
    end
    object ChildBand1: TQRChildBand
      Left = 48
      Top = 290
      Width = 698
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1846.79166666667)
    end
  end
end
