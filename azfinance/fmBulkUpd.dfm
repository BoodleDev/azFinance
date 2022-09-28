inherited frmBulkUpd: TfrmBulkUpd
  Left = 150
  Top = 165
  Caption = 'Bulk Loans Update'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 487
    Width = 47
    Height = 315
    ButtonWidth = 47
    object btnImport: TToolButton
      Left = 0
      Top = 36
      Caption = 'Import'
      ImageIndex = 3
      Wrap = True
      OnClick = btnImportClick
    end
    object btnLocate: TToolButton
      Left = 0
      Top = 72
      Caption = 'Locate'
      ImageIndex = 14
      Wrap = True
      OnClick = btnLocateClick
    end
    object btnAdd: TToolButton
      Left = 0
      Top = 108
      Caption = 'Add'
      ImageIndex = 23
      Wrap = True
      OnClick = btnAddClick
    end
    object ToolButton1: TToolButton
      Left = 0
      Top = 144
      Caption = 'Remove'
      ImageIndex = 7
      OnClick = ToolButton1Click
    end
  end
  inherited pnlBBase: TPanel
    Width = 487
    Height = 315
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 35
      Height = 13
      Caption = 'Update'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 8
      Width = 12
      Height = 13
      Caption = 'To'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object grdBase: TDBGrid
      Left = 0
      Top = 56
      Width = 487
      Height = 259
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmLoanMan.dtsToUpd
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdBaseDrawColumnCell
    end
    object cbxUpdate: TComboBox
      Left = 16
      Top = 23
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbxUpdateChange
      Items.Strings = (
        'Loan Status')
    end
    object cbxOptions: TComboBox
      Left = 184
      Top = 22
      Width = 153
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 2
      OnChange = cbxOptionsChange
      OnDrawItem = cbxOptionsDrawItem
    end
    object btnUpdate: TBitBtn
      Left = 344
      Top = 21
      Width = 81
      Height = 25
      Caption = 'Update'
      Enabled = False
      TabOrder = 3
      OnClick = btnUpdateClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 315
    Width = 534
    Height = 19
    Panels = <>
    SimplePanel = True
  end
end
