inherited frmCodeTblGrp: TfrmCodeTblGrp
  Tag = 19
  Left = 111
  Top = 153
  Width = 637
  Height = 367
  Caption = 'Code Table Groups'
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited tlbDBBase: TToolBar
    Left = 588
    Top = 74
    Width = 41
    Height = 259
    ButtonHeight = 37
    ButtonWidth = 41
    inherited btnNew: TToolButton
      Top = 37
    end
    inherited btnAmend: TToolButton
      Top = 74
      Visible = False
    end
    inherited btnSave: TToolButton
      Top = 111
      Visible = False
    end
    inherited btnCancel: TToolButton
      Top = 148
      Visible = False
    end
    inherited btnDelete: TToolButton
      Top = 185
    end
  end
  object pnlTop: TPanel [1]
    Left = 0
    Top = 0
    Width = 629
    Height = 74
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object lblMasterGroup: TLabel
      Left = 8
      Top = 24
      Width = 62
      Height = 13
      Caption = 'Master group'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblMasterKey: TLabel
      Left = 8
      Top = 51
      Width = 55
      Height = 13
      Caption = 'Master type'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSubGrpKey: TLabel
      Left = 312
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Sub group'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnMaster: TSpeedButton
      Left = 80
      Top = 21
      Width = 20
      Height = 20
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnMasterClick
    end
    object btnSub: TSpeedButton
      Left = 368
      Top = 21
      Width = 20
      Height = 20
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnSubClick
    end
    object lblMaster: TLabel
      Left = 104
      Top = 24
      Width = 58
      Height = 13
      Caption = 'not selected'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSub: TLabel
      Left = 392
      Top = 24
      Width = 58
      Height = 13
      Caption = 'not selected'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbxGrpKey: TComboBox
      Left = 80
      Top = 47
      Width = 193
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnChange = cbxGrpKeyChange
    end
  end
  object grdCodeGrp: TDBGrdClr [2]
    Left = 0
    Top = 74
    Width = 588
    Height = 259
    Align = alClient
    DataSource = dtmCodeTblGrp.dtsCodeGrp
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OddColor = clInfoBk
    Columns = <
      item
        Expanded = False
        FieldName = 'CodeDesc'
        Title.Caption = 'Description (linked to master type)'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DateAdded'
        Title.Caption = 'Date added'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserID'
        Title.Caption = 'User ID'
        Width = 62
        Visible = True
      end>
  end
  inherited ppmDBBase: TPopupMenu
    Left = 544
    Top = 120
  end
end
