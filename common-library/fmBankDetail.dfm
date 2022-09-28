object frmBankDetail: TfrmBankDetail
  Left = 449
  Top = 335
  Width = 369
  Height = 254
  Caption = 'Bank Details'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    361
    220)
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 24
    Top = 19
    Width = 52
    Height = 13
    Caption = 'Bank name'
  end
  object Label16: TLabel
    Left = 24
    Top = 40
    Width = 62
    Height = 13
    Caption = 'Branch name'
  end
  object Label17: TLabel
    Left = 24
    Top = 101
    Width = 68
    Height = 13
    Caption = 'Account name'
  end
  object Label18: TLabel
    Left = 24
    Top = 124
    Width = 78
    Height = 13
    Caption = 'Account number'
  end
  object Label19: TLabel
    Left = 24
    Top = 147
    Width = 64
    Height = 13
    Caption = 'Account type'
  end
  object Label20: TLabel
    Left = 24
    Top = 77
    Width = 59
    Height = 13
    Caption = 'Branch code'
  end
  object Label22: TLabel
    Left = 112
    Top = 60
    Width = 15
    Height = 14
    Caption = 'OR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btnLUBank: TSpeedButton
    Left = 94
    Top = 39
    Width = 17
    Height = 17
    Glyph.Data = {
      3E020000424D3E0200000000000036000000280000000D0000000D0000000100
      18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00FFFFFF808080808080808080808080808080808080808080808080808080
      808080808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
      FF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
      FFFFFFFFFFFF008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF808080FFFF
      FF00FFFFFF808080FFFFFF008000008000008000008000008000FFFFFFFFFFFF
      FFFFFF808080FFFFFF00FFFFFF808080FFFFFF008000008000FFFFFF00800000
      8000008000FFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFF008000FFFF
      FFFFFFFFFFFFFF008000008000008000FFFFFF808080FFFFFF00FFFFFF808080
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000FFFFFF808080FFFF
      FF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000
      FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF8080808080808080808080
      80808080808080808080808080808080808080808080FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00}
  end
  object edtAccName: TDBEdit
    Left = 112
    Top = 98
    Width = 227
    Height = 21
    DataField = 'AccName'
    DataSource = dtmBankDet.dtsBankDet
    TabOrder = 0
  end
  object edtAccNo: TDBEdit
    Left = 112
    Top = 121
    Width = 227
    Height = 21
    DataField = 'AccNo'
    DataSource = dtmBankDet.dtsBankDet
    TabOrder = 1
  end
  object cbAccType: TComboBox
    Left = 112
    Top = 144
    Width = 227
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Cheque / Current account'
      'Savings account'
      'Transmission account'
      'Bond account'
      'Credit card account')
  end
  object cbxBank: TDBLookupComboBox
    Left = 112
    Top = 16
    Width = 227
    Height = 21
    DataField = 'BName'
    DataSource = dtmBankDet.dtsBankDet
    KeyField = 'BankName'
    ListField = 'BankName'
    ListSource = dtmBankDet.dtsBanks
    TabOrder = 3
  end
  object cbxBrName: TDBLookupComboBox
    Left = 112
    Top = 38
    Width = 227
    Height = 21
    DataField = 'BrecID'
    DataSource = dtmBankDet.dtsBankDet
    KeyField = 'IDVal'
    ListField = 'BranchName'
    ListSource = dtmBankDet.dtsBranchN
    TabOrder = 4
  end
  object cbxBrCode: TDBLookupComboBox
    Left = 112
    Top = 75
    Width = 227
    Height = 21
    DataField = 'BrecID'
    DataSource = dtmBankDet.dtsBankDet
    KeyField = 'RecID'
    ListField = 'BranchCode'
    ListSource = dtmBankDet.dtsBranchC
    TabOrder = 5
  end
  object btnCancel: TButton
    Left = 264
    Top = 182
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 6
  end
  object btnOK: TButton
    Left = 184
    Top = 182
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 7
  end
end
