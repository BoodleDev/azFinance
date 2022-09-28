object frmAffordability: TfrmAffordability
  Left = 239
  Top = 70
  BorderStyle = bsSingle
  Caption = 'Affordablity Assessment'
  ClientHeight = 625
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    922
    625)
  PixelsPerInch = 96
  TextHeight = 13
  object bvl: TBevel
    Left = 635
    Top = 561
    Width = 286
    Height = 24
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsTopLine
  end
  object grbFormulas: TGroupBox
    Left = 652
    Top = 294
    Width = 260
    Height = 120
    Caption = 'Formulas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TabStop = True
    object lblGrossSurplusDeficit: TLabel
      Left = 32
      Top = 32
      Width = 99
      Height = 13
      Caption = 'Gross Surplus/Deficit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDebtRatio: TLabel
      Left = 32
      Top = 59
      Width = 51
      Height = 13
      Caption = 'Debt Ratio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblCompanyExposure: TLabel
      Left = 32
      Top = 87
      Width = 93
      Height = 13
      Caption = 'Company Exposure'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object imgGross: TImage
      Left = 10
      Top = 29
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000330B0000330B0000000100000001
        000008A5180021B5310021C6310021D63900736352008C7B7300FF00FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00060606060606060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504000000060606060606
        0606060606050400010100000606060606060606060504000103010100000006
        0606060606050400010303010103010000060606060504000103030101030101
        0200060606050400010303010100000000060606060504000103000000060606
        0606060606050400000006060606060606060606060606060606060606060606
        0606}
      Transparent = True
    end
    object imgDebtRatio: TImage
      Left = 10
      Top = 56
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000330B0000330B0000000100000001
        000008A5180021B5310021C6310021D63900736352008C7B7300FF00FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00060606060606060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504000000060606060606
        0606060606050400010100000606060606060606060504000103010100000006
        0606060606050400010303010103010000060606060504000103030101030101
        0200060606050400010303010100000000060606060504000103000000060606
        0606060606050400000006060606060606060606060606060606060606060606
        0606}
      Transparent = True
    end
    object imgInstalPercent: TImage
      Left = 10
      Top = 84
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000330B0000330B0000000100000001
        000008A5180021B5310021C6310021D63900736352008C7B7300FF00FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00060606060606060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504060606060606060606
        0606060606050406060606060606060606060606060504000000060606060606
        0606060606050400010100000606060606060606060504000103010100000006
        0606060606050400010303010103010000060606060504000103030101030101
        0200060606050400010303010100000000060606060504000103000000060606
        0606060606050400000006060606060606060606060606060606060606060606
        0606}
      Transparent = True
    end
    object edtGross: TNumEdit
      Left = 140
      Top = 28
      Width = 93
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtInstalPercent: TNumEdit
      Left = 140
      Top = 83
      Width = 93
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtDebtRatio: TNumEdit
      Left = 140
      Top = 55
      Width = 93
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object btnClose: TButton
    Left = 811
    Top = 570
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 7
    OnClick = btnCloseClick
  end
  object btnSave: TButton
    Left = 728
    Top = 570
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object stsbr: TStatusBar
    Left = 0
    Top = 606
    Width = 922
    Height = 19
    Panels = <>
  end
  object btnPrint: TButton
    Left = 648
    Top = 570
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Print'
    TabOrder = 2
    OnClick = btnPrintClick
  end
  object grbTotals: TGroupBox
    Left = 652
    Top = 2
    Width = 260
    Height = 245
    Caption = 'Totals'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object lblDebtObligation: TLabel
      Left = 10
      Top = 217
      Width = 123
      Height = 13
      Caption = 'Financial Debt Obligations'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtDebtObligation: TNumEdit
      Left = 170
      Top = 213
      Width = 80
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object grbIncome: TGroupBox
      Left = 5
      Top = 16
      Width = 250
      Height = 94
      TabOrder = 0
      TabStop = True
      object lblIncome: TLabel
        Left = 10
        Top = 16
        Width = 55
        Height = 13
        Caption = 'Net Income'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIncomeApplicant: TLabel
        Left = 10
        Top = 40
        Width = 44
        Height = 13
        Caption = 'Applicant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIncomeSpouse: TLabel
        Left = 10
        Top = 64
        Width = 35
        Height = 13
        Caption = 'Spouse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtIncomeApplicant: TNumEdit
        Left = 85
        Top = 40
        Width = 80
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtIncomeSpouse: TNumEdit
        Left = 85
        Top = 64
        Width = 80
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edtIncome: TNumEdit
        Left = 163
        Top = 15
        Width = 80
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object grbExpense: TGroupBox
      Left = 5
      Top = 109
      Width = 250
      Height = 94
      TabOrder = 1
      TabStop = True
      object lblExpense: TLabel
        Left = 10
        Top = 16
        Width = 76
        Height = 13
        Caption = 'Living Expenses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblExpenseApplicant: TLabel
        Left = 10
        Top = 40
        Width = 44
        Height = 13
        Caption = 'Applicant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblExpenseSpouse: TLabel
        Left = 10
        Top = 64
        Width = 35
        Height = 13
        Caption = 'Spouse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtExpense: TNumEdit
        Left = 163
        Top = 15
        Width = 80
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtExpenseApplicant: TNumEdit
        Left = 85
        Top = 40
        Width = 80
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtExpenseSpouse: TNumEdit
        Left = 85
        Top = 64
        Width = 80
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object pnlIncome: TPanel
    Left = 8
    Top = 7
    Width = 632
    Height = 190
    TabOrder = 3
    object grdIncome: TDBGrid
      Left = 1
      Top = 48
      Width = 630
      Height = 141
      TabStop = False
      Align = alClient
      Anchors = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdIncomeExpenseCellClick
      OnDrawColumnCell = grdDrawColumnCell
      OnMouseMove = grdMouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'Category'
          Title.Caption = 'Description'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ApplicantCurrent'
          Title.Alignment = taRightJustify
          Title.Caption = 'Current'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ApplicantPrevious'
          Title.Alignment = taRightJustify
          Title.Caption = 'Previous'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SpouseCurrent'
          Title.Alignment = taRightJustify
          Title.Caption = 'Current'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SpousePrevious'
          Title.Alignment = taRightJustify
          Title.Caption = 'Previous'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ApplicantAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Average'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SpouseAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Average'
          Width = 70
          Visible = True
        end>
    end
    object hrdIncome: THeaderControl
      Left = 1
      Top = 1
      Width = 630
      Height = 24
      BiDiMode = bdLeftToRight
      Sections = <
        item
          ImageIndex = -1
          Text = 'Monthly Income'
          Width = 185
        end
        item
          Alignment = taCenter
          ImageIndex = -1
          Text = 'Application'
          Width = 284
        end
        item
          Alignment = taCenter
          ImageIndex = -1
          Text = 'Processed'
          Width = 142
        end>
      Style = hsFlat
      ParentBiDiMode = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 25
      Width = 630
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object hrdIncomeApplicationProcessed: THeaderControl
        Left = 185
        Top = 0
        Width = 445
        Height = 23
        Align = alRight
        BiDiMode = bdLeftToRight
        Sections = <
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Applicant'
            Width = 142
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Spouse'
            Width = 142
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Applicant'
            Width = 71
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Spouse'
            Width = 71
          end>
        Style = hsFlat
        ParentBiDiMode = False
      end
      object tlbrIncome: TToolBar
        Left = 0
        Top = 0
        Width = 185
        Height = 23
        Align = alClient
        AutoSize = True
        ButtonWidth = 46
        EdgeBorders = []
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        Images = dtmMain.imglstMain
        List = True
        ShowCaptions = True
        TabOrder = 1
        TabStop = True
        object btnIncomeNew: TToolButton
          Left = 0
          Top = 0
          AutoSize = True
          Caption = 'Add'
          Enabled = False
          ImageIndex = 2
          OnClick = btnNewEditClick
        end
        object btnIncomeEdit: TToolButton
          Left = 50
          Top = 0
          AutoSize = True
          Caption = 'Edit'
          Enabled = False
          ImageIndex = 4
          OnClick = btnNewEditClick
        end
      end
    end
  end
  object pnlExpense: TPanel
    Left = 8
    Top = 201
    Width = 632
    Height = 190
    TabOrder = 5
    object Panel2: TPanel
      Left = 1
      Top = 25
      Width = 630
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object tlbrExpense: TToolBar
        Left = 0
        Top = 0
        Width = 185
        Height = 23
        Align = alClient
        AutoSize = True
        ButtonWidth = 46
        Caption = 'tlbrExpense'
        EdgeBorders = []
        Flat = True
        Images = dtmMain.imglstMain
        List = True
        ShowCaptions = True
        TabOrder = 0
        TabStop = True
        object btnExpenseNew: TToolButton
          Left = 0
          Top = 0
          AutoSize = True
          Caption = 'Add'
          Enabled = False
          ImageIndex = 2
          OnClick = btnNewEditClick
        end
        object btnExpenseEdit: TToolButton
          Left = 50
          Top = 0
          AutoSize = True
          Caption = 'Edit'
          Enabled = False
          ImageIndex = 4
          OnClick = btnNewEditClick
        end
      end
      object hrdExpenseApplicationProcessed: THeaderControl
        Left = 185
        Top = 0
        Width = 445
        Height = 23
        Align = alRight
        BiDiMode = bdLeftToRight
        Sections = <
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Application'
            Width = 282
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Processed'
            Width = 142
          end>
        Style = hsFlat
        ParentBiDiMode = False
      end
    end
    object grdExpense: TDBGrid
      Left = 1
      Top = 48
      Width = 630
      Height = 141
      TabStop = False
      Align = alClient
      Anchors = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdIncomeExpenseCellClick
      OnDrawColumnCell = grdDrawColumnCell
      OnMouseMove = grdMouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'Category'
          Title.Caption = 'Description'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ApplicantApplicationAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Applicant'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SpouseApplicationAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Spouse'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ApplicantAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Applicant'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SpouseAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Spouse'
          Width = 70
          Visible = True
        end>
    end
    object hrdExpense: THeaderControl
      Left = 1
      Top = 1
      Width = 630
      Height = 24
      BiDiMode = bdLeftToRight
      Sections = <
        item
          ImageIndex = -1
          Text = 'Monthly Living Expenses'
          Width = 185
        end>
      Style = hsFlat
      ParentBiDiMode = False
    end
  end
  object pnlDebtObligation: TPanel
    Left = 8
    Top = 394
    Width = 632
    Height = 190
    TabOrder = 8
    object hrdDebtObligation: THeaderControl
      Left = 1
      Top = 1
      Width = 630
      Height = 22
      BiDiMode = bdLeftToRight
      Sections = <
        item
          ImageIndex = -1
          Text = 'Monthly Financial Debt Obligations'
          Width = 185
        end>
      Style = hsFlat
      ParentBiDiMode = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 23
      Width = 630
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object hrdDebtObligationApplicationProcessed: THeaderControl
        Left = 185
        Top = 0
        Width = 445
        Height = 23
        Align = alCustom
        BiDiMode = bdLeftToRight
        Sections = <
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Application'
            Width = 282
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Width = 142
          end>
        Style = hsFlat
        ParentBiDiMode = False
      end
      object tlbrDebtObligation: TToolBar
        Left = 481
        Top = -1
        Width = 106
        Height = 21
        Align = alCustom
        ButtonWidth = 106
        Caption = 'tlbrDebtObligation'
        EdgeBorders = []
        Flat = True
        Images = dtmMain.imglstMain
        List = True
        ShowCaptions = True
        TabOrder = 1
        object btnDebtObligation: TToolButton
          Left = 0
          Top = 0
          Cursor = crHandPoint
          Caption = 'Debt Obligations'
          ImageIndex = 37
          OnClick = btnDebtObligationClick
        end
      end
    end
    object grdDebtObligation: TDBGrid
      Left = 1
      Top = 46
      Width = 630
      Height = 143
      TabStop = False
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdDebtObligationCellClick
      OnDrawColumnCell = grdDrawColumnCell
      OnMouseMove = grdMouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'Category'
          Title.Caption = 'Description'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ApplicantAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Applicant'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SpouseAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Spouse'
          Width = 140
          Visible = True
        end>
    end
  end
end
