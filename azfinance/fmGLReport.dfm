object frmGLReport: TfrmGLReport
  Tag = 1018
  Left = 144
  Top = 135
  Width = 637
  Height = 285
  Caption = 'GL report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlbGL: TToolBar
    Left = 555
    Top = 0
    Width = 66
    Height = 247
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 66
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object btnExit1: TToolButton
      Left = 0
      Top = 0
      Caption = 'Exit'
      ImageIndex = 2
      Wrap = True
      OnClick = btnExit1Click
    end
    object btnPrint: TToolButton
      Left = 0
      Top = 36
      Caption = 'TransCode'
      ImageIndex = 0
      Wrap = True
      OnClick = btnPrintClick
    end
    object btnCashFee: TToolButton
      Left = 0
      Top = 72
      Caption = 'Cash fees'
      ImageIndex = 0
      Wrap = True
      OnClick = btnCashFeeClick
    end
    object btnGLDeposit: TToolButton
      Left = 0
      Top = 108
      Caption = 'GL Deposit'
      ImageIndex = 0
      Wrap = True
      OnClick = btnGLDepositClick
    end
    object btnIntToDef: TToolButton
      Left = 0
      Top = 144
      Caption = 'Int to def. int'
      ImageIndex = 0
      Wrap = True
      OnClick = btnIntToDefClick
    end
    object btnToGL: TToolButton
      Left = 0
      Top = 180
      Caption = 'Trans. to GL'
      ImageIndex = 22
      Visible = False
      OnClick = btnToGLClick
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 247
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object grdGLTrans: TDBGrdClr
      Left = 0
      Top = 101
      Width = 555
      Height = 146
      Align = alClient
      DataSource = dtmLS2GL.dtsGLTsum
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdGLTransDrawColumnCell
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'RecordID'
          Title.Caption = 'T. sum ID'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RunDate'
          Title.Caption = 'Build date'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GLRef'
          Title.Caption = 'GL ref no.'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EffectDate'
          Title.Caption = 'Effect. date'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BHFrom'
          Title.Caption = 'BH from'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BHTo'
          Title.Caption = 'BH to'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotLoanBal'
          Title.Caption = 'Loan balance'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotAccBal'
          Title.Caption = 'Account balance'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotDepBal'
          Title.Caption = 'Deposit balance'
          Width = 85
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 555
      Height = 101
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 1
      object rgRGroup: TRadioGroup
        Left = 407
        Top = 18
        Width = 138
        Height = 73
        Caption = 'Report group'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 1
        Items.Strings = (
          'GL Account number'
          'LS2 Transaction code ')
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object edtRecID: TDBEdit
        Left = 495
        Top = 9
        Width = 65
        Height = 21
        DataField = 'RecordID'
        TabOrder = 1
        Visible = False
        OnChange = edtRecIDChange
      end
      object chbTransNo: TCheckBox
        Left = 216
        Top = 8
        Width = 121
        Height = 17
        Caption = 'Use transaction no.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = chbTransNoClick
      end
      object pnlDates: TPanel
        Left = 8
        Top = 31
        Width = 158
        Height = 60
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 3
        object Label2: TLabel
          Left = 32
          Top = 35
          Width = 11
          Height = 14
          Caption = 'To'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 32
          Top = 9
          Width = 24
          Height = 14
          Caption = 'From'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dtpTo: TDateTimePicker
          Left = 64
          Top = 32
          Width = 89
          Height = 21
          Date = 37155.500000000000000000
          Time = 37155.500000000000000000
          TabOrder = 0
        end
        object dtpFrom: TDateTimePicker
          Left = 64
          Top = 6
          Width = 89
          Height = 21
          Date = 37155.000000000000000000
          Time = 37155.000000000000000000
          TabOrder = 1
        end
        object chbFrom: TCheckBox
          Left = 8
          Top = 8
          Width = 14
          Height = 17
          Checked = True
          State = cbChecked
          TabOrder = 2
          Visible = False
        end
      end
      object chbDates: TCheckBox
        Left = 8
        Top = 8
        Width = 116
        Height = 17
        Caption = 'Use dates'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 4
        OnClick = chbDatesClick
      end
      object pnlTransR: TPanel
        Left = 216
        Top = 31
        Width = 146
        Height = 60
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 5
        Visible = False
        object Label13: TLabel
          Left = 8
          Top = 35
          Width = 11
          Height = 14
          Caption = 'To'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object From: TLabel
          Left = 8
          Top = 9
          Width = 24
          Height = 14
          Caption = 'From'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object edtTo: TNoEdit
          Left = 48
          Top = 32
          Width = 91
          Height = 21
          TabOrder = 0
          Text = '0'
        end
        object edtFrom: TNoEdit
          Left = 48
          Top = 6
          Width = 91
          Height = 21
          TabOrder = 1
          Text = '0'
        end
      end
      object cbxDates: TComboBox
        Left = 24
        Top = 6
        Width = 145
        Height = 22
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 6
        OnChange = cbxDatesChange
        Items.Strings = (
          'Use effective dates'
          'Use transaction dates')
      end
    end
  end
end
