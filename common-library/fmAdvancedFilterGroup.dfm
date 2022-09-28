object frmAdvancedFilterGroup: TfrmAdvancedFilterGroup
  Left = 576
  Top = 332
  BorderStyle = bsToolWindow
  Caption = 'Grouping'
  ClientHeight = 117
  ClientWidth = 209
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 29
    Height = 13
    Caption = 'Group'
  end
  object Label2: TLabel
    Left = 8
    Top = 44
    Width = 56
    Height = 13
    Caption = 'Group Type'
  end
  object cmbGroupType: TComboBox
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'AND'
    Items.Strings = (
      'AND'
      'OR')
  end
  object btnOK: TButton
    Left = 40
    Top = 84
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object btnCancel: TButton
    Left = 120
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object cmbGroupID: TComboBox
    Left = 72
    Top = 16
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
  end
end
