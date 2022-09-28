object frmAffordItemPartyType: TfrmAffordItemPartyType
  Left = 2122
  Top = 232
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Item Party Type'
  ClientHeight = 279
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    367
    279)
  PixelsPerInch = 96
  TextHeight = 13
  object lblAmount: TLabel
    Left = 15
    Top = 117
    Width = 37
    Height = 13
    Caption = 'Amount'
  end
  object lblDescription: TLabel
    Left = 15
    Top = 93
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object lblAction: TLabel
    Left = 15
    Top = 165
    Width = 53
    Height = 13
    Caption = 'Last Action'
  end
  object lblActionUser: TLabel
    Left = 15
    Top = 189
    Width = 78
    Height = 13
    Caption = 'Last Action User'
  end
  object lblActionDate: TLabel
    Left = 15
    Top = 213
    Width = 79
    Height = 13
    Caption = 'Last Action Date'
  end
  object lblCategory: TLabel
    Left = 15
    Top = 50
    Width = 45
    Height = 13
    Caption = 'Category'
  end
  object lblSource: TLabel
    Left = 15
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Source'
  end
  object btnCancel: TButton
    Left = 281
    Top = 244
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object btnSave: TButton
    Left = 202
    Top = 244
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Save'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object cmbDescription: TComboBox
    Left = 112
    Top = 89
    Width = 241
    Height = 21
    ItemHeight = 13
    MaxLength = 50
    TabOrder = 2
  end
  object edtAction: TEdit
    Left = 112
    Top = 161
    Width = 241
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    Enabled = False
    TabOrder = 3
  end
  object edtActionUser: TEdit
    Left = 112
    Top = 185
    Width = 241
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    Enabled = False
    TabOrder = 4
  end
  object edtActionDate: TEdit
    Left = 112
    Top = 209
    Width = 241
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    Enabled = False
    TabOrder = 5
  end
  object edtAmount: TNumEdit
    Left = 112
    Top = 113
    Width = 241
    Height = 21
    TabOrder = 6
  end
  object cmbSource: TComboBox
    Left = 112
    Top = 20
    Width = 241
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 7
  end
  object edtCategory: TEdit
    Left = 112
    Top = 49
    Width = 241
    Height = 21
    TabOrder = 8
  end
end
