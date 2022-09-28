inherited frmSecurityDet: TfrmSecurityDet
  Tag = 36
  Left = 211
  Top = 83
  HorzScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Security Detail'
  ClientHeight = 332
  ClientWidth = 487
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = 'User ID / Login'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [1]
    Left = 217
    Top = 8
    Width = 78
    Height = 13
    Caption = '(must be unique)'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 56
    Width = 42
    Height = 13
    Caption = 'Surname'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Name'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object btnCompany: TSpeedButton [4]
    Left = 56
    Top = 282
    Width = 21
    Height = 21
    Caption = '...'
    Flat = True
    Visible = False
    OnClick = btnCompanyClick
  end
  object btnPerson: TSpeedButton [5]
    Left = 56
    Top = 306
    Width = 21
    Height = 21
    Caption = '...'
    Flat = True
    Visible = False
    OnClick = btnPersonClick
  end
  object lblCompany: TLabel [6]
    Left = 88
    Top = 286
    Width = 102
    Height = 13
    Caption = 'Link user to Company'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblPerson: TLabel [7]
    Left = 88
    Top = 310
    Width = 91
    Height = 13
    Caption = 'Link user to Person'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel [8]
    Left = 9
    Top = 263
    Width = 45
    Height = 13
    Caption = 'Added by'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object dbtAddedBy: TDBText [9]
    Left = 88
    Top = 263
    Width = 58
    Height = 13
    AutoSize = True
    DataField = 'AddByUserID'
    DataSource = dtmUserSetup.dtsUsers
  end
  object Label5: TLabel [10]
    Left = 8
    Top = 104
    Width = 45
    Height = 13
    Caption = 'User type'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel [11]
    Left = 8
    Top = 32
    Width = 30
    Height = 13
    Caption = 'Status'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lblStatus: TLabel [12]
    Left = 88
    Top = 32
    Width = 30
    Height = 13
    Caption = 'Active'
  end
  inherited tlbDBBase: TToolBar
    Left = 429
    Width = 58
    Height = 332
    ButtonWidth = 58
    TabOrder = 3
    inherited btnNew: TToolButton
      Caption = 'New Grp'
    end
    inherited btnAmend: TToolButton
      Visible = False
    end
    inherited btnDelete: TToolButton
      Caption = 'Delete Grp'
      Wrap = True
    end
    object btnActV: TToolButton
      Left = 0
      Top = 216
      Caption = 'Activate'
      ImageIndex = 4
      OnClick = btnActVClick
    end
  end
  object edtUserID: TDBEdit [14]
    Left = 88
    Top = 4
    Width = 121
    Height = 21
    DataField = 'UserID'
    DataSource = dtmUserSetup.dtsUsers
    TabOrder = 0
  end
  object edtSurname: TDBEdit [15]
    Left = 88
    Top = 52
    Width = 185
    Height = 21
    DataField = 'Surname'
    DataSource = dtmUserSetup.dtsUsers
    TabOrder = 1
  end
  object edtName: TDBEdit [16]
    Left = 88
    Top = 76
    Width = 185
    Height = 21
    DataField = 'Name'
    DataSource = dtmUserSetup.dtsUsers
    TabOrder = 2
  end
  object grdUAG: TDBGrdClr [17]
    Left = 88
    Top = 104
    Width = 337
    Height = 153
    DataSource = dtmUserSetup.dtsUAG
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OddColor = clInfoBk
    Columns = <
      item
        Expanded = False
        FieldName = 'Application'
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = 'User group'
        Width = 153
        Visible = True
      end>
  end
  inherited ppmDBBase: TPopupMenu
    Left = 280
    Top = 48
  end
end
