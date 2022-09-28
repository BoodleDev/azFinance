object frmBase_Security: TfrmBase_Security
  Left = 177
  Top = 119
  Width = 679
  Height = 500
  BorderIcons = [biSystemMenu, biMaximize]
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 671
    Height = 446
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 8
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
    object GroupBox2: TGroupBox
      Left = 360
      Top = 56
      Width = 289
      Height = 377
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Hidden Controls'
      TabOrder = 2
      object DBGrid3: TDBGrid
        Left = 13
        Top = 23
        Width = 265
        Height = 338
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dtmSecurity.dtsSecurity
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Control'
            Width = 135
            Visible = True
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 56
      Width = 289
      Height = 377
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Window Controls'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 72
        Width = 56
        Height = 13
        Caption = 'Control type'
      end
      object grdControl: TDBGrid
        Left = 11
        Top = 47
        Width = 265
        Height = 314
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
        OnDblClick = grdControlDblClick
        OnTitleClick = grdControlTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Caption'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Control'
            Width = 112
            Visible = True
          end>
      end
      object cmbType: TComboBox
        Left = 11
        Top = 23
        Width = 265
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnChange = cmbTypeChange
        Items.Strings = (
          'Show all'
          'Button'
          'Label'
          'Grid'
          'Input')
      end
    end
    object cmbGroups: TComboBox
      Left = 16
      Top = 24
      Width = 289
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cmbGroupsChange
    end
    object Button1: TButton
      Left = 352
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 16
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
