object frmLCD: TfrmLCD
  Tag = 1022
  Left = 197
  Top = 179
  Width = 661
  Height = 402
  Caption = 'Loan contract'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTot: TPanel
    Left = 0
    Top = 349
    Width = 653
    Height = 19
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      653
      19)
    object lblTotals: TLabel
      Left = 8
      Top = 2
      Width = 29
      Height = 14
      Caption = 'Totals'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblDR: TLabel
      Left = 421
      Top = 3
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft]
      Caption = '0.00'
      Transparent = True
    end
    object lblCR: TLabel
      Left = 502
      Top = 3
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft]
      Caption = '0.00'
      Transparent = True
    end
  end
  object pnlMBase: TPanel
    Left = 0
    Top = 59
    Width = 653
    Height = 115
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
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
      Top = 62
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
      Top = 29
      Width = 81
      Height = 14
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
      Top = 45
      Width = 95
      Height = 14
      Caption = 'No installments paid'
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
      Top = 29
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
      Top = 62
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
      Top = 62
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
      Top = 45
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
      Top = 62
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
      Top = 96
      Width = 50
      Height = 14
      Caption = 'Installment'
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
      Top = 45
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
      Top = 62
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
      Top = 96
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
      Top = 79
      Width = 74
      Height = 14
      Caption = 'Installment date'
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
      Top = 79
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
      Top = 45
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
    object Label20: TLabel
      Left = 14
      Top = 79
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
      Top = 79
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
    object Label21: TLabel
      Left = 14
      Top = 96
      Width = 62
      Height = 14
      Caption = 'Total interest'
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
    object dbtTotInt: TDBText
      Left = 120
      Top = 96
      Width = 41
      Height = 14
      AutoSize = True
      DataField = 'TotInterest'
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
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 418
      Top = 24
      Width = 14
      Height = 85
      Shape = bsLeftLine
    end
    object Label19: TLabel
      Left = 434
      Top = 44
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
      Top = 58
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
    object Label2: TLabel
      Left = 434
      Top = 78
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
    object lblArrearsSettle: TDBText
      Left = 446
      Top = 92
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
    object chkHideClose: TCheckBox
      Left = 264
      Top = 5
      Width = 185
      Height = 17
      Hint = 'Hide Closed Loans'
      Caption = 'Hide closed/declined/cancelled'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = chkHideCloseClick
    end
  end
  object pnlCurrentDetail: TPanel
    Tag = 9
    Left = 0
    Top = 0
    Width = 653
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
      Left = 270
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
  object edtEnt: TDBEdit
    Left = 192
    Top = 16
    Width = 25
    Height = 21
    DataField = 'EntityID'
    Enabled = False
    ReadOnly = True
    TabOrder = 3
    Visible = False
    OnChange = edtEntChange
  end
  object grdBase: TDBStyleGrid
    Left = 0
    Top = 174
    Width = 653
    Height = 175
    Align = alClient
    DataSource = dtmLCD.dtsContract
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
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
        Expanded = False
        FieldName = 'PayNo'
        Title.Caption = 'Pay No'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PayDesc'
        Title.Caption = 'Description'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EffectDate'
        Title.Caption = 'Effect Date'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IntME'
        Title.Alignment = taRightJustify
        Title.Caption = 'Interest'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Balance'
        Title.Alignment = taRightJustify
        Width = 82
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IntRate'
        Title.Alignment = taCenter
        Title.Caption = 'Int. Rate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Interest'
        Title.Alignment = taRightJustify
        Title.Caption = 'Int. Calc.'
        Visible = True
      end>
  end
end
