object frmBureau: TfrmBureau
  Left = 258
  Top = 173
  Width = 621
  Height = 438
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Bureau - pAAA00000'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  DesignSize = (
    613
    384)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 8
    Top = 8
    Width = 593
    Height = 75
    Anchors = [akLeft, akTop, akRight]
    Caption = 'New enquiry'
    TabOrder = 0
    object lblEnqStatus: TLabel
      Left = 328
      Top = 36
      Width = 3
      Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 36
      Width = 24
      Height = 13
      Caption = 'Type'
    end
    object cbxNewEnqType: TComboBox
      Left = 38
      Top = 32
      Width = 161
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Compuscan'
        'NLR'
        'Experian'
        'Compuscan/NLR'
        'Compuscan/Experian'
        'NLR/Experian'
        'Compuscan/NLR/Experian')
    end
    object btnPerformEnq: TButton
      Left = 208
      Top = 30
      Width = 97
      Height = 25
      Caption = 'Perform enquiry'
      TabOrder = 1
      OnClick = btnPerformEnqClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 85
    Width = 593
    Height = 290
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Enquiry history'
    TabOrder = 1
    DesignSize = (
      593
      290)
    object Label23: TLabel
      Left = 14
      Top = 28
      Width = 24
      Height = 13
      Caption = 'Type'
    end
    object cbxHistEnqType: TComboBox
      Left = 45
      Top = 24
      Width = 161
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbxHistEnqTypeChange
      Items.Strings = (
        'All'
        'Compuscan'
        'NLR'
        'Experian'
        'Compuscan/NLR'
        'Compuscan/Experian'
        'NLR/Experian'
        'Compuscan/NLR/Experian')
    end
    object grdEnqHistory: TDBGrid
      Left = 10
      Top = 56
      Width = 573
      Height = 227
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmBureau.dtsEnqHistory
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdEnqHistoryDrawColumnCell
      OnDblClick = grdEnqHistoryDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FMTEnqDate'
          Title.Caption = 'Enquiry Date'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EnqType'
          Title.Caption = 'Enquiry Type'
          Width = 135
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CreateUser'
          Title.Caption = 'UserID'
          Width = 90
          Visible = True
        end>
    end
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 101
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
