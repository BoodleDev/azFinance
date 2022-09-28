object frmDepAcc: TfrmDepAcc
  Tag = 1013
  Left = 273
  Top = 207
  Width = 637
  Height = 349
  Caption = 'Deposit account'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTot: TPanel
    Left = 0
    Top = 296
    Width = 629
    Height = 19
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    DesignSize = (
      629
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
    Width = 629
    Height = 98
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
      Left = 112
      Top = 59
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
      Left = 112
      Top = 24
      Width = 32
      Height = 14
      DataField = 'LoanPeriod'
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
      Left = 9
      Top = 42
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
      Left = 9
      Top = 24
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
    object Label6: TLabel
      Left = 138
      Top = 24
      Width = 35
      Height = 14
      Caption = 'months'
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
      Left = 9
      Top = 59
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
      Top = 59
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
      Left = 310
      Top = 59
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
      Left = 310
      Top = 24
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
      Left = 310
      Top = 77
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
      Left = 409
      Top = 59
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
      Left = 398
      Top = 24
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
      Left = 410
      Top = 77
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
      Left = 310
      Top = 42
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
      Left = 403
      Top = 42
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
      Left = 112
      Top = 42
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
      Left = 517
      Top = 5
      Width = 2
      Height = 98
    end
    object dbtArrAmt: TDBText
      Left = 540
      Top = 47
      Width = 50
      Height = 14
      Alignment = taRightJustify
      AutoSize = True
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
      Transparent = True
    end
    object dbtAvlBal: TDBText
      Left = 544
      Top = 19
      Width = 46
      Height = 14
      Alignment = taRightJustify
      AutoSize = True
      Color = clLime
      DataField = 'AvlBal'
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 528
      Top = 34
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
    object Label20: TLabel
      Left = 310
      Top = 6
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
      Left = 394
      Top = 6
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
    object Label2: TLabel
      Left = 528
      Top = 6
      Width = 85
      Height = 14
      Caption = 'Available balance'
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
    object dbtArrDate: TDBText
      Left = 528
      Top = 77
      Width = 53
      Height = 14
      AutoSize = True
      Color = clBtnFace
      DataSource = dtmLS.dtsEntLoan
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 528
      Top = 64
      Width = 62
      Height = 14
      Caption = 'Arrears date'
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
    object Label21: TLabel
      Left = 9
      Top = 77
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
      Top = 77
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
      Left = 232
      Top = 7
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object cbxLoans: TComboBox
      Left = 112
      Top = 3
      Width = 116
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbxLoansChange
    end
  end
  object pnlCurrentDetail: TPanel
    Tag = 9
    Left = 0
    Top = 0
    Width = 629
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
  object grdBase: TDBStyleGrid
    Left = 0
    Top = 157
    Width = 629
    Height = 139
    Align = alClient
    DataSource = dtmLS.dtsAcc
    FixedColor = clInfoBk
    Options = [dgTitles, dgIndicator, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = grdBaseDrawColumnCell
    AllowSort = False
    Columns = <
      item
        Expanded = False
        FieldName = 'EffectDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TransCode'
        Title.Caption = 'Code'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TransDesc'
        Title.Caption = 'Transaction'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RefNo'
        Title.Caption = 'Ref. no'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BatchNo'
        Title.Caption = 'Batch. no'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debit'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Credit'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bal'
        Title.Caption = 'Balance'
        Width = 70
        Visible = True
      end>
  end
  object edtEnt: TDBEdit
    Left = 192
    Top = 16
    Width = 25
    Height = 21
    DataField = 'EntityID'
    Enabled = False
    ReadOnly = True
    TabOrder = 4
    Visible = False
    OnChange = edtEntChange
  end
end
