object frmSettleArrears: TfrmSettleArrears
  Left = 368
  Top = 184
  Width = 543
  Height = 326
  BorderIcons = [biSystemMenu]
  Caption = 'Arrears / Additional Charges'
  Color = clBtnFace
  Constraints.MaxWidth = 543
  Constraints.MinHeight = 326
  Constraints.MinWidth = 543
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sclMain: TScrollBox
    Left = 0
    Top = 0
    Width = 535
    Height = 292
    VertScrollBar.Margin = 20
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    object imgRetractCharges: TImage
      Left = 14
      Top = 159
      Width = 15
      Height = 15
      Cursor = crHandPoint
      Center = True
      Picture.Data = {
        07544269746D617032010000424D320100000000000036000000280000000900
        0000090000000100180000000000FC0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF0000000000000000
        00000000000000FFFFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        000000000000000000000000000000000000000000000000000000000000}
      OnClick = imgRetractChargesClick
    end
    object imgRetractArrears: TImage
      Left = 14
      Top = 111
      Width = 15
      Height = 15
      Cursor = crHandPoint
      Center = True
      Picture.Data = {
        07544269746D617032010000424D320100000000000036000000280000000900
        0000090000000100180000000000FC0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF0000000000000000
        00000000000000FFFFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        000000000000000000000000000000000000000000000000000000000000}
      OnClick = imgRetractArrearsClick
    end
    object lblDate: TLabel
      Left = 32
      Top = 28
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object lblArrearsAmt: TLabel
      Left = 32
      Top = 64
      Width = 71
      Height = 13
      Caption = 'Arrears amount'
    end
    object lblArrearsInt: TLabel
      Left = 32
      Top = 88
      Width = 70
      Height = 13
      Caption = 'Arrears interest'
    end
    object lblIntCharged: TLabel
      Left = 32
      Top = 112
      Width = 112
      Height = 13
      Caption = 'Arrears interest charged'
    end
    object lblIntToDate: TLabel
      Left = 32
      Top = 136
      Width = 106
      Height = 13
      Caption = 'Arrears interest to date'
    end
    object lblAddCharges: TLabel
      Left = 32
      Top = 160
      Width = 87
      Height = 13
      Caption = 'Additional charges'
    end
    object lblAddPayments: TLabel
      Left = 32
      Top = 184
      Width = 171
      Height = 13
      Caption = 'Additional / Early instalments to date'
    end
    object lblTotal: TLabel
      Left = 32
      Top = 224
      Width = 225
      Height = 13
      Caption = 'Arrears / Additional Charges Settlement'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bvlTotal: TBevel
      Left = 32
      Top = 212
      Width = 465
      Height = 13
      Shape = bsTopLine
    end
    object bvlDate: TBevel
      Left = 32
      Top = 39
      Width = 465
      Height = 13
      Shape = bsBottomLine
    end
    object imgExpandArrears: TImage
      Left = 14
      Top = 111
      Width = 15
      Height = 15
      Cursor = crHandPoint
      Center = True
      Picture.Data = {
        07544269746D617032010000424D320100000000000036000000280000000900
        0000090000000100180000000000FC0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFFFFFFFFFF00000000000000FFFFFF0000000000000000
        00000000000000FFFFFF00000000000000FFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        000000000000000000000000000000000000000000000000000000000000}
      OnClick = imgExpandArrearsClick
    end
    object imgExpandCharges: TImage
      Left = 14
      Top = 159
      Width = 15
      Height = 15
      Cursor = crHandPoint
      Center = True
      Picture.Data = {
        07544269746D617032010000424D320100000000000036000000280000000900
        0000090000000100180000000000FC0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFFFFFFFFFF00000000000000FFFFFF0000000000000000
        00000000000000FFFFFF00000000000000FFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        000000000000000000000000000000000000000000000000000000000000}
      OnClick = imgExpandArrearsClick
    end
    object dtpSettleDate: TDateTimePicker
      Left = 384
      Top = 24
      Width = 113
      Height = 21
      Date = 38737.000000000000000000
      Time = 38737.000000000000000000
      TabOrder = 0
      OnChange = dtpSettleDateChange
    end
    object edtArrearsAmt: TNumEdit
      Left = 384
      Top = 60
      Width = 113
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
    end
    object edtArrearsInt: TNumEdit
      Left = 384
      Top = 84
      Width = 113
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object edtIntCharged: TNumEdit
      Left = 264
      Top = 108
      Width = 113
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
    end
    object edtIntToDate: TNumEdit
      Left = 264
      Top = 132
      Width = 113
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
    end
    object edtAddCharges: TNumEdit
      Left = 384
      Top = 156
      Width = 113
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 5
    end
    object edtAddPayments: TNumEdit
      Left = 384
      Top = 180
      Width = 113
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 6
    end
    object edtTotal: TNumEdit
      Left = 384
      Top = 220
      Width = 113
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 7
    end
  end
end
