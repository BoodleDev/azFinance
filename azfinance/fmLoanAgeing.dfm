object frmLoanAgeing: TfrmLoanAgeing
  Tag = 1025
  Left = 219
  Top = 179
  Width = 709
  Height = 494
  Caption = 'Loan Arrears Ageing'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 160
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object pnlMBase: TPanel
      Left = 0
      Top = 59
      Width = 701
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
      TabOrder = 0
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
      object Label3: TLabel
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
      object Label5: TLabel
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
      object Label15: TLabel
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
      object Label16: TLabel
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
      object Label4: TLabel
        Left = 262
        Top = 30
        Width = 46
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
      object Label14: TLabel
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
      object Label7: TLabel
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
      object Label17: TLabel
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
      object Bevel1: TBevel
        Left = 418
        Top = 24
        Width = 14
        Height = 67
        Shape = bsLeftLine
      end
      object Label20: TLabel
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
        Width = 63
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
        Width = 31
        Height = 13
        Caption = 'Status'
        Transparent = True
      end
      object Label2: TLabel
        Left = 434
        Top = 62
        Width = 103
        Height = 14
        Alignment = taCenter
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
      object Label19: TLabel
        Left = 434
        Top = 28
        Width = 103
        Height = 14
        Alignment = taCenter
        AutoSize = False
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
        Left = 446
        Top = 42
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
        Left = 446
        Top = 76
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
      object Shape1: TShape
        Left = 452
        Top = 6
        Width = 65
        Height = 17
      end
      object DBText3: TDBText
        Left = 453
        Top = 8
        Width = 62
        Height = 14
        Alignment = taCenter
        Color = clWhite
        DataField = 'RefNo'
        DataSource = dtmLS.dtsEntLoan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object cbxLoans: TComboBox
        Left = 79
        Top = 3
        Width = 116
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbxLoansChange
      end
      object btnSettle: TButton
        Left = 561
        Top = 4
        Width = 104
        Height = 25
        Caption = 'Settlement'
        TabOrder = 1
        OnClick = btnSettleClick
      end
      object chkHideClose: TCheckBox
        Left = 264
        Top = 5
        Width = 185
        Height = 17
        Caption = 'Hide closed/declined/cancelled'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        OnClick = chkHideCloseClick
      end
      object btnArrearsSettle: TButton
        Left = 561
        Top = 63
        Width = 104
        Height = 25
        Caption = 'Arrears Settlement'
        TabOrder = 3
        OnClick = btnArrearsSettleClick
      end
      object btnRepayTerm: TButton
        Left = 561
        Top = 33
        Width = 104
        Height = 25
        Caption = 'Repayment Term'
        TabOrder = 4
        OnClick = btnRepayTermClick
      end
    end
    object pnlCurrentDetail: TPanel
      Tag = 9
      Left = 0
      Top = 0
      Width = 701
      Height = 59
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 1
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
        Width = 41
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
        Width = 41
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
    end
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
  object Panel1: TPanel
    Left = 0
    Top = 160
    Width = 701
    Height = 300
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      701
      300)
    object dbtCycleEndDay: TDBText
      Left = 339
      Top = 3
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
    object lblCycleEndDay: TLabel
      Left = 262
      Top = 3
      Width = 71
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
    object Label6: TLabel
      Left = 14
      Top = 5
      Width = 68
      Height = 14
      Caption = 'Effective Date'
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
    object DBStyleGrid1: TDBStyleGrid
      Left = 5
      Top = 25
      Width = 689
      Height = 264
      Anchors = [akLeft, akTop, akRight, akBottom]
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
          FieldName = 'YMKey'
          Title.Alignment = taCenter
          Title.Caption = 'Year/Month'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MonthEndDate'
          Title.Alignment = taCenter
          Title.Caption = 'Cycle End Date'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Days6'
          Title.Alignment = taRightJustify
          Title.Caption = '180 Days'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Days5'
          Title.Alignment = taRightJustify
          Title.Caption = '150 Days'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Days4'
          Title.Alignment = taRightJustify
          Title.Caption = '120 Days'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Days3'
          Title.Alignment = taRightJustify
          Title.Caption = '90 Days'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Days2'
          Title.Alignment = taRightJustify
          Title.Caption = '60 Days'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Days1'
          Title.Alignment = taRightJustify
          Title.Caption = '30 Days'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Days0'
          Title.Alignment = taRightJustify
          Title.Caption = 'Current'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bucket'
          Title.Alignment = taRightJustify
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InstalmentDue'
          Title.Alignment = taRightJustify
          Title.Caption = 'Instalment Due'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AmountPaid'
          Title.Alignment = taRightJustify
          Title.Caption = 'Amount Paid'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AdditionalFees'
          Title.Alignment = taRightJustify
          Title.Caption = 'Additional Fees'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ArrearsInterest'
          Title.Alignment = taRightJustify
          Title.Caption = 'Arrears Interest'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalDue'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total Due'
          Width = 90
          Visible = True
        end>
    end
    object dtpArrears: TDateTimePicker
      Left = 92
      Top = 2
      Width = 141
      Height = 19
      Date = 39332.000000000000000000
      Time = 39332.000000000000000000
      TabOrder = 1
      OnChange = dtpArrearsChange
    end
  end
end
