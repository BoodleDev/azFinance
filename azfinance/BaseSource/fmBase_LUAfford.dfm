object frmBase_LUAfford: TfrmBase_LUAfford
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
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object lnlAmount: TLabel
    Left = 16
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Amount'
  end
  object btnSave: TButton
    Left = 36
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Save'
    ModalResult = 1
    TabOrder = 0
  end
  object btnClose: TButton
    Left = 116
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object edtAmount: TDBEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 21
    DataField = 'Amount'
    DataSource = dtmAffordCalc.dtsCalcIncome
    TabOrder = 2
  end
  object btnDelete: TButton
    Left = 196
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Delete'
    ModalResult = 7
    TabOrder = 3
  end
  object cbxDescLU: TcbxDBList
    Left = 16
    Top = 24
    Width = 179
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    KeyField = 'IDVal'
    ListField = 'Description'
  end
end
