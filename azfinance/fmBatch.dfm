inherited frmBatch: TfrmBatch
  Tag = 1002
  Left = 361
  Top = 379
  Width = 1122
  Height = 699
  Caption = 'Transactions'
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 1029
    Width = 77
    Height = 642
    ButtonWidth = 77
    inherited btnNew: TToolButton
      OnClick = grdEntLoanDblClick
    end
    inherited btnDelete: TToolButton
      Wrap = True
    end
    object btnImport: TToolButton
      Left = 0
      Top = 216
      Caption = 'Import'
      ImageIndex = 39
      Wrap = True
      OnClick = btnImportClick
    end
    object btnDelBatch: TToolButton
      Left = 0
      Top = 252
      Caption = 'Clear batch'
      ImageIndex = 18
      Wrap = True
      OnClick = btnDelBatchClick
    end
    object btnNewBatch: TToolButton
      Left = 0
      Top = 288
      Caption = '   New batch   '
      ImageIndex = 16
      Wrap = True
      OnClick = btnNewBatchClick
    end
    object btnCloseBatch: TToolButton
      Left = 0
      Top = 324
      Caption = 'Close batch'
      ImageIndex = 19
      Wrap = True
      OnClick = btnCloseBatchClick
    end
    object btnAPay: TToolButton
      Left = 0
      Top = 360
      Hint = 'Load all approved loans for payout'
      Caption = 'Loan Payouts'
      ImageIndex = 35
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = btnAPayClick
    end
    object btnLoadEmp: TToolButton
      Left = 0
      Top = 396
      Caption = 'Employer'
      ImageIndex = 21
      OnClick = btnLoadEmpClick
    end
  end
  object pnlBack: TPanel [1]
    Left = 0
    Top = 0
    Width = 1029
    Height = 642
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object splBatch: TSplitter
      Left = 0
      Top = 206
      Width = 1029
      Height = 4
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      Color = 16744448
      ParentColor = False
    end
    object Panel1: TPanel
      Left = 0
      Top = 210
      Width = 1029
      Height = 432
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnlBT: TPanel
        Left = 0
        Top = 0
        Width = 1029
        Height = 36
        Align = alTop
        ParentColor = True
        TabOrder = 0
        object Label3: TLabel
          Left = 9
          Top = 12
          Width = 64
          Height = 13
          Caption = 'Current batch'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnBatchNote: TSpeedButton
          Left = 248
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Batch Note'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF000000000000FFFF0000FFFF0000FFFF0000000000FF00FF00FF00FF000000
            00000000000000000000FF00FF0000000000FFFF0000FFFF0000FFFF00000000
            000000000000000000007B7B7B007B7B7B007B7B7B0000000000000000000000
            FF000000FF000000FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
            7B007B7B7B007B7B7B007B7B7B0000000000FFFFFF0000000000000000000000
            FF000000FF000000FF000000FF00000000000000000000000000000000000000
            00000000000000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF007B7B7B007B7B7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF007B7B7B007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000000000000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
            0000FFFFFF0000000000FFFFFF000000000000000000FF00FF00000000000000
            00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
            00007B7B7B0000000000000000000000000000000000FF00FF007B7B7B000000
            00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
            00007B7B7B0000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
            FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
            FF0000000000FF00FF000000000000000000FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnBatchNoteClick
        end
        object cbxCurBatches: TComboBox
          Left = 88
          Top = 8
          Width = 153
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbxCurBatchesChange
        end
      end
      object grdBatch: TDBStyleGrid
        Left = 0
        Top = 36
        Width = 1029
        Height = 396
        Align = alClient
        DataSource = dtmBatchTrans.dtsBatchT
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdEntLoanDrawColumnCell
        OnExit = grdBatchExit
        OnKeyDown = grdBatchKeyDown
        AllowSort = False
        ColumnsResize = False
        ColumnsMove = False
        Columns = <
          item
            Expanded = False
            FieldName = 'AccountNo'
            Title.Caption = 'Account No.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusDescription'
            Title.Caption = 'Status'
            Width = 80
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'TransCode'
            Title.Caption = 'Trans. code'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransLookup'
            Title.Caption = 'Transaction Description'
            Width = 152
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EffectDate'
            Title.Caption = 'Effective Date'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValueDate'
            Title.Caption = 'Value date'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Reference 1'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo2'
            Title.Caption = 'Reference 2'
            Width = 80
            Visible = True
          end>
      end
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1029
      Height = 206
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object grdEntLoan: TDBStyleGrid
        Left = 0
        Top = 102
        Width = 1029
        Height = 104
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtmBatchTrans.dtsEntLoans
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = grdEntLoanColEnter
        OnColExit = grdEntLoanColExit
        OnDrawColumnCell = grdEntLoanDrawColumnCell
        OnDblClick = grdEntLoanDblClick
        OnEnter = grdEntLoanEnter
        OnExit = grdEntLoanExit
        OnKeyPress = grdEntLoanKeyPress
        AllowSort = True
        ColumnsResize = False
        ColumnsMove = False
        Columns = <
          item
            Expanded = False
            FieldName = 'EntCode'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Code'
            Title.Color = clNavy
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Account No.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusDescription'
            Title.Caption = 'Status'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name2'
            Title.Caption = 'Surname'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RegNo'
            Title.Caption = 'ID no'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanType'
            Title.Caption = 'Loan T.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PayIns'
            Title.Alignment = taRightJustify
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AmtToFin'
            Title.Alignment = taRightJustify
            Width = 70
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1029
        Height = 102
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          1029
          102)
        object Bevel1: TBevel
          Left = 9
          Top = 60
          Width = 1009
          Height = 11
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object lblCurFld: TLabel
          Left = 377
          Top = 81
          Width = 25
          Height = 14
          Caption = 'None'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 16
          Top = 12
          Width = 91
          Height = 14
          Caption = 'Default transaction'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 36
          Width = 58
          Height = 14
          Caption = 'Default date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 9
          Top = 80
          Width = 35
          Height = 14
          Caption = 'Search'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object btnFind: TSpeedButton
          Left = 208
          Top = 76
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000000008000000000000000008
            08007B7B7B0073737300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000FFE7E700F7DEDE00FFDEDE00F7FFFF00CEA5A500CE84
            84000000000000101000946B6B00FF00FF00FF00FF00FF00FF00FF00FF000008
            0800D6A5A500FFBDBD00EFD6D600FFDEDE00FFC6C600FFF7F700D69C9C00CE94
            9400DE949400C69C9C00000000006B6B6B00FF00FF00FF00FF0000000000C69C
            9C00CE9494000000000000080800000000000010100008080800000000000000
            000000080800DE949400D6949400001010007B7B7B00FF00FF0008101000D694
            940000000000F7FFFF00FFE7E700FFFFFF00FFFFFF00F7F7F700FFFFFF00FFF7
            F700FFFFFF0000080800C6A5A500000000006B7B7B00FF00FF00000000000000
            0000FFFFFF009C63630000000000080000000000000000000000000000000000
            000073848400FFF7F7000000000000080800847373007373730000080800FFFF
            FF009C525200945A5A00FF949400F78C8C00FF9C9C00FF848400FF8C8C00FF94
            94009C4A4A008C949400EFF7F70008000000847B7B007373730008000000EFFF
            FF0000080800A55A5A00946B6B009C636300946363009C6B6B009C6363009C6B
            6B009C73730000000000FFFFFF00000000006B6B6B00FF00FF0008000000EFFF
            FF006B6B6B0000101000C68C8C00C69C9C00CE949400CEADAD00CE949400CE8C
            8C0000000000848C8C00FFF7F70000000000FF00FF00FF00FF00FF00FF000800
            0000FFFFFF00FFEFEF0010181800000000000000000008000000081010000800
            0000F7FFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000008080000000000EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
            F7000000000000000000080000008C7B7B00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0008000000000808000000000000000000080808000000
            0000BDBDBD00F7FFFF00212121000000000084949400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000080000000000000000000000000000007B636300FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000636B6B00000000000000000008080800FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000007B6B6B001008080000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000}
          OnClick = btnFindClick
        end
        object lblResults: TLabel
          Left = 240
          Top = 81
          Width = 46
          Height = 14
          Caption = 'lblResults'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object edtEntF: TDBEdit
          Left = 320
          Top = 8
          Width = 49
          Height = 21
          DataField = 'EntityID'
          DataSource = dtmMain.dtsEntID
          TabOrder = 0
          Visible = False
          OnChange = edtEntFChange
        end
        object dtpBatch: TDateTimePicker
          Left = 112
          Top = 32
          Width = 97
          Height = 21
          Date = 37621.000000000000000000
          Time = 37621.000000000000000000
          TabOrder = 1
          OnChange = dtpBatchChange
        end
        object edtFilter: TEdit
          Left = 49
          Top = 77
          Width = 156
          Height = 21
          TabOrder = 2
          OnKeyPress = edtFilterKeyPress
        end
        object btnReps: TBitBtn
          Left = 837
          Top = 32
          Width = 185
          Height = 24
          Anchors = [akRight, akBottom]
          Caption = 'Other reports'
          TabOrder = 3
          OnClick = btnRepsClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
            C8807FF7777777777FF700000000000000007777777777777777333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object cbTrans: TcbxDBList
          Left = 112
          Top = 8
          Width = 209
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 4
          OnChange = cbTransChange
          KeyField = 'TransCode'
          ListField = 'Transcode;Description'
          DataSet = dtmBatchTrans.qryTransType
        end
        object chkValueDate: TCheckBox
          Left = 240
          Top = 34
          Width = 73
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Value date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = chkValueDateClick
        end
      end
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 642
    Width = 1106
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = '  Current Search:'
  end
  inherited ppmDBBase: TPopupMenu
    Left = 451
    Top = 272
  end
  object tmLookKey: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmLookKeyTimer
    Left = 479
    Top = 272
  end
  object pmReps: TPopupMenu
    Left = 507
    Top = 272
    object pmBnkdet: TMenuItem
      Tag = 24
      Caption = 'Bank details'
      OnClick = pmBnkdetClick
    end
  end
  object dlgOpen: TOpenDialog
    DefaultExt = '.csv'
    Filter = 'Comma Separated Values (*.csv)|*.csv'
    Left = 416
    Top = 56
  end
end
