object frmHandOverBatch: TfrmHandOverBatch
  Left = 30
  Top = 234
  Width = 793
  Height = 436
  Caption = 'Handover'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 30
    BandBorderStyle = bsNone
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 783
      end>
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 770
      Height = 26
      BorderWidth = 1
      ButtonWidth = 71
      Caption = 'ToolBar1'
      EdgeBorders = []
      Flat = True
      Images = dtmMain.imglstMain
      List = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Exit'
        ImageIndex = 2
        OnClick = ToolButton1Click
      end
      object btnSelect: TToolButton
        Left = 48
        Top = 0
        AutoSize = True
        Caption = 'Select'
        ImageIndex = 24
        OnClick = btnSelectClick
      end
      object btnSelectAll: TToolButton
        Left = 109
        Top = 0
        AutoSize = True
        Caption = 'Select All'
        ImageIndex = 23
        OnClick = btnSelectAllClick
      end
      object btnClear: TToolButton
        Left = 184
        Top = 0
        AutoSize = True
        Caption = 'Clear'
        ImageIndex = 7
        OnClick = btnClearClick
      end
      object btnClearAll: TToolButton
        Left = 239
        Top = 0
        AutoSize = True
        Caption = 'Clear All'
        ImageIndex = 25
        OnClick = btnSelectAllClick
      end
      object ToolButton7: TToolButton
        Left = 308
        Top = 0
        Width = 13
        Caption = 'ToolButton7'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object btnProcess: TToolButton
        Left = 321
        Top = 0
        AutoSize = True
        Caption = 'Process'
        Enabled = False
        ImageIndex = 42
        OnClick = btnProcessClick
      end
      object btnReverse: TToolButton
        Left = 390
        Top = 0
        AutoSize = True
        Caption = 'Reverse'
        ImageIndex = 6
        OnClick = btnReverseClick
      end
      object btnToolFilter: TToolButton
        Left = 461
        Top = 0
        Caption = 'Filter'
        Visible = False
        OnClick = btnToolFilterClick
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 30
    Width = 785
    Height = 14
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnFilter: TSpeedButton
      Left = 6
      Top = 5
      Width = 105
      Height = 19
      Caption = 'Advanced Filter'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = btnFilterClick
    end
  end
  object pnlFilter: TPanel
    Left = 0
    Top = 44
    Width = 785
    Height = 10
    Align = alTop
    TabOrder = 2
    Visible = False
  end
  object pnlMain: TPanel
    Left = 0
    Top = 54
    Width = 785
    Height = 348
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      785
      348)
    object pcHandover: TPageControl
      Left = 5
      Top = 3
      Width = 772
      Height = 340
      ActivePage = tsCurrent
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      OnChange = pcHandoverChange
      object tsCurrent: TTabSheet
        Caption = '    Current    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          764
          312)
        object Panel1: TPanel
          Left = 0
          Top = 58
          Width = 764
          Height = 22
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 0
          object lblToHandover: TLabel
            Left = 8
            Top = 5
            Width = 94
            Height = 13
            Caption = '5 loans to handover'
          end
        end
        object grdHandover: TDBStyleGrid
          Left = 0
          Top = 80
          Width = 764
          Height = 213
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dtmLegal.dtsToHandover
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdHandoverDrawColumnCell
          OnKeyDown = grdHandoverKeyDown
          OnTitleClick = grdHandoverTitleClick
          AllowSort = True
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
              FieldName = 'RefNo'
              Title.Caption = 'Loan Ref.'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LoanType'
              Title.Caption = 'Loan Type'
              Width = 70
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'LoanPeriod'
              Title.Caption = 'Period'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LoanCapital'
              Title.Alignment = taRightJustify
              Title.Caption = 'Loan Capital'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LoanBalance'
              Title.Alignment = taRightJustify
              Title.Caption = 'Loan Balance'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'LastTransDate'
              Title.Alignment = taCenter
              Title.Caption = 'Last Trans. Date'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HODate'
              Title.Alignment = taCenter
              Title.Caption = 'Handover Date'
              Visible = True
            end>
        end
        object edtLoanID: TDBEdit
          Left = 440
          Top = 113
          Width = 81
          Height = 21
          DataField = 'LoanID'
          DataSource = dtmLegal.dtsToHandover
          TabOrder = 2
          Visible = False
          OnChange = edtLoanIDChange
        end
        object stsSelected: TStatusBar
          Left = 0
          Top = 293
          Width = 764
          Height = 19
          Panels = <
            item
              Width = 200
            end
            item
              Width = 50
            end>
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 8
          Width = 763
          Height = 49
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Quick Filter'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object Label5: TLabel
            Left = 224
            Top = 21
            Width = 53
            Height = 13
            Caption = 'Find in field'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 9
            Top = 21
            Width = 44
            Height = 13
            Caption = 'Find Text'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cmbField: TComboBox
            Left = 283
            Top = 17
            Width = 145
            Height = 21
            Style = csDropDownList
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            OnChange = cmbFieldChange
            Items.Strings = (
              'Loan ID'
              'Loan Ref.'
              'Loan Type'
              'Period'
              'Loan Capital'
              'Loan Balance'
              'Last Trans. Date'
              'Handover Date')
          end
          object edtFind: TEdit
            Left = 60
            Top = 17
            Width = 126
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnChange = edtFindChange
          end
        end
      end
      object tsHistory: TTabSheet
        Caption = '    History    '
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 980
          Height = 22
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object lblHistoryCount: TLabel
            Left = 8
            Top = 5
            Width = 94
            Height = 13
            Caption = '5 loans to handover'
          end
          object imgN: TImage
            Left = 512
            Top = 6
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
          object imgY: TImage
            Left = 496
            Top = 6
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
        end
        object grdHistory: TDBStyleGrid
          Left = 0
          Top = 22
          Width = 980
          Height = 403
          Align = alClient
          DataSource = dtmLegal.dtsHOHistory
          Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdHistoryDrawColumnCell
          OnKeyDown = grdHandoverKeyDown
          AllowSort = True
          ColumnsResize = False
          ColumnsMove = False
          Columns = <
            item
              Expanded = False
              FieldName = 'LoanStatus'
              Title.Caption = 'Loan Status'
              Width = 80
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'LoanID'
              Title.Caption = 'Loan ID'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RefNo'
              Title.Caption = 'Loan Ref.'
              Width = 70
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HODate'
              Title.Alignment = taCenter
              Title.Caption = 'Handover Date'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HOAmount'
              Title.Alignment = taRightJustify
              Title.Caption = 'Handover Amount'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              Title.Alignment = taCenter
              Title.Caption = 'Handover'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              Title.Alignment = taCenter
              Title.Caption = 'Judgement'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'JDDate'
              Title.Alignment = taCenter
              Title.Caption = 'Judgement Date'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JDAmount'
              Title.Alignment = taRightJustify
              Title.Caption = 'Judgement Amount'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sMagistrate'
              Title.Caption = 'Magistrates Court'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CaseNumber'
              Width = 85
              Visible = True
            end>
        end
        object edtHistory: TDBEdit
          Left = 200
          Top = 1
          Width = 81
          Height = 21
          DataField = 'LoanID'
          DataSource = dtmLegal.dtsHOHistory
          TabOrder = 2
          Visible = False
          OnChange = edtHistoryChange
        end
      end
    end
  end
end
