object frmClientAcc: TfrmClientAcc
  Tag = 1010
  Left = 145
  Top = 248
  Width = 709
  Height = 349
  Caption = 'Client account'
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
  object pnlTot: TPanel
    Left = 0
    Top = 296
    Width = 701
    Height = 19
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    DesignSize = (
      701
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
      Left = 437
      Top = 3
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft]
      Caption = '0.00'
      Transparent = True
    end
    object lblCR: TLabel
      Left = 518
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
      Top = 29
      Width = 97
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
      Left = 144
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
      Top = 29
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
      Top = 45
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
      Top = 79
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
      Top = 29
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
      Top = 45
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
      Top = 79
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
      Top = 62
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
      Top = 62
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
    object Bevel1: TBevel
      Left = 416
      Top = 24
      Width = 15
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
    object lblStatus: TLabel
      Left = 197
      Top = 7
      Width = 31
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object imgAT: TImage
      Left = 660
      Top = 4
      Width = 19
      Height = 19
      AutoSize = True
      Center = True
      Picture.Data = {
        07544269746D6170AA040000424DAA0400000000000036000000280000001300
        0000130000000100180000000000740400000000000000000000000000000000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C07B7B9439396310104A08084A1818523939637B7B
        94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C031316300004A00005A00006B00006B00006300005A00004A313163
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C01818
        6308087308089408089408089408088408087300007300006B000063181852C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C031317B08089C1010AD
        0808A50808A50808A508089C08089408088408087300007300006331315AC0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C07B7B9C0808941010BD1010BD1010BD10
        10BD1010BD1010AD1010AD08089C08089408087300007300004A7B7B94C0C0C0
        C0C0C0000000C0C0C0C0C0C039399C1818BD1818CE2121CE2121CE2121CE2121
        CE1818BD1818BD1010B50808A508089408088400005A393963C0C0C0C0C0C000
        0000C0C0C0C0C0C02121AD1818D62929D62929DE3939E73939E73131DE2929D6
        2121CE1818BD1010B50808A5080894080873181852C0C0C0C0C0C0000000C0C0
        C0C0C0C01818BD2121E73939EF3939EF4242E74242E74242E73939E73131DE29
        29D61818BD1010B508089C080884080852C0C0C0C0C0C0000000C0C0C0C0C0C0
        2929D63131EF4242EF4A4AF75252FF5A5AF75252F74A4AEF4242E73131DE2121
        CE1818BD1010AD08089418185AC0C0C0C0C0C0000000C0C0C0C0C0C04242E731
        31FF4A4AF75A5AFF7373FF7373FF6B6BFF5A5AFF5252F74242E73131DE2121CE
        1010B5080884393973C0C0C0C0C0C0000000C0C0C0C0C0C07B7BCE3131FF5252
        FF6B6BFF8C8CFFADADFF8C8CFF6B6BFF5A5AF74A4AEF3939E72121D61818BD08
        08737B7B9CC0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C04A4AF74A4AF76B6BFF
        8C8CFFADADFF9C9CFF7373FF5A5AFF4A4AF73939E72929D61010B531318CC0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C04242FF5A5AFF7373FF84
        84FF7B7BFF6B6BFF5A5AFF4A4AF73939EF2121D62121A5C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05252F75252FF6363FF6363
        FF5A5AFF5252FF3939F72121E73939BDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08484DE5252F74A4AF74242FF
        3939F74A4AE77B7BCEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000}
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
    object btnRepayTerm: TButton
      Left = 561
      Top = 33
      Width = 104
      Height = 25
      Caption = 'Repayment Term'
      TabOrder = 2
      OnClick = btnRepayTermClick
    end
    object chkHideClose: TCheckBox
      Left = 264
      Top = 5
      Width = 177
      Height = 17
      Caption = 'Hide closed/declined/cancelled'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = chkHideCloseClick
    end
    object btnArrearsSettle: TButton
      Left = 561
      Top = 63
      Width = 104
      Height = 25
      Caption = 'Arrears Settlement'
      TabOrder = 4
      OnClick = btnArrearsSettleClick
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
      Left = 440
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
    Top = 158
    Width = 701
    Height = 138
    Align = alClient
    DataSource = dtmLS.dtsAcc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
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
        Expanded = False
        FieldName = 'EffectDate'
        Title.Caption = 'Effect. date'
        Width = 70
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'TransCode'
        Title.Caption = 'Code'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TransDesc'
        Title.Caption = 'Transaction'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RefNo'
        Title.Caption = 'Ref. no'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BatchNo'
        Title.Caption = 'Batch no.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debit'
        Title.Alignment = taRightJustify
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Credit'
        Title.Alignment = taRightJustify
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bal'
        Title.Alignment = taRightJustify
        Title.Caption = 'Balance'
        Width = 88
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
