object frmBase_Security: TfrmBase_Security
  Left = 228
  Top = 165
  Width = 672
  Height = 435
  Caption = 'Security setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 381
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Control type'
    end
    object Label2: TLabel
      Left = 360
      Top = 16
      Width = 54
      Height = 13
      Caption = 'User Group'
    end
    object btnAdd: TSpeedButton
      Left = 320
      Top = 96
      Width = 23
      Height = 22
      Caption = '>'
      OnClick = btnAddClick
    end
    object btnRemove: TSpeedButton
      Left = 320
      Top = 120
      Width = 23
      Height = 22
      Caption = '<'
      OnClick = btnRemoveClick
    end
    object btnAddAll: TSpeedButton
      Left = 320
      Top = 152
      Width = 23
      Height = 22
      Caption = '>>'
      OnClick = btnAddAllClick
    end
    object btnRemoveAll: TSpeedButton
      Left = 320
      Top = 176
      Width = 23
      Height = 22
      Caption = '<<'
      OnClick = btnRemoveAllClick
    end
    object grdControl: TDBGrid
      Left = 16
      Top = 64
      Width = 289
      Height = 298
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dtmSecurity.dtsControls
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdControlDrawColumnCell
    end
    object DBGrid3: TDBGrid
      Left = 360
      Top = 64
      Width = 289
      Height = 298
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dtmSecurity.dtsSecurity
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Control'
          Visible = True
        end>
    end
    object cmbType: TComboBox
      Left = 16
      Top = 32
      Width = 297
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = cmbTypeChange
      Items.Strings = (
        'Show all'
        'Button'
        'Label'
        'Grid'
        'Input')
    end
    object cmbGroups: TComboBox
      Left = 360
      Top = 32
      Width = 289
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      OnChange = cmbGroupsChange
    end
  end
  object MainMenu1: TMainMenu
    Left = 320
    Top = 40
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
