inherited frmCpyDetail: TfrmCpyDetail
  Tag = 1011
  Left = 239
  Top = 169
  Width = 532
  Height = 383
  Caption = 'Company detail'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 476
    Height = 326
  end
  inherited pnlMB: TPanel
    Width = 476
    Height = 326
    inherited pnlTop: TPanel
      Width = 476
    end
    inherited pcEntity: TPageControl
      Width = 476
      Height = 297
      ActivePage = tsERel
      OnChanging = pcEntityChanging
      inherited tsMain: TTabSheet
        inherited dbtUser: TDBText
          Top = 247
        end
        inherited lblS: TLabel
          Width = 73
          Caption = 'Default contact'
        end
        object lblWebS: TLabel [9]
          Left = 8
          Top = 216
          Width = 42
          Height = 13
          Caption = 'Web site'
          FocusControl = edtWebS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbtWebS: TDBText [10]
          Left = 104
          Top = 216
          Width = 45
          Height = 13
          AutoSize = True
          DataField = 'WebSite'
          DataSource = dtmEntity.dtsEntity
        end
        inherited edtRefFld2: TDBEdit
          Width = 110
        end
        inherited edtCell: TEdit
          TabOrder = 8
        end
        object edtWebS: TDBEdit
          Left = 104
          Top = 212
          Width = 214
          Height = 21
          DataField = 'WebSite'
          DataSource = dtmEntity.dtsEntity
          TabOrder = 7
        end
      end
      inherited tsAddress: TTabSheet
        Caption = 'Address details'
      end
      object tsBankDet: TTabSheet
        Caption = 'Bank details'
        ImageIndex = 2
        OnHide = tsBankDetHide
        OnShow = tsBankDetShow
        object tlbBank: TToolBar
          Left = 426
          Top = 0
          Width = 42
          Height = 269
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 42
          Color = clBtnFace
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          ParentColor = False
          PopupMenu = ppmDBBase
          ShowCaptions = True
          TabOrder = 0
          Wrapable = False
          object ToolButton1: TToolButton
            Tag = 9
            Left = 0
            Top = 0
            Caption = '   Exit   '
            ImageIndex = 2
            Wrap = True
            Visible = False
            OnClick = btnExitClick
          end
          object btnBankNew: TToolButton
            Tag = 9
            Left = 0
            Top = 36
            Caption = 'New'
            ImageIndex = 3
            Wrap = True
            Visible = False
          end
          object btnBankAmend: TToolButton
            Tag = 9
            Left = 0
            Top = 72
            Caption = 'Amend'
            ImageIndex = 4
            Wrap = True
            OnClick = btnBankAmendClick
          end
          object btnBankSave: TToolButton
            Tag = 9
            Left = 0
            Top = 108
            Caption = 'Save'
            ImageIndex = 5
            Wrap = True
            OnClick = btnBankSaveClick
          end
          object btnBankCancel: TToolButton
            Tag = 9
            Left = 0
            Top = 144
            Caption = 'Cancel'
            ImageIndex = 6
            Wrap = True
            OnClick = btnBankCancelClick
          end
          object btnBankDelete: TToolButton
            Tag = 9
            Left = 0
            Top = 180
            Caption = 'Delete'
            ImageIndex = 7
            Visible = False
            OnClick = btnBankDeleteClick
          end
        end
        object GroupBox1: TGroupBox
          Left = 24
          Top = 16
          Width = 369
          Height = 209
          Caption = 'Bank Details'
          TabOrder = 1
          object Label15: TLabel
            Left = 32
            Top = 35
            Width = 53
            Height = 14
            Caption = 'Bank name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 32
            Top = 56
            Width = 64
            Height = 14
            Caption = 'Branch name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 32
            Top = 117
            Width = 70
            Height = 14
            Caption = 'Account name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 32
            Top = 140
            Width = 80
            Height = 14
            Caption = 'Account number'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 32
            Top = 163
            Width = 65
            Height = 14
            Caption = 'Account type'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 32
            Top = 93
            Width = 62
            Height = 14
            Caption = 'Branch code'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 120
            Top = 76
            Width = 15
            Height = 14
            Caption = 'OR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object dbtBName: TDBText
            Left = 118
            Top = 36
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'BName'
            DataSource = dtmBankDet.dtsBankDet
            Transparent = True
          end
          object dbtBBranch: TDBText
            Left = 118
            Top = 57
            Width = 56
            Height = 13
            AutoSize = True
            DataField = 'BBranch'
            DataSource = dtmBankDet.dtsBankDet
            Transparent = True
          end
          object dbtBBCode: TDBText
            Left = 118
            Top = 94
            Width = 54
            Height = 13
            AutoSize = True
            DataField = 'BBCode'
            DataSource = dtmBankDet.dtsBankDet
            Transparent = True
          end
          object dbtAccNa: TDBText
            Left = 118
            Top = 118
            Width = 48
            Height = 13
            AutoSize = True
            DataField = 'AccName'
            DataSource = dtmBankDet.dtsBankDet
            Transparent = True
          end
          object dbtAccNo: TDBText
            Left = 118
            Top = 141
            Width = 48
            Height = 13
            AutoSize = True
            DataField = 'AccNo'
            DataSource = dtmBankDet.dtsBankDet
            Transparent = True
          end
          object lblAccType: TLabel
            Left = 118
            Top = 164
            Width = 53
            Height = 13
            Caption = 'lblAccType'
          end
          object edtAccName: TDBEdit
            Left = 118
            Top = 114
            Width = 227
            Height = 21
            DataField = 'AccName'
            DataSource = dtmBankDet.dtsBankDet
            TabOrder = 0
          end
          object edtAccNo: TDBEdit
            Left = 118
            Top = 137
            Width = 227
            Height = 21
            DataField = 'AccNo'
            DataSource = dtmBankDet.dtsBankDet
            TabOrder = 1
          end
          object cbAccType: TComboBox
            Left = 118
            Top = 160
            Width = 227
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 2
            Items.Strings = (
              'Cheque / Current account'
              'Savings account'
              'Transmission account'
              'Bond account'
              'Credit card account')
          end
          object cbxBank: TDBLookupComboBox
            Left = 118
            Top = 32
            Width = 227
            Height = 21
            DataField = 'BName'
            DataSource = dtmBankDet.dtsBankDet
            KeyField = 'BankName'
            ListField = 'BankName'
            ListSource = dtmBankDet.dtsBanks
            TabOrder = 3
          end
          object cbxBrName: TDBLookupComboBox
            Left = 118
            Top = 54
            Width = 227
            Height = 21
            DataField = 'BrecID'
            DataSource = dtmBankDet.dtsBankDet
            KeyField = 'IDVal'
            ListField = 'BranchName'
            ListSource = dtmBankDet.dtsBranchN
            TabOrder = 4
          end
          object cbxBrCode: TDBLookupComboBox
            Left = 118
            Top = 91
            Width = 227
            Height = 21
            DataField = 'BrecID'
            DataSource = dtmBankDet.dtsBankDet
            KeyField = 'RecID'
            ListField = 'BranchCode'
            ListSource = dtmBankDet.dtsBranchC
            TabOrder = 5
          end
          object btnLUBank: TBitBtn
            Left = 100
            Top = 55
            Width = 17
            Height = 17
            TabOrder = 6
            OnClick = btnLUBankClick
            Glyph.Data = {
              3E020000424D3E0200000000000036000000280000000D0000000D0000000100
              18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFF808080808080808080808080808080808080808080808080808080
              808080808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
              FF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
              FFFFFFFFFFFF008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF808080FFFF
              FF00FFFFFF808080FFFFFF008000008000008000008000008000FFFFFFFFFFFF
              FFFFFF808080FFFFFF00FFFFFF808080FFFFFF008000008000FFFFFF00800000
              8000008000FFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFF008000FFFF
              FFFFFFFFFFFFFF008000008000008000FFFFFF808080FFFFFF00FFFFFF808080
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000FFFFFF808080FFFF
              FF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000
              FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF8080808080808080808080
              80808080808080808080808080808080808080808080FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00}
            Spacing = 0
          end
        end
      end
      object tsEntT: TTabSheet
        Caption = 'Entity types'
        ImageIndex = 3
        TabVisible = False
        object grdRelation: TDBGrdClr
          Left = 0
          Top = 0
          Width = 432
          Height = 289
          Align = alClient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OddColor = clInfoBk
          Columns = <
            item
              Expanded = False
              FieldName = 'RelLU'
              Title.Caption = 'Type'
              Width = 175
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateAdded'
              Title.Caption = 'Date add'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserId'
              Title.Caption = 'User ID'
              Width = 45
              Visible = True
            end>
        end
        object ToolBar1: TToolBar
          Left = 432
          Top = 0
          Width = 44
          Height = 289
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 44
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          PopupMenu = ppmDBBase
          ShowCaptions = True
          TabOrder = 1
          object btnAddRelation: TToolButton
            Tag = 9
            Left = 0
            Top = 0
            Caption = '   Add   '
            ImageIndex = 3
            Wrap = True
            OnClick = btnAddRelationClick
          end
          object btnDeleteRelation: TToolButton
            Left = 0
            Top = 36
            Caption = 'Delete'
            ImageIndex = 7
            OnClick = btnDeleteRelationClick
          end
        end
      end
      object tsEmp: TTabSheet
        Caption = 'Employer detail'
        ImageIndex = 4
        TabVisible = False
        object lblPayD: TLabel
          Left = 6
          Top = 49
          Width = 39
          Height = 14
          Caption = 'Pay day'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 6
          Top = 21
          Width = 71
          Height = 14
          Caption = 'Pay frequency'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbtPayd: TDBText
          Left = 106
          Top = 49
          Width = 39
          Height = 14
          AutoSize = True
          DataField = 'PayDay'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblSalFreq: TLabel
          Left = 106
          Top = 21
          Width = 47
          Height = 14
          Caption = 'lblSalFreq'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 81
          Width = 80
          Height = 14
          Caption = 'Day of the week'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object edtPayD: TDBEdit
          Left = 106
          Top = 46
          Width = 31
          Height = 21
          DataField = 'PayDay'
          TabOrder = 0
        end
        object cbxPayFreq: TComboBox
          Left = 106
          Top = 18
          Width = 121
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnChange = cbxPayFreqChange
          Items.Strings = (
            'none'
            'Monthly'
            'Weekly'
            'Every 2nd week'
            'Daily'
            'Other')
        end
        object cbxPdow: TComboBox
          Left = 106
          Top = 74
          Width = 121
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          OnChange = cbxPdowChange
          Items.Strings = (
            'none'
            'Monday'
            'Tuesday'
            'Wednesday'
            'Thursday'
            'Friday'
            'Saturday'
            'Sunday')
        end
      end
      object tsERel: TTabSheet
        Caption = 'Relations'
        ImageIndex = 5
        object grdERLink: TDBGrdClr
          Left = 0
          Top = 0
          Width = 430
          Height = 269
          Align = alClient
          DataSource = dtmEntityLoan.dtsERLink
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OddColor = clInfoBk
          Columns = <
            item
              Expanded = False
              FieldName = 'Description'
              Title.Caption = 'Relation'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EntCode'
              Title.Caption = 'Code'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name2'
              Title.Caption = 'Surname'
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateAdded'
              Title.Caption = 'Date added'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserId'
              Title.Caption = 'User ID'
              Visible = True
            end>
        end
        object tlbERLink: TToolBar
          Left = 430
          Top = 0
          Width = 38
          Height = 269
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 38
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          ShowCaptions = True
          TabOrder = 1
          object btnAddRL: TToolButton
            Tag = 9
            Left = 0
            Top = 0
            Caption = 'Add'
            ImageIndex = 3
            Wrap = True
            OnClick = btnAddRLClick
          end
          object btnDelRL: TToolButton
            Tag = 9
            Left = 0
            Top = 36
            Caption = 'Delete'
            ImageIndex = 7
            Wrap = True
            OnClick = btnDelRLClick
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 326
    Width = 516
  end
  inherited ppmDBBase: TPopupMenu
    Left = 352
    Top = 120
  end
  inherited dtsEntity: TDataSource
    Left = 340
    Top = 72
  end
end
