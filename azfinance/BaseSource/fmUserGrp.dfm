inherited frmUserGrp: TfrmUserGrp
  Tag = 25
  Left = 115
  Top = 113
  Width = 635
  Height = 281
  Caption = 'User groups'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 563
    Width = 64
    Height = 247
    ButtonWidth = 64
    object btnNewGrp: TToolButton
      Left = 0
      Top = 36
      Caption = 'New'
      ImageIndex = 3
      Wrap = True
      OnClick = btnNewGrpClick
    end
    object btnAmend: TToolButton
      Left = 0
      Top = 72
      Caption = 'Amend'
      ImageIndex = 4
      Wrap = True
      OnClick = btnAmendClick
    end
    object btnDelGrp: TToolButton
      Left = 0
      Top = 108
      Caption = 'Del. grp'
      ImageIndex = 7
      Wrap = True
      Visible = False
    end
    object btnAddMod: TToolButton
      Left = 0
      Top = 144
      Caption = 'Add Module'
      ImageIndex = 3
      Wrap = True
      Visible = False
    end
    object btnCopyP: TToolButton
      Left = 0
      Top = 180
      Caption = 'Copy Profile'
      ImageIndex = 5
      Visible = False
    end
  end
  inherited pnlBBase: TPanel
    Width = 563
    Height = 247
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 60
      Height = 14
      Caption = 'User groups'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 34
      Height = 14
      Caption = 'Module'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 30
      Height = 14
      Caption = 'Forms'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 104
      Top = 33
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'AppLU'
      DataSource = dtmSecGrp.dtsAppID
    end
    object imgY: TImage
      Left = 280
      Top = 32
      Width = 13
      Height = 13
      AutoSize = True
      Picture.Data = {
        07544269746D61703E020000424D3E0200000000000036000000280000000D00
        00000D000000010018000000000008020000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF80808080808080808080808080808080808080
        8080808080808080808080808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        FFFFFFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFF008000008000008000FFFFFFFFFFFFFFFFFF
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFF00800000800000800000800000
        8000FFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFF0080000080
        00FFFFFF008000008000008000FFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        FFFFFF008000FFFFFFFFFFFFFFFFFF008000008000008000FFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF008000FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        808080808080808080808080808080808080808080808080808080808080FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Visible = False
    end
    object imgB: TImage
      Left = 296
      Top = 32
      Width = 13
      Height = 13
      AutoSize = True
      Picture.Data = {
        07544269746D61703E020000424D3E0200000000000036000000280000000D00
        00000D000000010018000000000008020000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF80808080808080808080808080808080808080
        8080808080808080808080808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        808080808080808080808080808080808080808080808080808080808080FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Visible = False
    end
    object Label4: TLabel
      Left = 312
      Top = 48
      Width = 80
      Height = 14
      Caption = 'Components for '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 392
      Top = 49
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'ObjDescLU'
      DataSource = dtmSecGrp.dtsAppFrm
    end
    object grdForm: TDBGrdClr
      Left = 8
      Top = 64
      Width = 271
      Height = 186
      Hint = 'Right-click to select/deselect all'
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dtmSecGrp.dtsAppFrm
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = ppmForm
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = grdFormCellClick
      OnDrawColumnCell = grdFormDrawColumnCell
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'ObjDescLU'
          Title.Caption = 'Description'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ObjE'
          Title.Alignment = taCenter
          Title.Caption = 'Access'
          Width = 50
          Visible = True
        end>
    end
    object cbxUsrGrp: TComboBox
      Left = 80
      Top = 5
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbxUsrGrpChange
    end
    object btnAddMods: TButton
      Left = 80
      Top = 29
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 2
      OnClick = btnAddModsClick
    end
    object grdComp: TDBGrdClr
      Left = 281
      Top = 64
      Width = 281
      Height = 186
      Hint = 'Right-click to select/deselect all'
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dtmSecGrp.dtsFrmObj
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = ppmComp
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = grdFormCellClick
      OnDrawColumnCell = grdFormDrawColumnCell
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'ObjDescLU'
          Title.Caption = 'Component'
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ObjE'
          Title.Alignment = taCenter
          Title.Caption = 'Access'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ObjV'
          Title.Alignment = taCenter
          Title.Caption = 'Visible'
          Width = 40
          Visible = True
        end>
    end
    object edtID: TDBEdit
      Left = 480
      Top = 24
      Width = 25
      Height = 21
      DataField = 'FrmID'
      TabOrder = 4
      Visible = False
      OnChange = edtIDChange
    end
  end
  object ppmForm: TPopupMenu
    Left = 224
    Top = 96
    object SelectAll1: TMenuItem
      Tag = 1
      Caption = 'Select all'
      OnClick = SelectAll1Click
    end
    object DeselectAll1: TMenuItem
      Caption = 'Deselect all'
      OnClick = SelectAll1Click
    end
  end
  object ppmComp: TPopupMenu
    Left = 392
    Top = 96
    object MenuItem1: TMenuItem
      Caption = 'Select all'
      object All1: TMenuItem
        Caption = 'All'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Access1: TMenuItem
        Caption = 'Access'
      end
      object Visible1: TMenuItem
        Caption = 'Visible'
      end
    end
    object MenuItem2: TMenuItem
      Caption = 'Deselect all'
      object All2: TMenuItem
        Caption = 'All'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Access2: TMenuItem
        Caption = 'Access'
      end
      object Visible2: TMenuItem
        Caption = 'Visible'
      end
    end
  end
end
