object frmSettleDetail: TfrmSettleDetail
  Tag = 1037
  Left = 373
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Settlement detail'
  ClientHeight = 322
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    315
    322)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 63
    Width = 107
    Height = 14
    Caption = 'Loan account balance'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 116
    Width = 83
    Height = 14
    Caption = '- Arrears interest'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblSetteHead: TLabel
    Left = 8
    Top = 14
    Width = 273
    Height = 13
    Caption = 'Settlement amount detail for Loan No. xyc on 14/04/2000'
    Transparent = True
    WordWrap = True
  end
  object Label3: TLabel
    Left = 40
    Top = 202
    Width = 78
    Height = 14
    Caption = '+ Settlement fee'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblLoanBal: TLabel
    Left = 276
    Top = 63
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblArrInt: TLabel
    Left = 276
    Top = 116
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblSettleFee: TLabel
    Left = 275
    Top = 202
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Tag = 1
    Left = 219
    Top = 154
    Width = 78
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '_____________'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Tag = 1
    Left = 219
    Top = 173
    Width = 78
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '_____________'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblTotal: TLabel
    Left = 276
    Top = 170
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 170
    Width = 112
    Height = 14
    Caption = 'Total settlement amount'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblFinal: TLabel
    Left = 276
    Top = 255
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblDepBal: TLabel
    Left = 276
    Top = 144
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Tag = 1
    Left = 219
    Top = 264
    Width = 78
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '_____________'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Tag = 1
    Left = 219
    Top = 260
    Width = 78
    Height = 14
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '_____________'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblDiscount: TLabel
    Left = 40
    Top = 228
    Width = 49
    Height = 14
    Caption = '- Discount'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 255
    Width = 112
    Height = 14
    Caption = 'Final settlement amount'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btnSettleAcc: TSpeedButton
    Left = 181
    Top = 288
    Width = 116
    Height = 22
    Caption = 'Settle this account'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333C3333333333333337F3333333333333C0C3333
      333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
      3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
      333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
      0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
      0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
      3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
      3333333333777333333333333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = btnSettleAccClick
  end
  object btnPrint: TSpeedButton
    Left = 64
    Top = 288
    Width = 105
    Height = 22
    Caption = 'Print statement'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    Visible = False
    OnClick = btnPrintClick
  end
  object lblLoanInd2: TLabel
    Left = 40
    Top = 40
    Width = 74
    Height = 14
    Caption = 'Settlement date'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object chkDepBal: TCheckBox
    Left = 22
    Top = 143
    Width = 104
    Height = 17
    Caption = '- Deposit balance'
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 0
    OnClick = chkDepBalClick
  end
  object edtDiscount: TNoEdit
    Left = 210
    Top = 225
    Width = 93
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 1
    Text = '0.00'
    OnChange = edtDiscountChange
    OnKeyPress = edtSettleKeyPress
  end
  object edtSettle: TNoEdit
    Left = 210
    Top = 199
    Width = 93
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 2
    Text = '0.00'
    OnChange = edtSettleChange
    OnKeyPress = edtSettleKeyPress
  end
  object chkIntToD: TCheckBox
    Left = 22
    Top = 89
    Width = 122
    Height = 17
    Caption = '+ Interest up to date'
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 3
    OnClick = chkIntToDClick
  end
  object dtpSettleDate: TDateTimePicker
    Left = 212
    Top = 36
    Width = 93
    Height = 21
    Anchors = [akTop, akRight]
    Date = 37945.473420671300000000
    Time = 37945.473420671300000000
    TabOrder = 4
    OnChange = dtpSettleDateChange
  end
  object edtIntToDate: TEdit
    Left = 212
    Top = 88
    Width = 93
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 5
    Text = '0.00'
    OnChange = edtIntToDateChange
    OnExit = edtIntToDateExit
    OnKeyPress = edtIntToDateKeyPress
  end
end
