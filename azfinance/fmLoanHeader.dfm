object frmLoanHeader: TfrmLoanHeader
  Left = 616
  Top = 205
  Width = 1142
  Height = 610
  Caption = 'frmLoanHeader'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    1126
    572)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 6
    Top = 164
    Width = 1127
    Height = 53
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object Label40: TLabel
    Left = 272
    Top = 167
    Width = 71
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = '120+ Days'
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
  object Label41: TLabel
    Left = 358
    Top = 167
    Width = 71
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = '90+ Days'
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
  object Label42: TLabel
    Left = 448
    Top = 167
    Width = 71
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = '60+ Days'
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
  object pnlMBase: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 220
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
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 1126
      Height = 220
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      DesignSize = (
        1126
        220)
      object Bevel2: TBevel
        Left = 6
        Top = 159
        Width = 1122
        Height = 45
        Anchors = [akLeft, akTop, akRight, akBottom]
      end
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1126
        Height = 33
        Align = alTop
      end
      object dbtIntrate: TDBText
        Left = 120
        Top = 105
        Width = 45
        Height = 14
        AutoSize = True
        DataField = 'InterestRate'
        DataSource = dtmLS.dtsCurrentRate
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtLoanPeriod: TDBText
        Left = 375
        Top = 71
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
      object Label5: TLabel
        Left = 261
        Top = 71
        Width = 30
        Height = 14
        Caption = 'Period'
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
        Top = 105
        Width = 100
        Height = 14
        Caption = 'Current Interest Rate'
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
        Top = 105
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
        Left = 14
        Top = 88
        Width = 32
        Height = 14
        Caption = 'Capital'
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
        Left = 261
        Top = 88
        Width = 51
        Height = 14
        Caption = 'Open Date'
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
        Left = 261
        Top = 140
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
        Left = 120
        Top = 88
        Width = 48
        Height = 14
        AutoSize = True
        DataField = 'LoanCapital'
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
        Left = 375
        Top = 88
        Width = 59
        Height = 14
        AutoSize = True
        DataField = 'OpenDate'
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
        Left = 375
        Top = 140
        Width = 47
        Height = 14
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
        Left = 261
        Top = 105
        Width = 97
        Height = 14
        Caption = 'First Instalment Date'
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
        Left = 375
        Top = 105
        Width = 54
        Height = 14
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
        Left = 630
        Top = 71
        Width = 45
        Height = 14
        AutoSize = True
        DataField = 'clPayments'
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
        Top = 71
        Width = 50
        Height = 14
        Caption = 'Loan Type'
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
        Top = 71
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
      object Label19: TLabel
        Left = 756
        Top = 138
        Width = 47
        Height = 14
        Caption = 'Payments'
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
        Left = 841
        Top = 138
        Width = 68
        Height = 14
        Color = clBtnFace
        DataField = 'AmountPaid'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label11: TLabel
        Left = 14
        Top = 9
        Width = 54
        Height = 14
        Caption = 'Client Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtCode: TDBText
        Left = 82
        Top = 9
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
      object Label10: TLabel
        Left = 158
        Top = 9
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
      object dbtSurname: TDBText
        Left = 210
        Top = 9
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
      object Label9: TLabel
        Left = 389
        Top = 9
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
      object dbtName: TDBText
        Left = 428
        Top = 9
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
      object Label12: TLabel
        Left = 575
        Top = 9
        Width = 49
        Height = 14
        Caption = 'ID Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtIDnum: TDBText
        Left = 630
        Top = 9
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
      object lblCycleEndDay: TLabel
        Left = 14
        Top = 122
        Width = 70
        Height = 14
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
        Left = 121
        Top = 122
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
      object Label21: TLabel
        Left = 14
        Top = 140
        Width = 98
        Height = 14
        Caption = 'Next Deduction Date'
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
      object DBText1: TDBText
        Left = 120
        Top = 140
        Width = 40
        Height = 14
        AutoSize = True
        DataField = 'NextDeduction'
        DataSource = dtmLS.dtsEntLoan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 261
        Top = 122
        Width = 98
        Height = 14
        Caption = 'Final Instalment Date'
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
      object DBText2: TDBText
        Left = 375
        Top = 122
        Width = 40
        Height = 14
        AutoSize = True
        DataField = 'EndDate'
        DataSource = dtmLS.dtsEntLoan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 508
        Top = 71
        Width = 95
        Height = 14
        Caption = 'Payments Received'
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
      object Label24: TLabel
        Left = 508
        Top = 88
        Width = 80
        Height = 14
        Caption = 'Interest Accrued'
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
      object Label25: TLabel
        Left = 508
        Top = 105
        Width = 112
        Height = 14
        Caption = 'Contract Fees Accrued'
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
      object Label26: TLabel
        Left = 508
        Top = 122
        Width = 85
        Height = 14
        Caption = 'Add. Fees Levied'
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
      object Label27: TLabel
        Left = 508
        Top = 140
        Width = 88
        Height = 14
        Caption = 'Legal Fees Levied'
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
      object Label28: TLabel
        Left = 756
        Top = 87
        Width = 58
        Height = 14
        Caption = 'Current Due'
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
      object lblArrearsLabel: TLabel
        Left = 756
        Top = 104
        Width = 38
        Height = 14
        Caption = 'Arrears'
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
      object Label2: TLabel
        Left = 756
        Top = 121
        Width = 50
        Height = 14
        Caption = 'Total Due'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 370
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '120 Days'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label6: TLabel
        Left = 454
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '90 Days'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label31: TLabel
        Left = 537
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '60 Days'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label32: TLabel
        Left = 621
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '30 Days'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label33: TLabel
        Left = 704
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Current'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label34: TLabel
        Left = 787
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label35: TLabel
        Left = 16
        Top = 167
        Width = 102
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cycles Delinquent'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBText3: TDBText
        Left = 414
        Top = 183
        Width = 40
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days4'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 498
        Top = 183
        Width = 40
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days3'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 581
        Top = 183
        Width = 40
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days2'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 665
        Top = 183
        Width = 40
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days1'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText7: TDBText
        Left = 748
        Top = 183
        Width = 40
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days0'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 828
        Top = 183
        Width = 43
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'CycleDue'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblDelinquency: TDBText
        Left = 47
        Top = 183
        Width = 69
        Height = 14
        Alignment = taCenter
        AutoSize = True
        DataField = 'StrCD'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText10: TDBText
        Left = 630
        Top = 88
        Width = 46
        Height = 14
        AutoSize = True
        DataField = 'InterestAccrued'
        DataSource = dtmLS.dtsEntLoan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText11: TDBText
        Left = 630
        Top = 105
        Width = 45
        Height = 14
        AutoSize = True
        DataField = 'ContractFees'
        DataSource = dtmLS.dtsEntLoan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText12: TDBText
        Left = 630
        Top = 122
        Width = 46
        Height = 14
        AutoSize = True
        DataField = 'AddFeesLevied'
        DataSource = dtmLS.dtsEntLoan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText13: TDBText
        Left = 630
        Top = 140
        Width = 46
        Height = 14
        AutoSize = True
        DataField = 'LegalFeesLevied'
        DataSource = dtmLS.dtsEntLoan
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 756
        Top = 70
        Width = 115
        Height = 13
        Caption = 'Current Cycle Period'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText21: TDBText
        Left = 324
        Top = 183
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days5'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 286
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '150 Days'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBText22: TDBText
        Left = 240
        Top = 183
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days6'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 202
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '180 Days'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBText23: TDBText
        Left = 156
        Top = 183
        Width = 46
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Days7+'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 118
        Top = 167
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '210+ Days'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBText14: TDBText
        Left = 841
        Top = 87
        Width = 68
        Height = 14
        Color = clBtnFace
        DataField = 'Days0'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBText15: TDBText
        Left = 841
        Top = 121
        Width = 68
        Height = 14
        Color = clBtnFace
        DataField = 'CycleDue'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lblArrears: TDBText
        Left = 841
        Top = 104
        Width = 68
        Height = 14
        Color = clBtnFace
        DataField = 'ArrearsAmount'
        DataSource = dtmLS.dtsArrearsAgeing
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object edtEnt: TDBEdit
        Left = 956
        Top = 169
        Width = 85
        Height = 21
        DataField = 'EntityID'
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Visible = False
        OnChange = edtEntChange
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 33
        Width = 1126
        Height = 24
        AutoSize = True
        ButtonWidth = 130
        Caption = 'ToolBar1'
        Flat = True
        Images = dtmMain.imglstMain
        List = True
        ShowCaptions = True
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 22
          BevelOuter = bvNone
          TabOrder = 0
          object Label8: TLabel
            Left = 8
            Top = 3
            Width = 47
            Height = 14
            Caption = 'Loan Ref.'
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
            Left = 198
            Top = 3
            Width = 108
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Status'
            Color = 8454143
            ParentColor = False
            Transparent = False
            Layout = tlCenter
          end
          object cbxLoans: TComboBox
            Left = 60
            Top = 0
            Width = 128
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 0
            OnChange = cbxLoansChange
          end
          object chkHideClose: TCheckBox
            Left = 316
            Top = 2
            Width = 116
            Height = 17
            Caption = 'Hide Inactive Loans'
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            OnClick = chkHideCloseClick
          end
        end
        object ToolButton3: TToolButton
          Left = 441
          Top = 0
          Width = 48
          Caption = 'ToolButton3'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object btnStatement: TToolButton
          Left = 489
          Top = 0
          AutoSize = True
          Caption = 'Statement'
          ImageIndex = 0
          OnClick = btnStatementClick
        end
        object ToolButton1: TToolButton
          Left = 570
          Top = 0
          Width = 8
          Caption = 'ToolButton1'
          ImageIndex = 39
          Style = tbsSeparator
        end
        object btnSettlementCalculator: TToolButton
          Left = 578
          Top = 0
          AutoSize = True
          Caption = 'Settlement Calculator'
          ImageIndex = 38
          OnClick = btnSettlementCalculatorClick
        end
        object btnArrearsSettlementCalculator: TToolButton
          Left = 712
          Top = 0
          AutoSize = True
          Caption = 'Arrears Calculator'
          ImageIndex = 38
          OnClick = btnArrearsSettlementCalculatorClick
        end
      end
    end
  end
  object pcLoan: TPageControl
    Left = 0
    Top = 220
    Width = 1126
    Height = 352
    ActivePage = tsLoanAccount
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object tsLoanAccount: TTabSheet
      Caption = 'tsLoanAccount'
      object grdLoanAccount: TDBStyleGrid
        Left = 0
        Top = 23
        Width = 1118
        Height = 282
        Align = alClient
        DataSource = dtmLS.dtsStatement
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdLoanAccountDrawColumnCell
        AllowSort = False
        ColumnsResize = False
        ColumnsMove = False
        Columns = <
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
            Title.Caption = 'Value Date'
            Width = 80
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
            FieldName = 'Transaction'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Ref. No 1'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo2'
            Title.Caption = 'Ref. No 2'
            Width = 80
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
            FieldName = 'Balance'
            Title.Alignment = taRightJustify
            Width = 81
            Visible = True
          end>
      end
      object pnlLoanAccountTotals: TPanel
        Left = 0
        Top = 305
        Width = 1118
        Height = 19
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          1118
          19)
        object lblTotals: TLabel
          Left = 8
          Top = 2
          Width = 28
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
          Left = 420
          Top = 3
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft]
          Caption = '0.00'
          Transparent = True
        end
        object lblCR: TLabel
          Left = 501
          Top = 3
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft]
          Caption = '0.00'
          Transparent = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        TabOrder = 2
        DesignSize = (
          1118
          23)
        object Label39: TLabel
          Left = 882
          Top = 5
          Width = 90
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = 'View Statement By'
        end
        object cmbView: TComboBox
          Left = 978
          Top = 1
          Width = 145
          Height = 21
          Style = csDropDownList
          Anchors = [akRight, akBottom]
          Enabled = False
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Effective Date'
          OnChange = cmbViewChange
          Items.Strings = (
            'Effective Date'
            'Value Date')
        end
      end
    end
    object tsLoanContract: TTabSheet
      Caption = 'tsLoanContract'
      ImageIndex = 1
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1118
        Height = 324
        ActivePage = tsNewMethodContract
        Align = alClient
        TabOrder = 0
        object tsOldMethodContract: TTabSheet
          Caption = 'Old Method'
          TabVisible = False
          object grdContract: TDBStyleGrid
            Left = 0
            Top = 0
            Width = 1110
            Height = 296
            Align = alClient
            DataSource = dtmLCD.dtsContract
            Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdContractDrawColumnCell
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
        object tsNewMethodContract: TTabSheet
          Caption = 'New Method'
          ImageIndex = 1
          OnResize = tsNewMethodContractResize
          object TabControl1: TTabControl
            Left = 0
            Top = 81
            Width = 1110
            Height = 215
            Align = alClient
            TabOrder = 1
            OnChange = TabControl1Change
            object grdLoanContract: TDBGrid
              Left = 4
              Top = 6
              Width = 1102
              Height = 205
              Align = alClient
              DataSource = dtmLCD.dtsLoanContract
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = ppmLoanContract
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = grdLoanContractDrawColumnCell
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'TransactionDate'
                  Title.Alignment = taCenter
                  Title.Caption = 'Date'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TransactionType'
                  Title.Caption = 'Transaction Type'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Description'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Debit'
                  Title.Alignment = taRightJustify
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Credit'
                  Title.Alignment = taRightJustify
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Balance'
                  Title.Alignment = taRightJustify
                  Width = 120
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Rate'
                  Title.Alignment = taCenter
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Interest'
                  Title.Alignment = taRightJustify
                  Width = 80
                  Visible = True
                end>
            end
          end
          object grdContractRevisions: TDBGrid
            Left = 0
            Top = 0
            Width = 1110
            Height = 81
            Align = alTop
            DataSource = dtmLCD.dtsContractRevisions
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'RevisionNo'
                Title.Alignment = taCenter
                Title.Caption = 'Revision No'
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'EffectiveDate'
                Title.Alignment = taCenter
                Title.Caption = 'Effective Date'
                Width = 120
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CreateDate'
                Title.Alignment = taCenter
                Title.Caption = 'Date Created'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateUser'
                Title.Caption = 'Created By'
                Width = 120
                Visible = True
              end>
          end
          object Button1: TButton
            Left = 720
            Top = 43
            Width = 113
            Height = 25
            Caption = 'Convert Contract'
            TabOrder = 2
            Visible = False
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 720
            Top = 16
            Width = 113
            Height = 25
            Caption = 'New Contract'
            TabOrder = 3
            Visible = False
            OnClick = Button2Click
          end
        end
      end
    end
    object tsSettlements: TTabSheet
      Caption = 'tsSettlements'
      ImageIndex = 2
      object CoolBar1: TCoolBar
        Left = 0
        Top = 0
        Width = 1118
        Height = 26
        AutoSize = True
        Bands = <
          item
            Control = tlbSettlements
            ImageIndex = -1
            MinHeight = 22
            Width = 1114
          end>
        object tlbSettlements: TToolBar
          Left = 9
          Top = 0
          Width = 1101
          Height = 22
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = True
          ButtonWidth = 119
          Caption = 'tlbSettlements'
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
          object btnSendSettlement: TToolButton
            Left = 156
            Top = 0
            AutoSize = True
            Caption = 'Send'
            ImageIndex = 12
            Visible = False
            OnClick = btnSendSettlementClick
          end
          object ToolButton2: TToolButton
            Left = 211
            Top = 0
            Width = 13
            Caption = 'ToolButton2'
            ImageIndex = 13
            Style = tbsSeparator
          end
          object btnProcessSettlement: TToolButton
            Left = 224
            Top = 0
            AutoSize = True
            Caption = 'Process Settlement'
            ImageIndex = 23
            OnClick = btnProcessSettlementClick
          end
        end
      end
      object grdSettlements: TDBStyleGrid
        Left = 0
        Top = 26
        Width = 1118
        Height = 298
        Align = alClient
        DataSource = dtmSettlementQuotes.dtsSettlements
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
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
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LoanID'
            Title.Caption = 'Loan Ref.'
            Visible = False
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
            FieldName = 'SentMethod'
            Title.Caption = 'Send Method'
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
    end
    object tsArrearsAgeing: TTabSheet
      Caption = 'tsArrearsAgeing'
      ImageIndex = 3
      object pcArrearsAge: TPageControl
        Left = 0
        Top = 0
        Width = 1118
        Height = 324
        ActivePage = tsRealTime
        Align = alClient
        TabOrder = 0
        object tsMonthEnd: TTabSheet
          Caption = 'Month-End'
          object grdArrearsMonthEnd: TDBStyleGrid
            Left = 0
            Top = 0
            Width = 1118
            Height = 300
            Align = alClient
            DataSource = dtmLS.dtsAgeMonthEnd
            Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdArrearsMonthEndDrawColumnCell
            AllowSort = False
            ColumnsResize = False
            ColumnsMove = False
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CycleKey'
                Title.Alignment = taCenter
                Title.Caption = 'Cycle'
                Width = 40
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CyclePeriod'
                Title.Alignment = taCenter
                Title.Caption = 'Cycle Period'
                Width = 140
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'MonthEnd'
                Title.Alignment = taCenter
                Title.Caption = 'Month'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Delinquency'
                Title.Alignment = taCenter
                Title.Caption = 'CD'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle12'
                Title.Alignment = taRightJustify
                Title.Caption = '360+ Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle11'
                Title.Alignment = taRightJustify
                Title.Caption = '330 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle10'
                Title.Alignment = taRightJustify
                Title.Caption = '300 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle9'
                Title.Alignment = taRightJustify
                Title.Caption = '270 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle8'
                Title.Alignment = taRightJustify
                Title.Caption = '240 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle7'
                Title.Alignment = taRightJustify
                Title.Caption = '210 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle6'
                Title.Alignment = taRightJustify
                Title.Caption = '180 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle5'
                Title.Alignment = taRightJustify
                Title.Caption = '150 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle4'
                Title.Alignment = taRightJustify
                Title.Caption = '120 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle3'
                Title.Alignment = taRightJustify
                Title.Caption = '90 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle2'
                Title.Alignment = taRightJustify
                Title.Caption = '60 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle1'
                Title.Alignment = taRightJustify
                Title.Caption = '30 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle0'
                Title.Alignment = taRightJustify
                Title.Caption = 'Current'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Arrears'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total Arrears'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MonthDue'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total Due'
                Width = 80
                Visible = True
              end>
          end
        end
        object tsCycleEnd: TTabSheet
          Caption = 'Cycle-End'
          ImageIndex = 1
          object grdArrearsCycleEnd: TDBStyleGrid
            Left = 0
            Top = 0
            Width = 984
            Height = 300
            Align = alClient
            DataSource = dtmLS.dtsAgeMonthEnd
            Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdArrearsMonthEndDrawColumnCell
            AllowSort = False
            ColumnsResize = False
            ColumnsMove = False
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CycleKey'
                Title.Alignment = taCenter
                Title.Caption = 'Cycle'
                Width = 40
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CyclePeriod'
                Title.Alignment = taCenter
                Title.Caption = 'Cycle Period'
                Width = 140
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'EffectiveDate'
                Title.Alignment = taCenter
                Title.Caption = 'Date'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Delinquency'
                Title.Alignment = taCenter
                Title.Caption = 'CD'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle12'
                Title.Alignment = taRightJustify
                Title.Caption = '360+ Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle11'
                Title.Alignment = taRightJustify
                Title.Caption = '330 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle10'
                Title.Alignment = taRightJustify
                Title.Caption = '300 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle9'
                Title.Alignment = taRightJustify
                Title.Caption = '270 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle8'
                Title.Alignment = taRightJustify
                Title.Caption = '240 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle7'
                Title.Alignment = taRightJustify
                Title.Caption = '210 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle6'
                Title.Alignment = taRightJustify
                Title.Caption = '180 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle5'
                Title.Alignment = taRightJustify
                Title.Caption = '150 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle4'
                Title.Alignment = taRightJustify
                Title.Caption = '120 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle3'
                Title.Alignment = taRightJustify
                Title.Caption = '90 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle2'
                Title.Alignment = taRightJustify
                Title.Caption = '60 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle1'
                Title.Alignment = taRightJustify
                Title.Caption = '30 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cycle0'
                Title.Alignment = taRightJustify
                Title.Caption = 'Current'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InstalmentDue'
                Title.Alignment = taRightJustify
                Title.Caption = 'Instalment Due'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AdditionalFees'
                Title.Alignment = taRightJustify
                Title.Caption = 'Additional Fees'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsFees'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arrears Fees'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsInterest'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arrears Interest'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AmountPaid'
                Title.Alignment = taRightJustify
                Title.Caption = 'Amount Paid'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalDue'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total Due'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsFeesActual'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arr Fees Actual'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FeeBucket'
                Title.Alignment = taRightJustify
                Title.Caption = 'Fee Bucket'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsInterestActual'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arr Int Actual'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InterestBucket'
                Title.Alignment = taRightJustify
                Title.Caption = 'Interest Bucket'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PayBucket'
                Title.Alignment = taRightJustify
                Title.Caption = 'Pay Bucket'
                Width = 80
                Visible = True
              end>
          end
        end
        object tsRealTime: TTabSheet
          Caption = 'Real-Time'
          ImageIndex = 2
          object pnlArrearsAgeingTop: TPanel
            Left = 0
            Top = 0
            Width = 1110
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label38: TLabel
              Left = 14
              Top = 7
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
            object dtpArrears: TDateTimePicker
              Left = 92
              Top = 4
              Width = 141
              Height = 19
              Date = 39332.000000000000000000
              Time = 39332.000000000000000000
              TabOrder = 0
              OnChange = dtpArrearsChange
            end
            object btnMinusDay: TButton
              Left = 240
              Top = 4
              Width = 25
              Height = 18
              Caption = '3'
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Marlett'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnMinusDayClick
            end
            object btnAddDay: TButton
              Left = 265
              Top = 4
              Width = 25
              Height = 18
              Caption = '4'
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Marlett'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = btnAddDayClick
            end
          end
          object grdArrearsAge: TDBStyleGrid
            Left = 0
            Top = 29
            Width = 1110
            Height = 267
            Align = alClient
            DataSource = dtmLS.dtsAgeRealTime
            Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdArrearsAgeDrawColumnCell
            AllowSort = False
            ColumnsResize = False
            ColumnsMove = False
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'YMKey'
                Title.Alignment = taCenter
                Title.Caption = 'Cycle'
                Width = 40
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CyclePeriod'
                Title.Alignment = taCenter
                Title.Caption = 'Cycle Period'
                Width = 140
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CD'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days12'
                Title.Caption = '360+ Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days11'
                Title.Caption = '330 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days10'
                Title.Caption = '300 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days9'
                Title.Caption = '270 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days8'
                Title.Caption = '240 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days7'
                Title.Caption = '210 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days6'
                Title.Alignment = taRightJustify
                Title.Caption = '180 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days5'
                Title.Alignment = taRightJustify
                Title.Caption = '150 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days4'
                Title.Alignment = taRightJustify
                Title.Caption = '120 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days3'
                Title.Alignment = taRightJustify
                Title.Caption = '90 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days2'
                Title.Alignment = taRightJustify
                Title.Caption = '60 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days1'
                Title.Alignment = taRightJustify
                Title.Caption = '30 Days'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Days0'
                Title.Alignment = taRightJustify
                Title.Caption = 'Current'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InstalmentDue'
                Title.Alignment = taRightJustify
                Title.Caption = 'Instalment Due'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AdditionalFees'
                Title.Alignment = taRightJustify
                Title.Caption = 'Additional Fees'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsFees'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arrears Fees'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsInterest'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arrears Interest'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AmountPaid'
                Title.Alignment = taRightJustify
                Title.Caption = 'Amount Paid'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalDue'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total Due'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsFeesActual'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arr Fees Actual'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FeeBucket'
                Title.Alignment = taRightJustify
                Title.Caption = 'Fee Bucket'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ArrearsInterestActual'
                Title.Alignment = taRightJustify
                Title.Caption = 'Arr Int Actual'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InterestBucket'
                Title.Alignment = taRightJustify
                Title.Caption = 'Interest Bucket'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PayBucket'
                Title.Alignment = taRightJustify
                Title.Caption = 'Pay Bucket'
                Width = 80
                Visible = True
              end>
          end
        end
      end
    end
  end
  object imlTools: TImageList
    Left = 600
    Top = 72
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
      0000000000000000000000000000000000000000000000000000C6C6C6009C9C
      9C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C009C9C9C00CECECE0000000000000000000000000000000000ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00A5A5A500000000000000000000000000008CBD00008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD00008CBD00008CBD00008CBD00008C
      BD00008CBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600BDBD
      BD00B5B5B500B5B5B500B5B5B5008C8C8C00B5B5B500ADADAD00ADADAD00ADAD
      AD00D6D6D600A5ADAD0000000000000000000000000000000000CECECE00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00949494000000000000000000008CBD0021A5D60073C6EF0084D6
      FF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0039ADDE00189CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDC600D6D6
      D600C6C6CE00D6D6D6007B7B84000000080084848400D6D6DE00CECECE00C6C6
      C600D6D6D600A5ADAD0000000000000000000000000000000000CECECE00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00949494000000000000000000008CBD004ABDE70039ADD600A5E7
      FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6
      FF0039B5DE00CEF7F700008CBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600EFEF
      EF00E7E7E700E7E7E700C6BDBD008C8C8C00CECECE00E7E7EF00EFEFF700E7E7
      EF00DEDEDE00A5ADAD0000000000000000000000000000000000CECECE00EFEF
      EF00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00EFEFEF00949494000000000000000000008CBD0073D6FF00008CBD00ADEF
      FF007BDEFF007BDEFF007BDEFF007BDEFF007BDEFF007BDEFF007BDEFF007BDE
      FF0042B5DE00CEF7F700008CBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600EF8C
      2100FFAD3900F7A52100FFA51800FFB52100FFB52900FFBD3900FFC64A00FFBD
      5200E7E7E700A5A5AD0000000000000000000000000000000000CECECE00EFEF
      EF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFF700949494000000000000000000008CBD007BDEFF00189CC6009CDE
      F70094E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7
      FF004ABDDE00CEF7F7001094C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E794
      2900F7840000F7A50000FFBD0000FFCE0000FFDE0000FFEF0000FFFF0000FFFF
      0800E7E7EF00A5A5AD0000000000000000000000000000000000CECECE00EFEF
      EF00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00EFEFEF009C9C9C000000000000000000008CBD0084E7FF0042B5DE0063C6
      E700ADF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF008CEF
      FF004ABDDE00CEF7F700CEF7F700008CBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E794
      2900EF730000F7940000FFB50000FFC60000FFCE0000FFDE0000FFDE0000FFE7
      0800E7E7EF00A5A5AD0000000000000000000000000000000000CED6D600F7F7
      F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFF7009C9C9C000000000000000000008CBD008CEFFF0073DEF700219C
      C600FFFFFF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7
      FF009CD6E700EFFFFF00D6F7FF00008CBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E79C
      3900EF730000EF840000F7AD0000FFBD0000FFBD0000FFC60000FFC60000FFC6
      1800CECED600A5A5AD0000000000000000000000000000000000D6D6D600F7F7
      F700ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00EFEFF7009C9C9C000000000000000000008CBD0094F7FF0094F7FF001094
      C600008CBD00008CBD00008CBD00008CBD00008CBD00008CBD00008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E79C
      4A00EF840800E7630000F79C0000FFB51800FFB50800FFB50000FFAD0000EF9C
      2900CECECE00A5A5A50000000000000000000000000000000000D6D6D600F7F7
      F700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700F7F7
      F700F7F7F7009C9C9C000000000000000000008CBD009CF7FF009CF7FF009CF7
      FF009CF7FF009CF7FF009CF7FF009CF7FF009CF7FF009CF7FF009CF7FF009CF7
      FF00088CBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E79C
      5200F7A55A00E7630000EF730000FFAD4200F7A52900F7A51800F79C0800E78C
      3100B5B5B500A5A5A50000000000000000000000000000000000D6D6D600FFFF
      FF00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00FFFFFF009C9C9C000000000000000000008CBD00FFFFFF00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00088CBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E79C
      5200FFBD8C00F79C5200DE4A0000F7A54A00F7AD5200F79C4200FF9C3100DE84
      3900BDBDC600A5A5A50000000000000000000000000000000000D6D6D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009C9C9C00000000000000000000000000008CBD00FFFFFF00A5FF
      FF00A5FFFF00A5FFFF00008CBD00008CBD00008CBD00008CBD00008CBD00008C
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00C6C6C600E7A5
      5A00FFC6A500FFCEAD00E76B2900DE4A0000FFB57B00F7A56300F79C5200E794
      4200DEDEDE00ADADAD0000000000000000000000000000000000D6D6D600FFFF
      FF00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00FFFFFF009C9C9C0000000000000000000000000000000000008CBD00008C
      BD00008CBD00008CBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E7A5
      6300FFDECE00FFDEC600FFD6BD00E76B3100E7632900FFB59400FFA57B00F7A5
      6B00F7F7F700ADADAD0000000000000000000000000000000000D6D6D600FFFF
      FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600E7AD
      6300F7E7D600F7E7D600FFE7D600FFE7CE00E7946300E78C5200F7BDA500EFB5
      9C00EFEFEF00ADADAD0000000000000000000000000000000000D6CECE00FFFF
      FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600DEDE
      DE00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500E7E7E700BDC6C60000000000000000000000000000000000BD633900BD5A
      2900CE7B4A00D68C4A00DE9C5200D69C5200CE8C4A00BD633100B5A59C00ADAD
      AD00A5A5A500BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000C68C7300C673
      5200D6946B00D6946B00DE9C7300DE9C7300D69C7300CE948400CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B500949494007B7B7B007B7B7B007B7B7B008C8C8C00BDBD
      BD0000000000000000000000000000000000000000009C6329009C6331009C63
      31009C6331009C6331009C6331009C6331009C6331009C6331009C6331009C63
      31009C6331000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00737373007B7B7B0094949400BDBDBD00DEDEDE00D6D6D600A5A5A5007B7B
      7B00BDB5B500000000000000000000000000000000009C632900CE8C5200CE8C
      5200CE8C5200CE8C5200CE8C5200CE8C5200CE8C5200CE8C5200CE8C5200CE8C
      52008C5A29000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000737373007B7B
      7B00A5A5A50000000000000000000000000000000000F7F7F70000000000D6D6
      D60084848400CECECE00000000000000000000000000A56B3100DEA56B00DEAD
      6B00DEAD6B00DEAD6B00DEAD6B00DEAD6B00DEAD6B00DEAD6B00DEAD6B00DEA5
      6B008C6331000000000000000000000000000000000000000000000000000000
      000000000000DEE7DE0084A584005A8C5A005A8C5A000000000000000000ADC6
      AD00184A100000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE63000000000000737373007B7B7B000000
      000000000000000000007B7B7B004A3939004A3131005A4239005A4A42005A52
      5200525252007B737B00F7F7F7000000000000000000A5733900E7B58400E7BD
      84008C7352008C735200BDB59C00DEBD8C00E7BD8400E7BD8400E7BD8400E7BD
      8400946B39000000000000000000000000000000000000000000F7F7F7006B8C
      6B001852180000390000004200000042000010521000427B4200104A08000039
      000008420800BDD6BD00000000000000000000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFF700FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFD6AD00CE6300008C8C8C007B7B7B00000000000000
      00000000000052424200631810008C2921009C423900A5524A00CE636B00B563
      6B0063524A005A6B6300B5B5B5000000000000000000AD7B4200EFCE9C00EFCE
      9C005A3921000808000039BDDE005AE7DE0084C6C600EFCE9C00EFCE9C00EFCE
      9C00946B390000000000000000000000000000000000D6E7D600104210000039
      000000420000004A0000004A000000520000004A000000420000084200000842
      0000004200000052000052945200FFFFFF0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300007373730063636300000000000000
      00009C847B0084181000A51818009418180094181800941818004A3910002152
      100052944200ADADA500BDB5BD000000000000000000AD845200FFDEB500FFE7
      BD008C8484004294A50000F7FF0008FFFF0000D6FF007B6B5A00FFE7BD00FFE7
      BD0094734200000000000000000000000000000000002152210000390000004A
      000021732100319C42004AC65A006BDE7B004A944A00185A18003994390052BD
      5A0039AD420000630000005A00005A9C5A0000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFFF00FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFD6AD00CE630000D6D6D6007B7B7B005A6363006B6B
      6B008C101000AD1818005A421000395A1000524A10005A42100008730000004A
      000010420800A5AD9400846B63000000000000000000B58C5A00FFEFCE00FFEF
      CE00CEDED60021FFFF0063FFFF0063FFFF0018EFFF000000000084524200FFEF
      CE0094734200000000000000000000000000638C6300003900002173210039AD
      420039B5420039B54A0042C6520094E7A500CEF7D6005ADE73005AE76B005AEF
      730063F77B0052CE6300107310003184310000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000CECECE008C4A
      42009C211000395A1000088408005A6B21006B6321007B52210031841000006B
      0000215A210073B573005A421800F7E7E70000000000B5946300FFF7D600FFF7
      DE00FFF7DE0039F7FF0084FFFF008CFFFF004AFFFF0000ADC600000000008C63
      520094734A00000000000000000000000000215221002184290029A53100299C
      310029A53100299431006BAD7300F7FFF700000000007BCE84004ACE5A004ADE
      630052E763005AEF73006BEF7B004A9C4A0000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFFF00FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFD6AD00CE630000000000000000000000000000C639
      39006B4A1800008C00000863000029731000946B2100DE948400C6B5BD00314A
      2900637B630073BD6B0052311000C69C9C0000000000B5946300FFF7DE00FFF7
      DE00FFF7DE009CE7EF0021849400319CA500BDFFFF005AFFFF0000C6DE000000
      000063312100000000000000000000000000318C390039B54A0029A53100299C
      3100319C390008420000185A1800000000002952290010630800187B100039B5
      4A0042CE52004AD65A005ADE6B0084DE8C0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFD6A500FFDEB500CE6300000000000000000000FFF7F700B531
      29004A5A1800088C10001884180018941800BDA52100E7D6BD00737B84009C8C
      9C009494A5008C6B630084181000BD84840000000000B5946300FFF7DE00FFFF
      E700FFFFE700FFFFE700B57B6B0000000000427B8400C6FFFF0063FFFF0000CE
      E700000000008C848400000000000000000084DE940042C6520039B5420031AD
      390042AD4A0021732100004A00004A734A0000210000106B00001884100039B5
      420039B5420042C64A0052CE6300CEF7D60000000000CE630000FFFFFF00FFC6
      8400FFC68400FFFFFF00FFC68400FFC68400FFC68400FFC68400FFC68400FFC6
      8400FFC68400FFC68400FFE7C600CE6300000000000000000000FFFFFF00B573
      5A004AB54A0029B531005AC65A0042CE4A00A5CE4A00E7D6D60073738400525A
      5A00636B7300B55252008C100800CEA59C0000000000AD8C6300FFF7E700FFFF
      EF00FFFFEF00FFFFEF00FFFFEF00C6BDB50000000000296B6B00C6FFFF006BFF
      FF0000DEEF00000000009494940000000000000000008CE794004ACE5A0042C6
      4A0039BD4A0042BD4A002984310000290000104A10003194310031A5390029A5
      310031AD39004ABD5A00C6EFCE000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE630000000000000000000000000000DEC6
      B50094E7940094D684009CD673007BEF7B00B5D69C00CEC6A500C6BDA500A59C
      9C00D6C6CE00B58473007B100000F7EFEF0000000000AD8C6300FFEFDE00FFFF
      EF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00DED6C6000000000018525200B5FF
      FF007BFFFF0000A5B50000000000ADADDE0000000000FFFFFF0094E7A5004AD6
      63004ACE5A004ACE5A005AC66B00084A080039AD4A0031AD420031A5390039AD
      4A0084CE8C00EFFFEF00000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE630000000000000000000000000000FFFF
      FF00C6A57B00DECEA500C6F7BD00DEFFBD00FFFFD600FFEF7300FFBD2900F78C
      4200398C310000630000BD8C7B0000000000000000009C7342009C7342009C73
      42009C734200FFFFF700FFFFF700FFFFF700FFFFF700EFE7DE00181818000042
      4200DEEFF700CECEAD00313139003929E70000000000FFFFFF00A5EFB500B5EF
      BD00CEF7D600F7FFF700000000005AAD63006BD67B007BD68C00BDEFC600FFFF
      FF000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000F7F7EF00CEBD8C00EFF7CE00EFF7CE00FFF7AD00FFEF9C00EFCE6B005AB5
      290000CE000042BD4200FFFFFF00000000000000000000000000B58C6B00FFFF
      F7009C734200FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700F7F7EF00AD9C
      9C0094847300DED6D600BDA5FF007352DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      000000000000F7F7F700D6D6AD00BDDE9400ADD68C007BC6730073B5630031D6
      390084EF8400FFFFFF000000000000000000000000000000000000000000AD8C
      63009C734200FFEFDE00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00634A6B005221A5007B52BD00EFE7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF7EF00CEEFD600BDE7C600DEE7D600F7F7
      EF00000000000000000000000000000000000000000000000000000000000000
      00009C7342009C7342009C7342009C7B4A009C7B4A009C7342009C7342009C73
      4200947342000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010214A0010214A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008CBD00008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD00008CBD00008CBD00008CBD00008C
      BD00008CBD00008CBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010214A002963BD0010397B0010214A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CBD0063CEFF00008CBD00A5E7
      FF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0039ADDE00ADE7F700008CBD0000000000000000000000000010841000189C
      180031A5310039AD390039AD3900107B100031942900217318005A524200736B
      5A00000000000000000000000000000000000000000000000000000000000000
      000010214A003973D6002963BD001852AD0010397B0010214A00000000000000
      00000000000000000000000000000000000000000000CE520000CE520000CE52
      0000CE520000CE520000CE520000CE520000CE520000CE520000CE520000CE52
      0000CE520000CE520000CE52000000000000008CBD006BD6FF00008CBD00ADE7
      FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6
      FF0039B5DE00B5EFF700008CBD0000000000000000000000000021A5210031AD
      31004ABD4A0052C65200399C39008CBD7B0052BD520042BD4200217318004A42
      2900000000000000000000000000000000000000000000000000000000001021
      4A003973D6002963BD002963BD001852AD001852AD0010397B0010214A000000
      000000000000000000000000000000000000E7AD1800F7BD9C00F7BD9C00F7BD
      9C00F7BD9C00F7BD9C00F7BD9C00F7BD9C00F7BD9C00F7BD9C00F7BD9C00F7BD
      9C00F7BD9C00F7BD9C00F7BD9C00CE520000008CBD0073D6FF00008CBD00ADEF
      FF007BDEFF007BDEFF007BDEFF007BDEFF007BDEFF007BDEFF007BDEFF007BDE
      FF0042B5DE00B5EFF700008CBD00000000000000000000000000299C29004ABD
      4A006BCE6B006BC66B00F7FFEF00F7FFEF0063C6630063CE630031A531004A6B
      390000000000000000000000000000000000000000000000000010214A002963
      BD001852AD004284EF00427BE700427BE7001852AD001852AD0010397B001021
      4A0000000000000000000000000000000000E7AD1800FFDEC600F7BD9C00F7BD
      9C00FFD6B500F7BD9C00F7BD9C00FFCEA500F7BD9C00F7BD9C00FFD6B500F7BD
      9C00F7BD9C00FFCEA500F7BD9C00CE520000008CBD007BDEFF00008CBD00B5EF
      FF0084E7FF0042B5840008841000088C100042B584007BDEEF0084E7FF0084E7
      FF004ABDDE00BDF7F700008CBD00000000000000000000000000000000004ABD
      4A0073CE730052A54A00FFFFFF00FFFFFF006BC66B0073CE7300319C31000000
      0000000000000000000000000000000000000000000010214A0010397B002963
      BD001852AD00427BE700427BE700427BE700427BE7001852AD001852AD001039
      7B0010214A00000000000000000000000000E7AD1800FFEFDE00CE5A2900BD4A
      0000FFD6B500CE520000BD4A0000FFCEA500CE520000BD4A0000FFCEA500CE52
      0000BD4A0000FFCEA500F7BD9C00CE520000008CBD0084E7FF00008CBD00BDF7
      FF008CEFFF008CEFFF0052BD940008941800089C1800219442008CEFFF008CEF
      FF004ABDDE00BDF7F700008CBD00000000000000000000000000000000000000
      000018734A003984AD00217BBD00428CAD0063BD6300399C3900000000000000
      00000000000000000000000000000000000010214A001852AD005A8CEF004284
      EF00427BE7001852AD003973D600427BE700427BE700427BE7001852AD001852
      AD0010397B0010214A000000000000000000E7AD1800FFEFDE00F7BD9C00F7BD
      9C00FFDEC600F7BD9C00F7BD9C00FFD6B500F7BD9C00F7BD9C00FFCEA500F7BD
      9C00F7BD9C00FFCEA500F7BD9C00CE520000008CBD008CEFFF00008CBD00FFFF
      FF00CEF7FF00CEF7FF00CEF7FF0073C69400089C180008941000319C4200CEF7
      FF009CD6E700DEFFFF00008CBD00000000000000000000000000000000000000
      0000187BC600218CE700298CE700218CE700296B520000000000000000000000
      000000000000000000000000000000000000000000006B94EF00427BE700427B
      E700427BE700427BE7001852AD003973D600427BE700427BE700427BE7001852
      AD001852AD0010397B0010214A0000000000E7AD1800FFEFDE00CE5A2900BD4A
      0000FFEFDE00CE520000BD4A0000FFD6B500CE520000BD4A0000FFCEA500CE52
      0000BD4A0000FFCEA500F7BD9C00CE520000008CBD0094F7FF00008CBD00008C
      BD00008CBD00008CBD00008CBD0000848C00089C180008A5180008842100008C
      AD00008CBD00008CBD00008CBD0000000000000000000000000000000000297B
      AD00399CFF00399CFF00399CFF00399CFF00298CE70039525200000000000000
      00000000000000000000000000000000000000000000000000006B94EF00427B
      E700427BE700427BE700427BE7001852AD005294CE003973D600427BE700427B
      E7001852AD001852AD0010397B0010214A00E7AD1800FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFEFDE00FFDEC600FFD6B500FFD6B500FFD6B500FFD6B500FFCE
      A500FFCEA500FFCEA500F7BD9C00CE520000008CBD009CF7FF009CF7FF009CF7
      FF009CF7FF009CF7FF009CF7FF0073D6C600109C210010AD21000894180063C6
      A500088CBD000000000000000000000000000000000000000000000000002184
      C60042A5FF0042A5FF0042A5FF0042A5FF00399CF700315A6B00000000000000
      00000000000000000000000000000000000000000000000000001852AD006B94
      EF00427BE700427BE700427BE7002963BD00ADEFFF005294CE003973D600427B
      E700427BE7001852AD001852AD0010397B00E7AD1800FFEFDE00CE8C6B00CE8C
      6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00FFD6
      B500FFCEA500FFCEA500F7BD9C00CE520000008CBD00FFFFFF00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF0084E7D600189C310021BD390010A5210042AD
      6B00088CBD0000000000000000000000000000000000000000006BA5C60042A5
      F7004AB5FF0052B5FF0052BDFF0052B5FF004AADFF0039739400000000000000
      00000000000000000000000000000000000000000000000000001852AD001021
      4A006B94EF00427BE700427BE700427BE7002963BD001852AD003973D600427B
      E700427BE700427BE7001852AD0010397B00E7AD1800FFEFDE00A5636B00FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00CE8C6B00FFD6
      B500FFD6B500FFCEA500F7BD9C00CE52000000000000008CBD00FFFFFF00A5FF
      FF000884180008841800088418000884180021AD420031C6520021B539000884
      18000884180008841800088418000000000000000000000000005294BD0042A5
      EF005ABDFF005ABDFF0052B5F7004AB5EF0052B5F70039738C00000000000000
      00000000000000000000000000000000000000000000000000001852AD001039
      7B00000000006B94EF00427BE700427BE700427BE700427BE7001852AD003973
      D600427BE7004284EF006B94EF0010397B00E7AD1800FFEFDE00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00FFDE
      C600FFD6B500FFD6B500F7BD9C00CE5200000000000000000000008CBD00008C
      BD00008CAD00088418002194310052DE7B004AD6730039CE630031C6520021BD
      3900109C2100088418000000000000000000000000000000000063849C002173
      A5004A94C6006BADD60063ADF7004A9CE700216BA50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001852
      AD0010397B0010214A006B94EF00427BE700427BE700427BE700427BE7001852
      AD003973D600215ABD000000000000000000E7AD1800FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFDEC600F7BD9C00CE5200000000000000000000000000000000
      000000000000000000000884180031AD4A005AE78C004ADE7B0042D66B0029BD
      4A00088418000000000000000000000000000000000000000000000000002173
      A5006BADD6008CBDE70073BDE7005AADDE00316B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001852AD001852AD001852AD006B94EF00427BE7004284EF006B94EF00215A
      BD000000000000000000000000000000000000000000EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100D6841800000000000000000000000000000000000000
      00000000000000000000000000000884180039BD630063EF94004AD673000884
      1800000000000000000000000000000000000000000000000000000000000000
      00006BA5BD004A94B5004A8CAD0063849C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B94EF00215ABD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000884180042CE6B00088418000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008841800000000000000
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
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000000084848400000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000000084848400848484000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000840000008400000000008484840084848400000000000000FF000000
      840000008400000000008484840000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000FF0000000000000000000000000000008400000084
      000000FF00000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000840000000000848484000000FF00000084000000
      84000000840000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF00000000000000000000008400000084000000FF
      000000FF000000FF000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000840000008400000084000000FF0000008400000084000000
      84000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF000000000000000000000084000000FF000000FF
      00000000000000FF000000FF0000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000008400000084000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000FF000000FF00000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000084000000840000008400000000008484
      84008484840000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000084000000840000008400000084000000
      00008484840000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000000000008400000084000000
      00008484840084848400000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000840000000000000000000000FF00000084000000
      84000000000084848400848484000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000008400000084000000000000000000000000000000000000000000000000
      00000000FF0000008400000000000000000000000000000000000000FF000000
      84000000840000000000848484008484840000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF00000084000000840000000000000000000000000000000000000000
      00000000FF000000840000000000000000000000000000000000000000000000
      FF000000840000008400000000008484840000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000840000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      00000000FF0000008400000000000000000000000000FFFFFF0000000000FFFF
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
      9400EFCE9400F7D69C00B58484000000000000000000000000007B2929007B29
      2900A5848400A5848400A5848400A5848400A5848400A5848400A58484007B18
      18007B292900000000000000000000000000000000000000000000000000B552
      1000CE630000C65A0000B55A3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600EFCE9C00B584840000000000000000007B292900CE4A4A00B542
      4200DED6D6007B1010007B101000DEE7E700D6DEDE00CED6D600BDBDBD007310
      08009C2929007B29290000000000000000000000000000000000B55A2100CE63
      0000C6630000B55A310000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000C6ADA500FFEF
      E700292929005A524A00D6C6BD00F7DEBD00EFD6AD00EFCE9C00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B584840000000000000000007B292900C64A4A00B542
      4200E7DEDE007B1010007B101000DEDEDE00DEDEE700D6DEDE00C6BDC6007310
      10009C2929007B292900000000000000000000000000C6846300C6630000CE63
      0000B55A21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6ADA500FFF7
      E7005A524A004242420052636300D6C6BD00F7DEB500EFD6AD00EFCE9C00EFCE
      9C00EFCE9C00EFCE9400B584840000000000000000007B292900C64A4A00B542
      4200E7DEDE007B1010007B101000D6D6D600DEDEE700D6DEE700C6C6C6007308
      0800942929007B292900000000000000000000000000B54A0000CE630000AD4A
      00000000000000000000C6846300BD5A0000BD5A0000BD5A0000BD5A0000BD5A
      0000BD5A0000BD5A0000AD4A000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000CEB5AD00FFFF
      F700C6C6C60052737B00427BAD0018526B008C5A5200C6B5B500C6C6C600C6C6
      C600C6C6C600EFCE9C00B584840000000000000000007B292900C64A4A00B542
      4200EFDEDE00E7DEDE00DED6D600D6D6D600D6D6DE00D6DEDE00CEC6C6007B10
      10009C3131007B2929000000000000000000C6846300C6630000C66300000000
      00000000000000000000BD6B4200C6630000CE630000CE630000CE630000CE63
      0000CE6B0000D6730000B55200000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF0052737B0042739400947B7300C67331008C5A5200D6C6BD00EFD6
      AD00EFD6AD00EFD6AD00B584840000000000000000007B292900BD424A00BD42
      4200BD4A4A00BD525200BD525200B54A4A00B54A4A00BD525200BD4A4A00B542
      4200BD4A4A007B2929000000000000000000B5521000CE630000AD4A00000000
      0000000000000000000000000000CE9C8400CE9C8400CE9C8400A5421000CE63
      0000D6730000DE7B0000BD5A0000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF007B737B00F7BD8400F7AD5A00C67339008C5A5200D6C6
      BD00EFD6AD00EFD6AD00B584840000000000000000007B292900A5393900B563
      5A00C6848400CE948C00CE949400CE948C00CE8C8C00CE8C8C00CE949400CE94
      9400BD4A4A007B2929000000000000000000B54A0000CE630000C67342000000
      00000000000000000000000000000000000000000000C6846300CE630000DE73
      0000CE630000E7840000C6630000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000D6BDB500FFFF
      FF00C6C6C600C6C6C600AD7B7300FFD6AD00FFC68C00EFA55A00C67339008C5A
      5200C6B5B500D6C6BD00BD94940000000000000000007B292900BD4A4A00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4A4A007B2929000000000000000000B54A0000CE630000C67342000000
      000000000000000000000000000000000000BD7B5200CE6B0000DE7B0000B552
      0000B5521000F7940000CE630000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700AD7B7300FFD6AD00FFC68C00F7AD5A00C673
      31008C5A5200D6C6BD00C6ADAD0000000000000000007B292900BD4A4A00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4A4A007B2929000000000000000000B5521000CE630000B54A00000000
      0000000000000000000000000000BD633100CE6B0000E7840000B55200000000
      0000CE844200FF9C0800CE6B0800000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700AD7B7300FFD6AD00FFC68C00EFA5
      5A00B56B39008C5A5200C6B5B50000000000000000007B292900BD4A4A00F7F7
      F700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00F7F7
      F700BD4A4A007B2929000000000000000000C6846300C6630000C6630000B552
      1000C68C7300C67B5200BD520000E77B0000E7840000C6631000000000000000
      0000CE844A00FFAD3100CE732100000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600AD7B7300FFD6AD009C94
      A50031ADF7000010AD0000009C0000000000000000007B292900BD4A4A00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4A4A007B292900000000000000000000000000AD4A1000C6630000CE6B
      0000D6730000DE7B0000E7840000E77B0000B55A210000000000000000000000
      0000C67B5200FFBD6300CE7B3900000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700AD7B73004A9C
      EF001029D6001029D6000010AD0000009C00000000007B292900BD4A4A00F7F7
      F700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00F7F7
      F700BD4A4A007B29290000000000000000000000000000000000BD6B4200BD5A
      0000CE6B0000CE6B0000C6631000CE9C84000000000000000000000000000000
      000000000000C6845A00CE947B000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE000018
      C6006B8CFF00106BFF001029D60000000000000000007B292900BD4A4A00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BD4A4A007B29290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B000018C6000018C600000000000000000000000000000000007B292900F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F7007B2929000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      00006B6B6B006B6B6B0000000000000000006B6B6B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B000000000000000000000000004A526300FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B00000000000000000000000000000000006B6B
      6B00ADA5A500A59C9C006B6B6B006B6B6B006B6B6B00E7E7E7006B6B6B006B6B
      6B006B6B6B0000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000B5948400FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B0000000000000000004284B500186BC600636B
      8400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B000000000000000000000000006B6B6B00DEDE
      DE00A59C9C00A59C9C00A59C9C0031313100313131006B6B6B00BDBDBD00E7E7
      E700B5B5B5006B6B6B006B6B6B006B6B6B0000000000CE630000FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000B5948400FFEF
      CE00F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B0000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B0000000000000000006B6B6B00D6D6D600CECE
      CE008C8C8C008C8C8C008C8C8C00393939000808080000000000080808000000
      00007B7B7B00BDBDBD006B6B6B000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000B5948C00FFEF
      DE00F7E7C600F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B00000000000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000006B6B6B00CECECE00CECECE008C8C
      8C00D6D6D600CECECE00BDBDBD00B5ADAD00A5A5A5008C8484005A5A5A000000
      000008080800080808006B6B6B007373730000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000BD948C00FFF7
      E700F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000000000000000000000A5736B00FFFF
      F70031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B00000000006B6B6B00CECECE008C8C8C00EFEF
      EF00FFFFFF00FFFFFF00E7E7E700DEDEDE00DEDEDE00CECECE00BDBDBD00ADAD
      AD008C8C8C005A5252007B7B7B007373730000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDE
      B500FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000C69C9400FFFF
      F700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFC6
      9400EFC68C00EFC68400A5636B00000000000000000000000000A5736B00FFFF
      FF00FFF7E700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400F7CE8C00A5636B00000000006B6B6B008C8C8C00FFFFFF00FFFF
      FF00FFFFFF00D6D6D6009C949400A59C9C00B5ADAD00C6C6C600D6D6D600DEDE
      DE00C6C6C600B5B5B500948C8C006B6B6B0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000C6A59C00FFFF
      FF00FFF7E700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE
      9C00EFC69400F7CE8C00A5636B00000000000000000000000000BD846B00FFFF
      FF00FFF7F700AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00F7CE9400A5636B0000000000000000006B6B6B006B6B6B00EFEF
      EF00B5A5A5007B6B73008C848C0094949400949494009C949C009C9494009C9C
      9C00BDBDBD00D6D6D600C6C6C6006B6B6B0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEF
      D600FFE7C600FFDEB500FFD6AD00CE6300000000000000000000CEAD9C00FFFF
      FF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6
      A500EFCE9C00F7CE9400A5636B00000000000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFE700F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00F7D6A500F7D6A500A5636B00000000000000000000000000000000006B6B
      6B00BD8C7B00A5846B008C6B63007B6363006B6363007B737B008C8C8C00ADA5
      A500CECECE00C6C6C6006B6B6B000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE6300000000000000000000CEAD9C00FFFF
      FF00FFFFFF00FFF7F700FFEFE700F7EFDE00F7E7CE00F7E7C600F7DEBD00F7D6
      B500F7D6A500F7D6A500A5636B00000000000000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DECEC600FFEFE700FFEFDE00FFFFD600DEBDA500AD7B
      7300F7DEB500EFCEA500A5636B00000000000000000000000000000000000000
      0000BD848400FFE7B500FFD69C00EFB58400CE9C7300BD946B00BD848400847B
      7B006B6B6B006B6B6B00000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000000000000D6B5A500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7DEC600F7DE
      BD00F7DEB500EFCEA500A5636B00000000000000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DECEC600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B00000000000000000000000000000000000000
      0000BD848400FFE7BD00FFD6A500FFD69C00FFCE9400FFC68C00BD8484000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029E7000021
      A500FFFFF700FFF7E7000029E7000021A5000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFE7D600FFEF
      CE00DECEB500B5AD9400A5636B00000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B0000000000000000000000000000000000C684
      8400FFE7CE00FFE7C600FFDEB500FFD6A500FFD69C00BD848400000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      E7000021A5000029E7000021A500CE6300000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7E700EFDECE00B58C
      7B00A57B6B009C736300A5636B00000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00A56B
      5A00E79C5200E78C3100B56B4A0000000000000000000000000000000000BD84
      8400FFEFDE00FFE7CE00FFDEBD00FFDEB500FFD6A500BD848400000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      00000029E7000021A500CE630000CE6300000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00AD73
      5A00E79C5200E78C3100B56B4A00000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000BD848400FFFF
      F700FFFFF700FFEFDE00FFE7CE00FFE7BD00F7C6A500BD848400000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE6300000029
      E7000021A5000029E7000021A500000000000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600BD84
      6300FFB55A00BD7B5A0000000000000000000000000000000000E7AD7B00FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600A56B
      5A00C6846B000000000000000000000000000000000000000000BD848400BD84
      8400BD848400FFEFE700FFE7CE00FFDEC600BD84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000029E7000021
      A50000000000000000000029E7000021A5000000000000000000E7BDA500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600B57B
      6300C6846B000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000BD848400BD848400BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFC6AD00EFCE
      B500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500E7C6B500A56B
      5A0000000000000000000000000000000000424D3E000000000000003E000000
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
  object expContract: TDBGridExporter
    DBGrid = grdLoanContract
    Left = 656
    Top = 396
  end
  object ppmLoanContract: TPopupMenu
    Left = 520
    Top = 421
    object Export1: TMenuItem
      Caption = 'Export'
      OnClick = Export1Click
    end
  end
  object ppmStatement: TPopupMenu
    Left = 576
    Top = 208
    object Preview1: TMenuItem
      Caption = 'Preview'
      OnClick = Preview1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
  end
  object dlgSaveStatement: TSaveDialog
    DefaultExt = '.pdf'
    Filter = 'PDF (*.pdf)|*.pdf'
    Left = 560
    Top = 288
  end
end
