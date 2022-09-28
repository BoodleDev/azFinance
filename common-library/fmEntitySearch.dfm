object frmEntitySearch: TfrmEntitySearch
  Left = 188
  Top = 162
  Width = 862
  Height = 397
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Entity Search'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  DesignSize = (
    854
    363)
  PixelsPerInch = 96
  TextHeight = 13
  object tcSearch: TTabControl
    Left = 8
    Top = 119
    Width = 743
    Height = 221
    Anchors = [akLeft, akTop, akRight, akBottom]
    MultiLine = True
    TabOrder = 1
    Tabs.Strings = (
      'Results')
    TabIndex = 0
    OnChange = tcSearchChange
    object grdSearch: TDBStyleGrid
      Left = 4
      Top = 24
      Width = 735
      Height = 193
      Align = alClient
      DataSource = dtmEntitySearch.dtsSearch
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AllowSort = False
      ColumnsResize = False
      ColumnsMove = False
      Columns = <
        item
          Expanded = False
          FieldName = 'RegNo'
          Title.Caption = 'ID Number'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Caption = 'First Name'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name2'
          Title.Caption = 'Last Name'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntCode'
          Title.Caption = 'Client Code'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo1'
          Title.Caption = 'Home Tel.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo2'
          Title.Caption = 'Work Tel.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo3'
          Title.Caption = 'Cell'
          Width = 90
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 4
    Width = 743
    Height = 109
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Search Criteria'
    TabOrder = 0
    DesignSize = (
      743
      109)
    object Label1: TLabel
      Left = 24
      Top = 27
      Width = 50
      Height = 13
      Caption = 'ID number'
    end
    object Label2: TLabel
      Left = 24
      Top = 54
      Width = 50
      Height = 13
      Caption = 'First name'
    end
    object Label3: TLabel
      Left = 24
      Top = 81
      Width = 49
      Height = 13
      Caption = 'Last name'
    end
    object edtIDNo: TEdit
      Left = 96
      Top = 24
      Width = 625
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = edtIDNoChange
    end
    object edtFirstname: TEdit
      Left = 96
      Top = 51
      Width = 625
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnChange = edtIDNoChange
    end
    object edtLastname: TEdit
      Left = 96
      Top = 78
      Width = 625
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      OnChange = edtIDNoChange
    end
  end
  object btnSearch: TButton
    Left = 761
    Top = 14
    Width = 85
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Search'
    Default = True
    TabOrder = 2
    OnClick = btnSearchClick
  end
  object btnNew: TButton
    Left = 761
    Top = 45
    Width = 85
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'New'
    ModalResult = 6
    TabOrder = 3
  end
  object btnSelect: TButton
    Left = 761
    Top = 76
    Width = 85
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Select'
    ModalResult = 1
    TabOrder = 4
    OnClick = btnSelectClick
  end
  object btnCancel: TButton
    Left = 761
    Top = 107
    Width = 85
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 344
    Width = 854
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object dsEntitySearch: TADODataSet
    Parameters = <>
    Left = 376
    Top = 192
  end
end
