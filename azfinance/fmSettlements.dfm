object frmSettlements: TfrmSettlements
  Left = 244
  Top = 211
  Width = 757
  Height = 438
  Caption = 'Settlements'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    741
    400)
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 381
    Width = 741
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 5
    Top = 164
    Width = 737
    Height = 220
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Settlements'
      object grdSettlements: TDBStyleGrid
        Left = 0
        Top = 26
        Width = 729
        Height = 166
        Align = alClient
        DataSource = dtmSettlementQuotes.dtsSettlements
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AllowSort = False
        ColumnsResize = False
        ColumnsMove = False
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SettlementID'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Width = 50
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'CreateDate'
            Title.Alignment = taCenter
            Title.Caption = 'Settlement Date'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ExpiryDate'
            Title.Alignment = taCenter
            Title.Caption = 'Expiry Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SettlementAmount'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total Settlement'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanBalance'
            Title.Alignment = taRightJustify
            Title.Caption = 'Loan Balance'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SettlementInterest'
            Title.Alignment = taRightJustify
            Title.Caption = 'Settlement Interest'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FutureTransactions'
            Title.Alignment = taRightJustify
            Title.Caption = 'Future Trans.'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AdditionalCharges'
            Title.Alignment = taRightJustify
            Title.Caption = 'Additional Charges'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DepositBalance'
            Title.Alignment = taRightJustify
            Title.Caption = 'Deposit Balance'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SentMethod'
            Title.Caption = 'How Sent'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SentAddress'
            Title.Caption = 'Sent To'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateUser'
            Title.Caption = 'Created By'
            Width = 100
            Visible = True
          end>
      end
      object CoolBar1: TCoolBar
        Left = 0
        Top = 0
        Width = 729
        Height = 26
        AutoSize = True
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 22
            Width = 725
          end>
        object ToolBar1: TToolBar
          Left = 9
          Top = 0
          Width = 712
          Height = 22
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = True
          ButtonWidth = 119
          EdgeBorders = []
          Flat = True
          Images = imlTools
          List = True
          ShowCaptions = True
          TabOrder = 0
          object btnAdd: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = 'Add'
            ImageIndex = 3
            OnClick = btnAddClick
          end
          object btnView: TToolButton
            Left = 50
            Top = 0
            AutoSize = True
            Caption = 'View'
            ImageIndex = 0
            Visible = False
          end
          object btnPrint: TToolButton
            Left = 103
            Top = 0
            AutoSize = True
            Caption = 'Print'
            ImageIndex = 1
            OnClick = btnPrintClick
          end
          object ToolButton1: TToolButton
            Left = 156
            Top = 0
            Width = 13
            Caption = 'ToolButton1'
            ImageIndex = 24
            Style = tbsSeparator
          end
          object btnSettle: TToolButton
            Left = 169
            Top = 0
            AutoSize = True
            Caption = 'Process Settlement'
            ImageIndex = 23
          end
        end
      end
    end
  end
  object pnlMBase: TPanel
    Left = 0
    Top = 59
    Width = 741
    Height = 99
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 9
      Top = 6
      Width = 67
      Height = 14
      Caption = 'Loan details'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbtIntrate: TDBText
      Left = 120
      Top = 64
      Width = 45
      Height = 14
      AutoSize = True
      DataField = 'IntRate'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtLoanPeriod: TDBText
      Left = 120
      Top = 30
      Width = 69
      Height = 14
      AutoSize = True
      DataField = 'StrLoanPeriod'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblNoInst: TLabel
      Left = 14
      Top = 47
      Width = 93
      Height = 14
      Caption = 'No instalments paid'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblLoanPeriod: TLabel
      Left = 14
      Top = 30
      Width = 57
      Height = 14
      Caption = 'Loan period'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblIntRate: TLabel
      Left = 14
      Top = 64
      Width = 97
      Height = 14
      Caption = 'Current interest rate'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblPercent: TLabel
      Left = 143
      Top = 64
      Width = 10
      Height = 14
      Caption = '%'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblAmtFin: TLabel
      Left = 262
      Top = 30
      Width = 45
      Height = 14
      Caption = 'Total loan'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblStartDate: TLabel
      Left = 262
      Top = 47
      Width = 47
      Height = 14
      Caption = 'Start date'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblPayIns: TLabel
      Left = 262
      Top = 81
      Width = 48
      Height = 14
      Caption = 'Instalment'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object dbtAmtFin: TDBText
      Left = 361
      Top = 30
      Width = 48
      Height = 14
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'AmtToFin'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtStartdate: TDBText
      Left = 350
      Top = 47
      Width = 59
      Height = 14
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'StartDate'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtPayIns: TDBText
      Left = 362
      Top = 81
      Width = 47
      Height = 14
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'PayIns'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblInstDate: TLabel
      Left = 262
      Top = 64
      Width = 72
      Height = 14
      Caption = 'Instalment date'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object dbtInstDate: TDBText
      Left = 355
      Top = 64
      Width = 54
      Height = 14
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'FirstInsDate'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtNoInst: TDBText
      Left = 120
      Top = 47
      Width = 45
      Height = 14
      AutoSize = True
      DataField = 'NoOfPay'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblLoanType: TLabel
      Left = 14
      Top = 81
      Width = 48
      Height = 14
      Caption = 'Loan type'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object dbtLoanType: TDBText
      Left = 120
      Top = 81
      Width = 62
      Height = 14
      AutoSize = True
      DataField = 'LoanType'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblStatus: TLabel
      Left = 197
      Top = 7
      Width = 60
      Height = 13
      AutoSize = False
      Caption = 'Status'
      Transparent = True
    end
    object lblArrearsSettlement: TLabel
      Left = 466
      Top = 47
      Width = 90
      Height = 14
      AutoSize = False
      Caption = 'Arrears settlement'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblArrearsAmount: TLabel
      Left = 466
      Top = 30
      Width = 76
      Height = 14
      Caption = 'Arrears amount'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblArrearsAmt: TDBText
      Left = 574
      Top = 29
      Width = 75
      Height = 16
      Alignment = taCenter
      Color = clRed
      DataField = 'ArrearsAmt'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblArrearsSettle: TDBText
      Left = 574
      Top = 46
      Width = 75
      Height = 16
      Alignment = taCenter
      Color = clBtnFace
      DataField = 'ArrearsSettle'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblCycleEndDay: TLabel
      Left = 466
      Top = 63
      Width = 90
      Height = 14
      AutoSize = False
      Caption = 'Cycle End Day'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object dbtCycleEndDay: TDBText
      Left = 575
      Top = 62
      Width = 79
      Height = 14
      AutoSize = True
      DataField = 'CycleEndDay'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cmbLoans: TComboBox
      Left = 79
      Top = 3
      Width = 116
      Height = 21
      Style = csOwnerDrawFixed
      ItemHeight = 15
      TabOrder = 0
      OnChange = cmbLoansChange
      OnDrawItem = cmbLoansDrawItem
    end
    object chkHideClose: TCheckBox
      Left = 264
      Top = 5
      Width = 185
      Height = 17
      Caption = 'Hide closed/declined/cancelled'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = chkHideCloseClick
    end
    object Button1: TButton
      Left = 468
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Run Fees'
      TabOrder = 2
      Visible = False
      OnClick = Button1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 544
      Top = 3
      Width = 89
      Height = 21
      Date = 39329.489306122680000000
      Time = 39329.489306122680000000
      TabOrder = 3
      Visible = False
    end
  end
  object pnlCurrentDetail: TPanel
    Tag = 9
    Left = 0
    Top = 0
    Width = 741
    Height = 59
    Align = alTop
    BevelInner = bvLowered
    ParentColor = True
    TabOrder = 3
    object Label8: TLabel
      Left = 9
      Top = 3
      Width = 72
      Height = 14
      Caption = 'Client details'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 249
      Top = 40
      Width = 27
      Height = 14
      Caption = 'Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 38
      Top = 40
      Width = 43
      Height = 14
      Caption = 'Surname'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 38
      Top = 20
      Width = 25
      Height = 14
      Caption = 'Code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtCode: TDBText
      Left = 90
      Top = 20
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'EntCode'
      DataSource = dtmMain.dtsEntDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtName: TDBText
      Left = 304
      Top = 40
      Width = 42
      Height = 14
      AutoSize = True
      DataField = 'Name'
      DataSource = dtmMain.dtsEntDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtSurname: TDBText
      Left = 90
      Top = 40
      Width = 58
      Height = 14
      AutoSize = True
      DataField = 'Name2'
      DataSource = dtmMain.dtsEntDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 249
      Top = 20
      Width = 48
      Height = 14
      Caption = 'ID number'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtIDnum: TDBText
      Left = 304
      Top = 20
      Width = 44
      Height = 14
      AutoSize = True
      DataField = 'RegNo'
      DataSource = dtmMain.dtsEntDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 438
      Top = 20
      Width = 66
      Height = 14
      Caption = 'Home number'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 512
      Top = 20
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'TelNo1'
      DataSource = dtmMain.dtsEntDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 512
      Top = 40
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'TelNo2'
      DataSource = dtmMain.dtsEntDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 438
      Top = 40
      Width = 64
      Height = 14
      Caption = 'Work number'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtEnt: TDBEdit
      Left = 192
      Top = 16
      Width = 25
      Height = 21
      DataField = 'EntityID'
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      Visible = False
      OnChange = edtEntChange
    end
  end
  object imlTools: TImageList
    Left = 608
    Top = 32
    Bitmap = {
      494C01012F003100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0000000010020000000000000D0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4C4C4009898
      990088898A008A8A8B00898B8B008B8B8C008B8B8B008B8B8C008C8C8D008C8D
      8D0098999A00CCCCCC0000000000000000000000000000000000ABABAB00ABAB
      AB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABAB
      AB00ACACAC00A6A6A600000000000000000000000000078DBE00078DBE00078D
      BE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00078DBE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C2C200BEBE
      BF00B6B5B600B7B6B700B7B6B60089898900B1B1B100ABABAC00ACACAD00ADAD
      AD00D6D6D600A7A9AA0000000000000000000000000000000000CBCBCB00ECEC
      ED00ECECEC00ECECED00EBECEC00EBECEC00EBECEC00EBECEC00EBECEC00EBEC
      EC00EDEEEF00929292000000000000000000078DBE0025A1D10071C6E80084D7
      FA0066CDF90065CDF90065CDF90065CDF90065CDF80065CDF90065CDF80066CE
      F9003AADD8001999C90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFC000D6D6
      D700C7C7C800D1D1D2007F7F81000507080082848500D6D6D800CCCACC00C4C4
      C500D4D4D600A6A8A80000000000000000000000000000000000CACACA00ECEC
      ED00EAEAEA00E9EAE900E8E9E800E8E9E800E9E9E900E9E9E900E8E8E800E9E9
      E900EDEEEF00929292000000000000000000078DBE004CBCE70039A8D100A0E2
      FB006FD4FA006FD4F9006ED4FA006FD4F9006FD4FA006FD4FA006FD4FA006ED4
      F9003EB1D900C9F0F300078DBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000EAEA
      EB00E6E6E700E5E4E500C0BFBE008F8C8B00CCCAC900E7E7EB00EAEAF300E2E2
      EB00DCDCDC00A6A8A80000000000000000000000000000000000CACACA00ECEC
      ED00ABABAB00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00ECEDED00949494000000000000000000078DBE0072D6FA00078DBE00AEE9
      FC0079DCFB0079DCFB0079DCFB0079DCFB0079DCFB007ADCFB0079DCFA0079DC
      FA0044B5D900C9F0F300078DBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000E98E
      2000F8AA3D00F4A42700F8A71B00FDB12000FCB62A00FCBC3A00FDC44A00F8BF
      5600E1E0E200A5A7A80000000000000000000000000000000000CECECE00ECED
      EE00F3F4F400EBEBEB00E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900ECEEF000969696000000000000000000078DBE0079DDFB001899C7009ADF
      F30092E7FC0084E4FB0083E4FC0083E4FC0084E4FC0083E4FC0083E4FB0084E5
      FC0048B9DA00C9F0F3001496C400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C200E592
      2B00F0840000F5A10000FDB90000FFCC0000FFDD0000FFEE0000FFF80000FFF8
      0800E6E6EB00A5A7A80000000000000000000000000000000000CECECE00ECED
      EE00ABABAB00ABABAB00AAAAAA00AAAAA900AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00ECEEEE00989898000000000000000000078DBE0082E3FC0043B7DC0065C2
      E000ABF0FC008DEBFC008DEBFC008DEBFD008DEBFD008DEBFC008DEBFD008DEB
      FC004CBBDA00C9F0F300C9F0F300078DBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C200E492
      2F00EB760000F1930000F9B20000FEC30000FFCF0000FFD80000FFDD0000FFE2
      0E00E4E4EA00A5A7A80000000000000000000000000000000000CFD0D000F0F0
      F000ECECEC00EDEDED00ECECED00ECECED00ECEDED00EDEDED00EDEEEE00EDEE
      EE00EEEFF000999999000000000000000000078DBE008AEAFC0077DCF300219C
      C700FEFFFF00C8F7FD00C9F7FD00C9F7FD00C9F7FE00C8F7FE00C9F7FD00C8F7
      FE009BD5E600EAFEFE00D2F3F800078DBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C200E598
      3F00EA720000EC800000F7A80000FAB90000FDBE0000FEC30000FFC20000FCC4
      1800CDCDD200A7A7A80000000000000000000000000000000000D0D1D100F0F0
      F000ABABAB00ABABAB00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00EEEFF000999999000000000000000000078DBE0093F0FE0093F0FD001697
      C500078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00078DBE00078DBE00078DBE00078DBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C2C200E59D
      4C00EE840A00E4650000F1980300F9B01D00F8B00A00F8B00000F8AB0000EB9D
      2F00C8C8CC00A4A6A70000000000000000000000000000000000D6D7D700F0F0
      F000EEEFF000EEEFF000EEEFF000EEEFF000EEEFF000EEEFF000EEEFF000F0F0
      F000F0F0F000999999000000000000000000078DBE009BF5FE009AF6FE009AF6
      FE009BF5FD009BF6FE009AF6FE009BF5FE009AF6FD009BF5FE009AF6FE009AF6
      FE000989BA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C2C200E29D
      5100F7A75B00E4620000E9760000F9AF4300F7A62D00F5A21F00F79D0C00E48C
      3500B1B1B500A4A6A70000000000000000000000000000000000D1D2D200F9F9
      FA00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABAB
      AB00F9F9FA00999999000000000000000000078DBE00FEFEFE00A0FBFF00A0FB
      FE00A0FBFE00A1FAFE00A1FBFE00A0FAFE00A1FBFE00A1FBFF00A0FBFF00A1FB
      FF000989BA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C2C200E29E
      5600FCB98A00F3995400DC480000F4A24F00F7A85600F49E4100FF9E3500DF87
      3A00BFBEC000A4A6A70000000000000000000000000000000000D0D1D100F9F9
      FA00F9F9FA00F9F9FA00F9F9FA00F9F9FA00F9F9FA00F9F9FA00F9F9FA00F9F9
      FA00FAFAFB0099999900000000000000000000000000078DBE00FEFEFE00A5FE
      FF00A5FEFF00A5FEFF00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00C0C2C200E2A1
      5B00FEC4A300FFCAAA00E76F2D00DF4F0000F9B27C00F5A36700F7995400E590
      4300DCDBDD00A8A8A90000000000000000000000000000000000D1D3D300F9F9
      FA00AEAEAE00ADAEAE00ADAEAE00ADAEAE00ADAEAE00ADAEAE00AEAEAE00AEAE
      AE00FAFAFB009999990000000000000000000000000000000000078DBE00078D
      BE00078DBE00078DBE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C2C200E4A4
      6000FFDFCA00FFDBC500FFD6BC00E7683400E6632900FDB79000F9A47A00F7A6
      6F00F4F1F400A8A8A90000000000000000000000000000000000D1D3D300F9F9
      FA00F7F9F900F9FAFA00F9FAFA00F8F9F900F8F9F900F9FAFA00F9FAFA00F9FA
      FA00F9F9FA009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C2C200E2A8
      6500F0E5D600F7E5D400F8E5D200F9E2CF00E5956700E58C5700F5BCA100EBB6
      9E00EBEAEB00A8A8A90000000000000000000000000000000000D1CCC800F9F9
      FA00F7F8F900F9F9FA00F9F9FA00F9F9FA00F9F9FA00F9F9FA00F9F9FA00F9F9
      FA00F9F9FA009898980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C2C200DBD8
      D900B5B2B400B6B4B500B6B4B500B7B5B600B7B5B600B6B4B500B6B4B500B7B5
      B600E7E6E700BFC0C20000000000000000000000000000000000BC673E00BA5D
      2E00C87F4A00D28D4E00D89C5600D3985300CA8A4A00BE633100B7A49F00A8A9
      A900A3A3A300B9B9B90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C200C2C2C300C2C2C200C2C2C300C2C2C300C2C3C400C2C2C300C2C2C300C2C2
      C300C3C3C4000000000000000000000000000000000000000000C28F7500C474
      5700D1906E00D4936F00DA9D7200D9997100D7987400CB978400CCCBCB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B500959595007979790079797900797979008E8E8E00B9B9
      B900000000000000000000000000000000000000000099632D009E6730009E67
      30009E6730009E6730009E6730009E6730009E6730009E6730009E6730009E67
      3000996631000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F9F
      9F00777777007A7A7A0091919100BEBEBE00D9D9D900D5D5D500A1A1A1007879
      7900B9B7B700000000000000000000000000000000009A632A00CF8B5200CF8D
      5300CF8D5300CF8D5300CF8D5300CF8D5300CF8D5300CF8D5300CF8D5300CF8D
      53008A5F2F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000767676007C7C
      7C00A2A2A20000000000000000000000000000000000F1F1F10000000000D2D2
      D20084868600CCCCCC00000000000000000000000000A16D3400DDA66C00DDA8
      6F00DDA86F00DDA86F00DDA86F00DDA86F00DDA86F00DDA86F00DDA86F00DDA7
      6E008F6535000000000000000000000000000000000000000000000000000000
      000000000000D8E3D80081A681005B8A5B005D8B5D000000000000000000AAC6
      AA001C4E170000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE63000000000000767676007C7C7C000000
      00000000000000000000797878004B3A38004F3632005B413D00584846005854
      53005553570079777A00F4F4F4000000000000000000A5753D00E7B78300E7BB
      86008D7252008D725200BEB79900DBBD8C00E7BB8600E7BB8600E7BB8600E7BA
      8600916A3A000000000000000000000000000000000000000000F4F7F4006A8F
      6A001F531F00023C0200004000000043000013561300467E4200144D0B00073B
      00000B430900BAD5BA00000000000000000000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFF700FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFD6AD00CE6300008989890078787800000000000000
      00000000000054444200601B1600892F27009A433B00A7554E00CD636900B360
      690064554D005F6B6400B2B3B4000000000000000000A97D4700EFCA9B00EFCD
      9F00593921000B0A07003BB8DB005EE0D90082C3C700EFCD9F00EFCD9F00EFCB
      9E00926D3E0000000000000000000000000000000000D6E0D60016471600003B
      000000430000004A0000004F000000530000004A0000054200000E4700000943
      0000054400000255020055935500FAFCFA0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300007373730064646400000000000000
      00009E827F00831B1500A61F1E00971C1D00971D1E00921B1C004A3E13002756
      120054914000ABAFA200B8B5B8000000000000000000AD865200FADFB600FAE2
      BB008B8787004493A00000F6FF000CFFFF0000D1FA007A685E00FAE2BB00FAE0
      B800947143000000000000000000000000000000000020522000003D0000054F
      070020762500379C41004DC15C0068DA7C0049924F00195F1C003F953F0053BE
      5C003BAC420000670000005A00005F9C5F0000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFFF00FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFD6AD00CE630000D3D3D3007A797900586264006969
      69008E161200AD1A1900584117003D5B1500574A17005943130009700400004B
      000011440B00A4AB9700876861000000000000000000B08C5A00FFECCA00FFEF
      CF00CBDFD60024F8FF0060FFFF0061FFFF0018ECFF000000000080514600FFEE
      CB0095744700000000000000000000000000658C6500003A0000207625003BAC
      47003AB245003CB7490047C2560097E3A400C8F2D0005FDF730058E36D005BEA
      700067F07C0054CB6000107512003184310000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000CDCECF008A4B
      47009F2016003B5C15000D820E005D6E2000686624007B56250030811500056E
      0000265C220072B370005C421D00F0E1E10000000000B2916000FFF1D200FFF5
      D800FFF5D8003CF5FD0087FFFF0089FFFF0048FFFF0000ACC400000000008B63
      5600957448000000000000000000000000002256220025802C002FA03700299D
      31002DA337002F9235006FAD7600F6FCF700000000007ACB85004BCB5A004FD8
      610053E064005BE870006CE87F004B994C0000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFFF00FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFD6AD00CE630000000000000000000000000000C33E
      3B00684A1A00028F07000A6206002C701500976B2500DB928600C5B6BA00314D
      2B00607B640074B96E0055311300C798990000000000B1916200FFF4D800FFF7
      DD00FFF7DD009FE7ED0020859700379BA300B8FFFF005CFFFF0000C1DC000000
      000060362200000000000000000000000000328C3E003CB248002CA335002B9E
      3200349F3C00094405001C591C00000000002B552B00106709001D7F10003DB7
      480045CB55004CD45C0058DF6D0084D88F0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFD6A500FFDEB500CE6300000000000000000000FBF7F600B733
      2B004E5D1A000A8B11001C861F001C951F00BAA22300E5D1BD00757B8600988E
      9B009395A0008F6A6100801C1100B887820000000000B0906400FDF5DD00FFFA
      E400FFFAE400FFFAE400B17A6F0000000000437E8100C2FFFF0062FFFF0000CF
      E600000000008A878700000000000000000083D9910047C5570039B6440034AD
      3D0040AF490027702700054C05004B734B0000250000106900001D8115003AB1
      44003AB7440041C14D0052CF6200C9F3D10000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFFF00FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFE7C600CE6300000000000000000000FDFCFC00B673
      5B0048B54D002AB335005CC0590041CC4D00A6CC4C00E1D3D70073768100555B
      5F00606F7500B654500089170D00CAA29D0000000000AF8E6400FDF4E000FDFB
      E900FFFDEA00FFFDEA00FFFDEA00C5BCB000000000002F6A6B00C1FFFF006EFF
      FF0000DBEF000000000093939300000000000000000088E2960049CB580040C1
      4C003CBC490040B84C002C873400012A0100124913003297350034A33C002DA3
      370032A93C004FBC5C00C4EECB000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE630000000000000000000000000000D8C4
      B10094E0970095D2870098D770007EEF7900B1D29F00CDC3A000C1BDA600A09D
      9E00D1C7CA00B78270007E110700F4EAE90000000000AD8A6000FAEFDD00FDFA
      EC00FDFDEE00FFFDEF00FFFDEF00FFFDEF00D8D2C700050505001A565600B6FF
      FF0079FFFF0000A0B70000000000ABACDB0000000000FDFEFD0095E6A3004FD0
      60004DCF5E004DCB5F005CC76E00094B0B003CAC4A0035A9400032A33C003FAB
      490084CF8E00EDF9EF00000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE630000000000000000000000000000FCFD
      FD00C7A57B00DBCEA100C4F2BA00DFF9BC00FFFFD200FAEC7200FDBA2E00F288
      44003B88330007630000B88D7D00000000000000000099734300997344009974
      440099734400FDFDF100FFFDF400FFFDF400FFFDF400E9E5DD001C1C1B000043
      4300DBEFF000CCC9AE0037343C003B29E10000000000FCFEFD00A6EBB200B3EE
      BE00CFF5D600F1FCF3000000000058AE620069D27A007CD48A00BEE8C500FAFD
      FB000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000F0F0EA00C8BE8900E8F4CA00EFF7C800FFF4A900FFED9D00E9CA6D0058B2
      2E0000CA020041BD4600FDFDFD00000000000000000000000000B38F6C00FDFD
      F5009A744400FDF9F000FDFDF500FFFDF600FFFDF600FFFDF600F5F3EC00A99C
      990091877200DCD2D200BAA3FF007455DB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      000000000000F1F6F200D0D6AC00BADD9500ADD289007FC7700073B1630031D7
      3E0082EF8700FDFDFD000000000000000000000000000000000000000000AD8C
      670099744400F9E9DD00FDF1E800FDF5EC00FFF5EC00FFF5EC00FFF4EA00FFF4
      E800654F6E005326A0007D51BE00E8E3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8F4EA00CDE8D000BEE5C200DBE7D200F1F5
      EE00000000000000000000000000000000000000000000000000000000000000
      000099734300997343009A7747009B7949009C79490098774600987644009875
      4400947341000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010254A0010254A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000078DBE00078DBE00078D
      BE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00078DBE00078DBE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010254A002961BF00153B790010254A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBE0063CBF800078DBE00A3E1
      FB0066CDF90065CDF80065CDF90065CDF90065CDF80065CDF90065CDF80066CD
      F8003AADD800ACE7F500078DBE0000000000000000000000000010841000189C
      180031A5310039AD390039AD3900107B100031942900217318005A524200736B
      5A00000000000000000000000000000000000000000000000000000000000000
      000010254A003A73D7002961BF001A51A800153B790010254A00000000000000
      00000000000000000000000000000000000000000000CB570000CB570000CB57
      0000CB570000CB570000CB570000CB570000CB570000CB570000CB570000CB57
      0000CB570000CB570000CB57000000000000078DBE006AD1F900078DBE00A8E5
      FC006FD4FA006FD4F9006ED4FA006FD4F9006FD4FA006FD4FA006FD4FA006ED4
      F9003EB1D900B1EAF500078DBE0000000000000000000000000021A5210031AD
      31004ABD4A0052C65200399C39008CBD7B0052BD520042BD4200217318004A42
      2900000000000000000000000000000000000000000000000000000000001025
      4A003A73D7002961BF002961BF001A51A8001A51A800153B790010254A000000
      000000000000000000000000000000000000E7AC1D00F3BB9F00F3BB9F00F3BB
      9F00F3BB9F00F3BB9F00F3BB9F00F3BB9F00F3BB9F00F3BB9F00F3BB9F00F3BB
      9F00F3BB9F00F3BB9F00F3BB9F00CB570000078DBE0072D6FA00078DBE00AEEA
      FC0079DCFB0079DCFB0079DCFB0079DCFB0079DCFB007ADCFB0079DCFA0079DC
      FA0044B5D900B6EEF600078DBE00000000000000000000000000299C29004ABD
      4A006BCE6B006BC66B00F7FFEF00F7FFEF0063C6630063CE630031A531004A6B
      390000000000000000000000000000000000000000000000000010254A002961
      BF001A51A8004782EE00437DE500407AE0001A51A8001A51A800153B79001025
      4A0000000000000000000000000000000000E7AC1D00FFDFC300F3BB9F00F3BB
      9F00FFD6B500F3BB9F00F3BB9F00FFCFA500F3BB9F00F3BB9F00FFD6B500F3BB
      9F00F3BB9F00FFCFA500F3BB9F00CB570000078DBE0079DDFB00078DBE00B5EE
      FD0083E4FB0044B181000A8313000C8D170044B0810079DBE90083E4FB0084E5
      FC0048B9DA00BBF2F600078DBE00000000000000000000000000000000004ABD
      4A0073CE730052A54A00FFFFFF00FFFFFF006BC66B0073CE7300319C31000000
      0000000000000000000000000000000000000000000010254A00153B79002961
      BF001A51A800437DE500407AE000407AE000407AE0001A51A8001A51A800153B
      790010254A00000000000000000000000000E7AC1D00FEEBD800CC5A2A00BD4D
      0100FFD6B500CB570000BD4D0100FFCFA500CB570000BD4D0100FFCFA500CB57
      0000BD4D0100FFCFA500F3BB9F00CB570000078DBE0081E2F900078DBD00BAF3
      FD008DEBFC008DEBFC0053BE96000D9718000C981800279747008AE9F8008DEB
      FC004CBBDA00BEF4F700078DBE00000000000000000000000000000000000000
      000018734A003984AD00217BBD00428CAD0063BD6300399C3900000000000000
      00000000000000000000000000000000000010254A001A51A800598BEE004782
      EE00437DE5001A51A8003A73D700407AE000407AE000407AE0001A51A8001A51
      A800153B790010254A000000000000000000E7AC1D00FEEBD800F3BB9F00F3BB
      9F00FFDFC300F3BB9F00F3BB9F00FFD6B500F3BB9F00F3BB9F00FFCFA500F3BB
      9F00F3BB9F00FFCFA500F3BB9F00CB570000078DBE0089EAFB00078DBD00FFFF
      FF00C9F7FE00C8F7FE00C9F7FE0073C396000E9D1B000C96170033994600C8F7
      FE009BD5E700DEF9FB00078DBE00000000000000000000000000000000000000
      0000187BC600218CE700298CE700218CE700296B520000000000000000000000
      000000000000000000000000000000000000000000006B94EE00437DE500437D
      E500437DE500437DE5001A51A8003A73D700407AE000407AE000407AE0001A51
      A8001A51A800153B790010254A0000000000E7AC1D00FEEBD800CC5A2A00BD4D
      0100FEEBD800CB570000BD4D0100FFD6B500CB570000BD4D0100FFCFA500CB57
      0000BD4D0100FFCFA500F3BB9F00CB570000078DBE0093F0FE00078DBE00078D
      BE00078DBE00078DBE00078DBE0007868A000E9B1A000FA71C0008822200078A
      AF00078DBE00078DBE00078DBE0000000000000000000000000000000000297B
      AD00399CFF00399CFF00399CFF00399CFF00298CE70039525200000000000000
      00000000000000000000000000000000000000000000000000006B94EE00437D
      E500437DE500437DE500437DE5001A51A8005391CD003A73D700407AE000407A
      E0001A51A8001A51A800153B790010254A00E7AC1D00FEEBD800FEEBD800FEEB
      D800FEEBD800FEEBD800FFDFC300FFD6B500FFD6B500FFD6B500FFD6B500FFCF
      A500FFCFA500FFCFA500F3BB9F00CB570000078DBE009BF5FE009AF6FE009AF6
      FE009BF5FD009BF6FE009AF6FE0076D4C1001698260016AF26000C94180064C5
      A7000989BA000000000000000000000000000000000000000000000000002184
      C60042A5FF0042A5FF0042A5FF0042A5FF00399CF700315A6B00000000000000
      00000000000000000000000000000000000000000000000000001A51A8006B94
      EE00437DE500437DE500437DE5002961BF00ACEDFF005391CD003A73D700407A
      E000407AE0001A51A8001A51A800153B7900E7AC1D00FEEBD800CF8E6800CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800FFD6
      B500FFCFA500FFCFA500F3BB9F00CB570000078DBE00FEFEFE00A0FBFF00A0FB
      FE00A0FBFE00A1FAFE00A1FBFE0086E2D5001F9E340025BB3D0014A4230045AC
      6F000989BA0000000000000000000000000000000000000000006BA5C60042A5
      F7004AB5FF0052B5FF0052BDFF0052B5FF004AADFF0039739400000000000000
      00000000000000000000000000000000000000000000000000001A51A8001025
      4A006B94EE00437DE500437DE500437DE5002961BF001A51A8003A73D700407A
      E000407AE000407AE0001A51A800153B7900E7AC1D00FEEBD800A4676900FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00CF8E6800FFD6
      B500FFD6B500FFCFA500F3BB9F00CB57000000000000078DBE00FEFEFE00A5FE
      FF000C8518000C8518000C8518000C85180027A9420034C5520023B539000C85
      18000C8518000C8518000C8518000000000000000000000000005294BD0042A5
      EF005ABDFF005ABDFF0052B5F7004AB5EF0052B5F70039738C00000000000000
      00000000000000000000000000000000000000000000000000001A51A800153B
      7900000000006B94EE00437DE500437DE500437DE500437DE5001A51A8003A73
      D700407AE0004782EE006B94EE00153B7900E7AC1D00FEEBD800A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900FFDF
      C300FFD6B500FFD6B500F3BB9F00CB5700000000000000000000078DBE00078D
      BE00078CAE000C8518002095320050D97B004BD575003ECB620032C1500026B8
      3E00159E24000C8518000000000000000000000000000000000063849C002173
      A5004A94C6006BADD60063ADF7004A9CE700216BA50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A51
      A800153B790010254A006B94EE00437DE500437DE500437DE500437DE5001A51
      A8003A73D700265DBA000000000000000000E7AC1D00FEEBD800FEEBD800FEEB
      D800FEEBD800FEEBD800FEEBD800FEEBD800FEEBD800FEEBD800FEEBD800FEEB
      D800FEEBD800FFDFC300F3BB9F00CB5700000000000000000000000000000000
      000000000000000000000C85180032AE4E005CE68E004FD8780043D068002EBA
      4B000C8518000000000000000000000000000000000000000000000000002173
      A5006BADD6008CBDE70073BDE7005AADDE00316B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A51A8001A51A8001A51A8006B94EE00437DE5004782EE006B94EE00265D
      BA000000000000000000000000000000000000000000E89B2700E89B2700E89B
      2700E89B2700E89B2700E89B2700E89B2700E89B2700E89B2700E89B2700E89B
      2700E89B2700E89B2700D2851A00000000000000000000000000000000000000
      00000000000000000000000000000C8518003EBE600061EA93004ED677000C85
      1800000000000000000000000000000000000000000000000000000000000000
      00006BA5BD004A94B5004A8CAD0063849C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B94EE00265DBA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C85180046C86C000C8518000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C851800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000084000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000084000000FF0000000000008484000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF0000848400008484000084000000840000008400000084
      000000FFFF0000000000000000000000000000FFFF0000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      00000000FF00000000000000000000000000000000000000FF00000000000000
      000000000000000000007B7B7B000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF0000848400008484000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      0000000000007B7B7B000000FF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF0000848400000000000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B000000FF007B7B
      7B000000FF0000000000000000000000000000000000000000007B7B7B000000
      FF007B7B7B000000FF000000000000000000000000007B7B7B00000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000084000000840000008400000084
      000000FFFF0000000000000000000000000000FFFF0000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000007B7B7B000000
      0000FFFFFF00000000007B7B7B00000000000000000000000000000084000000
      8400000084000000840000008400000000000084000000840000008400000084
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400000084
      00000084000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF000000000000000000000000000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000084840000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000000000000000007B7B
      7B00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      00000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000FFFF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF00000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF00000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000000FFFF000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000FF000000FF0000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF0000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF00000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000BDBD
      BD000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF00000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B00000000007B7B7B0000FFFF0000FFFF000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF00000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FFFF00000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000FFFF000000000000FF
      FF0000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000FFFF00000000000000000000FF
      FF007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000000080808000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000000080808000808080000000000000000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000800000008000000000008080800080808000000000000000FF000000
      800000008000000000008080800000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000FF0000000000000000000000000000008400000084
      000000FF00000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000080000000800000000000808080000000FF00000080000000
      80000000800000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF00000000000000000000008400000084000000FF
      000000FF000000FF000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000800000008000000080000000FF0000008000000080000000
      80000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF000000000000000000000084000000FF000000FF
      00000000000000FF000000FF0000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000008000000080000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000FF000000FF00000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000000008080
      80008080800000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000080000000
      00008080800000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000000000008000000080000000
      00008080800080808000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000800000000000000000000000FF00000080000000
      80000000000080808000808080000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000008400000084000000000000000000000000000000000000000000000000
      00000000FF0000008000000000000000000000000000000000000000FF000000
      80000000800000000000808080008080800000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000084000000840000000000000000000000000000000000000000
      00000000FF000000800000000000000000000000000000000000000000000000
      FF000000800000008000000000008080800000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000840000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      00000000FF0000008000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000008400000084000000FF00000084000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000008400
      0000FF000000840000008400000084000000FF00000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF0000000000000000000000000084000000FF00
      0000840000000084840000848400840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000084000000FF0000008400
      0000FF000000008484000084840084000000FF00000084000000FF0000008400
      0000008484000084840000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FF000000FF00
      0000FFFF0000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000084000000FF000000FF00
      0000FF0000000084840000848400008484008400000084000000840000008400
      0000008484000084840000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF000000FF000000FFFF
      0000FFFF0000FFFF0000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FF000000FF000000FF000000FF00
      0000FF000000008484000084840000848400FF000000FF000000FF0000008400
      0000FF0000008400000084000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FF000000FFFF0000FFFF
      000000000000FFFF0000FFFF0000FF000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000084000000FF000000FF0000000084
      840000848400008484000084840000848400FF000000FF000000FF0000008400
      00008400000084000000FF000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FF000000FF000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FF00000084000000008484000084
      840000848400008484000084840000848400FF00000000848400FF0000008400
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000FF000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000084000000FF000000FF0000000084
      840000848400008484000084840000848400008484000084840000848400FF00
      000084000000FF00000084000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FF000000FF00
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FF000000FF000000FF0000000084
      840000848400FF000000FF00000084000000008484000084840000848400FF00
      0000FF00000084000000FF000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FF00
      0000FF00000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000848400008484000084840000848400008484000084
      840084000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FF000000FF00000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000084000000FF0000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FF000000FF0000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000008484000084
      84000084840000848400FF000000FF00000000848400FF000000008484000084
      8400FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FF000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000848400FF000000FF00000084000000FF00000084000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000BD000000BD000000BD00
      0000BD00000000000000C6C6C60000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C60000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF000000000000000000BD000000FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF0000000000BDBDBD00000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF00000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF008484
      840084848400FFFFFF008484840000000000000000008484840084848400FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000FFFFFF000000
      000000000000000000000000000000000000FF00000084000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF0000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00000000000000000000000000FF00000084000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF00000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000BD000000FFFFFF008484
      840084848400FFFFFF008484840000000000000000008484840084848400FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000BDBDBD00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FF0000008400
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000084000000FF0000000000000000000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF000000000000000000BD000000BD000000BD00
      0000BD000000BD000000BD000000BD000000BD000000BD000000BD000000BD00
      0000BD000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000084000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000C6C6C600BD00
      0000BD000000C6C6C600BD000000BD000000C6C6C600BD000000BD000000C6C6
      C600BD0000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF000000FF000000FF000000FF0000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000BD000000BD000000BD00
      0000BD000000BD000000BD000000BD000000BD000000BD000000BD000000BD00
      0000BD0000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084000000FF00000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C68C8400DEA58400DE9C
      7B00DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C
      8400DE9C7B00DE9C8400BD847B000000000000000000000000000000000000FF
      FF00008484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A637B00BD9494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C68C8400CE948400EFB59400FFCE
      9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE
      9400FFD69C00E7B58C00C68C8400BD847B0000000000000000000000000000FF
      FF000084840000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000006B9CC600188CE7004A7BA500C694
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C68C8400E7B58C00C68C8400F7CE
      AD00F7D6AD00F7CEAD00F7CEAD00F7CEAD00F7CEAD00F7CEAD00F7CEAD00F7D6
      AD00EFC6A500C68C8400EFBD9C00C68C840000000000000000000000000000FF
      FF0000848400000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000004AB5FF0052B5FF00218CEF004A7B
      A500C69494000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000BD848400F7D6B500DEA58C00CEA5
      9C00EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDE
      C600C6949400DEAD9400EFDEC600BD84840000000000000000000000000000FF
      FF00008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052B5FF0052B5FF001884
      E7004A7BA500C694940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF00000000000000000000000000FFFF
      FF000000000000000000FFFFFF0000000000BD848400EFDECE00F7D6B500C68C
      7B00DEC6BD00EFE7D600EFDED600EFDED600EFDED600EFDED600EFE7DE00D6B5
      AD00CE948400F7E7CE00EFDECE00BD8484000000000000000000000000000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052B5FF004AB5
      FF00188CE7004A7BA500BD949400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000BD8C8400EFE7DE00FFF7E700EFC6
      A500BD8C8400EFD6D600EFE7DE00EFDED600EFDED600EFE7D600E7CEC600C68C
      8400EFDEC600F7F7EF00EFE7DE00BD8C84000000000000000000000000000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000000000000000000000000000000000000052B5
      FF004AB5FF002184DE005A6B730000000000AD7B7300C6A59C00D6B5A500CEA5
      9C000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000FFFFFF0000000000BD8C8400F7EFEF00F7F7EF00D6AD
      A500C68C8400C6949400BD848400BD848400BD848400C68C8C00C6949400C684
      8400E7CEC600FFFFFF00F7EFEF00C68C840000000000000000007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      000052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFFD600FFFFD600FFFF
      D600E7DEBD00CEADA500000000000000000000000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFFFF0000000000FFFFFF000000
      FF00FFFFFF00FF000000FFFFFF0000000000C68C8C00EFD6D600C6949400CEA5
      A500F7EFEF00F7EFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7F7F700DED6
      D600BD949400D6A5A500EFE7DE00C68C8C0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000CEB5B500D6B5A500FFEFC600FFFFD600FFFFD600FFFFD600FFFF
      DE00FFFFEF00F7F7EF00B58C8C000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      FF00FFFFFF00FF000000FFFFFF0000000000BD848400BD949400E7C6C600FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00E7F7F700CEB5B500C6949400BD84840000000000BDBDBD00BDBDBD00BDBD
      BD0000000000BDBDBD00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000C6948C00F7DEB500F7D6A500FFF7CE00FFFFD600FFFFDE00FFFF
      EF00FFFFF700FFFFFF00DED6BD000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FFFFFF0000000000B5847B00A5DEDE00FFFFFF00FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00EFFFFF00E7F7F700E7F7
      F700D6EFEF00C6EFF700ADBDC600B57B7B00000000000000FF00BDBDBD000000
      FF00BDBDBD00BDBDBD00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000DEBDA500FFE7AD00F7CE9400FFF7CE00FFFFDE00FFFFE700FFFF
      F700FFFFF700FFFFEF00F7EFD600C69C940000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000BD847B00B5A5A500FFFFFF00FFFF
      FF00FFFFFF00EFF7F700E7EFEF00CEE7E700A5CED60094C6CE0084BDC6007BB5
      C6006BADCE0073A5BD00A5848C00B57B7B000000FF000000FF000000FF00BDBD
      BD00BDBDBD00BDBDBD00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000E7C6AD00FFDEAD00EFBD8400F7E7B500FFFFD600FFFFDE00FFFF
      E700FFFFE700FFFFDE00F7F7D600C6AD9C0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6737300BD949400A5DE
      DE008CFFFF007BDEEF0073D6E7006BDEE7006BDEE7006BDEEF006BDEEF006BDE
      FF0084BDD600B58C8C00C67B7B0000000000000000000000FF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000DEBDAD00FFE7B500EFBD8400F7CE9400FFEFC600FFFFDE00FFFF
      DE00FFFFDE00FFFFDE00F7EFD600C6A59C0000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000000000000000000000000000B584
      840094B5BD0073EFFF006BF7FF0073EFFF0073EFFF006BF7FF0073E7FF009CAD
      B500BD84840000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C69C9400FFEFC600FFEFC600F7D6A500F7CE9C00F7E7B500FFF7
      CE00FFF7D600FFFFD600E7DEBD000000000000000000BDBDBD00BDBDBD00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000C67B7B00AD9C9C0084D6E70073EFFF0073EFFF0084D6E700AD949C00C67B
      7B000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEC6AD00FFFFFF00FFF7EF00F7CE9400EFBD8400F7CE
      9C00FFE7B500FFF7C600BD9C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD848400B5949400B5949400BD848400000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6BDBD00F7EFD600FFEFC600FFE7AD00FFE7
      B500F7DEB500CEAD9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEAD9400CEAD9C00DEBDA500DEBD
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A637B00BD9494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C006B6B6B00525252004A4A4A004A4A4A004A4A4A00525252009C9C
      9C00000000000000000000000000000000006B9CC600188CE7004A7BA500C694
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5847300A53100008C1000008C1000006B1000006B2908007B6B6300AD84
      7B0000000000000000000000000000000000000000000000000000000000ADAD
      AD00E7CEC600EFDED600F7E7D600F7E7D600EFDED600EFDED600CEBDB5005A5A
      5A00737373009C9C9C0000000000000000004AB5FF0052B5FF00218CEF004A7B
      A500C69494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00AD420000CE630000B5633900EFD6C600E7C6B500D6BDAD00BD7B6300AD52
      31008C1000006321000000000000000000000000000000000000CEC6BD00F7E7
      D600F7F7F700E7E7E700CEB5A500D6AD9400DEC6BD00EFF7F700F7EFEF00EFDE
      D6008C847B006B6B6B009C9C9C00000000000000000052B5FF0052B5FF001884
      E7004A7BA500C694940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD847B00AD42
      0000D66B0000CE630000B56B4200EFD6CE00E7C6BD00E7BDAD00D6AD9400CEA5
      8C00C68C7300AD735200000000000000000000000000E7D6CE00F7E7DE00F7FF
      FF00CE9C8400B54A1000BD633900D6AD9C00C65A2100BD522100D6AD9C00F7FF
      FF00F7DED6007B736B007373730000000000000000000000000052B5FF004AB5
      FF00188CE7004A7BA500BD949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C64A0000E773
      0000E76B0000D66B0000B5734A00EFE7D600E7CEBD00C68C7B00CEA58400C68C
      7300CEA58400AD735200000000000000000000000000EFDED600F7FFFF00C67B
      5A00BD4A1000C6521800C6A59400FFFFFF00DE947300BD4A1000B54A1000CE9C
      8400F7FFFF00EFDED6005A5A5A009C9C9C0000000000000000000000000052B5
      FF004AB5FF002184DE005A6B730000000000AD7B7300C6A59C00D6B5A500CEA5
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000C6520000EF7B
      0000E7730000E76B0000BD7B5200F7E7E700E7CECE00086BA500004A8C004A73
      9400CEA58C00AD7352000000000000000000F7E7E700F7F7F700D6AD9400BD4A
      1000CE633100CE632900CE6B3900DE8C6B00CE632900CE633100C65A2900B54A
      1000DEC6BD00F7EFE700A59C9400636363000000000000000000000000000000
      000052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFFD600FFFFD600FFFF
      D600E7DEBD00CEADA50000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000000000C6520000F784
      0000E7730000E773000042210800F7EFE700EFE7D600EFD6CE00E7C6BD00D6BD
      AD00D6AD9400AD7352000000000000000000F7EFE700F7F7F700C6633100C65A
      2900CE6B3100CE5A2100CE8C6B00F7E7DE00CE6B3900C65A2100CE633100C652
      1800C67B5200F7FFFF00DECEC600525252000000000000000000000000000000
      000000000000CEB5B500D6B5A500FFEFC600FFFFD600FFFFD600FFFFD600FFFF
      DE00FFFFEF00F7F7EF00B58C8C00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      8400000000000000000000000000000000000000000000000000CE520000F784
      0000EF7B0000E773000052291000F7E7E700F7E7E700EFD6D600E7CEBD00E7C6
      B500D6B5A500CE9484000000000000000000F7EFE700EFDED600C65A2100CE63
      3100CE633100CE5A2100C6846B00FFFFFF00EFAD9400C64A1000CE633100CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      000000000000C6948C00F7DEB500F7D6A500FFF7CE00FFFFD600FFFFDE00FFFF
      EF00FFFFF700FFFFFF00DED6BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000008484000000000000000000000000000000000000000000CE630000FF8C
      0000F7840000F7941000F7EFE700F7D6BD00F7CEAD00E7BD9400BD7342003900
      00004A210800945239000000000000000000F7EFE700F7DECE00CE5A2100CE63
      3100CE633100CE632900C6522100CEB5A500FFFFFF00E79C7B00C6521800CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      000000000000DEBDA500FFE7AD00F7CE9400FFF7CE00FFFFDE00FFFFE700FFFF
      F700FFFFF700FFFFEF00F7EFD600C69C94000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000000000FF
      FF00000000000084840000000000000000000000000000000000CE630000FF8C
      0000F7840000F7941000FFFFFF00F7E7E700F7CEAD00F7CEAD00BD735200BD84
      6B00B5522100733108000000000000000000F7EFE700F7EFE700DE6B3100D66B
      3100CE632900C65A2100C6521800BD4A1000DECEC600FFFFFF00D6734200CE5A
      2100CE6B3900FFF7F700EFDED6006B6B6B000000000000000000000000000000
      000000000000E7C6AD00FFDEAD00EFBD8400F7E7B500FFFFD600FFFFDE00FFFF
      E700FFFFE700FFFFDE00F7F7D600C6AD9C000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000848400000000000000000000000000CE6B0000F794
      1000FF8C0000F7840000E7CEBD00E7BD9400CE947B00CE948400CEA58C00CEA5
      8C00C68452007B3908000000000000000000F7E7E700FFFFFF00F79C6B00E763
      2900CE8C6B00EFE7DE00D67B5200BD310000D69C7B00FFFFFF00DE8C6300CE52
      1800E79C7300FFFFFF00DEC6BD00ADADAD000000000000000000000000000000
      000000000000DEBDAD00FFE7B500EFBD8400F7CE9400FFEFC600FFFFDE00FFFF
      DE00FFFFDE00FFFFDE00F7EFD600C6A59C000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF0000848400008484000000000000000000CE6B0000FFA5
      1000FF8C0000FF8C0000F7E7E700EFD6CE0073848C006B738400B5847300CEA5
      8C00C68452007B3908000000000000000000F7EFE700F7EFEF00FFEFDE00FF8C
      4A00DE845A00EFFFFF00FFFFFF00E7BDA500F7FFFF00EFFFFF00E7733900E773
      3900FFEFEF00F7E7DE00A59C9400000000000000000000000000000000000000
      000000000000C69C9400FFEFC600FFEFC600F7D6A500F7CE9C00F7E7B500FFF7
      CE00FFF7D600FFFFD600E7DEBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008484000000000000000000CE731000FFAD
      2900F7941000FF940000F7E7E700F7E7E700EFD6C600E7CEBD00D6BDAD00D6B5
      A500D694630084390800000000000000000000000000EFDED600FFFFFF00FFEF
      CE00FFB57300EFAD8400EFE7DE00EFF7F700EFE7DE00F7A57B00FF8C4A00FFDE
      CE00FFFFFF00EFDED600CECEC600000000000000000000000000000000000000
      00000000000000000000DEC6AD00FFFFFF00FFF7EF00F7CE9400EFBD8400F7CE
      9C00FFE7B500FFF7C600BD9C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000CE732100FFB5
      3900FFA51000FF940800F7EFE700F7E7E700EFD6CE00E7CEBD00E7BDAD00D6BD
      AD00D6A56B008C420800000000000000000000000000F7EFEF00EFDED600FFFF
      FF00FFFFFF00FFF7C600FFDEAD00FFCE9400FFCE9400FFD6AD00FFF7F700FFFF
      FF00EFDED600CECEC60000000000000000000000000000000000000000000000
      0000000000000000000000000000D6BDBD00F7EFD600FFEFC600FFE7AD00FFE7
      B500F7DEB500CEAD9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000CE7B2900FFC6
      6B00F7CE9400EFD6C600E7CEBD00E7C6BD00E7B59400D6AD8C00D68C5200CE73
      2900CE520000B5734A0000000000000000000000000000000000F7EFEF00EFDE
      D600F7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00EFDE
      D600DEDEDE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEAD9400CEAD9C00DEBDA500DEBD
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00000000000000000000000000AD84
      7B00C68C7300C68C7300BD7B6300BD7B6300BD846B00BD7B6300BD8C7B00AD84
      7B0000000000000000000000000000000000000000000000000000000000F7EF
      E700F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      E700000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD4A0000C65A0000BD735200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500EFD6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B58484000000000000000000000000007F2B28007F2B
      2800A1828300A1828300A1828300A1828300A1828300A1828300A18283007A1C
      1C007F2B2800000000000000000000000000000000000000000000000000B552
      1000CE630000C65A0000B55A3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600EFCE9C00B584840000000000000000007F2B2800CA4D4D00B645
      4500DDD4D5007916170079161700DCE0E000D7DADE00CED5D700BDBABD007610
      0F009A2D2D007F2B280000000000000000000000000000000000B55A2100CE63
      0000C6630000B55A310000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000C6ADA500FFEF
      E7002D2D2D0058534E00D6C6BD00F7DEBD00EFD6AD00EFCE9C00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B584840000000000000000007F2B2800C24A4B00B144
      4400E2D9D9007916170079161700D9D8DA00D9DEE100D3D9DC00C1BDC1007611
      1100982D2D007F2B2800000000000000000000000000C6846300C6630000CE63
      0000B55A21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6ADA500FFF7
      E70058534E004544420051606100D6C6BD00F7DEB500EFD6AD00EFCE9C00EFCE
      9C00EFCE9C00EFCE9400B584840000000000000000007F2B2800C24A4A00B042
      4200E6DCDC007916170079161700D5D3D500D8DEE100D7DDE000C6C2C500700F
      0F00962C2C007F2B2800000000000000000000000000B54A0000CE630000AD4A
      00000000000000000000C6846300BD5A0000BD5A0000BD5A0000BD5A0000BD5A
      0000BD5A0000BD5A0000AD4A000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000CEB5AD00FFFF
      F700C6C6C60054777B00477AA90018556F008A5B5200C6B5B500C6C6C600C6C6
      C600C6C6C600EFCE9C00B584840000000000000000007F2B2800C24A4A00B041
      4100EADEDE00E7DDDD00DDD4D500D7D3D500D5D7D900D7D8DA00CAC2C5007E17
      17009E3131007F2B28000000000000000000C6846300C6630000C66300000000
      00000000000000000000BD6B4200C6630000CE630000CE630000CE630000CE63
      0000CE6B0000D6730000B55200000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF0054777B0041749600947E7500C17135008A5B5200D6C6BD00EFD6
      AD00EFD6AD00EFD6AD00B584840000000000000000007F2B2800BF474800B845
      4500BA4C4C00BD575700BB575600B64E4E00B4494900BD525100BB4B4C00B542
      4200BF4A4A007F2B28000000000000000000B5521000CE630000AD4A00000000
      0000000000000000000000000000CE9C8400CE9C8400CE9C8400A5421000CE63
      0000D6730000DE7B0000BD5A0000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF007C707800F1BC8600F0A85C00C07638008A5B5200D6C6
      BD00EFD6AD00EFD6AD00B584840000000000000000007F2B2800A33B3900B160
      5D00C6868400CB918F00CC919000CC908F00CB898800C9898800CB939100CC96
      9600BD4B4C007F2B28000000000000000000B54A0000CE630000C67342000000
      00000000000000000000000000000000000000000000C6846300CE630000DE73
      0000CE630000E7840000C6630000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00C6C6C600C6C6C600AD7B7300FBD3A900F9C48D00EFA65A00C07638008A5B
      5200C6B5B500D6C6BD00BD94940000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000B54A0000CE630000C67342000000
      000000000000000000000000000000000000BD7B5200CE6B0000DE7B0000B552
      0000B5521000F7940000CE630000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700AD7B7300FBD3A900F9C48D00F0A85C00C171
      35008A5B5200D6C6BD00C6ADAD0000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B28000000000000000000B5521000CE630000B54A00000000
      0000000000000000000000000000BD633100CE6B0000E7840000B55200000000
      0000CE844200FF9C0800CE6B0800000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700AD7B7300FBD3A900F8C28C00EDA7
      5F00B56D3E008A5B5200C6B5B50000000000000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B28000000000000000000C6846300C6630000C6630000B552
      1000C68C7300C67B5200BD520000E77B0000E7840000C6631000000000000000
      0000CE844A00FFAD3100CE732100000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600AD7B7300FBD3A9009891
      A20035A8F5000316AC0000009A0000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B2800000000000000000000000000AD4A1000C6630000CE6B
      0000D6730000DE7B0000E7840000E77B0000B55A210000000000000000000000
      0000C67B5200FFBD6300CE7B3900000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700AD7B73004A9E
      ED001029D6001029D6000316AC0000009A00000000007F2B2800BD4B4C00F7F7
      F700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00F7F7
      F700BD4B4C007F2B280000000000000000000000000000000000BD6B4200BD5A
      0000CE6B0000CE6B0000C6631000CE9C84000000000000000000000000000000
      000000000000C6845A00CE947B000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE000018
      C6006D8AFD00106BFF001029D60000000000000000007F2B2800BD4B4C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4B4C007F2B280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B000018C6000018C600000000000000000000000000000000007F2B2800F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F7007F2B28000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A467690000000000000000000000000048536000FEE9
      C700F4DAB500F3D5AA00F2D0A000EFCB9600EFC68B00EDC18200EBC17F00EBC1
      8000EBC18000F2C78200A4676900000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A0000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000B7918400FEE9
      C700F4DAB500F3D5AA00F2D0A000EFCB9600EFC68B00EDC18200EBC17F00EBC1
      8000EBC18000F2C78200A467690000000000000000004380B7001F6FC200656B
      8600F3DABC00F2D5B100F0D0A700EECB9E00EDC79300EDC28B00E9BD8100E9BD
      7F00E9BD7F00EFC48100A46769000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A0000000000CE630000FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000B7918700FCEA
      CE00F3DABC00F2D5B100F0D0A700EECB9E00EDC79300EDC28B00E9BD8100E9BD
      7F00E9BD7F00EFC48100A467690000000000000000000000000032A3FF001672
      D7006B6A8000F2DABC00F2D5B200EFD0A900EECB9E00EDC79600EBC28C00E9BD
      8200E9BD7F00EFC48100A467690000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000B7938A00FEEF
      DA00F6E0C600F2DABC00F2D5B200EFD0A900EECB9E00EDC79600EBC28C00E9BD
      8200E9BD7F00EFC48100A4676900000000000000000000000000A0675B0034A1
      FF001572D4005E678200F3DABB00F2D5B100F0D0A600EECB9E00EDC79500EBC2
      8A00EABF8100EFC48000A4676900000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A007673730000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000BA978F00FFF4
      E500F7E5CF00F4E0C500F3DABB00F2D5B100F0D0A600EECB9E00EDC79500EBC2
      8A00EABF8100EFC48000A4676900000000000000000000000000A7756B00FFFB
      F00033A6FF004078AD008E675E00AC7F750097645E00AC7D6F00CAA08300EDC6
      9500EBC28A00EFC58300A4676900000000006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A7878007573730000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDE
      B500FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000C09E9500FFFB
      F000F8EADC00F6E3CF00F4E0C600F2D9BC00F2D5B100F0D0A900EDCB9E00EDC6
      9500EBC28A00EFC58300A4676900000000000000000000000000A7756B00FFFF
      FC00FAF0E600AD8A8800B78F8400D8BAA500EED5B600D7B29800B5887700CBA0
      8300EBC79300F2C98C00A4676900000000006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000C6A49A00FFFF
      FC00FAF0E600F8EADA00F7E5CF00F4E0C500F2DABA00F2D5B100F0D0A700EECB
      9D00EBC79300F2C98C00A4676900000000000000000000000000BC826800FFFF
      FF00FEF7F200AF847F00DAC0B400F7E3CF00F6E0C500FFFFF400D7B19800AC7D
      6F00EECC9E00F3CE9700A467690000000000000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEF
      D600FFE7C600FFDEB500FFD6AD00CE6300000000000000000000CBA99E00FFFF
      FF00FEF7F200FAEFE600F8EAD900F7E3CF00F6E0C500F2DABB00F2D4B100F0D0
      A700EECC9E00F3CE9700A4676900000000000000000000000000BC826800FFFF
      FF00FFFEFC0097656000F6E9E000F7EADA00F6E3CF00FFFFEB00EFD4B7009764
      5E00F0D0A600F6D3A000A4676900000000000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE6300000000000000000000CFAC9F00FFFF
      FF00FFFEFC00FCF6F000FAEFE600F7EADA00F6E3CF00F4E0C500F3D9BB00F3D4
      B000F0D0A600F6D3A000A4676900000000000000000000000000D1926D00FFFF
      FF00FFFFFF00B0888400DECAC400FAEFE500F8EAD900FFFFD400D9B8A500AC7F
      7400F4D8B100EBCFA400A4676900000000000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A00000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000000000000D4B0A100FFFF
      FF00FFFFFF00FFFEFC00FEF7F000FAEFE500F8EAD900F7E5CE00F6DEC400F3D9
      B800F4D8B100EBCFA400A4676900000000000000000000000000D1926D00FFFF
      FF00FFFFFF00D5BFBC00BA979300DECAC400F6E9DE00DAC0B400B78F8400B28C
      7B00DECEB400B6AA9300A4676900000000000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029E7000021
      A500FFFFF700FFF7E7000029E7000021A5000000000000000000D9B5A100FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FCF7F000FAEFE500F8E9D900F8E7D100FBEA
      CE00DECEB400B6AA9300A4676900000000000000000000000000DA9D7500FFFF
      FF00FFFFFF00FFFFFF00D5BFBC00B088840097656000AF867F00CAA79D00A56B
      5F00A56B5F00A56B5F00A467690000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      E7000021A5000029E7000021A500CE6300000000000000000000DDB7A400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF6EF00FCF3E600EDD8C900B68A
      7B00A17B6F009C766700A4676900000000000000000000000000DA9D7500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFFEF700DAC1BA00A56B
      5F00E19E5500E68F3100B56D4D0000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      00000029E7000021A500CE630000CE6300000000000000000000E2BCA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFFEF700DAC1BA00AD73
      5B00E19E5500E68F3100B56D4D00000000000000000000000000E7AB7900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7C500A56B
      5F00F8B55C00BF7A5C0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE6300000029
      E7000021A5000029E7000021A500000000000000000000000000E6BFA700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7C500B882
      6500F8B55C00BF7A5C0000000000000000000000000000000000E7AB7900FBF4
      F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2C000A56B
      5F00C1836C000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000029E7000021
      A50000000000000000000029E7000021A5000000000000000000E4BCA400FBF4
      F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2C000B77F
      6200C1836C000000000000000000000000000000000000000000E7AB7900D192
      6D00D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00A56B
      5F00000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8C4AD00EBCB
      B700EBCBB700EACBB700EACAB600EACAB600EACAB600EACAB600E3C2B100A56B
      5F0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C003C00380070000C003C00300030000
      C003C00300010000C003C00300010000C003C00300010000C003C00300000000
      C003C00300000000C003C00300000000C003C00300070000C003C00300070000
      C003C003800F00008003C003C3FF0000C003C003FFFF0000C003C003FFFF0000
      C003C003FFFF0000E007C01FFFFF0000F80F8007FFFFFFFFE0078007FFFF8000
      C7A38007F86780009C018007C003800038018007800080003001800780008000
      0001800700008000C000800700808000E000800701008000C000800300008000
      C000800180018000E000800080038000E0018000820F8000F001C000FFFFC001
      F803E000FFFFFFFFFE0FF007FFFFFFFFFFFFFCFFFFFF8003FFFFF87FFFFF0001
      C00FF03F80010001C00FE01F00000001C00FC00F00000001E01F800700000001
      F03F000300000001F07F800100000001E03FC00000000007E03FC00000000007
      C03FC00000008001C03FC8000000C003C07FE0030000FC07E07FF00F8001FE0F
      F0FFFF3FFFFFFF1FFFFFFFFFFFFFFFBFFFFF8000F862FFFFC000555580E00003
      FFFF000001E00001FFFF76BC01E00000C000B6D831E10000FFFF86C231C10000
      FFFFCEE6C1810000C3C0CAA6C3070000DDFF86C0FE178000DDFF4EF6CC37FFFF
      C3C0E6F2A877FFFFDDFFE6F240F7FFFFDDFFFEFE01E3FFFFC3C00000C1E3FFFF
      FFFF5555C0E3FFFFFFFF0000C83FFFFFFFFFFC1FFC1FFFFF0001F007F007FFF8
      0001E003E00320F80001C001C001007F1FF1C001C001007C1FF1C001C001003C
      1831C001C001000F1831C001400100041831E003A003000C1831F1C7C3C701FF
      1831F1C70047E3FC1FF1F1C7C1C7FFFC1FF1F007A1C7FFFF0001F80F6007FFF8
      0001FC1FE80FFFF80001FFFFEC1FFFFFFFFFF1FFFC00FFFFFFFFE1F3F0000001
      E3FFE0E1C0000001C1FFE0410000000180FFF00300001FF1807FF00700001DF1
      883FF80F00001CF1FC1FFC0700001C71FE0FFC0700001C31FF07F80300001C71
      FF83F88100011CF1FFC1F1C000031DF1FFE1F1E000071FF1FFF1FBF1001F0001
      FFFFFFFB007F0001FFFFFFFF01FF0001FFE3FFFFFFFFFFFFFC41F83FE007FFFF
      8800E00FE007E3DF0000C007E007C1AF00008003E00780F700008003E007807B
      00000001E007883D00000001E007FC1F00000001E007FE0F00000001E007FF07
      00000001E007DF8300008003E00FAFC100018003E01FF7E10001C007E03FFBF1
      000DE00FFFFFFDFFD553F83FFFFFFFFFFFFFF8F8FFFFFFFF0000F8F8FC00FDFF
      0000F870FC00F8FF0000F800FC00F07F00008000FC00E03F00008000EC00C01F
      00008000E400800F00008001E000000700008003000000030000800300018001
      000080030003C003000080070007E00F00008007000FF00F00008007E3FFF81F
      00008007E7FFFC7F0000FFFFEFFFFFFF8001C3809FFFFFFF0000C3000FFF0000
      0000C20107FF00000000C00383FF00000000C003C1FF00000000C003E10F0000
      00000003F003000000000003F801000000000003F801000000000003F8000000
      00000003F800000080010007F8000000E007000FF8010000F00F003FFC010000
      FC3F80FFFE03FFFFFFFFC3FFFF0FFFFF9FFF847FFFFFF00F0FFF00EFF00FE003
      07FF31BFE003C00183FF39FFC0038001C1FF993FC0038000E10FCA1FC0030000
      F003F40FC0030000F8019C07C0030000F8019603C0030000F800CB01C0030000
      F800FF80C0030000F800F7C0C0030001F801FFE0C0038001FC01EFF0C0038003
      FE03FFF8C003C007FF0FFFFCE00FE00FC001FFFFF1FFFFFFC001C007E1FFFFFF
      C0018003C3FFDFFBC001800387FF8FFFC00180038C0187F7C00180031C01C7EF
      C00180031E01E3CFC00180031F81F19FC00180031F01F83FC00180031E11FC7F
      C00180030031F83FC00180038071F19FC0008003C0F9C3CFC0018003FFFF87E7
      C003C007FFFF8FFBC00FFFFFFFFFFFFFC001F33FFFFFC001C001E0078000C001
      8001C0008000C001C00180018000C001C00100008000C001C00100008000C001
      C00100008000C001C00180008000C001C001E0018000C001C001F0038000C001
      C001F01F8000C001C001E03F8000C001C001E03F8000C001C003C03FC001C003
      C007C07FFFCCC007C00FF8FFFFFFC00F00000000000000000000000000000000
      000000000000}
  end
end
