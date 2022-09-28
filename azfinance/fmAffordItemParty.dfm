object frmAffordItemParty: TfrmAffordItemParty
  Left = 315
  Top = 220
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Item Party'
  ClientHeight = 257
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    745
    257)
  PixelsPerInch = 96
  TextHeight = 13
  object lblCategory: TLabel
    Left = 10
    Top = 22
    Width = 45
    Height = 13
    Caption = 'Category'
  end
  object lblDescription: TLabel
    Left = 377
    Top = 22
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object btnCancel: TButton
    Left = 659
    Top = 220
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object btnSave: TButton
    Left = 580
    Top = 220
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Save'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object cmbCategory: TComboBox
    Left = 108
    Top = 18
    Width = 241
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnSelect = cmbCategorySelect
  end
  object cmbDescription: TComboBox
    Left = 475
    Top = 18
    Width = 241
    Height = 21
    ItemHeight = 13
    MaxLength = 50
    TabOrder = 3
  end
  object grbApplicant: TGroupBox
    Left = 8
    Top = 52
    Width = 361
    Height = 161
    Caption = 'Applicant'
    TabOrder = 4
    object lblApplicantSource: TLabel
      Left = 10
      Top = 19
      Width = 33
      Height = 13
      Caption = 'Source'
    end
    object lblApplicantAmount: TLabel
      Left = 10
      Top = 44
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object lblApplicantAction: TLabel
      Left = 10
      Top = 80
      Width = 53
      Height = 13
      Caption = 'Last Action'
    end
    object lblApplicantActionUser: TLabel
      Left = 10
      Top = 108
      Width = 78
      Height = 13
      Caption = 'Last Action User'
    end
    object lblApplicantActionDate: TLabel
      Left = 10
      Top = 133
      Width = 79
      Height = 13
      Caption = 'Last Action Date'
    end
    object cmbApplicantSource: TComboBox
      Left = 100
      Top = 15
      Width = 241
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object edtApplicantAmount: TNumEdit
      Left = 100
      Top = 40
      Width = 241
      Height = 21
      TabOrder = 1
    end
    object edtApplicantAction: TEdit
      Left = 100
      Top = 76
      Width = 243
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 2
    end
    object edtApplicantActionUser: TEdit
      Left = 100
      Top = 104
      Width = 243
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 3
    end
    object edtApplicantActionDate: TEdit
      Left = 100
      Top = 129
      Width = 243
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
    end
  end
  object grbSpouse: TGroupBox
    Left = 376
    Top = 52
    Width = 361
    Height = 161
    Caption = 'Spouse'
    TabOrder = 5
    object lblSpouseSource: TLabel
      Left = 10
      Top = 19
      Width = 33
      Height = 13
      Caption = 'Source'
    end
    object lblSpouseAmount: TLabel
      Left = 10
      Top = 44
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object lblSpouseAction: TLabel
      Left = 10
      Top = 80
      Width = 53
      Height = 13
      Caption = 'Last Action'
    end
    object lblSpouseActionUser: TLabel
      Left = 10
      Top = 108
      Width = 78
      Height = 13
      Caption = 'Last Action User'
    end
    object lblSpouseActionDate: TLabel
      Left = 10
      Top = 133
      Width = 79
      Height = 13
      Caption = 'Last Action Date'
    end
    object cmbSpouseSource: TComboBox
      Left = 100
      Top = 15
      Width = 241
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object edtSpouseAmount: TNumEdit
      Left = 100
      Top = 40
      Width = 241
      Height = 21
      TabOrder = 1
    end
    object edtSpouseAction: TEdit
      Left = 100
      Top = 76
      Width = 243
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 2
    end
    object edtSpouseActionUser: TEdit
      Left = 100
      Top = 104
      Width = 243
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 3
    end
    object edtSpouseActionDate: TEdit
      Left = 100
      Top = 129
      Width = 243
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
    end
  end
end
