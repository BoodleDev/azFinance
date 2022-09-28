object frmAffordDetail: TfrmAffordDetail
  Left = 316
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Add/Edit Expense/Income'
  ClientHeight = 160
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblCaption: TLabel
    Left = 16
    Top = 36
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object lblAmount: TLabel
    Left = 33
    Top = 68
    Width = 36
    Height = 13
    Caption = 'Amount'
  end
  object btnSave: TButton
    Left = 84
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Save'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object btnClose: TButton
    Left = 164
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object cmbDescription: TDBLookupComboBox
    Left = 80
    Top = 32
    Width = 177
    Height = 21
    DataField = 'TypeKey'
    DataSource = dtmAffordability.dtsIncome
    KeyField = 'TypeKey'
    ListField = 'Description'
    ListSource = dtmAffordability.dtsIncomeLU
    TabOrder = 1
  end
  object edtAmount: TDBEdit
    Left = 80
    Top = 64
    Width = 121
    Height = 21
    DataField = 'Amount'
    DataSource = dtmAffordability.dtsIncome
    TabOrder = 2
  end
  object edtDescription: TDBEdit
    Left = 80
    Top = 32
    Width = 177
    Height = 21
    DataField = 'Description'
    DataSource = dtmAffordability.dtsDebitOrders
    TabOrder = 0
  end
end
