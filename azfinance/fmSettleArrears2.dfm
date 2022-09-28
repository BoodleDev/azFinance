object frmSettleArrears2: TfrmSettleArrears2
  Left = 368
  Top = 184
  Width = 534
  Height = 330
  BorderIcons = [biSystemMenu]
  Caption = 'Arrears / Additional Charges'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    518
    292)
  PixelsPerInch = 96
  TextHeight = 13
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
    Width = 76
    Height = 13
    Caption = 'Arrears Amount'
  end
  object lblArrearsInt: TLabel
    Left = 32
    Top = 191
    Width = 119
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Arrears Interest To Date'
  end
  object lblTotal: TLabel
    Left = 32
    Top = 223
    Width = 228
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Arrears / Additional Charges Settlement'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bvlTotal: TBevel
    Left = 32
    Top = 211
    Width = 465
    Height = 13
    Anchors = [akLeft, akBottom]
    Shape = bsTopLine
  end
  object bvlDate: TBevel
    Left = 32
    Top = 39
    Width = 465
    Height = 13
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 125
    Top = 116
    Width = 122
    Height = 13
    Caption = 'Arrears Interest Charged'
  end
  object Label2: TLabel
    Left = 125
    Top = 140
    Width = 90
    Height = 13
    Alignment = taRightJustify
    Caption = 'Additional Charges'
  end
  object Label3: TLabel
    Left = 125
    Top = 164
    Width = 125
    Height = 13
    Caption = 'Additional\Early Payments'
  end
  object Label4: TLabel
    Left = 125
    Top = 92
    Width = 92
    Height = 13
    Caption = 'Unpaid Instalments'
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
  object edtIntToDate: TNumEdit
    Left = 384
    Top = 187
    Width = 113
    Height = 21
    Anchors = [akLeft, akBottom]
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 2
  end
  object edtTotal: TNumEdit
    Left = 384
    Top = 219
    Width = 113
    Height = 21
    Anchors = [akLeft, akBottom]
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 3
  end
  object Button1: TButton
    Left = 232
    Top = 263
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Close'
    TabOrder = 4
    OnClick = Button1Click
  end
  object edtArrearsInterest: TNumEdit
    Left = 264
    Top = 112
    Width = 113
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 5
  end
  object edtAdditionalCharges: TNumEdit
    Left = 264
    Top = 136
    Width = 113
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 6
  end
  object edtAdditionaPayments: TNumEdit
    Left = 264
    Top = 160
    Width = 113
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 7
  end
  object edtUnpaid: TNumEdit
    Left = 264
    Top = 88
    Width = 113
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 8
  end
end
