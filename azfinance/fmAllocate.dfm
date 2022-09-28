object frmAllocate: TfrmAllocate
  Left = 317
  Top = 176
  Width = 770
  Height = 496
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Allocate Suspense'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 57
    Width = 754
    Height = 381
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      754
      381)
    object Bevel1: TBevel
      Left = 160
      Top = 16
      Width = 26
      Height = 31
      Shape = bsRightLine
    end
    object Bevel2: TBevel
      Left = 8
      Top = 128
      Width = 26
      Height = 31
      Shape = bsLeftLine
    end
    object lblSearchOn: TLabel
      Left = 54
      Top = 10
      Width = 37
      Height = 13
      Caption = 'Loan ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Search'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtFilter: TEdit
      Left = 16
      Top = 24
      Width = 161
      Height = 21
      TabOrder = 0
      OnChange = edtFilterChange
    end
    object grdBase: TDBStyleGrid
      Left = 6
      Top = 49
      Width = 746
      Height = 138
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmBatchSusp.dtsLoans
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = grdBaseColEnter
      OnDrawColumnCell = grdBaseDrawColumnCell
      OnDblClick = grdBaseDblClick
      AllowSort = True
      ColumnsResize = False
      ColumnsMove = False
      Columns = <
        item
          Expanded = False
          FieldName = 'LoanID'
          Title.Caption = 'Loan ID'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanNo'
          Title.Caption = 'Loan Ref.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntCode'
          Title.Caption = 'Client Code'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Surname'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sStatus'
          Title.Caption = 'Status'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanType'
          Title.Caption = 'Loan Type'
          Width = 80
          Visible = True
        end>
    end
    object DBGrdCF1: TDBStyleGrid
      Left = 6
      Top = 226
      Width = 746
      Height = 121
      Anchors = [akLeft, akRight, akBottom]
      DataSource = dtmBatchSusp.dtsBatch
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdBaseDrawColumnCell
      AllowSort = False
      ColumnsResize = False
      ColumnsMove = False
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'LoanID'
          Title.Caption = 'Loan ID'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanNo'
          ReadOnly = True
          Title.Caption = 'Loan Ref.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntCode'
          ReadOnly = True
          Title.Caption = 'Client Code'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          ReadOnly = True
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Surname'
          ReadOnly = True
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sStatus'
          ReadOnly = True
          Title.Caption = 'Status'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end>
    end
    object btnAdd: TBitBtn
      Left = 9
      Top = 191
      Width = 83
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Add'
      TabOrder = 3
      OnClick = btnAddClick
    end
    object btnRemove: TBitBtn
      Left = 9
      Top = 351
      Width = 83
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Remove'
      TabOrder = 4
      OnClick = btnRemoveClick
    end
    object btnOK: TButton
      Left = 583
      Top = 354
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Enabled = False
      TabOrder = 5
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 663
      Top = 354
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 6
    end
    object chkHideInactive: TCheckBox
      Left = 639
      Top = 30
      Width = 113
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Hide inactive loans'
      TabOrder = 7
      OnClick = chkHideInactiveClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 438
    Width = 754
    Height = 20
    Hint = '  Hold down Ctrl to select multiple loans'
    Panels = <>
    SimplePanel = True
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 72
      Height = 13
      Caption = 'Transaction No'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 152
      Top = 32
      Width = 82
      Height = 13
      Caption = 'Transaction Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 152
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Effective Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 312
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Amount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 432
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Reference 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 432
      Top = 32
      Width = 59
      Height = 13
      Caption = 'Reference 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 312
      Top = 8
      Width = 36
      Height = 13
      Caption = 'User ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Batch No'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 96
      Top = 8
      Width = 42
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'TransNo'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
    object DBText2: TDBText
      Left = 96
      Top = 32
      Width = 42
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'BatchNo'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
    object DBText3: TDBText
      Left = 256
      Top = 8
      Width = 42
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'EffectDate'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
    object DBText5: TDBText
      Left = 376
      Top = 8
      Width = 42
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'UserId'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
    object DBText6: TDBText
      Left = 376
      Top = 32
      Width = 42
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'Amount'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
    object DBText7: TDBText
      Left = 498
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'RefNo'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
    object DBText8: TDBText
      Left = 498
      Top = 32
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Refno2'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
    object DBText4: TDBText
      Left = 256
      Top = 32
      Width = 42
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'TransDate'
      DataSource = dtmBatchSusp.dtsBatchHistory
    end
  end
end
