object frmLoanDet: TfrmLoanDet
  Tag = 1027
  Left = 609
  Top = 160
  Width = 1083
  Height = 625
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Loan Details'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcLoan: TPageControl
    Left = 0
    Top = 75
    Width = 1067
    Height = 473
    ActivePage = tsFraud
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object tsLoan: TTabSheet
      Caption = 'Loan'
      OnMouseMove = tsLoanMouseMove
      DesignSize = (
        1059
        445)
      object Label41: TLabel
        Left = 12
        Top = 31
        Width = 58
        Height = 14
        Caption = 'Loan Usage'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 12
        Top = 10
        Width = 50
        Height = 14
        Caption = 'Loan Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 266
        Top = 264
        Width = 57
        Height = 14
        Caption = 'Loan Period'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblLnPrdInd: TLabel
        Left = 447
        Top = 264
        Width = 35
        Height = 14
        Caption = 'months'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblLnAmt: TLabel
        Left = 16
        Top = 264
        Width = 84
        Height = 14
        Caption = 'Capital Borrowed'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblFee1: TLabel
        Left = 16
        Top = 332
        Width = 24
        Height = 14
        Caption = 'Fee1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 16
        Top = 240
        Width = 48
        Height = 14
        Caption = 'Start Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblFee2: TLabel
        Left = 290
        Top = 332
        Width = 24
        Height = 14
        Caption = 'Fee2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label86: TLabel
        Left = 12
        Top = 53
        Width = 68
        Height = 14
        Caption = 'Loan Indicator'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtLnType: TDBText
        Left = 130
        Top = 11
        Width = 51
        Height = 13
        AutoSize = True
        DataField = 'LoanType'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object Label3: TLabel
        Left = 266
        Top = 240
        Width = 93
        Height = 14
        Caption = '1st Installment Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtStartDate: TDBText
        Left = 137
        Top = 241
        Width = 63
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'StartDate'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblLoanUse: TLabel
        Left = 130
        Top = 32
        Width = 51
        Height = 13
        Caption = 'lblLoanUse'
      end
      object lblLoanInd: TLabel
        Left = 469
        Top = 79
        Width = 49
        Height = 13
        Caption = 'lblLoanInd'
      end
      object dbtFInsDate: TDBText
        Left = 371
        Top = 241
        Width = 60
        Height = 13
        AutoSize = True
        DataField = 'FirstInsDate'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object dbtLPeriod: TDBText
        Left = 371
        Top = 265
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'LoanPeriod'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object dbtCapital: TDBText
        Left = 151
        Top = 265
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'LoanCapital'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object dbtFee1: TDBText
        Left = 160
        Top = 333
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Fee1'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object dbtFee2: TDBText
        Left = 473
        Top = 333
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Fee2'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblFee3: TLabel
        Left = 16
        Top = 350
        Width = 24
        Height = 14
        Caption = 'Fee3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtFee3: TDBText
        Left = 160
        Top = 351
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Fee3'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblFee4: TLabel
        Left = 290
        Top = 350
        Width = 24
        Height = 14
        Caption = 'Fee4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtFee4: TDBText
        Left = 473
        Top = 351
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Fee4'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblFee5: TLabel
        Left = 16
        Top = 368
        Width = 24
        Height = 14
        Caption = 'Fee5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtFee5: TDBText
        Left = 160
        Top = 369
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Fee7'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblFee6: TLabel
        Left = 290
        Top = 368
        Width = 24
        Height = 14
        Caption = 'Fee6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtFee6: TDBText
        Left = 473
        Top = 369
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'Fee6'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblAddTo1: TLabel
        Left = 208
        Top = 332
        Width = 12
        Height = 14
        Caption = '(r)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblAddTo2: TLabel
        Left = 520
        Top = 332
        Width = 12
        Height = 14
        Caption = '(r)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblAddTo3: TLabel
        Left = 208
        Top = 350
        Width = 12
        Height = 14
        Caption = '(r)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblAddTo5: TLabel
        Left = 208
        Top = 368
        Width = 12
        Height = 14
        Caption = '(r)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblAddTo4: TLabel
        Left = 520
        Top = 350
        Width = 12
        Height = 14
        Caption = '(r)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblAddTo6: TLabel
        Left = 520
        Top = 368
        Width = 12
        Height = 14
        Caption = '(r)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 13
        Top = 391
        Width = 382
        Height = 14
        Caption = 
          'Additional cost will be ... F=financed, M=add to monthly instalm' +
          'ent, R=reference'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 346
        Top = 31
        Width = 47
        Height = 14
        Caption = 'Loan Ref.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 16
        Top = 288
        Width = 71
        Height = 14
        Caption = 'Residual Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 266
        Top = 288
        Width = 43
        Height = 14
        Caption = 'End Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edtEnd: TDBText
        Left = 371
        Top = 289
        Width = 34
        Height = 13
        AutoSize = True
        DataField = 'ActualEndDate'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object Label24: TLabel
        Left = 346
        Top = 10
        Width = 67
        Height = 14
        Caption = 'Account Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtResVal: TDBText
        Left = 152
        Top = 289
        Width = 48
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'ResidualAmt'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object dbtRefNo: TDBText
        Left = 469
        Top = 36
        Width = 46
        Height = 13
        AutoSize = True
        DataField = 'RefNo'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblLTaccT: TLabel
        Left = 469
        Top = 11
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object lblLoanInd2: TLabel
        Left = 346
        Top = 75
        Width = 96
        Height = 14
        Caption = 'Sub-action Indicator'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblActInd: TLabel
        Left = 346
        Top = 53
        Width = 75
        Height = 14
        Caption = 'Action Indicator'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblInd1: TLabel
        Left = 469
        Top = 57
        Width = 32
        Height = 13
        Caption = 'lblInd1'
      end
      object lblInd2: TLabel
        Left = 130
        Top = 54
        Width = 32
        Height = 13
        Caption = 'lblInd2'
      end
      object lblAmountApp: TLabel
        Left = 12
        Top = 98
        Width = 75
        Height = 14
        Caption = 'Amount Applied'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dblblAmtApplied: TDBText
        Left = 130
        Top = 97
        Width = 65
        Height = 17
        DataField = 'AppAmt'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object Label37: TLabel
        Left = 346
        Top = 122
        Width = 74
        Height = 14
        Caption = 'Industry Sector'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblRegion: TLabel
        Left = 469
        Top = 101
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label39: TLabel
        Left = 346
        Top = 98
        Width = 33
        Height = 14
        Caption = 'Region'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblIndustry: TLabel
        Left = 469
        Top = 117
        Width = 51
        Height = 13
        Caption = 'lblIndustry'
      end
      object Image1: TImage
        Left = 200
        Top = 9
        Width = 16
        Height = 16
        Cursor = crHandPoint
        AutoSize = True
        ParentShowHint = False
        Picture.Data = {
          07544269746D617036050000424D360500000000000036040000280000001000
          000010000000010008000000000000010000C30E0000C30E0000000100000001
          0000BD310000BD420800BD4A0800B54A1000BD4A1000C64A1000D6521000C652
          1800CE521800BD522100C6522100C65A2100CE5A2100C65A2900CE5A2900CE63
          2900E7632900C6633100CE633100CE6B3100D66B3100DE6B3100E7733100BD63
          3900CE6B3900D66B3900E7733900D67342004A4A4A00FF8C4A0052525200C67B
          5200D67B52005A5A5A00C67B5A00DE845A0063636300DE8C63006B6B6B007B73
          6B00C6846B00CE8C6B00DE8C6B00F79C6B0073737300DE947300E79C7300FFB5
          73008C847B00D69C7B00E79C7B00F7A57B00CE9C8400EFAD8400A59C9400C6A5
          9400D6AD9400DEAD9400EFAD9400FFCE94009C9C9C00A59C9C00D6AD9C00DEAD
          9C00FFCE9C00CEB5A500E7BDA500ADADAD00B5ADAD00CEB5AD00FFD6AD00FFDE
          AD00CEBDB500CEC6BD00DEC6BD00E7CEBD00CECEC600DECEC600E7CEC600E7D6
          C600FFF7C600CECECE00E7D6CE00F7DECE00FFDECE00FFEFCE00EFDED600F7DE
          D600F7E7D600DEDEDE00EFE7DE00F7E7DE00FFEFDE00E7E7E700F7E7E700F7EF
          E700FFEFE700F7EFEF00FFEFEF00F7F7EF00FFF7EF00EFF7F700F7F7F700FFF7
          F700FF00FF00EFFFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00686868683C261E1C1C1C1E3C68686868686868434E565858565648212C3C
          686868684958665D41384A65615630263C6868525B6A3403173E0B093E6A5727
          2C6868566A220407376B2D0403346A56213C5E663804120F182A0F120D034A5F
          36245F66110D130C295B180B12071F6A4D1E5F560B12120C286B3A05120F0D61
          561E5F530C12120F0A416B32070F0D61561E5F5F15140F0B07044D6B1B0C1867
          56265E6B2B10295A2000316B25082E6B4A435F615C1D23696B426A691A1A625B
          366868566B552F355A655A331D546B564C686861566B6B50473B3B46676B564C
          6868686861565E6B6B6B6B6B5A56596868686868685F636161616161615F6868
          6868}
        ShowHint = True
        Stretch = True
        Transparent = True
        Visible = False
        OnClick = Image1Click
      end
      object Label20: TLabel
        Left = 660
        Top = 11
        Width = 60
        Height = 14
        Caption = 'Date Applied'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object txtAppDate: TDBText
        Left = 658
        Top = 28
        Width = 56
        Height = 13
        AutoSize = True
        DataField = 'AppDate'
        DataSource = dtmLoanC.dtsLoanDet
        Visible = False
      end
      object Label1: TLabel
        Left = 12
        Top = 122
        Width = 68
        Height = 14
        Caption = 'Period Applied'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 239
        Top = 122
        Width = 43
        Height = 14
        Caption = '(Months)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 12
        Top = 75
        Width = 44
        Height = 14
        Caption = 'Category'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblCategory: TDBText
        Left = 130
        Top = 74
        Width = 65
        Height = 17
        DataField = 'Category'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object edtLoanPeriod: TDBEdit
        Left = 371
        Top = 261
        Width = 70
        Height = 21
        Color = clBtnFace
        DataField = 'LoanPeriod'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = True
        TabOrder = 13
        OnChange = edtStartdateChange
      end
      object edtCapBor: TDBEdit
        Left = 111
        Top = 261
        Width = 114
        Height = 21
        Color = clBtnFace
        DataField = 'LoanCapital'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = True
        TabOrder = 12
        OnEnter = edtCapBorEnter
        OnExit = edtCapBorExit
      end
      object edtStartdate: TDBEdit
        Left = 111
        Top = 237
        Width = 114
        Height = 21
        Color = clBtnFace
        DataField = 'StartDate'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = True
        TabOrder = 10
        OnChange = edtStartdateChange
      end
      object lcbLoanInd: TDBLookupComboBox
        Left = 469
        Top = 72
        Width = 150
        Height = 21
        Hint = 'Sub action indicator'
        DataField = 'LoanTypeInd'
        DataSource = dtmLoanC.dtsLoanDet
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmLoanCLU.dtsLoanInd
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object lcbLoanUse: TDBLookupComboBox
        Left = 130
        Top = 28
        Width = 150
        Height = 21
        DataField = 'LoanUse'
        DataSource = dtmLoanC.dtsLoanDet
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmLoanCLU.dtsLoanUse
        TabOrder = 0
      end
      object edtFirstDate: TDBEdit
        Left = 371
        Top = 237
        Width = 114
        Height = 21
        Color = clBtnFace
        DataField = 'FirstInsDate'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = True
        TabOrder = 11
        OnChange = edtStartdateChange
      end
      object pnlLDS: TPanel
        Left = 8
        Top = 213
        Width = 849
        Height = 17
        BevelOuter = bvNone
        Caption = 'Loan Details'
        Color = 15132390
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        object Bevel6: TBevel
          Left = 0
          Top = 0
          Width = 849
          Height = 2
          Align = alTop
        end
      end
      object pnlAddFee: TPanel
        Left = 8
        Top = 313
        Width = 1051
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Caption = 'Fees'
        Color = 15132390
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        object Bevel3: TBevel
          Left = 0
          Top = 0
          Width = 1051
          Height = 2
          Align = alTop
        end
      end
      object pnlLoanDet: TPanel
        Left = 8
        Top = 149
        Width = 1051
        Height = 62
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvLowered
        Color = clInfoBk
        TabOrder = 17
        object lblTotLine: TLabel
          Left = 128
          Top = 26
          Width = 80
          Height = 13
          AutoSize = False
          Caption = '________________'
          Transparent = True
        end
        object Label12: TLabel
          Left = 5
          Top = 3
          Width = 111
          Height = 14
          Caption = 'Total amount to finance'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbtTotAmtFin: TDBText
          Left = 143
          Top = 4
          Width = 65
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'AmtToFin'
          DataSource = dtmLoanC.dtsLoanDet
        end
        object Label47: TLabel
          Left = 5
          Top = 22
          Width = 102
          Height = 14
          Caption = 'Total interest payable'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 222
          Top = 22
          Width = 9
          Height = 14
          Caption = 'at'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbtTotInt: TDBText
          Left = 162
          Top = 23
          Width = 46
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'TotInterest'
          DataSource = dtmLoanC.dtsLoanDet
        end
        object Label4: TLabel
          Left = 5
          Top = 42
          Width = 45
          Height = 14
          Caption = 'Total loan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblTotLoan: TLabel
          Left = 159
          Top = 43
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'lblTotLoan'
        end
        object Label43: TLabel
          Left = 325
          Top = 3
          Width = 90
          Height = 14
          Caption = 'Monthly installment'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbtMthIns: TDBText
          Left = 454
          Top = 4
          Width = 49
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'MthIns'
          DataSource = dtmLoanC.dtsLoanDet
        end
        object Label10: TLabel
          Left = 325
          Top = 22
          Width = 91
          Height = 14
          Caption = 'Payable installment'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbtIntsPay: TDBText
          Left = 450
          Top = 23
          Width = 53
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'PayIns'
          DataSource = dtmLoanC.dtsLoanDet
        end
        object Label8: TLabel
          Left = 216
          Top = 3
          Width = 6
          Height = 14
          Caption = 'F'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 512
          Top = 22
          Width = 8
          Height = 14
          Caption = 'M'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblRate: TLabel
          Left = 235
          Top = 23
          Width = 33
          Height = 13
          Caption = 'lblRate'
        end
        object Label33: TLabel
          Left = 325
          Top = 42
          Width = 81
          Height = 14
          Caption = 'Loan type % limit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblAClmt2: TLabel
          Left = 460
          Top = 43
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'lblACLlmt'
        end
      end
      object edtRefNo: TDBEdit
        Left = 469
        Top = 28
        Width = 150
        Height = 21
        Hint = 'Reference number'
        Color = clBtnFace
        DataField = 'RefNo'
        DataSource = dtmLoanC.dtsLoanDet
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 5
        OnExit = edtRefNoExit
      end
      object edtResVal: TDBEdit
        Left = 111
        Top = 285
        Width = 114
        Height = 21
        Color = clBtnFace
        DataField = 'ResidualAmt'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = True
        TabOrder = 14
        OnEnter = edtCapBorEnter
      end
      object cmbLoanInd: TDBLookupComboBox
        Left = 130
        Top = 50
        Width = 150
        Height = 21
        DataField = 'LoanInd'
        DataSource = dtmLoanC.dtsLoanDet
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmLoanCLU.dtsLoanInd2
        TabOrder = 1
      end
      object cmbActInd: TDBLookupComboBox
        Left = 469
        Top = 50
        Width = 150
        Height = 21
        DataField = 'ActionInd'
        DataSource = dtmLoanC.dtsLoanDet
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmLoanCLU.dtsLUActInd
        TabOrder = 6
      end
      object dbAmtApp: TDBEdit
        Left = 130
        Top = 95
        Width = 150
        Height = 21
        Hint = 'Amount applied for'
        DataField = 'AppAmt'
        DataSource = dtmLoanC.dtsLoanDet
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 469
        Top = 95
        Width = 150
        Height = 21
        DataField = 'Link4'
        DataSource = dtmLoanC.dtsLoanDet
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmLoanCLU.dtsLUIndustry
        TabOrder = 8
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 469
        Top = 119
        Width = 150
        Height = 21
        DataField = 'Link5'
        DataSource = dtmLoanC.dtsLoanDet
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmLoanCLU.dtsLURegion
        TabOrder = 9
      end
      object edtActionC: TDBEdit
        Left = 917
        Top = 11
        Width = 17
        Height = 21
        DataField = 'ActionInd'
        DataSource = dtmLoanC.dtsLoanDet
        TabOrder = 18
        Visible = False
        OnChange = edtActionCChange
      end
      object DBEdit4: TDBEdit
        Left = 130
        Top = 119
        Width = 103
        Height = 21
        Hint = 'Amount applied for'
        DataField = 'AppPeriod'
        DataSource = dtmLoanC.dtsLoanDet
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object dtpAppDate: TDBDateTimePicker
        Left = 658
        Top = 24
        Width = 150
        Height = 21
        Date = 38329.000000000000000000
        Time = 38329.000000000000000000
        TabOrder = 2
        Visible = False
        DataField = 'AppDate'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = False
      end
      object edtStats: TDBEdit
        Left = 776
        Top = 252
        Width = 25
        Height = 21
        DataField = 'Status'
        DataSource = dtmLoanC.dtsLoanDet
        TabOrder = 19
        Visible = False
        OnChange = edtStatsChange
      end
      object grdLoanFees: TDBGrid
        Left = 8
        Top = 333
        Width = 1052
        Height = 107
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtmLoanC.dtsLoanFeeDetail
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 20
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FeeName'
            Title.Caption = 'Fee'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FeeType'
            Title.Caption = 'Type'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 150
            Visible = True
          end>
      end
      object edtCategory: TDBEdit
        Left = 130
        Top = 72
        Width = 150
        Height = 21
        Color = clBtnFace
        DataField = 'Category'
        DataSource = dtmLoanC.dtsLoanDet
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 21
      end
    end
    object tsSec: TTabSheet
      Caption = 'Details'
      ImageIndex = 3
      object Label14: TLabel
        Left = 5
        Top = 187
        Width = 93
        Height = 14
        Caption = 'Total security value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtTotSec: TDBText
        Left = 111
        Top = 188
        Width = 49
        Height = 13
        AutoSize = True
        DataField = 'TotSecAmt'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object Label6: TLabel
        Left = 77
        Top = 261
        Width = 29
        Height = 14
        Caption = 'Agent'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnViewLO: TSpeedButton
        Left = 47
        Top = 260
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF004A63
          7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
          E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
          FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
          FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
          9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
          D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
          D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
          DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
          D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
          C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
          9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
          9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
          C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
          9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnViewLOClick
      end
      object btnViewFunder: TSpeedButton
        Left = 47
        Top = 307
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF004A63
          7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
          E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
          FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
          FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
          9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
          D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
          D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
          DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
          D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
          C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
          9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
          9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
          C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
          9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnViewFunderClick
      end
      object Label9: TLabel
        Left = 77
        Top = 308
        Width = 34
        Height = 14
        Caption = 'Funder'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 77
        Top = 332
        Width = 32
        Height = 14
        Caption = 'Tracer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 77
        Top = 379
        Width = 42
        Height = 14
        Caption = 'Attorney'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 77
        Top = 402
        Width = 80
        Height = 14
        Caption = 'Payroll Company'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnViewCollect: TSpeedButton
        Left = 47
        Top = 331
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF004A63
          7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
          E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
          FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
          FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
          9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
          D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
          D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
          DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
          D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
          C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
          9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
          9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
          C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
          9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnViewCollectClick
      end
      object btnViewAttorney: TSpeedButton
        Left = 47
        Top = 378
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF004A63
          7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
          E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
          FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
          FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
          9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
          D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
          D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
          DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
          D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
          C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
          9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
          9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
          C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
          9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnViewAttorneyClick
      end
      object btnViewStaff: TSpeedButton
        Left = 47
        Top = 401
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF004A63
          7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
          E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
          FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
          FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
          9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
          D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
          D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
          DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
          D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
          C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
          9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
          9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
          C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
          9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnViewStaffClick
      end
      object lblLloid: TLabel
        Left = 176
        Top = 261
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object lblLfund: TLabel
        Left = 176
        Top = 308
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object lblLdc: TLabel
        Left = 176
        Top = 332
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object lblLatt: TLabel
        Left = 176
        Top = 379
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object lblLsm: TLabel
        Left = 176
        Top = 402
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object lblDebtDate: TLabel
        Left = 77
        Top = 356
        Width = 86
        Height = 14
        Caption = 'Date handed over'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object txtDebtDate: TDBText
        Left = 176
        Top = 356
        Width = 60
        Height = 13
        AutoSize = True
        DataField = 'DebtDate'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object Label29: TLabel
        Left = 8
        Top = 115
        Width = 67
        Height = 14
        Caption = 'Total available'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 8
        Top = 135
        Width = 89
        Height = 14
        Caption = 'Total current loans'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 304
        Top = 115
        Width = 61
        Height = 14
        Caption = 'Net available'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 304
        Top = 135
        Width = 81
        Height = 14
        Caption = 'Loan type % limit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblACTAvl: TLabel
        Left = 113
        Top = 116
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'lblACTAvl'
      end
      object lblACCLns: TLabel
        Left = 111
        Top = 136
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'lblACCLns'
      end
      object lblACNAvl: TLabel
        Left = 408
        Top = 116
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'lblACNAvl'
      end
      object lblACLlmt: TLabel
        Left = 411
        Top = 136
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'lblACLlmt'
      end
      object lblLoanReg: TLabel
        Left = 8
        Top = 10
        Width = 118
        Height = 14
        Caption = 'NLR loan registration no.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtRegno: TDBText
        Left = 138
        Top = 11
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'RegNo'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object lblLoanQry: TLabel
        Left = 274
        Top = 10
        Width = 92
        Height = 14
        Caption = 'NLR loan query no.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 376
        Top = 11
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'QryNo'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object DBText2: TDBText
        Left = 421
        Top = 48
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'LimitInt'
        DataSource = dtmLoanC.dtsLoanDet
      end
      object Label35: TLabel
        Left = 352
        Top = 47
        Width = 60
        Height = 14
        Caption = 'Limit interest'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnDelLO: TSpeedButton
        Left = 5
        Top = 260
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnDelLOClick
      end
      object btnDelFunder: TSpeedButton
        Left = 5
        Top = 308
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnDelFunderClick
      end
      object btnDelCollect: TSpeedButton
        Left = 5
        Top = 332
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnDelCollectClick
      end
      object btnDelAttorney: TSpeedButton
        Left = 5
        Top = 378
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnDelAttorneyClick
      end
      object btnDelStaff: TSpeedButton
        Left = 5
        Top = 401
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnDelStaffClick
      end
      object Label40: TLabel
        Left = 77
        Top = 240
        Width = 35
        Height = 14
        Caption = 'Branch'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnViewBranch: TSpeedButton
        Left = 47
        Top = 237
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF004A63
          7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
          E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
          FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
          FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
          9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
          D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
          D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
          DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
          D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
          C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
          9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
          9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
          C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
          9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnViewBranchClick
      end
      object lblBranch: TLabel
        Left = 176
        Top = 241
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object btnDelBranch: TSpeedButton
        Left = 5
        Top = 237
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnDelBranchClick
      end
      object btnLinkLO: TSpeedButton
        Left = 26
        Top = 260
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B00000001000000010000000000002929
          3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
          0505050505050505050505050505050505050303030305030305050505050505
          0503010101010301040505050505050503010403010401040603050505050503
          0104060603000406010505050505030104060303000406010205050505030104
          0601050006060002010505050501040601050503040106030105050503040601
          0303050503010603020505050106030100000303010406020505050501060400
          0303000104060205050505050503000406000104060205050505050503010406
          0101040602050505050505050104060204060602050505050505050305060205
          0202020505050505050505050505050505050505050505050505}
        OnClick = btnLinkLOClick
      end
      object btnLinkFunder: TSpeedButton
        Left = 26
        Top = 307
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B00000001000000010000000000002929
          3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
          0505050505050505050505050505050505050303030305030305050505050505
          0503010101010301040505050505050503010403010401040603050505050503
          0104060603000406010505050505030104060303000406010205050505030104
          0601050006060002010505050501040601050503040106030105050503040601
          0303050503010603020505050106030100000303010406020505050501060400
          0303000104060205050505050503000406000104060205050505050503010406
          0101040602050505050505050104060204060602050505050505050305060205
          0202020505050505050505050505050505050505050505050505}
        OnClick = btnLinkFunderClick
      end
      object btnLinkCollect: TSpeedButton
        Left = 26
        Top = 331
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B00000001000000010000000000002929
          3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
          0505050505050505050505050505050505050303030305030305050505050505
          0503010101010301040505050505050503010403010401040603050505050503
          0104060603000406010505050505030104060303000406010205050505030104
          0601050006060002010505050501040601050503040106030105050503040601
          0303050503010603020505050106030100000303010406020505050501060400
          0303000104060205050505050503000406000104060205050505050503010406
          0101040602050505050505050104060204060602050505050505050305060205
          0202020505050505050505050505050505050505050505050505}
        OnClick = btnLinkCollectClick
      end
      object btnLinkAttorney: TSpeedButton
        Left = 26
        Top = 378
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B00000001000000010000000000002929
          3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
          0505050505050505050505050505050505050303030305030305050505050505
          0503010101010301040505050505050503010403010401040603050505050503
          0104060603000406010505050505030104060303000406010205050505030104
          0601050006060002010505050501040601050503040106030105050503040601
          0303050503010603020505050106030100000303010406020505050501060400
          0303000104060205050505050503000406000104060205050505050503010406
          0101040602050505050505050104060204060602050505050505050305060205
          0202020505050505050505050505050505050505050505050505}
        OnClick = btnLinkAttorneyClick
      end
      object btnLinkStaff: TSpeedButton
        Left = 26
        Top = 401
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B00000001000000010000000000002929
          3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
          0505050505050505050505050505050505050303030305030305050505050505
          0503010101010301040505050505050503010403010401040603050505050503
          0104060603000406010505050505030104060303000406010205050505030104
          0601050006060002010505050501040601050503040106030105050503040601
          0303050503010603020505050106030100000303010406020505050501060400
          0303000104060205050505050503000406000104060205050505050503010406
          0101040602050505050505050104060204060602050505050505050305060205
          0202020505050505050505050505050505050505050505050505}
        OnClick = btnLinkStaffClick
      end
      object btnLinkBranch: TSpeedButton
        Left = 26
        Top = 237
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B00000001000000010000000000002929
          3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
          0505050505050505050505050505050505050303030305030305050505050505
          0503010101010301040505050505050503010403010401040603050505050503
          0104060603000406010505050505030104060303000406010205050505030104
          0601050006060002010505050501040601050503040106030105050503040601
          0303050503010603020505050106030100000303010406020505050501060400
          0303000104060205050505050503000406000104060205050505050503010406
          0101040602050505050505050104060204060602050505050505050305060205
          0202020505050505050505050505050505050505050505050505}
        OnClick = btnLinkBranchClick
      end
      object Label38: TLabel
        Left = 77
        Top = 285
        Width = 59
        Height = 14
        Caption = 'Intermediary'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnViewIntermediary: TSpeedButton
        Left = 47
        Top = 284
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF004A63
          7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
          E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
          FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
          FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
          9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
          D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
          D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
          DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
          D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
          C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
          9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
          9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
          C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
          9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnViewIntermediaryClick
      end
      object lblIntermediary: TLabel
        Left = 176
        Top = 285
        Width = 24
        Height = 13
        Caption = 'none'
      end
      object btnDeleteIntermediary: TSpeedButton
        Left = 5
        Top = 284
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnDeleteIntermediaryClick
      end
      object btnLinkIntermediary: TSpeedButton
        Left = 26
        Top = 284
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B00000001000000010000000000002929
          3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
          0505050505050505050505050505050505050303030305030305050505050505
          0503010101010301040505050505050503010403010401040603050505050503
          0104060603000406010505050505030104060303000406010205050505030104
          0601050006060002010505050501040601050503040106030105050503040601
          0303050503010603020505050106030100000303010406020505050501060400
          0303000104060205050505050503000406000104060205050505050503010406
          0101040602050505050505050104060204060602050505050505050305060205
          0202020505050505050505050505050505050505050505050505}
        OnClick = btnLinkIntermediaryClick
      end
      object rgpInstPaid: TDBRadioGroup
        Left = 8
        Top = 36
        Width = 329
        Height = 48
        Caption = 'Instalments paid by : '
        Columns = 5
        DataField = 'InstPaid'
        DataSource = dtmLoanC.dtsLoanDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Salary'
          'Cash'
          'Bank'
          'Aplitec'
          'NuPay')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'S'
          'C'
          'B'
          'A'
          'N')
      end
      object edtQryNo: TDBEdit
        Left = 372
        Top = 7
        Width = 118
        Height = 21
        TabStop = False
        DataField = 'QryNo'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = True
        TabOrder = 1
      end
      object pnlDep: TPanel
        Left = 0
        Top = 166
        Width = 717
        Height = 17
        BevelOuter = bvNone
        Caption = 'Security summary'
        Color = 15132390
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 717
          Height = 2
          Align = alTop
        end
      end
      object pnlLink: TPanel
        Left = 0
        Top = 214
        Width = 717
        Height = 17
        BevelOuter = bvNone
        Caption = 'Links'
        Color = 15132390
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Bevel2: TBevel
          Left = 0
          Top = 0
          Width = 717
          Height = 2
          Align = alTop
        end
      end
      object pnlAffSum: TPanel
        Left = 4
        Top = 91
        Width = 717
        Height = 17
        BevelOuter = bvNone
        Caption = 'Affordability summary'
        Color = 15132390
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 717
          Height = 2
          Align = alTop
        end
      end
      object edtRegno: TDBEdit
        Left = 138
        Top = 7
        Width = 118
        Height = 21
        TabStop = False
        DataField = 'RegNo'
        DataSource = dtmLoanC.dtsLoanDet
        ReadOnly = True
        TabOrder = 0
        OnEnter = edtRegnoEnter
      end
      object DBEdit1: TDBEdit
        Left = 418
        Top = 44
        Width = 71
        Height = 21
        Color = clRed
        DataField = 'LimitInt'
        DataSource = dtmLoanC.dtsLoanDet
        TabOrder = 6
      end
    end
    object tsStatus: TTabSheet
      Caption = 'Verifications'
      ImageIndex = 5
      TabVisible = False
      object pnlStatus: TPanel
        Left = 0
        Top = 0
        Width = 1059
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 321
          Width = 1059
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object lblSNotes: TLabel
            Left = 0
            Top = 22
            Width = 1059
            Height = 13
            Align = alBottom
            Caption = '  Notes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Layout = tlBottom
          end
          object ComboBox1: TComboBox
            Left = 153
            Top = 7
            Width = 249
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = 'Employee refused to verify employment details'
            Items.Strings = (
              'Employee refused to verify employment details'
              'Employer works from home'
              'Not employed with company'
              'Employee dismissed'
              'Disciplinary hearing pending'
              'Employee suspended'
              'Employer declined'
              'Employee retrenched')
          end
          object btnInsertNote: TBitBtn
            Left = 405
            Top = 6
            Width = 61
            Height = 22
            Caption = 'Insert'
            TabOrder = 1
            OnClick = btnInsertNoteClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EDE513
              6220024F0DAACAB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF307A3E0D5C1A0451110D611FB9DAC4FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A8B570D5E1A0A
              57170E5F1E0F7028239047CAE7D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF6DA478004C090652110C5A1A126A271A823928A55959CB8BE0F2
              E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE7DF3B7246074311024D0E0B
              5F1C177B33289F51267F43236F3E6EA784FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFC6D9CA0757150D6A241C8A3F37B56A217232A2C1ABE5EE
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5EFE70E632113
              7B3022994C3EBC74398F50ECF3EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDEEBE2116E2A198B3E29A65945BE7B55A671F0F6F1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEDE3167E351F
              9A4B30AF644EC38472BF8FF4F9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE0EFE51E8D4325A65739B66F5BC68E8ED3ACF7FBF9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F0E6249A4F2E
              B16442BC7A66C89896D8B5F8FCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFC7E4D2219B4E2EB16442BC7A66C89891D8B2EAF6EFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF0E631B7674C
              D68B65DDA291F2C75EBA81E7F3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF468C611C623624693E286842337E4DF5F9F7FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object cmbStatusNotes: TDBLookupComboBox
            Left = 153
            Top = 7
            Width = 249
            Height = 21
            KeyField = 'TypeKey'
            ListField = 'Description'
            ListSource = dtmLoanC.dtsStatusNotes
            TabOrder = 2
            OnDropDown = cmbStatusNotesDropDown
          end
        end
        object grdStatus: TDBGrid
          Left = 0
          Top = 0
          Width = 1059
          Height = 128
          Align = alClient
          DataSource = dtmLoanC.dtsStatus
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = grdStatusCellClick
          OnDrawColumnCell = grdStatusDrawColumnCell
          OnMouseMove = grdStatusMouseMove
          Columns = <
            item
              Expanded = False
              FieldName = 'TLU'
              ReadOnly = True
              Title.Caption = 'Category'
              Width = 329
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Checked'
              Title.Alignment = taCenter
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CheckDate'
              Title.Caption = 'Date Checked'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserID'
              ReadOnly = True
              Width = 120
              Visible = True
            end>
        end
        object memSNotes: TDBMemo
          Left = 0
          Top = 356
          Width = 1059
          Height = 89
          Align = alBottom
          DataField = 'Notes'
          DataSource = dtmLoanC.dtsStatus
          TabOrder = 1
          Visible = False
        end
        object DBEdit3: TDBEdit
          Left = 472
          Top = 24
          Width = 81
          Height = 21
          DataField = 'CtlID'
          DataSource = dtmLoanC.dtsStatus
          TabOrder = 3
          Visible = False
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 128
          Width = 1059
          Height = 193
          ActivePage = tsVerificationNotes
          Align = alBottom
          TabOrder = 4
          object tsVerificationNotes: TTabSheet
            Caption = 'Notes'
            object CoolBar8: TCoolBar
              Left = 0
              Top = 0
              Width = 1051
              Height = 30
              BandBorderStyle = bsNone
              Bands = <
                item
                  Control = ToolBar8
                  ImageIndex = -1
                  MinHeight = 23
                  Width = 1043
                end>
              BorderWidth = 1
              object ToolBar8: TToolBar
                Left = 9
                Top = 0
                Width = 1030
                Height = 23
                ButtonWidth = 86
                Caption = 'ToolBar1'
                EdgeBorders = []
                Flat = True
                Images = dtmMain.imglstMain
                List = True
                ShowCaptions = True
                TabOrder = 0
                object btnNewVerificationsNotes: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = 'New Note'
                  ImageIndex = 3
                  OnClick = btnNewVerificationsNotesClick
                end
                object btnEditVerificationNotes: TToolButton
                  Left = 78
                  Top = 0
                  AutoSize = True
                  Caption = 'Amend Note'
                  ImageIndex = 4
                  OnClick = btnEditVerificationNotesClick
                end
              end
            end
            object rdtVerificationNotes: TRichEdit
              Left = 0
              Top = 30
              Width = 1051
              Height = 135
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 1
            end
          end
        end
      end
    end
    object tsAuthorisations: TTabSheet
      Caption = 'Credit Vetting'
      ImageIndex = 18
      OnShow = tsAuthorisationsShow
      object pnlAuthorisations: TPanel
        Left = 0
        Top = 0
        Width = 1059
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object grdVetting: TDBGrid
          Left = 0
          Top = 24
          Width = 1059
          Height = 421
          Align = alClient
          DataSource = dtmLoanC.dtsVetting
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = grdVettingCellClick
          OnDrawColumnCell = grdVettingDrawColumnCell
          OnKeyPress = grdVettingKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'Description'
              Width = 230
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaskResult'
              Title.Caption = 'Result'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaskResultDate'
              Title.Caption = 'Date'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaskUser'
              Title.Caption = 'User'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RiskResult'
              Title.Caption = 'Result'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RiskResultDate'
              Title.Caption = 'Date'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RiskUser'
              Title.Caption = 'User'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FraudResult'
              Title.Caption = 'Result'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FraudResultDate'
              Title.Caption = 'Date'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FraudUser'
              Title.Caption = 'User'
              Width = 80
              Visible = True
            end>
        end
        object edtTaskSuccessID: TDBEdit
          Left = 584
          Top = 104
          Width = 81
          Height = 21
          DataField = 'AccountID'
          DataSource = dtmLoanC.dtsVettingSummary
          TabOrder = 0
          Visible = False
          OnChange = edtTaskSuccessIDChange
        end
        object PageControl4: TPageControl
          Left = 712
          Top = 336
          Width = 265
          Height = 101
          ActivePage = tsAuthorisationNotes
          TabOrder = 1
          Visible = False
          object tsAuthorisationNotes: TTabSheet
            Caption = 'Notes'
            object CoolBar10: TCoolBar
              Left = 0
              Top = 0
              Width = 257
              Height = 30
              BandBorderStyle = bsNone
              Bands = <
                item
                  Control = ToolBar10
                  ImageIndex = -1
                  MinHeight = 23
                  Width = 249
                end>
              BorderWidth = 1
              object ToolBar10: TToolBar
                Left = 9
                Top = 0
                Width = 236
                Height = 23
                ButtonWidth = 86
                Caption = 'ToolBar1'
                EdgeBorders = []
                Flat = True
                Images = dtmMain.imglstMain
                List = True
                ShowCaptions = True
                TabOrder = 0
                object btnNewAuthorisationNote: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = 'New Note'
                  ImageIndex = 3
                  OnClick = btnNewAuthorisationNoteClick
                end
                object btnEditAuthorisationNote: TToolButton
                  Left = 78
                  Top = 0
                  Caption = 'Amend Note'
                  ImageIndex = 4
                  OnClick = btnEditAuthorisationNoteClick
                end
              end
            end
            object rdtAuthorisationsNotes: TRichEdit
              Left = 0
              Top = 30
              Width = 257
              Height = 43
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 1
            end
          end
        end
        object hdrVetting: THeaderControl
          Left = 0
          Top = 0
          Width = 1059
          Height = 24
          Sections = <
            item
              AllowClick = False
              ImageIndex = -1
              Width = 245
            end
            item
              Alignment = taCenter
              AllowClick = False
              ImageIndex = 5
              Text = 'Authorisations'
              Width = 265
            end
            item
              Alignment = taCenter
              AllowClick = False
              ImageIndex = 5
              Text = 'Risk'
              Width = 265
            end
            item
              Alignment = taCenter
              AllowClick = False
              ImageIndex = 5
              Text = 'Fraud'
              Width = 265
            end>
          Style = hsFlat
        end
        object cmbCreditVetting: TDBLookupComboBox
          Left = 832
          Top = 240
          Width = 113
          Height = 21
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          DataField = 'TaskResultID'
          DataSource = dtmLoanC.dtsVetting
          KeyField = 'VettingResultID'
          ListField = 'Description'
          ListSource = dtmLoanC.dtsVettingResult
          TabOrder = 4
          Visible = False
          OnEnter = cmbCreditVettingEnter
          OnKeyDown = cmbCreditVettingKeyDown
        end
      end
    end
    object tsTracking: TTabSheet
      Caption = 'Tracking'
      ImageIndex = 21
      OnShow = tsTrackingShow
      object grdTracking: TDBGrid
        Left = 0
        Top = 0
        Width = 1059
        Height = 445
        Align = alClient
        DataSource = dtmLoanC.dtsEventTracking
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EventDate'
            Title.Caption = 'Event Date'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Event'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EventType'
            Title.Caption = 'Event Type'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EventAction'
            Title.Caption = 'Event Action'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Department'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Team'
            Width = 170
            Visible = True
          end>
      end
    end
    object tsWorkflow: TTabSheet
      Caption = 'Tracking'
      ImageIndex = 13
      TabVisible = False
      DesignSize = (
        1059
        445)
      object grdWorkFlow: TDBGrid
        Left = 4
        Top = 8
        Width = 1056
        Height = 433
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtmLoanC.dtsWorkFlow
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
            Expanded = False
            FieldName = 'Description'
            Title.Caption = 'Process'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProcessUser'
            Title.Caption = 'Process User'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StartDate'
            Title.Caption = 'Start Date'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EndDate'
            Title.Caption = 'End Date'
            Width = 135
            Visible = True
          end>
      end
    end
    object ts3RdPay: TTabSheet
      Caption = 'Payouts'
      ImageIndex = 6
      OnHide = ts3RdPayHide
      OnShow = ts3RdPayShow
      DesignSize = (
        1059
        445)
      object lblLetterCount: TDBText
        Left = 8
        Top = 8
        Width = 1052
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        DataField = 'Summary'
        DataSource = dtmLoanC.dtsLetterSumm
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 34
        Width = 1054
        Height = 236
        Anchors = [akLeft, akTop, akRight]
        Caption = '3rd Party Payouts'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          1054
          236)
        object Panel6: TPanel
          Left = 8
          Top = 23
          Width = 1038
          Height = 205
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CoolBar4: TCoolBar
            Left = 1
            Top = 1
            Width = 1036
            Height = 30
            AutoSize = True
            BandBorderStyle = bsNone
            Bands = <
              item
                Control = ToolBar5
                ImageIndex = -1
                MinHeight = 26
                Width = 1034
              end>
            EdgeBorders = [ebLeft, ebTop, ebBottom]
            object ToolBar5: TToolBar
              Left = 9
              Top = 0
              Width = 1021
              Height = 26
              AutoSize = True
              BorderWidth = 1
              ButtonWidth = 69
              Caption = 'ToolBar5'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnNewPayout: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'New'
                ImageIndex = 3
                OnClick = btnNewPayoutClick
              end
              object btnEditPayout: TToolButton
                Left = 52
                Top = 0
                AutoSize = True
                Caption = 'Edit'
                ImageIndex = 4
                OnClick = btnEditPayoutClick
              end
              object btnDeletePayout: TToolButton
                Left = 101
                Top = 0
                AutoSize = True
                Caption = 'Delete'
                ImageIndex = 7
                OnClick = btnDeletePayoutClick
              end
              object btnManagerEdit: TToolButton
                Left = 163
                Top = 0
                AutoSize = True
                Caption = 'Override'
                ImageIndex = 4
                OnClick = btnManagerEditClick
              end
            end
          end
          object grdPayouts: TDBGrid
            Left = 1
            Top = 31
            Width = 1036
            Height = 154
            Align = alClient
            DataSource = dtmLoanC.dtsLD3Pay
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnColExit = grdPayoutsColExit
            OnDrawColumnCell = grdPayoutsDrawColumnCell
            OnDblClick = grdPayoutsDblClick
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PayoutNo'
                Title.Alignment = taCenter
                Title.Caption = 'No.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PayName'
                PickList.Strings = (
                  'Bruma Mobile')
                Title.Caption = 'Payout Type'
                Width = 140
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Reference'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ThirdRefNo'
                Title.Caption = '3rd Party Ref.'
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ExpiryDate'
                Title.Alignment = taCenter
                Title.Caption = 'Expiry Date'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Amount'
                Title.Alignment = taRightJustify
                Width = 93
                Visible = True
              end>
          end
          object stsPayouts: TStatusBar
            Left = 1
            Top = 185
            Width = 1036
            Height = 19
            Panels = <>
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 308
        Width = 721
        Height = 198
        Caption = 'Payouts Summary'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        DesignSize = (
          721
          198)
        object Panel7: TPanel
          Left = 8
          Top = 23
          Width = 705
          Height = 166
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object grdPaySummary: TDBGrid
            Left = 1
            Top = 1
            Width = 703
            Height = 164
            Align = alClient
            DataSource = dtmLoanC.dtsPaySummary
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnColExit = grdPayoutsColExit
            OnDrawColumnCell = grdPayoutsDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Description'
                Title.Caption = 'Payout Type'
                Width = 194
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RefNo'
                Title.Caption = 'Reference'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Amount'
                Title.Alignment = taRightJustify
                Width = 93
                Visible = True
              end>
          end
        end
      end
      object edtThirdType: TDBEdit
        Left = 432
        Top = 176
        Width = 121
        Height = 21
        DataField = 'ThirdType'
        DataSource = dtmLoanC.dtsLD3Pay
        TabOrder = 2
        Visible = False
        OnChange = edtThirdTypeChange
      end
    end
    object tsApproval: TTabSheet
      Caption = 'Pre-approval'
      ImageIndex = 8
      OnHide = tsApprovalHide
      OnShow = tsApprovalShow
      DesignSize = (
        1059
        445)
      object DBEdit2: TDBEdit
        Left = 480
        Top = 189
        Width = 121
        Height = 21
        DataField = 'OfferID'
        DataSource = dtmLoanC.dtsOffers
        TabOrder = 1
        Visible = False
        OnChange = DBEdit2Change
      end
      object pcApproval: TPageControl
        Left = 0
        Top = 8
        Width = 1063
        Height = 437
        ActivePage = tsOptions
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object tsOptions: TTabSheet
          Caption = '   Options   '
          object CoolBar1: TCoolBar
            Left = 0
            Top = 31
            Width = 1055
            Height = 31
            BandBorderStyle = bsNone
            Bands = <
              item
                Control = ToolBar1
                ImageIndex = -1
                MinHeight = 23
                Width = 1047
              end>
            BorderWidth = 1
            Visible = False
            object ToolBar1: TToolBar
              Left = 9
              Top = 0
              Width = 1034
              Height = 23
              ButtonWidth = 74
              Caption = 'ToolBar1'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnAcceptOffer: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Accept'
                ImageIndex = 23
                OnClick = btnAcceptOfferClick
              end
              object btnDeleteOffer: TToolButton
                Left = 64
                Top = 0
                AutoSize = True
                Caption = 'Delete'
                ImageIndex = 7
                Visible = False
                OnClick = btnDeleteOfferClick
              end
              object btnCancelOffers: TToolButton
                Left = 126
                Top = 0
                AutoSize = True
                Caption = 'Cancell all'
                ImageIndex = 7
                OnClick = btnCancelOffersClick
              end
              object ToolButton1: TToolButton
                Left = 204
                Top = 0
                Width = 27
                Caption = 'ToolButton1'
                ImageIndex = 8
                Style = tbsSeparator
              end
              object chkHiddenOptions: TCheckBox
                Left = 231
                Top = 0
                Width = 138
                Height = 22
                Caption = 'Show hidden options'
                TabOrder = 0
                OnClick = chkHiddenOptionsClick
              end
            end
          end
          object grdOffers: TDBGrid
            Left = 0
            Top = 89
            Width = 1055
            Height = 187
            Align = alClient
            DataSource = dtmLoanC.dtsOffers
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = grdOffersCellClick
            OnColEnter = grdOffersColEnter
            OnColExit = grdOffersColExit
            OnDrawColumnCell = grdOffersDrawColumnCell
            Columns = <
              item
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'Hide'
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Offer'
                Title.Alignment = taCenter
                Title.Caption = 'No.'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OfferType'
                Title.Caption = 'Type'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Amount'
                Title.Alignment = taRightJustify
                Title.Caption = 'Loan Amount'
                Width = 80
                Visible = True
              end
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'Period'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Instalment'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NetAmount'
                Title.Alignment = taRightJustify
                Title.Caption = 'Payout'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UpdateDetails'
                Title.Caption = 'UserID'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'StatusLU'
                Title.Caption = 'Status'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Enabled'
                Title.Caption = 'Status'
                Width = 60
                Visible = True
              end>
          end
          object grdMatrix: TStringGrid
            Left = 0
            Top = 289
            Width = 1055
            Height = 120
            Align = alBottom
            DefaultColWidth = 180
            DefaultRowHeight = 18
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 2
            OnDrawCell = grdMatrixDrawCell
            OnMouseDown = grdMatrixMouseDown
            ColWidths = (
              180
              58
              67
              65
              70)
          end
          object Panel1: TPanel
            Left = 0
            Top = 276
            Width = 1055
            Height = 13
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Approval matrix'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 3
          end
          object edtOfferID: TDBEdit
            Left = 456
            Top = 128
            Width = 73
            Height = 21
            DataField = 'OfferID'
            DataSource = dtmLoanC.dtsOffers
            TabOrder = 4
            Visible = False
            OnChange = edtOfferIDChange
          end
          object CoolBar7: TCoolBar
            Left = 0
            Top = 0
            Width = 1055
            Height = 31
            BandBorderStyle = bsNone
            Bands = <
              item
                Control = ToolBar7
                ImageIndex = -1
                MinHeight = 23
                Width = 1047
              end>
            BorderWidth = 1
            object ToolBar7: TToolBar
              Left = 9
              Top = 0
              Width = 1034
              Height = 23
              ButtonWidth = 96
              Caption = 'ToolBar1'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnRecalculate: TToolButton
                Left = 0
                Top = 0
                Caption = 'Recalculate'
                ImageIndex = 38
                OnClick = btnRecalculateClick
              end
              object btnDisableOption: TToolButton
                Left = 96
                Top = 0
                AutoSize = True
                Caption = 'Disable'
                ImageIndex = 25
                OnClick = btnDisableOptionClick
              end
              object btnDeleteOption: TToolButton
                Left = 161
                Top = 0
                AutoSize = True
                Caption = 'Delete'
                ImageIndex = 7
                OnClick = btnDeleteOptionClick
              end
              object btnApplyLimits: TToolButton
                Left = 223
                Top = 0
                Caption = 'Apply Limits'
                ImageIndex = 0
                Style = tbsCheck
                OnClick = btnApplyLimitsClick
              end
              object ToolButton7: TToolButton
                Left = 319
                Top = 0
                Width = 32
                Caption = 'ToolButton7'
                ImageIndex = 0
                Style = tbsSeparator
              end
              object btnManualOption: TToolButton
                Left = 351
                Top = 0
                Caption = 'Manual Option'
                ImageIndex = 41
                OnClick = btnManualOptionClick
              end
              object ToolButton6: TToolButton
                Left = 447
                Top = 0
                Visible = False
                OnClick = ToolButton6Click
              end
            end
          end
          object pnlLimits: TPanel
            Left = 0
            Top = 62
            Width = 1055
            Height = 27
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 6
            Visible = False
            object Label25: TLabel
              Left = 8
              Top = 7
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label26: TLabel
              Left = 166
              Top = 7
              Width = 30
              Height = 13
              Caption = 'Period'
            end
            object Label34: TLabel
              Left = 713
              Top = 7
              Width = 36
              Height = 13
              Caption = 'Reason'
              Visible = False
            end
            object chkLimitDebt: TDBCheckBox
              Left = 322
              Top = 5
              Width = 201
              Height = 17
              Caption = 'Include Debt Consolidation Loans'
              DataField = 'LimitDebt'
              DataSource = dtmLoanC.dtsLoanDet
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object edtLimitAmount: TDBEdit
              Left = 50
              Top = 3
              Width = 102
              Height = 21
              DataField = 'LimitAmount'
              DataSource = dtmLoanC.dtsLoanDet
              TabOrder = 0
            end
            object edtLimitPeriod: TDBEdit
              Left = 202
              Top = 3
              Width = 102
              Height = 21
              DataField = 'LimitPeriod'
              DataSource = dtmLoanC.dtsLoanDet
              TabOrder = 1
            end
            object cmbLimitOptionReason: TDBLookupComboBox
              Left = 754
              Top = 3
              Width = 272
              Height = 21
              DataField = 'LimitReason'
              DataSource = dtmLoanC.dtsLoanDet
              KeyField = 'TypeKey'
              ListField = 'Description'
              ListSource = dtmLoanC.dtsLimitOptionReasons
              TabOrder = 3
              Visible = False
            end
          end
        end
        object tsPreApprovalNotes: TTabSheet
          Caption = '    Notes    '
          ImageIndex = 1
          object CoolBar2: TCoolBar
            Left = 0
            Top = 0
            Width = 1055
            Height = 30
            BandBorderStyle = bsNone
            Bands = <
              item
                Control = ToolBar2
                ImageIndex = -1
                MinHeight = 23
                Width = 1047
              end>
            BorderWidth = 1
            object ToolBar2: TToolBar
              Left = 9
              Top = 0
              Width = 1034
              Height = 23
              ButtonWidth = 86
              Caption = 'ToolBar1'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnNewNote: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'New Note'
                ImageIndex = 3
                OnClick = btnNewNoteClick
              end
              object btnAmendNote: TToolButton
                Left = 78
                Top = 0
                AutoSize = True
                Caption = 'Amend Note'
                ImageIndex = 4
                OnClick = btnAmendNoteClick
              end
            end
          end
          object rdtPreApprovalNotes: TRichEdit
            Left = 0
            Top = 30
            Width = 1055
            Height = 379
            Align = alClient
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
      end
    end
    object tsSecurities: TTabSheet
      Caption = 'Securities'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      TabVisible = False
      object pnlSec: TPanel
        Left = 0
        Top = 0
        Width = 1059
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object grdSec: TDBGrdClr
          Left = 0
          Top = 0
          Width = 1059
          Height = 251
          Align = alClient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OddColor = clInfoBk
          Columns = <
            item
              Expanded = False
              FieldName = 'SecNo'
              Title.Caption = 'Sec no'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LUType'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OwnerName'
              Title.Caption = 'Owner name'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Val'
              Title.Alignment = taRightJustify
              Title.Caption = 'Current value'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Val2'
              Title.Alignment = taRightJustify
              Title.Caption = 'Future value'
              Width = 90
              Visible = True
            end>
        end
        object pnlBottom: TPanel
          Left = 0
          Top = 251
          Width = 1059
          Height = 194
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          DesignSize = (
            1059
            194)
          object lblDescription: TLabel
            Left = 8
            Top = 139
            Width = 54
            Height = 14
            Caption = 'Description'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblType: TLabel
            Left = 8
            Top = 13
            Width = 23
            Height = 14
            Caption = 'Type'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblOwnerName: TLabel
            Left = 256
            Top = 37
            Width = 34
            Height = 14
            Caption = 'Owner'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblSecNo: TLabel
            Left = 8
            Top = 37
            Width = 55
            Height = 14
            Caption = 'Security no'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object dbtS5: TDBText
            Left = 72
            Top = 38
            Width = 28
            Height = 13
            AutoSize = True
            DataField = 'SecNo'
          end
          object dbtS6: TDBText
            Left = 296
            Top = 38
            Width = 28
            Height = 13
            AutoSize = True
            DataField = 'OwnerName'
          end
          object dbSecurity: TDBText
            Left = 72
            Top = 14
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'LUType'
          end
          object cmbType: TDBLookupComboBox
            Left = 72
            Top = 10
            Width = 153
            Height = 21
            DataField = 'Type'
            KeyField = 'TypeKey'
            ListField = 'Description'
            ListSource = dtmLoanCLU.dtsLUSecT
            TabOrder = 0
          end
          object edtOwner: TDBEdit
            Left = 296
            Top = 34
            Width = 201
            Height = 21
            DataField = 'OwnerName'
            TabOrder = 1
          end
          object edtSecNo: TDBEdit
            Left = 72
            Top = 34
            Width = 153
            Height = 21
            DataField = 'SecNo'
            TabOrder = 2
          end
          object memDescription: TDBMemo
            Left = 72
            Top = 139
            Width = 428
            Height = 54
            DataField = 'Description'
            ScrollBars = ssVertical
            TabOrder = 3
          end
          object pnlValues: TPanel
            Left = 0
            Top = 58
            Width = 960
            Height = 78
            Anchors = [akLeft, akTop, akRight]
            BevelInner = bvLowered
            TabOrder = 4
            object lblVal: TLabel
              Left = 8
              Top = 28
              Width = 27
              Height = 14
              Caption = 'Value'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblValDate: TLabel
              Left = 8
              Top = 51
              Width = 51
              Height = 14
              Caption = 'Value date'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblVal2: TLabel
              Left = 256
              Top = 28
              Width = 27
              Height = 14
              Caption = 'Value'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblVal2Date: TLabel
              Left = 256
              Top = 51
              Width = 51
              Height = 14
              Caption = 'Value date'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblCurrVal: TLabel
              Left = 8
              Top = 8
              Width = 65
              Height = 14
              Caption = 'Current value'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblFutureVal: TLabel
              Left = 256
              Top = 8
              Width = 60
              Height = 14
              Caption = 'Future value'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Bevel4: TBevel
              Left = 240
              Top = 1
              Width = 2
              Height = 76
              Style = bsRaised
            end
            object dbtS1: TDBText
              Left = 72
              Top = 29
              Width = 28
              Height = 13
              AutoSize = True
              DataField = 'Val'
            end
            object dbtS2: TDBText
              Left = 72
              Top = 52
              Width = 28
              Height = 13
              AutoSize = True
              DataField = 'ValDate'
            end
            object dbtS3: TDBText
              Left = 320
              Top = 29
              Width = 28
              Height = 13
              AutoSize = True
              DataField = 'Val2'
            end
            object dbtS4: TDBText
              Left = 320
              Top = 52
              Width = 28
              Height = 13
              AutoSize = True
              DataField = 'Val2Date'
            end
            object dtpValDate: TdtpDB
              Left = 74
              Top = 48
              Width = 113
              Height = 21
              Date = 37627.000000000000000000
              Time = 37627.000000000000000000
              TabOrder = 4
              AssociateEDT = edtValDate
            end
            object dtpVal2Date: TdtpDB
              Left = 322
              Top = 48
              Width = 113
              Height = 21
              Date = 37627.000000000000000000
              Time = 37627.000000000000000000
              TabOrder = 5
              AssociateEDT = edtVal2Date
            end
            object edtVal: TDBEdit
              Left = 72
              Top = 25
              Width = 113
              Height = 21
              DataField = 'Val'
              TabOrder = 0
            end
            object edtValDate: TDBEdit
              Left = 72
              Top = 48
              Width = 97
              Height = 21
              DataField = 'ValDate'
              TabOrder = 1
            end
            object edtVal2: TDBEdit
              Left = 320
              Top = 25
              Width = 113
              Height = 21
              DataField = 'Val2'
              TabOrder = 2
            end
            object edtVal2Date: TDBEdit
              Left = 320
              Top = 48
              Width = 97
              Height = 21
              DataField = 'Val2Date'
              TabOrder = 3
            end
          end
          object btnSendToT: TBitBtn
            Left = 296
            Top = 10
            Width = 137
            Height = 21
            Caption = 'Send to tracking'
            TabOrder = 5
            Glyph.Data = {
              06030000424D060300000000000036000000280000000F0000000F0000000100
              180000000000D0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF040404040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF040404FF9933040404FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFF040404FF9933FF9933040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF040404FF9933FFCC33FF993304040404
              0404040404040404040404040404040404040404040404000000FFFFFF040404
              FF9933FFCC33FFCC33FF9933FF9933FF9933FF9933FF9933FF9933FF9933FF99
              33FF9933040404000000FF6633FFFFCCFFFF99FFCC33FFCC33FFCC33FFCC33FF
              CC33FFCC33FFCC33FFCC33FFCC33FFCC33FF9933040404000000FFFFFFFF6633
              FFFFCCFFFF99FFCC33FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF
              99FF9933040404000000FFFFFFFFFFFFFF6633FFFFCCFFFF99FFFF99040404FF
              6633FF6633FF6633FF6633FF6633FF6633FF6633040404000000FFFFFFFFFFFF
              FFFFFFFF6633FFFFCCFFFF99040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFFCC040404FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6633040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000}
          end
          object edtSecRecID: TDBEdit
            Left = 560
            Top = 8
            Width = 73
            Height = 21
            DataField = 'RecID'
            TabOrder = 6
            Visible = False
          end
        end
      end
    end
    object tsAssets: TTabSheet
      Caption = 'Assets'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      TabVisible = False
      object pnlAssets: TPanel
        Left = 0
        Top = 0
        Width = 1059
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object pnlABottom: TPanel
          Left = 0
          Top = 251
          Width = 1059
          Height = 194
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            1059
            194)
          object lblAssetType: TLabel
            Left = 8
            Top = 13
            Width = 23
            Height = 14
            Caption = 'Type'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblDescr: TLabel
            Left = 8
            Top = 139
            Width = 32
            Height = 14
            Caption = 'Details'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object dbAsset: TDBText
            Left = 96
            Top = 12
            Width = 38
            Height = 13
            AutoSize = True
            DataField = 'LUType'
          end
          object cmbAssetType: TDBLookupComboBox
            Left = 96
            Top = 10
            Width = 161
            Height = 21
            DataField = 'Type'
            KeyField = 'TypeKey'
            ListField = 'Description'
            ListSource = dtmLoanCLU.dtsLUAssets
            TabOrder = 0
          end
          object memDescr: TDBMemo
            Tag = 6
            Left = 96
            Top = 139
            Width = 404
            Height = 54
            DataField = 'Description'
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object edtRecID: TDBEdit
            Left = 448
            Top = 8
            Width = 25
            Height = 21
            DataField = 'RecID'
            TabOrder = 2
            Visible = False
          end
          object pnlRef: TPanel
            Left = 0
            Top = 40
            Width = 960
            Height = 96
            Anchors = [akLeft, akTop, akRight]
            BevelInner = bvLowered
            TabOrder = 3
            object lblYearModel: TLabel
              Left = 266
              Top = 11
              Width = 54
              Height = 14
              Caption = 'Year model'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblSupplierRef: TLabel
              Left = 266
              Top = 34
              Width = 56
              Height = 14
              Caption = 'Supplier ref'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblSerialNo: TLabel
              Left = 8
              Top = 11
              Width = 64
              Height = 14
              Caption = 'Serial/Reg no'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblDelNoteNo: TLabel
              Left = 8
              Top = 34
              Width = 78
              Height = 14
              Caption = 'Delivery note no'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblDelDate: TLabel
              Left = 266
              Top = 70
              Width = 63
              Height = 14
              Caption = 'Delivery date'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblSoldDate: TLabel
              Left = 8
              Top = 70
              Width = 45
              Height = 14
              Caption = 'Sold date'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object dbtAst1: TDBText
              Left = 96
              Top = 12
              Width = 36
              Height = 13
              AutoSize = True
              DataField = 'SerialNo'
            end
            object dbtAst2: TDBText
              Left = 96
              Top = 35
              Width = 36
              Height = 13
              AutoSize = True
              DataField = 'DelNoteNo'
            end
            object dbtAst3: TDBText
              Left = 96
              Top = 71
              Width = 36
              Height = 13
              AutoSize = True
              DataField = 'SoldDate'
            end
            object dbtAst4: TDBText
              Left = 336
              Top = 12
              Width = 36
              Height = 13
              AutoSize = True
              DataField = 'YearModel'
            end
            object dbtAst5: TDBText
              Left = 336
              Top = 35
              Width = 36
              Height = 13
              AutoSize = True
              DataField = 'SupplierRef'
            end
            object dbtAst6: TDBText
              Left = 336
              Top = 71
              Width = 36
              Height = 13
              AutoSize = True
              DataField = 'DelDate'
            end
            object dtpSoldDate: TdtpDB
              Left = 98
              Top = 67
              Width = 113
              Height = 21
              Date = 37652.000000000000000000
              Time = 37652.000000000000000000
              TabOrder = 6
              AssociateEDT = edtSoldDate
            end
            object dtpDelDate: TdtpDB
              Left = 338
              Top = 67
              Width = 113
              Height = 21
              Date = 37652.000000000000000000
              Time = 37652.000000000000000000
              TabOrder = 7
              AssociateEDT = edtDelDate
            end
            object edtSupplierRef: TDBEdit
              Left = 336
              Top = 31
              Width = 113
              Height = 21
              DataField = 'SupplierRef'
              TabOrder = 3
            end
            object edtYearModel: TDBEdit
              Left = 336
              Top = 8
              Width = 113
              Height = 21
              DataField = 'YearModel'
              TabOrder = 1
            end
            object edtSerialNo: TDBEdit
              Left = 96
              Top = 8
              Width = 113
              Height = 21
              DataField = 'SerialNo'
              TabOrder = 0
            end
            object edtDelNoteNo: TDBEdit
              Left = 96
              Top = 31
              Width = 113
              Height = 21
              DataField = 'DelNoteNo'
              TabOrder = 2
            end
            object edtSoldDate: TDBEdit
              Left = 96
              Top = 67
              Width = 97
              Height = 21
              DataField = 'SoldDate'
              TabOrder = 4
            end
            object edtDelDate: TDBEdit
              Left = 336
              Top = 67
              Width = 97
              Height = 21
              DataField = 'DelDate'
              TabOrder = 5
            end
          end
        end
        object grdAssets: TDBGrdClr
          Left = 0
          Top = 0
          Width = 1059
          Height = 251
          Align = alClient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdAssetsDrawColumnCell
          OddColor = clInfoBk
          Columns = <
            item
              Expanded = False
              FieldName = 'SerialNo'
              Title.Caption = 'Serial no'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LUType'
              Title.Caption = 'Asset Type'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SupplierRef'
              Title.Caption = 'Supplier ref'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DelNoteNo'
              Title.Caption = 'Delivery note no'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DelDate'
              Title.Caption = 'Delivery date'
              Width = 77
              Visible = True
            end>
        end
      end
    end
    object tsQuotations: TTabSheet
      Caption = 'Quotations'
      ImageIndex = 11
      OnShow = tsQuotationsShow
      object Splitter1: TSplitter
        Left = 0
        Top = 188
        Width = 1059
        Height = 5
        Cursor = crVSplit
        Align = alBottom
      end
      object grdQuotes: TDBGrid
        Left = 0
        Top = 26
        Width = 1059
        Height = 162
        Align = alClient
        DataSource = dtmLoanC.dtsQuotes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'QuotationID'
            Title.Caption = 'Quote No.'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sStatus'
            Title.Caption = 'Status'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Reason'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusDate'
            Title.Caption = 'Status Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusUser'
            Title.Caption = 'Status By'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExpiryDate'
            Title.Caption = 'Expiry Date'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IssueDate'
            Title.Caption = 'Issue Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IssueUser'
            Title.Caption = 'Issued By'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SentDate'
            Title.Caption = 'Sent Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SentUser'
            Title.Caption = 'Sent By'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SentMethod'
            Title.Caption = 'Sent Method'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateDate'
            Title.Caption = 'Created By'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateUser'
            Title.Caption = 'Created By'
            Width = 80
            Visible = True
          end>
      end
      object grdQuoteOffers: TDBGrid
        Left = 0
        Top = 193
        Width = 1059
        Height = 96
        Align = alBottom
        DataSource = dtmLoanC.dtsQuoteOffers
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdQuoteOffersDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'OfferNo'
            Title.Alignment = taCenter
            Title.Caption = 'Option No'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Period'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Title.Caption = 'Loan Capital'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Instalment'
            Title.Alignment = taRightJustify
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Settlements'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total Settlements'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Payout'
            Title.Alignment = taRightJustify
            Title.Caption = 'Payout Amount'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Accepted'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 70
            Visible = True
          end>
      end
      object CoolBar6: TCoolBar
        Left = 0
        Top = 0
        Width = 1059
        Height = 26
        AutoSize = True
        BandBorderStyle = bsNone
        Bands = <
          item
            Control = ToolBar6
            ImageIndex = -1
            MinHeight = 22
            Width = 1055
          end>
        object ToolBar6: TToolBar
          Left = 9
          Top = 0
          Width = 1042
          Height = 22
          AutoSize = True
          ButtonWidth = 110
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          List = True
          ShowCaptions = True
          TabOrder = 0
          object btnAcceptQuote: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = 'Accept'
            ImageIndex = 24
            OnClick = btnAcceptQuoteClick
          end
          object btnRejectQuote: TToolButton
            Left = 64
            Top = 0
            AutoSize = True
            Caption = 'Reject'
            ImageIndex = 25
            OnClick = btnRejectQuoteClick
          end
          object btnCancelQuote: TToolButton
            Left = 126
            Top = 0
            AutoSize = True
            Caption = 'Cancel'
            ImageIndex = 6
            OnClick = btnCancelQuoteClick
          end
          object btnResendQuote: TToolButton
            Left = 189
            Top = 0
            AutoSize = True
            Caption = 'Issue Quote'
            ImageIndex = 49
            Visible = False
            OnClick = btnResendQuoteClick
          end
          object btnExportQuote: TToolButton
            Left = 279
            Top = 0
            Caption = 'Export Quotation'
            ImageIndex = 39
            OnClick = btnExportQuoteClick
          end
          object btnOpen: TToolButton
            Left = 389
            Top = 0
            AutoSize = True
            Caption = 'Open'
            ImageIndex = 46
            OnClick = btnOpenClick
          end
          object btnSendQuote: TToolButton
            Left = 446
            Top = 0
            AutoSize = True
            Caption = 'Send'
            ImageIndex = 12
            OnClick = btnSendQuoteClick
          end
        end
      end
      object edtQuotationID: TDBEdit
        Left = 256
        Top = 120
        Width = 121
        Height = 21
        DataField = 'QuotationID'
        DataSource = dtmLoanC.dtsQuotes
        TabOrder = 3
        Visible = False
        OnChange = edtQuotationIDChange
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 289
        Width = 1059
        Height = 156
        ActivePage = tsQuoteNotes
        Align = alBottom
        TabOrder = 4
        object tsQuoteNotes: TTabSheet
          Caption = 'Notes'
          object CoolBar9: TCoolBar
            Left = 0
            Top = 0
            Width = 1051
            Height = 30
            BandBorderStyle = bsNone
            Bands = <
              item
                Control = ToolBar9
                ImageIndex = -1
                MinHeight = 23
                Width = 1043
              end>
            BorderWidth = 1
            object ToolBar9: TToolBar
              Left = 9
              Top = 0
              Width = 1030
              Height = 23
              ButtonWidth = 86
              Caption = 'ToolBar1'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnNewQuoteNote: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'New Note'
                ImageIndex = 3
                OnClick = btnNewQuoteNoteClick
              end
              object btnEditQuoteNote: TToolButton
                Left = 78
                Top = 0
                AutoSize = True
                Caption = 'Amend Note'
                ImageIndex = 4
                OnClick = btnEditQuoteNoteClick
              end
            end
          end
          object rdtQuoteNotes: TRichEdit
            Left = 0
            Top = 30
            Width = 1051
            Height = 98
            Align = alClient
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
      end
    end
    object tsLnStatus: TTabSheet
      Caption = 'Status'
      ImageIndex = 7
      OnShow = tsLnStatusShow
      DesignSize = (
        1059
        445)
      object Label13: TLabel
        Left = 8
        Top = 0
        Width = 71
        Height = 13
        Caption = 'Current Status'
      end
      object Label36: TLabel
        Left = 8
        Top = 44
        Width = 68
        Height = 13
        Caption = 'Status History'
      end
      object btnChangeStatus: TSpeedButton
        Left = 179
        Top = 15
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = btnChangeStatusClick
      end
      object grdStatusHistory: TDBGrdClr
        Left = 8
        Top = 59
        Width = 641
        Height = 382
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dtmLoanC.dtsDDLoanStatus
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OddColor = clWindow
        Columns = <
          item
            Expanded = False
            FieldName = 'EffectiveDate'
            Title.Caption = 'Date'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusName'
            Title.Caption = 'Status'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateUser'
            Title.Caption = 'User ID'
            Width = 140
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CreateDate'
            Title.Alignment = taCenter
            Title.Caption = 'Time'
            Width = 133
            Visible = True
          end>
      end
      object edtStatusName: TEdit
        Left = 8
        Top = 16
        Width = 169
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
      end
      object cmbHandoverType: TDBLookupComboBox
        Left = 208
        Top = 16
        Width = 169
        Height = 21
        DataField = 'HandoverTypeID'
        DataSource = dtmLoanC.dtsLoanDet
        KeyField = 'HandoverTypeID'
        ListField = 'Description'
        ListSource = dtmLoanC.dtsHandoverType
        TabOrder = 2
      end
    end
    object tsSummary: TTabSheet
      Caption = 'Debt Obligations'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 9
      ParentFont = False
      OnShow = tsSummaryShow
    end
    object tsBureau: TTabSheet
      Caption = 'Bureau'
      ImageIndex = 15
      OnResize = tsBureauResize
      OnShow = tsBureauShow
      DesignSize = (
        1059
        445)
      object GroupBox5: TGroupBox
        Left = 8
        Top = 5
        Width = 1053
        Height = 180
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Enquiry history'
        TabOrder = 0
        DesignSize = (
          1053
          180)
        object Label28: TLabel
          Left = 14
          Top = 28
          Width = 24
          Height = 13
          Caption = 'Type'
        end
        object cmbEnquiryHistory: TComboBox
          Left = 45
          Top = 24
          Width = 161
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = cmbEnquiryHistoryChange
          Items.Strings = (
            'All'
            'ITC'
            'Compuscan'
            'NLR'
            'Experian'
            'Compuscan/NLR'
            'Compuscan/Experian'
            'NLR/Experian'
            'Compuscan/NLR/Experian')
        end
        object grdEnquiryHistory: TDBGrid
          Left = 10
          Top = 56
          Width = 1033
          Height = 117
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dtmBureau.dtsEnqHistory
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = grdEnquiryHistoryDrawColumnCell
          OnDblClick = grdEnquiryHistoryDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'FMTEnqDate'
              Title.Caption = 'Enquiry Date'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EnqType'
              Title.Caption = 'Enquiry Type'
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TransNo'
              Title.Caption = 'Reference'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CreateUser'
              Title.Caption = 'UserID'
              Width = 90
              Visible = True
            end>
        end
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 192
        Width = 1052
        Height = 113
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Scorecard'
        TabOrder = 1
        DesignSize = (
          1052
          113)
        object grdScorecard: TDBGrid
          Left = 8
          Top = 22
          Width = 1036
          Height = 82
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dtmLoanC.dtsScorecard
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Description'
              Width = 150
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ClientScore'
              Title.Alignment = taCenter
              Title.Caption = 'Client Score'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ApplicationScore'
              Title.Alignment = taCenter
              Title.Caption = 'Application Score'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'BureauScore'
              Title.Alignment = taCenter
              Title.Caption = 'Bureau Score'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'MatrixScore'
              Title.Alignment = taCenter
              Title.Caption = 'Matrix Score'
              Width = 90
              Visible = True
            end>
        end
        object grdScorecard1: TDBGrid
          Left = 8
          Top = 22
          Width = 1038
          Height = 82
          Anchors = [akLeft, akTop, akRight]
          DataSource = dtmLoanC.dtsScorecardTU
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Description'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClientType'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ScoreDecision'
              Title.Caption = 'Decision'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ScoreResult'
              Title.Alignment = taCenter
              Title.Caption = 'Score'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RiskLevelBureau'
              Title.Caption = 'Risk Level'
              Width = 90
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 312
        Width = 1013
        Height = 121
        Caption = 'Failed Policy Rules'
        TabOrder = 2
        DesignSize = (
          1013
          121)
        object grdBureauPolicy: TDBGrid
          Left = 8
          Top = 20
          Width = 997
          Height = 93
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dtmBureau.dtsFailedPolicy
          Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PolicyID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Description'
              Title.Caption = 'Policy'
              Width = 955
              Visible = True
            end>
        end
      end
    end
    object tsFraud: TTabSheet
      Caption = 'Fraud'
      ImageIndex = 19
      OnShow = tsFraudShow
      object GroupBox1: TGroupBox
        Left = 808
        Top = 312
        Width = 201
        Height = 129
        Caption = 'Hawk'
        TabOrder = 0
        Visible = False
        DesignSize = (
          201
          129)
        object Panel3: TPanel
          Left = 9
          Top = 16
          Width = 182
          Height = 105
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Panel3'
          TabOrder = 0
          object WebBrowser1: TWebBrowser
            Left = 1
            Top = 1
            Width = 180
            Height = 103
            Align = alClient
            TabOrder = 0
            ControlData = {
              4C0000009B120000A50A00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
      end
      object tlbFraud: TToolBar
        Left = 0
        Top = 0
        Width = 1059
        Height = 29
        ButtonWidth = 95
        EdgeBorders = [ebTop, ebBottom]
        Flat = True
        Images = dtmMain.imglstMain
        List = True
        ShowCaptions = True
        TabOrder = 1
        object btnMarkFraud: TToolButton
          Left = 0
          Top = 0
          Caption = 'Mark as Fraud'
          ImageIndex = 25
          OnClick = btnMarkFraudClick
        end
      end
      object pnlFraudClient: TPanel
        Left = 0
        Top = 29
        Width = 1059
        Height = 416
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object pcFraud: TPageControl
          Left = 0
          Top = 6
          Width = 1065
          Height = 227
          ActivePage = tsFraudBureau3
          TabOrder = 0
          object tsFraudBureau2: TTabSheet
            Caption = 'Bureau 2'
            object CoolBar13: TCoolBar
              Left = 0
              Top = 0
              Width = 1057
              Height = 29
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar13
                  ImageIndex = -1
                  Width = 1053
                end>
              object ToolBar13: TToolBar
                Left = 9
                Top = 0
                Width = 1040
                Height = 25
                ButtonWidth = 104
                Caption = 'ToolBar13'
                EdgeBorders = []
                Flat = True
                Images = dtmMain.imglstMain
                List = True
                ShowCaptions = True
                TabOrder = 0
                object btnBureau2_Enquiry: TToolButton
                  Left = 0
                  Top = 0
                  Caption = 'Perform Enquiry'
                  ImageIndex = 27
                  Visible = False
                  OnClick = btnBureau2_EnquiryClick
                end
                object btnViewBureau2: TToolButton
                  Left = 104
                  Top = 0
                  AutoSize = True
                  Caption = 'View'
                  ImageIndex = 0
                  OnClick = btnViewBureau2Click
                end
              end
            end
            object grdFraudEnquiries: TDBGrid
              Left = 0
              Top = 29
              Width = 1057
              Height = 170
              Align = alClient
              DataSource = dtmFraud.dtsEnquiries
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = grdFraudEnquiriesDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CreateDate'
                  Title.Caption = 'Enquiry Date'
                  Width = 125
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CreateUser'
                  Title.Caption = 'User ID'
                  Width = 90
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Result'
                  Title.Alignment = taCenter
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IDNumber'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FirstName'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Surname'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BankAccountNo'
                  Title.Caption = 'Bank Account No.'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HomeTel'
                  Title.Caption = 'Home Tel.'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'WorkTel'
                  Title.Caption = 'Work Tel.'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cell'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EmployerName'
                  Title.Caption = 'Employer'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EmployerTradingName'
                  Title.Caption = 'Employer Trading Name'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EmployerTel'
                  Title.Caption = 'Employer Tel.'
                  Width = 80
                  Visible = True
                end>
            end
          end
          object tsFraudBureau3: TTabSheet
            Caption = 'Bureau 3'
            ImageIndex = 1
            object CoolBar3: TCoolBar
              Left = 0
              Top = 0
              Width = 1057
              Height = 29
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar3
                  ImageIndex = -1
                  Width = 1053
                end>
              object ToolBar3: TToolBar
                Left = 9
                Top = 0
                Width = 1040
                Height = 25
                ButtonWidth = 104
                Caption = 'ToolBar13'
                EdgeBorders = []
                Flat = True
                Images = dtmMain.imglstMain
                List = True
                ShowCaptions = True
                TabOrder = 0
                object btnBureau3_Enquiry: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = 'Perform Enquiry'
                  ImageIndex = 27
                  OnClick = btnBureau3_EnquiryClick
                end
                object btnViewBureau3: TToolButton
                  Left = 108
                  Top = 0
                  AutoSize = True
                  Caption = 'View'
                  ImageIndex = 0
                  OnClick = btnViewBureau3Click
                end
                object btnAcceptBureau3: TToolButton
                  Left = 161
                  Top = 0
                  AutoSize = True
                  Caption = 'Accept'
                  Enabled = False
                  ImageIndex = 24
                  OnClick = btnAcceptBureau3Click
                end
              end
            end
            object grdFraudBureau: TDBGrid
              Left = 0
              Top = 29
              Width = 1057
              Height = 170
              Align = alClient
              DataSource = dtmFraud.dtsFraudBureau
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = grdFraudBureauDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'EnqDate'
                  Title.Caption = 'Enquiry Date'
                  Width = 125
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CreateUser'
                  Title.Caption = 'User ID'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Status'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PassedDescription'
                  Title.Caption = 'Result'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OverrideUser'
                  Title.Caption = 'Override User'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OverrideDate'
                  Title.Caption = 'Override Date'
                  Width = 125
                  Visible = True
                end>
            end
            object bureau3Enable: TDBEdit
              Left = 248
              Top = 120
              Width = 121
              Height = 21
              DataField = 'Passed'
              DataSource = dtmFraud.dtsFraudBureau
              TabOrder = 2
              Visible = False
              OnChange = bureau3EnableChange
            end
          end
          object tsFraudAuthentication: TTabSheet
            Caption = 'Authentication'
            ImageIndex = 2
            object grdFraudAuthentication: TDBGrid
              Left = 0
              Top = 29
              Width = 1057
              Height = 170
              Align = alClient
              DataSource = dtmFraud.dtsAuthentication
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = grdFraudAuthenticationDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CreateDate'
                  Title.Caption = 'Create Date'
                  Width = 125
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CompleteDate'
                  Title.Caption = 'Complete Date'
                  Width = 125
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CreateUser'
                  Title.Caption = 'User ID'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Reference'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Completed'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Result'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DisableUser'
                  Title.Caption = 'Disable User'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DisableDate'
                  Title.Caption = 'Disable Date'
                  Width = 125
                  Visible = True
                end>
            end
            object CoolBar17: TCoolBar
              Left = 0
              Top = 0
              Width = 1057
              Height = 29
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar17
                  ImageIndex = -1
                  Width = 1053
                end>
              object ToolBar17: TToolBar
                Left = 9
                Top = 0
                Width = 1040
                Height = 25
                ButtonWidth = 61
                Caption = 'ToolBar13'
                EdgeBorders = []
                Flat = True
                Images = dtmMain.imglstMain
                List = True
                ShowCaptions = True
                TabOrder = 0
                object btnNewAuthentication: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = 'New'
                  ImageIndex = 3
                  OnClick = btnNewAuthenticationClick
                end
                object btnViewAuthentication: TToolButton
                  Left = 52
                  Top = 0
                  Caption = 'View'
                  ImageIndex = 0
                  Visible = False
                end
                object btnDisableAuthentication: TToolButton
                  Left = 113
                  Top = 0
                  AutoSize = True
                  Caption = 'Disable'
                  Enabled = False
                  ImageIndex = 7
                  OnClick = btnDisableAuthenticationClick
                end
              end
            end
            object enableAuthentication: TDBEdit
              Left = 264
              Top = 120
              Width = 121
              Height = 21
              DataField = 'Authenticated'
              DataSource = dtmFraud.dtsAuthentication
              TabOrder = 2
              Visible = False
              OnChange = enableAuthenticationChange
            end
          end
        end
        object grpFraud: TGroupBox
          Left = 0
          Top = 240
          Width = 1065
          Height = 169
          Caption = 'Fraudulent'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label46: TLabel
            Left = 16
            Top = 33
            Width = 23
            Height = 13
            Caption = 'Date'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 16
            Top = 58
            Width = 36
            Height = 13
            Caption = 'User ID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 16
            Top = 83
            Width = 36
            Height = 13
            Caption = 'Reason'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 72
            Top = 29
            Width = 169
            Height = 21
            DataField = 'FraudFlagDate'
            DataSource = dtmLoanC.dtsLoanDet
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 72
            Top = 54
            Width = 169
            Height = 21
            DataField = 'FraudUser'
            DataSource = dtmLoanC.dtsLoanDet
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 72
            Top = 79
            Width = 169
            Height = 21
            DataField = 'FraudReason'
            DataSource = dtmLoanC.dtsLoanDet
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
    object tsDocuments: TTabSheet
      Caption = 'Documents'
      ImageIndex = 20
      OnShow = tsDocumentsShow
      object pnlDocuments: TPanel
        Left = 0
        Top = 0
        Width = 390
        Height = 445
        Align = alLeft
        TabOrder = 0
        object grdDocuments: TDBGrid
          Left = 1
          Top = 27
          Width = 388
          Height = 417
          Align = alClient
          DataSource = dtmLoanC.dtsDocuments
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = grdDocumentsDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'Description'
              Width = 120
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Pages'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CreateUser'
              Title.Caption = 'Created By'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CreateDate'
              Title.Caption = 'Create Date'
              Width = 127
              Visible = True
            end>
        end
        object CoolBar12: TCoolBar
          Left = 1
          Top = 1
          Width = 388
          Height = 26
          AutoSize = True
          Bands = <
            item
              Control = ToolBar12
              ImageIndex = -1
              MinHeight = 22
              Width = 384
            end>
          object ToolBar12: TToolBar
            Left = 9
            Top = 0
            Width = 371
            Height = 22
            AutoSize = True
            ButtonWidth = 72
            Caption = 'ToolBar12'
            EdgeBorders = []
            Flat = True
            Images = dtmMain.imglstMain
            List = True
            ShowCaptions = True
            TabOrder = 0
            object btnReIndexDocument: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Re-Index'
              ImageIndex = 18
              OnClick = btnReIndexDocumentClick
            end
            object btnDeleteDocument: TToolButton
              Left = 76
              Top = 0
              Caption = 'Delete'
              ImageIndex = 7
              OnClick = btnDeleteDocumentClick
            end
          end
        end
        object edtDocumentID: TDBEdit
          Left = 56
          Top = 144
          Width = 121
          Height = 21
          DataField = 'DocumentID'
          DataSource = dtmLoanC.dtsDocuments
          TabOrder = 2
          Visible = False
          OnChange = edtDocumentIDChange
        end
      end
      object pnlImageDock: TPanel
        Left = 390
        Top = 0
        Width = 669
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pnlImage: TPanel
          Left = 0
          Top = 0
          Width = 669
          Height = 445
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object ImageEnVect1: TImageEnVect
            Left = 205
            Top = 26
            Width = 464
            Height = 402
            ParentCtl3D = False
            ImageEnVersion = '3.0.4'
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnClick = ImageEnVect1Click
          end
          object prgImage: TProgressBar
            Left = 0
            Top = 428
            Width = 669
            Height = 17
            Align = alBottom
            TabOrder = 1
            Visible = False
          end
          object imnMulti: TImageEnMView
            Left = 0
            Top = 26
            Width = 205
            Height = 402
            ParentCtl3D = False
            ThumbWidth = 170
            ThumbHeight = 170
            OnImageSelect = imnMultiImageSelect
            GridWidth = 1
            SelectionWidth = 3
            SelectionColor = clNavy
            Style = iemsFlat
            EnableMultiSelect = True
            MultiSelectionOptions = [iemoSelectOnMouseUp]
            ThumbnailsBorderColor = clBlack
            ImageEnVersion = '3.0.4'
            Align = alLeft
            TabOrder = 2
          end
          object clbNavigate: TCoolBar
            Left = 0
            Top = 0
            Width = 669
            Height = 26
            AutoSize = True
            Bands = <
              item
                Control = tlbPreview
                ImageIndex = -1
                MinHeight = 22
                Width = 665
              end>
            object tlbPreview: TToolBar
              Left = 9
              Top = 0
              Width = 652
              Height = 22
              AutoSize = True
              ButtonWidth = 106
              Caption = 'tlbPreview'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnPrint: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Print'
                ImageIndex = 1
                OnClick = btnPrintClick
              end
              object btnZoom: TToolButton
                Left = 53
                Top = 0
                AutoSize = True
                Caption = 'Zoom'
                ImageIndex = 14
                OnClick = btnZoomClick
              end
              object btnZoomIn: TToolButton
                Left = 110
                Top = 0
                AutoSize = True
                Caption = 'Zoom In'
                ImageIndex = 48
                OnClick = btnZoomInClick
              end
              object btnZoomOut: TToolButton
                Left = 180
                Top = 0
                AutoSize = True
                Caption = 'Zoom Out'
                ImageIndex = 47
                OnClick = btnZoomInClick
              end
              object btnRotate: TToolButton
                Left = 258
                Top = 0
                AutoSize = True
                Caption = 'Rotate'
                ImageIndex = 38
                OnClick = btnRotateClick
              end
              object btnAffordability2: TToolButton
                Left = 322
                Top = 0
                AutoSize = True
                Caption = 'Affordability'
                ImageIndex = 35
                Visible = False
                OnClick = btnAffordabilityClick
              end
              object btnDebt: TToolButton
                Left = 412
                Top = 0
                AutoSize = True
                Caption = 'Debt Obligations'
                ImageIndex = 37
                Visible = False
                OnClick = btnDebtClick
              end
            end
          end
        end
      end
    end
    object tsVetting: TTabSheet
      Caption = 'Vetting'
      ImageIndex = 12
      OnResize = tsVettingResize
      OnShow = tsVettingShow
      DesignSize = (
        1059
        445)
      object grpDeclined: TGroupBox
        Left = 8
        Top = 254
        Width = 1052
        Height = 179
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Declined'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 25
          Width = 23
          Height = 13
          Caption = 'Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 16
          Top = 49
          Width = 36
          Height = 13
          Caption = 'User ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 16
          Top = 73
          Width = 36
          Height = 13
          Caption = 'Reason'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 16
          Top = 97
          Width = 35
          Height = 13
          Caption = 'Specify'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtDateDeclined: TDBEdit
          Left = 96
          Top = 21
          Width = 169
          Height = 21
          DataField = 'CreateDate'
          DataSource = dtmLoanC.dtsCurrentStatus
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtUserDeclined: TDBEdit
          Left = 96
          Top = 45
          Width = 169
          Height = 21
          DataField = 'CreateUser'
          DataSource = dtmLoanC.dtsCurrentStatus
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 96
          Top = 69
          Width = 241
          Height = 21
          DataField = 'CurReason'
          DataSource = dtmLoanC.dtsLoanDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'IDVal'
          ListField = 'Description'
          ListSource = dtmLoanC.dtsLUReasons
          ParentFont = False
          TabOrder = 2
        end
        object lstStatusSubReasons: TDBLookupListBox
          Left = 96
          Top = 93
          Width = 241
          Height = 69
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'StatusSubReasonID'
          ListField = 'Description'
          ListSource = dtmLoanC.dtsAccountSubReason
          ParentFont = False
          TabOrder = 3
        end
      end
      object PageControl3: TPageControl
        Left = 8
        Top = 8
        Width = 1052
        Height = 241
        ActivePage = tsFlags
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        object tsFlags: TTabSheet
          Caption = 'Vetting Flags'
          object grdPolicies: TDBGrid
            Left = 0
            Top = 26
            Width = 1044
            Height = 187
            Align = alClient
            DataSource = dtmLoanC.dtsPolicies
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdPoliciesDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Description'
                Width = 664
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Fail'
                Title.Alignment = taCenter
                Title.Caption = 'Result'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AuthoriseUser'
                Title.Caption = 'Authorised By'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AuthoriseDate'
                Title.Caption = 'Authorised Date'
                Width = 130
                Visible = True
              end>
          end
          object CoolBar16: TCoolBar
            Left = 0
            Top = 0
            Width = 1044
            Height = 26
            AutoSize = True
            Bands = <
              item
                Control = ToolBar16
                ImageIndex = -1
                MinHeight = 22
                Width = 1040
              end>
            object ToolBar16: TToolBar
              Left = 9
              Top = 0
              Width = 1027
              Height = 22
              AutoSize = True
              ButtonWidth = 73
              Caption = 'ToolBar16'
              EdgeBorders = []
              Flat = True
              Images = ImageList1
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnAuthoriseVettingFlags: TToolButton
                Left = 0
                Top = 0
                Caption = 'Authorise'
                ImageIndex = 2
                OnClick = btnAuthoriseVettingFlagsClick
              end
            end
          end
        end
        object tsPayrollRules: TTabSheet
          Caption = 'Payroll Rules'
          ImageIndex = 1
          object grdPayrollRules: TDBGrid
            Left = 0
            Top = 0
            Width = 1044
            Height = 213
            Align = alClient
            DataSource = dtmLoanC.dtsPayrollRules
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdPayrollRulesDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Description'
                Width = 787
                Visible = True
              end>
          end
        end
      end
    end
    object tsAllNotes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 14
      OnShow = tsAllNotesShow
      object CoolBar11: TCoolBar
        Left = 0
        Top = 0
        Width = 1059
        Height = 30
        BandBorderStyle = bsNone
        Bands = <
          item
            Control = ToolBar11
            ImageIndex = -1
            MinHeight = 23
            Width = 1051
          end
          item
            Control = CheckBox1
            ImageIndex = -1
            Width = 1051
          end>
        BorderWidth = 1
        object ToolBar11: TToolBar
          Left = 9
          Top = 0
          Width = 1038
          Height = 23
          ButtonWidth = 86
          Caption = 'ToolBar1'
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          List = True
          ShowCaptions = True
          TabOrder = 0
          object btnNewNoteAll: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = 'New Note'
            ImageIndex = 3
            OnClick = btnNewNoteAllClick
          end
          object btnEditNoteAll: TToolButton
            Left = 78
            Top = 0
            AutoSize = True
            Caption = 'Amend Note'
            ImageIndex = 4
            OnClick = btnEditNoteAllClick
          end
        end
        object CheckBox1: TCheckBox
          Left = 9
          Top = 23
          Width = 1038
          Height = 25
          Caption = 'CheckBox1'
          TabOrder = 1
        end
      end
      object rdtAllNotes: TRichEdit
        Left = 0
        Top = 30
        Width = 1059
        Height = 415
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsRates: TTabSheet
      Caption = 'Rates'
      ImageIndex = 16
      object imgLocked: TImage
        Left = 584
        Top = 68
        Width = 16
        Height = 16
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D617036050000424D360500000000000036040000280000001000
          000010000000010008000000000000010000130B0000130B0000000100000001
          0000000000008484840042ADBD001094CE0042CEEF00FF00FF005ADEFF009CE7
          FF00ADF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00050505050505030303030305050505050505050502020406060604030305
          0505050505020407070700060606040305050505020407070707000707060604
          0305050502080707070700070707060603050505020808070700000007070706
          0305050502080808070100010707070603050505020408080808070707070704
          0305050505020202020202020202020205050505050502070305050502070305
          0505050505050207030505050207030505050505050502040403030304040305
          0505050505050502040707070403050505050505050505050202020203050505
          0505050505050505050505050505050505050505050505050505050505050505
          0505}
        Transparent = True
        Visible = False
      end
      object grdRates: TDBGrid
        Left = 8
        Top = 32
        Width = 529
        Height = 369
        DataSource = dtmLoanRates.dtsRateHistory
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdRatesDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EffectiveDate'
            Title.Alignment = taCenter
            Title.Caption = 'Effective Date'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'InterestRate'
            Title.Alignment = taCenter
            Title.Caption = 'Interest Rate'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateUser'
            Title.Caption = 'Created By'
            Width = 100
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'Status'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object clbRates: TCoolBar
        Left = 0
        Top = 0
        Width = 1059
        Height = 29
        AutoSize = True
        Bands = <
          item
            Control = tlbRates
            ImageIndex = -1
            Width = 1055
          end>
        object tlbRates: TToolBar
          Left = 9
          Top = 0
          Width = 1042
          Height = 25
          ButtonWidth = 59
          Caption = 'tlbRates'
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          List = True
          ShowCaptions = True
          TabOrder = 0
          object btnNewRate: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = 'New'
            ImageIndex = 3
            OnClick = btnNewRateClick
          end
          object btnCancelRate: TToolButton
            Left = 52
            Top = 0
            Caption = 'Cancel'
            ImageIndex = 7
            OnClick = btnCancelRateClick
          end
        end
      end
      object BitBtn1: TBitBtn
        Left = 600
        Top = 144
        Width = 97
        Height = 25
        Caption = 'Calc Revision'
        TabOrder = 2
        Visible = False
        OnClick = BitBtn1Click
      end
    end
    object tsFees: TTabSheet
      Caption = 'Fees'
      ImageIndex = 17
      object tcFees: TTabControl
        Left = 8
        Top = 8
        Width = 849
        Height = 393
        TabOrder = 0
        Tabs.Strings = (
          'Fee 1'
          'Fee 2'
          'Fee 3')
        TabIndex = 0
        OnChange = tcFeesChange
        object grdFees: TDBGrid
          Left = 4
          Top = 24
          Width = 841
          Height = 365
          Align = alClient
          DataSource = dtmLoanFees.dtsFeeDetail
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
              FieldName = 'EffectiveDate'
              Title.Alignment = taCenter
              Title.Caption = 'Effective Date'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Type1'
              Title.Alignment = taCenter
              Title.Caption = 'Type 1'
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Value1'
              Title.Alignment = taCenter
              Title.Caption = 'Value 1'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Type2'
              Title.Alignment = taCenter
              Title.Caption = 'Type 2'
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Value2'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OffSet2'
              Title.Alignment = taRightJustify
              Title.Caption = 'OffSet 2'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CeilAmount'
              Title.Alignment = taRightJustify
              Title.Caption = 'Ceiling 2'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CreateDate'
              Title.Alignment = taCenter
              Title.Caption = 'Date Created'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CreateUser'
              Title.Caption = 'Created By'
              Width = 110
              Visible = True
            end>
        end
      end
    end
    object tsAccountFlags: TTabSheet
      Caption = 'Account Flags'
      ImageIndex = 20
      OnShow = tsAccountFlagsShow
      DesignSize = (
        1059
        445)
      object pcAccountFlags: TPageControl
        Left = 16
        Top = 8
        Width = 1033
        Height = 417
        ActivePage = tsCurrentFlags
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object tsCurrentFlags: TTabSheet
          Caption = 'Current'
          object grdCurrentFlags: TDBGrid
            Left = 0
            Top = 38
            Width = 1025
            Height = 351
            Align = alClient
            DataSource = dtmAccountFlag.dtsCurrentFlags
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CreateDate'
                Title.Caption = 'Date Added'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateUser'
                Title.Caption = 'Added By'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FlagDescription'
                Title.Caption = 'Flag'
                Width = 200
                Visible = True
              end>
          end
          object CoolBar14: TCoolBar
            Left = 0
            Top = 0
            Width = 1025
            Height = 38
            AutoSize = True
            Bands = <
              item
                Control = ToolBar14
                ImageIndex = -1
                MinHeight = 34
                Width = 1021
              end>
            object ToolBar14: TToolBar
              Left = 9
              Top = 0
              Width = 1008
              Height = 34
              AutoSize = True
              BorderWidth = 1
              ButtonHeight = 30
              ButtonWidth = 97
              Caption = 'ToolBar14'
              EdgeBorders = []
              Flat = True
              Images = imlAccountFlags
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnMaintainFlag: TToolButton
                Left = 0
                Top = 0
                Caption = 'Add/Remove'
                ImageIndex = 0
                OnClick = btnMaintainFlagClick
              end
            end
          end
        end
        object tsHistoryFlags: TTabSheet
          Caption = 'History'
          ImageIndex = 1
          OnShow = tsHistoryFlagsShow
          object grdHistoryFlags: TDBGrid
            Left = 0
            Top = 38
            Width = 986
            Height = 351
            Align = alClient
            DataSource = dtmAccountFlag.dtsHistroyFlags
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CreateDate'
                Title.Caption = 'Date Added'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateUser'
                Title.Caption = 'Added By'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DisableDate'
                Title.Caption = 'Date Removed'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DisableUser'
                Title.Caption = 'Removed By'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FlagDescription'
                Title.Caption = 'Flag'
                Width = 200
                Visible = True
              end>
          end
          object CoolBar15: TCoolBar
            Left = 0
            Top = 0
            Width = 986
            Height = 38
            AutoSize = True
            Bands = <
              item
                Control = ToolBar15
                ImageIndex = -1
                MinHeight = 34
                Width = 982
              end>
            object ToolBar15: TToolBar
              Left = 9
              Top = 0
              Width = 969
              Height = 34
              AutoSize = True
              BorderWidth = 1
              ButtonHeight = 30
              ButtonWidth = 66
              Caption = 'ToolBar14'
              EdgeBorders = []
              Flat = True
              Images = imlAccountFlags
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnDeleteFlag: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Delete'
                ImageIndex = 1
                OnClick = btnDeleteFlagClick
              end
            end
          end
        end
      end
    end
    object tsCommunication: TTabSheet
      Caption = 'Communications'
      ImageIndex = 20
      OnShow = tsCommunicationShow
      object dbgEmailComm: TDBGrid
        Left = 0
        Top = 24
        Width = 1057
        Height = 417
        DataSource = dtmLoanC.dtsCommunication
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgEmailCommDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CreateDate'
            Title.Caption = 'Sent Date'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateUser'
            Title.Caption = 'Sent By'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Type'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CommunicationValue'
            Title.Caption = 'Cell No. / Email'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Subject'
            Title.Caption = 'Email Subject / SMS Message'
            Width = 445
            Visible = True
          end>
      end
      object tbComms: TToolBar
        Left = 0
        Top = 0
        Width = 1059
        Height = 25
        ButtonWidth = 49
        Caption = 'tbComms'
        Flat = True
        Images = imlTools
        List = True
        ShowCaptions = True
        TabOrder = 1
        object ToolButton8: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'ToolButton8'
          ImageIndex = 7
          Style = tbsSeparator
        end
        object btnViewCommunication: TToolButton
          Left = 8
          Top = 0
          AutoSize = True
          Caption = 'View'
          ImageIndex = 6
          OnClick = btnViewCommunicationClick
        end
      end
    end
  end
  object pnlStatusUpdate: TPanel
    Left = 0
    Top = 30
    Width = 1067
    Height = 45
    Align = alTop
    Color = clWhite
    TabOrder = 0
    DesignSize = (
      1067
      45)
    object tlbStatusUpdate: TToolBar
      Left = 230
      Top = 3
      Width = 615
      Height = 39
      Align = alNone
      Anchors = []
      ButtonHeight = 38
      ButtonWidth = 104
      Caption = 'ToolBar4'
      Color = clWhite
      DisabledImages = ImageList5
      EdgeBorders = []
      Flat = True
      Images = ImageList4
      List = True
      ParentColor = False
      ShowCaptions = True
      TabOrder = 0
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Width = 15
        Caption = 'ToolButton9'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object btnPreapproveLoan: TToolButton
        Left = 15
        Top = 0
        Caption = 'Pre-Approve'
        ImageIndex = 0
        OnClick = btnPreApproveLoanClick
      end
      object ToolButton4: TToolButton
        Left = 119
        Top = 0
        Width = 15
        Caption = 'ToolButton6'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object btnApproveLoan: TToolButton
        Left = 134
        Top = 0
        Caption = 'Approve'
        ImageIndex = 1
        OnClick = btnApproveLoanClick
      end
      object ToolButton11: TToolButton
        Left = 238
        Top = 0
        Width = 15
        Caption = 'ToolButton7'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object btnDeclineLoan: TToolButton
        Left = 253
        Top = 0
        Caption = 'Decline'
        ImageIndex = 2
        OnClick = btnDeclineLoanClick
      end
      object ToolButton13: TToolButton
        Left = 357
        Top = 0
        Width = 15
        Caption = 'ToolButton8'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object btnReviewLoan: TToolButton
        Left = 372
        Top = 0
        Caption = 'Review'
        ImageIndex = 4
        OnClick = btnReviewLoanClick
      end
      object ToolButton15: TToolButton
        Left = 476
        Top = 0
        Width = 15
        Caption = 'ToolButton10'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object btnCancelLoan: TToolButton
        Left = 491
        Top = 0
        Caption = 'Cancel'
        ImageIndex = 3
        OnClick = btnDeclineLoanClick
      end
      object ToolButton5: TToolButton
        Left = 595
        Top = 0
        Width = 15
        Caption = 'ToolButton5'
        ImageIndex = 5
        Style = tbsSeparator
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 548
    Width = 1067
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      1067
      39)
    object lblRestructured: TDBText
      Left = 550
      Top = 11
      Width = 86
      Height = 14
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      AutoSize = True
      DataField = 'Restructured'
      DataSource = dtmLoanC.dtsLoanDet
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object imgY: TImage
      Left = 472
      Top = 10
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000120B0000120B0000000100001800
        00000085420091F8EE003CE9BD0000B79B00CCCCCC00FFFFFF000BE9AB005FF2
        D40000CC990072F3DB004EF0CD001DE9B00000C59B000089490083F4E4002DEB
        B9005EF2D40000D89D003CEFC40000BD9B006BF7DE004FF0CB0042EFC5000000
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
        0000050505050505050505050505050505050505050505040405050505050505
        050505050505040D0D0405050505050505050505050400060600040505050505
        0505050504000611110600040505050505050504000B111111110B0004050505
        050504000F0808080808080F0004050505050D12080808020208080812000405
        05050D0A0C0C150000150C0C0C15000405050500101000050500070C0C0C0700
        040505050D0D050505050009131313070004050505050505050505000E030303
        090D05050505050505050505000E03030E0D0505050505050505050505000101
        00050505050505050505050505050D0D05050505050505050505050505050505
        0505}
      Stretch = True
      Transparent = True
      Visible = False
    end
    object imgN: TImage
      Left = 488
      Top = 10
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000120B0000120B0000000100003200
        0000AD581000E4BE9600D5995200FFFFFF00CC893D00CCCCCC00DAA76900BF6E
        1500D5A67B00F4E5D400BD8D6300E9D3BF00E0B98D00C8823200DDA96800DAA2
        5D00F1F1F100D1965300E8CBAE00CD8E4800C4AE9B00AF5E1A00C3782400E6B7
        7B00E1E1E100D1934A00B55A1900CA843600CC936000D0A07600DAA46400E2B1
        7300B76C2C00D59C5800E2C09C00DDB07A00D3954A00CD8D4400AF5F1900C582
        3E00E4C3A000EED7BD00DFAC6B00DCA76400C0741F00B5631900DEA55A00C57D
        2B00D39752000000000000000000000000000000000000000000000000000000
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
        000003030303180505050505180303030303030310050A15000000150A051003
        030303101400132A1717172A1300141003030314261E1F1F2A0E0E2A1F1E2614
        030318000F2A0E0E0F030F2B2B2A0F0018030A272B2B0F0F2103210F0F0F2B27
        0A0315210F2121210224242121210F2115032621020202021903231930303021
        26030006242424242529031E191919060003002313131304041B090304131323
        0003260104041B03190D11030D04040126031D08060D2F03292C29032F0D0608
        1D030315121E162303030323161E12150303030B20280C132C072C130C28200B
        030303030B151C22121212221C150B030303030303031D26000000261D030303
        0303}
      Transparent = True
      Visible = False
    end
    object imgCancel: TImage
      Left = 504
      Top = 10
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC4C4C4A8A8
        A8C4C4C4FF00FFFF00FFFF00FFC4C4C4A8A8A8C4C4C4FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFC4C4C4878793212155878793C4C4C4FF00FFC4C4C4878793
        212155878793C4C4C4FF00FFFF00FFFF00FFFF00FFC4C4C48888943131685D5D
        A9323268888894BDBDBD8888943232695D5DAA323268888894C4C4C4FF00FFFF
        00FFFF00FF8C8C9736366E6666B34F4FB26969B637376F6D6D8537376F6A6AB7
        5151B46767B536366E8C8C97FF00FFFF00FFFF00FF2F2F677878D95555B94F4F
        B55555B96E6EBC4949816F6FBC5656BA5252B85757BB8080E02F2F67FF00FFFF
        00FFFF00FFACACB83838917C7CEF5B5BC05858BE5C5CC07878CB5D5DC15959BF
        5E5EC27F7FF0383891ACACB8FF00FFFF00FFFF00FFFF00FFADADBA42429A8686
        F16464C86060C66161C76161C76666CA8B8BF142429AADADBAFF00FFFF00FFFF
        00FFFF00FFFF00FFC4C4C47878914848A88383DB6666CC6868CF6868CF8686DC
        4848A8787891C4C4C4FF00FFFF00FFFF00FFFF00FFC4C4C490909C3C3C7F5D5D
        BD6D6DD47171D87373DB7373DB7171D86262C33D3D7F90909CC4C4C4FF00FFFF
        00FFFF00FF9393A04242846060BF7070D77676DE8383E6C8C8F68585E87B7BE4
        7676DE6666C64242849393A0FF00FFFF00FFFF00FF50508C9595E77676D97878
        E08787E9C0C0F87777D6C3C3F98C8CEF7F7FE88080E29C9CE950508CFF00FFFF
        00FFFF00FFB3B3C06B6BBAAFAFF68D8DE9C3C3F96E6EBC9A9AB36E6EBCC9C9FA
        9494F1BABAF76C6CBAB3B3C0FF00FFFF00FFFF00FFFF00FFB4B4C17373BFB0B0
        FF7474C0B4B4C1FF00FFB4B4C17474C0B8B8FF7373BFB4B4C1FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFB6B6C36C6CABB6B6C3FF00FFFF00FFFF00FFB6B6C3
        6C6CABB6B6C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object imgUser: TImage
      Left = 632
      Top = 7
      Width = 16
      Height = 16
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFC7C7C7B2B2B2A6A6A6A3A3A3A3A3A3A3A3A3
        A6A6A6B2B2B2C7C7C7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDBDBD9D99
        978772697D5D4F7A5A4A2F231D7C5B4B8161528A756B9D9997BDBDBDFF00FFFF
        00FFFF00FFFF00FFFF00FF9286807E594AAB8472C9A08D8F75690000008B7164
        C9A08DAB8472836152948781FF00FFFF00FFFF00FFFF00FFFF00FF765445B78F
        7CE4B6A1FEDAC75F534D0000005E544FFEDAC7E4B6A1B68E7B7F5E4EFF00FFFF
        00FFFF00FFFF00FFC1BDBB7A5949D0A591FED3BAF2E5DA8D8480000000918984
        F2E5DAFDD3BACFA490856354FF00FFFF00FFFF00FFFF00FFFF00FF86685AD3A7
        93FFE3C8D6C6B1E9E7E61D1D1DE5E3E2CAB7A3FFE2C7D3A793907264FF00FFFF
        00FFFF00FFFF00FFFF00FFB4AAA5BE9482FEE0C2BCACA1D1D1D1313131CACACA
        B6A69BFEE0C2BF9583B8AEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3A7
        A1E5B8A1908883575457433F42555255827A76E1B49EB8ABA5FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFB5AAA3616E7F6E93B86E95BB678CB1
        616D7FB7ACA6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF87919C6589AD83AAD08FB6DC8EB4DA7498BC87919CFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF5E6F8282A9CFA1C7EDA7CFF0A6CDF0
        9BC1E75D6E82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF57606A90B7DDAAD3F1B6E3F6B3DEF5A6CDF05C656FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF565D648FB5DBADD7F3C5F6FCBBE9F8
        A7CFF0596067FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF5353555B6C7D656B726D72756B73796C7C8E4E4F51FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7B795F59565C5552564F4B625C59
        6A6562807B79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF86817F4F47434F47434F474386817FFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object imgLink: TImage
      Left = 528
      Top = 7
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000130B0000130B0000000100000001
        00000000000029293100736B630084848400C6C6C600FF00FF00FFFFFF00FFFF
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
        FF00050505050505050505050505050505050505050505050505030303030503
        0305050505050505050301010101030104050505050505050301040301040104
        0603050505050503010406060300040601050505050503010406030300040601
        0205050505030104060105000606000201050505050104060105050304010603
        0105050503040601030305050301060302050505010603010000030301040602
        0505050501060400030300010406020505050505050300040600010406020505
        0505050503010406010104060205050505050505010406020406060205050505
        0505050305060205020202050505050505050505050505050505050505050505
        0505}
      Transparent = True
      Visible = False
    end
    object imgSystem: TImage
      Left = 656
      Top = 7
      Width = 16
      Height = 16
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA298936F5A506D564C
        6B554B6F5A50A29893FF00FFFF00FFFF00FFA6A6A6A3A3A3A3A3A3A3A3A3A3A3
        A3A3A3A3958B868A7067B19B93B19B94B19B94B19B938A7067AEA49FFF00FFFF
        00FF7660555040385040384B3C34624E45504038504038504038504038504038
        50403850403850403850403850403894857E725B50937668947668866B5E725B
        50A18072D7AE9AD8AF9BD9B9AADAC3B7DACAC2DAC3B7D9B9AAFFFF33A4847472
        5B50725B50997A6C9A7B6D8A6F62735B50A28273D88873E5907AE5907AE5907A
        E5907AE5907AE5907AD89F56A78677735B50725B509F7F70A08071917466745C
        52AB8A7AF0A38BFFAD94FFAD94FFAD94FFAD94FFAD94FFAD94F0A38BB18F7F74
        5C52735C51A58475A6867696786B765F54B59281F0B69DFFC1A7FFC1A7FFC1A7
        FFC1A7FFC1A7FFC1A7F0B69DBC9887765F54745D52BCA195BEA296AB92887A63
        58BE9A88F0CBB1FFD8BCFFD8BCFFD8BCFFD8BCFFD8BCFFD8BCF0CBB1C6A08F7A
        6358765F54937668947769856B5E82695FC7A18FF0E5C8FFF3D5FFF3D5FFF3D5
        FFF3D5FFF3D5FFF3D5F0E5C8D1A99782695F796157B99585BB9786AA89798D74
        6ACFA896A59684A59684A59684A59684A59684A59684A59684A59684DCB29E8D
        746A7D655BC09B8ACFB1A3BBA1939E837AD7AE9BE4B9A5F0C3ADFACBB4FFD4BF
        FFDDCDFFD4BFFACBB4F0C3ADE4B9A59E837A836B61C7A18F9B7D6E927567A689
        80B59891B59891B59891B59891B59891B59891B59891B59891B59891B59891BE
        ABA78B7268D2AA97E1C0B1E6C4B4E7C5B5E6C4B4DAB09D8B7268FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF967C73E1B7A3A68575A78777A887
        77A78777EBBEA9967C73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFA48880EFC2ADF9CAB4FFD0B9FFD5C1FFD0B9F9CAB4A48880FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB69B94B59891B59891B59891B598
        91B59891B59891B69B94FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object imgFail: TImage
      Left = 568
      Top = 7
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F8F8665534B7C75
        72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DB5A2964C413DFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856A5DBEAD9E4C41
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DC6B7A74C413DFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856A5DCFC2AF4C41
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DB8B0B23B377C9292B9C2C2C9B8B8C59292B95050A3
        3333993333994040A08080B3FF00FFFF00FFFF00FFFF00FF856A5DD5CDBE5855
        A64E4EB73333993B3B9D6060C55555D98080EBA7A7F49C9CEF3C3CACFF00FFFF
        00FFFF00FFFF00FF856A5DE9E2C9544D6AACACEFD8D8F8E4E4FEA7A7EC3E3EAD
        4A4AB05F5FC56C6CCF333399FF00FFFF00FFFF00FFFF00FF856A5DF1EDD15148
        586666CC7B7BE49090FB6B6BD434349A4A4AB05F5FC56666CC333399FF00FFFF
        00FFFF00FFFF00FF856A5DFAF8DA534A616666CC7B7BE49090FB6B6BD434349A
        4A4AB05F5FC56666CC333399FF00FFFF00FFFF00FFFF00FF856A5DFFFEE6544D
        6A6666CC7B7BE49090FB6B6BD434349A4A4AB05F5FC56666CC333399FF00FFFF
        00FFFF00FFFF00FF856A5DFFFFF85552A56666CC7B7BE49090FB6B6BD43B3BA7
        5D5DC47D7DD78080D9333399FF00FFFF00FFFF00FFFF00FF856A5DCCCCE53C38
        778383D0B1B1ECB5B5F08C8CD44A4AAC333399333399333399333399FF00FFFF
        00FFFF00FFFF00FF856A5DFFFFFF4C413D4242A03333993C3C9E6060AA9292B9
        C2C2C9FF00FFC2C2C9B0B0C3FF00FFFF00FFFF00FFFF00FF9F8F8665534B7C75
        72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object imgPass: TImage
      Left = 584
      Top = 7
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F8F8665534B7C75
        72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DB5A2964C413DFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856A5DBEAD9E4C41
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DC6B7A74C413DFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856A5DCFC2AF4C41
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DAFC3A9187E597FB9A5BFC9C5B2C5BF7FB9A526A47B
        0099660099660EA07066B399FF00FFFF00FFFF00FFFF00FF856A5DD2D3BA0F87
        5E10B586009966089D6C12C6A100DFC000EDE100F5EC00EFE300AC79FF00FFFF
        00FFFF00FFFF00FF856A5DE9E2C9345D4A00DFAC00F4E700FEF200F1DA00C097
        00B98600CC9900CF9F009966FF00FFFF00FFFF00FFFF00FF856A5DF1EDD13E52
        4500996600D19E00FCC900DEAB00B27F00B98600CC9900CC99009966FF00FFFF
        00FFFF00FFFF00FF856A5DFAF8DA39574700996600D19E00FCC900DEAB00B27F
        00B98600CC9900CC99009966FF00FFFF00FFFF00FFFF00FF856A5DFFFEE6345D
        4A00996600D19E00FCC900DEAB00B27F00B98600CC9900CC99009966FF00FFFF
        00FFFF00FFFF00FF856A5DFFFFF80E895F00996600D19E00FCC900DEAB00BC8F
        00CBA400DCB900D9B3009966FF00FFFF00FFFF00FFFF00FF856A5DBFE5D91C78
        5700C99600E3C800F1D400D5BC17AD84009966009966009966009966FF00FFFF
        00FFFF00FFFF00FF856A5DFFFFFF4C413D0E9D6E009966079E6D38AA857FB9A5
        BFC9C5FF00FFBFC9C5A6C3B9FF00FFFF00FFFF00FFFF00FF9F8F8665534B7C75
        72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object imgInformation: TImage
      Left = 600
      Top = 7
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F8F8665534B7C75
        72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DB5A2964C413DFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856A5DBEAD9E4C41
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DC6B7A74C413DFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856A5DCFC2AF4C41
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF856A5DB8B0B23B377C8F9EAEC2C4C7B7BCC28F9EAE4A6F91
        2A537D2A537D3660887B90A5FF00FFFF00FFFF00FFFF00FF856A5DD5CDBE5855
        A64274A42A537D325B835297BD58D0E16EE7F276EEF76BE4F03A83B6FF00FFFF
        00FFFF00FFFF00FF856A5DE9E2C9544D6A62DEEB9EEFFCE3FDFF88E2F84AAFD6
        40A1D043A9DB47AEDD3A93BFFF00FFFF00FFFF00FFFF00FF856A5DF1EDD15148
        58408DC15AC0F28FF5FF57BDF03E9DCC40A1D043A9DB43A9DB3A93BFFF00FFFF
        00FFFF00FFFF00FF856A5DFAF8DA534A613A93BF5AC0F28FF5FF57BDF03E9DCC
        40A1D043A9DB43A9DB3A93BFFF00FFFF00FFFF00FFFF00FF856A5DFFFEE6544D
        6A3A93BF5AC0F28FF5FF57BDF03E9DCC40A1D043A9DB43A9DB3A93BFFF00FFFF
        00FFFF00FFFF00FF856A5DFFFFF85552A53A93BF5AC0F28FF5FF57BDF046A9D2
        50B9DC58C4E654BFE43A93BFFF00FFFF00FFFF00FFFF00FF856A5DCCCCE53C38
        7755C6DD82DBF5B5EDF778CFE553A8CB3A93BF3A93BF3A93BF3A93BFFF00FFFF
        00FFFF00FFFF00FF856A5DFFFFFF4C413D4599C13A93BF4398C164A5C595B6C7
        C3C8CBFF00FFC3C8CBB1C2CAFF00FFFF00FFFF00FFFF00FF9F8F8665534B7C75
        72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object imgLimited: TImage
      Left = 680
      Top = 7
      Width = 16
      Height = 16
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFC4C4C4A6A6A6A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3
        A6A6A6C4C4C4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC4C4C48D8D992C2C
        692424652424652424652424652424652C2C698D8D99C4C4C4FF00FFFF00FFFF
        00FFFF00FFC4C4C48E8E9A3636766060B56565BF6666C06666C06666C06666C0
        6464B83636768E8E9AC4C4C4FF00FFFF00FFC4C4C490909C3C3C7D6666BA5959
        B94B4BB14C4CB24C4CB24C4CB24C4CB25A5ABA6868BC3D3D7D90909CC4C4C4FF
        00FF91919D4242836B6BBE5C5CBC7070C3F5F5FBFFFFFFFFFFFFFFFFFFBEBEE4
        5B5BBB5E5EBE6C6CBF42428391919DFF00FF4646827171C36464C25D5DBCF5F5
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACAEA5454BA6666C37373C5464682FF
        00FF4646877373CB5454BAABABDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9797D75757BD7474CD464687FF00FF4D4D8E7C7CD25959BFD7D7F0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9CDBCDCDED5C5CC27E7ED44D4D8EFF
        00FF5454958585D85D5DC3ECECF8E2E2F5FFFFFFF6F6FCFFFFFFFFFFFFFFFFFF
        8C8CD8D8D8F26060C68787DA545495FF00FF5B5B9B8D8DDD6161C7D9D9F28E8E
        DBFFFFFF9393E0FFFFFFAFAFE9FFFFFF9191DEDADAF36565CB8F8FDF5B5B9BFF
        00FF6262A29696E36565CBDADAF49494E1FFFFFF9999E7FFFFFF9B9BE9FFFFFF
        7474DC7070D76B6BD29797E46262A2FF00FF6E6EAAACACED9090E37272D99999
        E7FFFFFF9F9FEEFFFFFFA1A1EFFFFFFF7C7CE47777DF9494E7AEAEEF6E6EAAFF
        00FFBBBBC77A7AB7BBBBF79797EB8E8EE9C1C1F6A4A4F4FFFFFFA6A6F5A4A4F4
        8383EC9B9BEFBCBCF77A7AB8BBBBC7FF00FFFF00FFBBBBC87C7CBABDBDF99E9E
        F38888F28C8CF7AAAAFB9595F98C8CF7A2A2F7BEBEF97D7DBABBBBC8FF00FFFF
        00FFFF00FFFF00FFBBBBC87D7DBBB5B5F7BCBCFDBDBDFEBDBDFEBDBDFEBDBDFE
        B7B7F87D7DBBBBBBC8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBBBBC87777
        B47272B27272B27272B27272B27272B27777B4BBBBC8FF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object imgFailOverride: TImage
      Left = 616
      Top = 7
      Width = 19
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D6170F6030000424DF60300000000000036000000280000001300
        0000100000000100180000000000C0030000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFC4C4C4859489246031AEB2AEFF00FFFF00FFFF00FFFF00FF000000FF00
        FFFF00FF9F8F8665534B7C7572FF00FFFF00FFFF00FFFF00FFFF00FFC4C4C484
        968C11693B077B4B5B8567CACACAFF00FFFF00FFFF00FF000000FF00FFFF00FF
        856A5DB5A2964C413DFF00FFFF00FFFF00FFFF00FFC4C4C483988E0E724601A5
        7200A976146E3EADB3AFFF00FFFF00FFFF00FF000000FF00FFFF00FF856A5DBE
        AD9E4C413DFF00FFFF00FFFF00FFC4C4C4829A900B7B5000AD7A00B17E00B17E
        049463588B70CACACAFF00FFFF00FF000000FF00FFFF00FF856A5DC6B7A74C41
        3DFF00FFFF00FFC4C4C4839E9508855B00B68300BA8700BA8700BA8700BA870F
        794BA8AFABFF00FFFF00FF000000FF00FFFF00FF856A5DCFC2AF4C413DFF00FF
        FF00FFA4C1B709A57500C39400C39000C79700E9D600C79700C39002A9783F8A
        69C7C7C7FF00FF000000FF00FFFF00FF856A5DB8B0B23B377C9292B9C2C2C9BF
        C9C525C19900F4EA00D2A600F4EA00DBB000F4EA00CF9F00CC99028F609DADA7
        FF00FF000000FF00FFFF00FF856A5DD5CDBE5855A64E4EB73333993B3B9DBFC9
        C526C7A100FFFF0BC3967FB9A50BC39600F6ED00DFAF00C4943B9273C7C7C700
        0000FF00FFFF00FF856A5DE9E2C9544D6AACACEFD8D8F8E4E4FEA7A7ECBFC9C5
        41B490A6C3B96C6CCFA6C3B90BC49800F9EF00EEBE009D709CAFA9000000FF00
        FFFF00FF856A5DF1EDD15148586666CC7B7BE49090FB6B6BD434349A4A4AB05F
        5FC56666CC333399FF00FF08C19D00FBF200E0B21F7F7E000000FF00FFFF00FF
        856A5DFAF8DA534A616666CC7B7BE49090FB6B6BD434349A4A4AB05F5FC56666
        CC333399FF00FFA6C3B90BC49900FFFF0CAE7F000000FF00FFFF00FF856A5DFF
        FEE6544D6A6666CC7B7BE49090FB6B6BD434349A4A4AB05F5FC56666CC333399
        FF00FFFF00FF8AA092109F6F8AA092000000FF00FFFF00FF856A5DFFFFF85552
        A56666CC7B7BE49090FB6B6BD43B3BA75D5DC47D7DD78080D9333399FF00FFFF
        00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF856A5DCCCCE53C38778383D0
        B1B1ECB5B5F08C8CD44A4AAC333399333399333399333399FF00FFFF00FFFF00
        FFFF00FFFF00FF000000FF00FFFF00FF856A5DFFFFFF4C413D4242A03333993C
        3C9E6060AA9292B9C2C2C9FF00FFC2C2C9B0B0C3FF00FFFF00FFFF00FFFF00FF
        FF00FF000000FF00FFFF00FF9F8F8665534B7C7572FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
        0000}
      Transparent = True
      Visible = False
    end
    object Image2: TImage
      Left = 432
      Top = 10
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
        FFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFF0000FF0000FFFFFFFF0000FF0000FFFFFFFF
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFF0000FF0000FF00
        00FFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        FFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFF0000FF0000FFFFFFFF0000FF0000FFFFFFFF
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFF0000FF0000FFFFFFFFFFFFFFFF
        FFFF0000FF0000FFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        808080808080808080808080808080808080808080808080808080808080FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Visible = False
    end
    object imgUnchecked: TImage
      Left = 416
      Top = 10
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
    object imgChecked: TImage
      Left = 400
      Top = 10
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
    object btnOK: TButton
      Left = 910
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel1: TButton
      Left = 990
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancel1Click
    end
    object btnApply: TButton
      Left = 829
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Apply'
      TabOrder = 2
      OnClick = btnApplyClick
    end
    object btnMyWork: TButton
      Left = 8
      Top = 7
      Width = 75
      Height = 25
      Caption = 'My Work'
      TabOrder = 3
      OnClick = btnMyWorkClick
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 1067
    Height = 30
    Align = alTop
    Caption = 'Panel10'
    TabOrder = 2
    object CoolBar5: TCoolBar
      Left = 1
      Top = 1
      Width = 784
      Height = 28
      Align = alClient
      AutoSize = True
      BandBorderStyle = bsNone
      Bands = <
        item
          Control = ToolBar4
          ImageIndex = -1
          MinHeight = 26
          Width = 784
        end>
      EdgeBorders = []
      object ToolBar4: TToolBar
        Left = 9
        Top = 0
        Width = 771
        Height = 26
        BorderWidth = 1
        ButtonWidth = 89
        Caption = 'ToolBar4'
        EdgeBorders = []
        Flat = True
        Images = dtmMain.imglstMain
        List = True
        ShowCaptions = True
        TabOrder = 0
        object btnCalcLoan: TToolButton
          Left = 0
          Top = 0
          Caption = 'Calculate'
          ImageIndex = 38
          Visible = False
          OnClick = btnCalcLoanClick
        end
        object btnAffordability: TToolButton
          Left = 89
          Top = 0
          Caption = 'Affordability'
          ImageIndex = 35
          OnClick = btnAffordabilityClick
        end
        object ToolButton3: TToolButton
          Left = 178
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 35
          Style = tbsSeparator
        end
        object btnReports: TToolButton
          Left = 186
          Top = 0
          Caption = 'Reports'
          ImageIndex = 41
          OnClick = btnReportsClick
        end
        object btnAddRequest: TToolButton
          Left = 275
          Top = 0
          Caption = 'Add Request'
          ImageIndex = 52
          OnClick = btnAddRequestClick
        end
        object btnReST: TToolButton
          Left = 364
          Top = 0
          Caption = 'Restructure'
          ImageIndex = 34
          Visible = False
          OnClick = btnReStClick
        end
      end
    end
    object Panel11: TPanel
      Left = 785
      Top = 1
      Width = 281
      Height = 28
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object pnlLoanStatus: TPanel
        Left = 107
        Top = 5
        Width = 157
        Height = 18
        BevelOuter = bvNone
        Caption = 'Loan Status'
        Color = clAppWorkSpace
        TabOrder = 0
      end
    end
  end
  object ppmDBBase: TPopupMenu
    Left = 688
    Top = 1
  end
  object ppmReports: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    Left = 719
    Top = 2
    object Affordability1: TMenuItem
      Caption = 'Affordability'
      OnClick = Affordability1Click
    end
    object Status1: TMenuItem
      Caption = 'Status'
      OnClick = Status1Click
    end
    object Tracking1: TMenuItem
      Caption = 'Tracking'
      OnClick = Tracking1Click
    end
    object Securities1: TMenuItem
      Caption = 'Securities'
      OnClick = Securities1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object ImageList1: TImageList
    Left = 236
    Top = 553
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60084948C002163
      3100ADB5AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8C84007B73
      730000000000000000000000000000000000C6C6C60084948C00106B3900007B
      4A005A8463000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000846B5A004A42
      390000000000000000000000000000000000849C8C000873420000A5730000AD
      7300106B39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000846B5A004A42
      3900000000000000000000000000C6C6C600087B520000AD7B0000B57B0000B5
      7B0000946300CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A004A42
      39000000000000000000C6C6C600849C940000B5840000BD840000BD840000BD
      840000BD8400ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000840000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A004A42
      39000000000000000000A5C6B50008A5730000C6940000C6940000EFD60000C6
      940000C69400398C6B00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000084000000840000008400000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A003931
      7B009494BD00C6C6CE00BDCEC60021C69C0000D6A50000F7EF0000DEB50000F7
      EF0000CE9C00008C63009CADA500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000008400000084000000840000008400000084000000000000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A005A52
      A5004A4AB50031319C0039399C00BDCEC60000FFFF0008C694007BBDA50008C6
      940000F7EF0000C6940039947300C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000008400000084000000000000008400000084000000840000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A00524A
      6B00ADADEF00DEDEFF00E7E7FF00A5A5EF0042B59400A5C6BD006B6BCE00A5C6
      BD0008C69C0000EFBD00009C73009CADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000008400000000000000000000000000000084000000840000008400000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A00524A
      5A006363CE007B7BE7009494FF006B6BD6004A4AB5005A5AC6006363CE003131
      9C000000000000FFF70000E7B500187B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000840000008400000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A00524A
      63006363CE007B7BE7009494FF006B6BD6004A4AB5005A5AC6006363CE003131
      9C000000000008C69C0000FFFF0008AD7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000008400000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A00524A
      6B006363CE007B7BE7009494FF006B6BD6004A4AB5005A5AC6006363CE003131
      9C00000000008CA59400109C6B008CA594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000846B5A005252
      A5006363CE007B7BE7009494FF006B6BD6005A5AC6007B7BD6008484DE003131
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000846B5A003939
      73008484D600B5B5EF00B5B5F7008C8CD60031319C0031319C0031319C003131
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000846B5A004A42
      39004242A50031319C0039399C006363AD00C6C6CE0000000000C6C6CE00B5B5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8C84007B73
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFF870000FFFFFFFFCF070000
      FFFFFFFFCF070000C007C007CE030000DFF7DFF7CC030000DDF7DFF7CC010000
      D8F7DFF7C0010000D077DFF7C0000000D237DFF7C0000000D717DFF7C0080000
      DF97DFF7C0080000DFD7DFF7C0080000DFF7DFF7C00F0000C007C007C00F0000
      FFFFFFFFC04F0000FFFFFFFFCFFF000000000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Height = 48
    Width = 48
    Left = 172
    Top = 553
    Bitmap = {
      494C010104000900040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C000000090000000010020000000000000B0
      0100000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700E7E7E700CECECE00BDBDBD00B5B5B500ADADAD00B5B5B500C6C6C600D6D6
      D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700E7E7E700CECECE00BDBDBD00B5B5B500ADADAD00B5B5B500C6C6C600D6D6
      D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700E7E7E700CECECE00BDBDBD00B5B5B500ADADAD00B5B5B500C6C6C600D6D6
      D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700E7E7E700CECECE00BDBDBD00B5B5B500ADADAD00B5B5B500C6C6C600D6D6
      D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDBDBD00A5A5A500ADAD
      AD00BDBDBD00CECECE00DEDEDE00E7DEDE00E7DEDE00DEDEDE00CECECE00BDBD
      BD00ADADAD009CA5A500A5A5A500C6C6C600F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDBDBD00A5A5A500ADAD
      AD00BDBDBD00CECECE00DEDEDE00E7DEDE00E7DEDE00DEDEDE00CECECE00BDBD
      BD00ADADAD009CA5A500A5A5A500C6C6C600F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDBDBD00A5A5A500ADAD
      AD00BDBDBD00CECECE00DEDEDE00E7DEDE00E7DEDE00DEDEDE00CECECE00BDBD
      BD00ADADAD009CA5A500A5A5A500C6C6C600F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDBDBD00A5A5A500ADAD
      AD00BDBDBD00CECECE00DEDEDE00E7DEDE00E7DEDE00DEDEDE00CECECE00BDBD
      BD00ADADAD009CA5A500A5A5A500C6C6C600F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00A5A5A500C6C6C600E7E7E700F7F7F700F7EF
      EF00EFEFEF00E7E7EF00E7E7E700DEDEE700D6D6DE00D6D6DE00D6D6DE00D6D6
      D600D6D6D600DEDEDE00DED6D600C6C6C6009C9C9C00ADADAD00EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00A5A5A500C6C6C600E7E7E700F7F7F700F7EF
      EF00F7EFEF00EFE7EF00E7DEE700E7D6DE00DED6DE00DED6D600DED6D600DED6
      D600D6D6D600DEDEDE00DED6D600C6C6C6009C9C9C00ADADAD00EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00A5A5A500C6C6C600E7E7E700F7F7F700F7EF
      EF00F7EFEF00EFEFE700EFE7DE00E7E7D600E7DED600DEDED600DEDED600DED6
      D600D6D6D600DEDEDE00DED6D600C6C6C6009C9C9C00ADADAD00EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00A5A5A500C6C6C600E7E7E700F7F7F700F7EF
      EF00F7EFEF00EFEFE700EFE7DE00E7E7D600E7DED600DEDED600DEDED600DED6
      D600D6D6D600DEDEDE00DED6D600C6C6C6009C9C9C00ADADAD00EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00A5A5A500DEDEDE00FFFFFF00FFFFFF00F7F7FF00EFEFF700D6D6
      D600ADA59C009C8C73009C845A009C8452009C8452009C845A009C8C6B00ADA5
      9C00C6C6CE00D6D6D600CEC6CE00CEC6C600DED6D600D6D6D6009C9CA500ADAD
      AD00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00A5A5A500DEDEDE00FFFFFF00FFFFFF00FFF7F700F7EFEF00D6D6
      D600A5ADA50084947B00739473006B946B006B946B00739C73007B947B00A5AD
      A500CEC6C600D6CED600CEC6CE00CEC6C600DED6D600D6D6D6009C9CA500ADAD
      AD00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00A5A5A500DEDEDE00FFFFFF00FFFFFF00FFFFF700F7F7E700D6D6
      CE009C9CB5007373A5005A5AA5005252A5005252A5005A5AA5006B6BA5009C9C
      AD00CECEC600DED6CE00D6CEC600CEC6C600DED6D600D6D6D6009C9CA500ADAD
      AD00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00A5A5A500DEDEDE00FFFFFF00FFFFFF00FFFFF700F7F7E700D6D6
      CE009C9CB5007373A5005A5AA5005252A5005252A5005A5AA5006B6BA5009C9C
      AD00CECEC600DED6CE00D6CEC600CEC6C600DED6D600D6D6D6009C9CA500ADAD
      AD00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAD
      AD00C6C6C600FFFFFF00FFFFFF00F7FFFF00D6D6D600A58C73008C6B31007B4A
      00007B420000844A00008C52000094520000945A0000945A0000945200008C52
      00008C5A00009C7B3900A5947300C6C6C600C6C6CE00C6C6C600DED6D600CECE
      CE0094949400DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAD
      AD00C6C6C600FFFFFF00FFFFFF00FFF7FF00D6D6D600849C8400528C5200216B
      2900106B180010732100107B210010842900108429001084290010842900187B
      2900297B39005A946300849C8400C6C6C600CEC6CE00C6BDC600DED6D600CECE
      CE0094949400DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAD
      AD00C6C6C600FFFFFF00FFFFFF00FFFFF700D6D6D6007373A50031319C000000
      8C000000940000009C000000A5000000AD000000AD000000AD000000AD000000
      A50000009C003939AD007373AD00C6C6C600D6CEC600CEC6BD00DED6D600CECE
      CE0094949400DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAD
      AD00C6C6C600FFFFFF00FFFFFF00FFFFF700D6D6D6007373A50031319C000000
      8C000000940000009C000000A5000000AD000000AD000000AD000000AD000000
      A50000009C003939AD007373AD00C6C6C600D6CEC600CEC6BD00DED6D600CECE
      CE0094949400DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00ADADAD00F7F7
      F700FFFFFF00FFFFFF00D6CECE008C734A00734200007B4200008C5200009C5A
      0000A56B0000AD6B0000B5730000B57B0000BD7B0000BD7B0000BD7B0000BD7B
      0000BD7B0000AD6B00009C5A0000946300009C844A00C6BDBD00C6C6CE00C6BD
      C600E7DEDE00ADADAD00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00ADADAD00F7F7
      F700FFFFFF00FFFFFF00CED6CE00638C5A00216B2100086B1000107B21001884
      3100218C39002194420021944A00219C5200219C5200219C520021A55A0021A5
      5A00219C52001894420010843100298439006B946B00BDC6BD00CEC6C600C6BD
      C600DEDEDE00ADADAD00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00ADADAD00F7F7
      F700FFFFFF00FFFFFF00CECED6004A4A940000008C00000094000000A5000000
      B5000000BD000000C6000000C6000000CE000000D6000000D6000000D6000000
      D6000000D6000000C6000000B5000000AD004A4AA500BDBDC600D6CEC600C6C6
      BD00DEDEDE00ADADAD00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00ADADAD00F7F7
      F700FFFFFF00FFFFFF00CECED6004A4A940000008C00000094000000A5000000
      B5000000BD000000C6000000C6000000CE000000D6000000D6000000D6000000
      D6000000D6000000C6000000B5000000AD004A4AA500BDBDC600D6CEC600C6C6
      BD00DEDEDE00ADADAD00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00BDBDBD00FFFFFF00FFFF
      FF00EFEFEF00947B5A006B3900007B420000945200009C630000A56B0000AD6B
      0000B5730000BD7B0000BD7B0000C6840000CE840000CE8C0000CE8C0000D68C
      0000D68C0000CE8C0000CE8C0000C6840000AD6B0000945A0000AD946300CEC6
      CE00BDBDBD00DED6D600C6C6C600A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00BDBDBD00FFFFFF00FFFF
      FF00EFEFEF0073946B0010631000106B1000187B290021843100218C39002194
      420021944A00219C5200219C520029A55A0029A55A0029AD630029AD630029AD
      6B0029AD6B0029AD6B0029AD630021A55A0018944200218439007BA58400CEC6
      CE00C6BDBD00D6D6D600C6C6C600A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00BDBDBD00FFFFFF00FFFF
      FF00EFEFEF005A5A9C0000008400000094000000A5000000B5000000BD000000
      C6000000CE000000CE000000D6000000D6000000DE000000E7000000E7000000
      E7000000E7000000E7000000E7000000DE000000C6000000A5006B6BB500CECE
      C600C6BDBD00D6D6D600C6C6C600A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00BDBDBD00FFFFFF00FFFF
      FF00EFEFEF005A5A9C0000008400000094000000A5000000B5000000BD000000
      C6000000CE000000CE000000D6000000DE000000DE000000E7000000E7000000
      E7000000E7000000E7000000E7000000DE000000C6000000A5006B6BB500CECE
      C600C6BDBD00D6D6D600C6C6C600A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00C6C6C600FFFFFF00FFFFFF00CECE
      C600734A1000733900008C520000945A00009C630000A56B0000AD6B0000B573
      0000BD7B0000BD7B0000C6840000C6840000CE8C0000CE8C0000D68C0000D694
      0000DE940000DE940000DE9C0000DE940000D6940000C6840000A5630000946B
      1800C6BDB500C6BDC600CECECE00CECECE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00C6C6C600FFFFFF00FFFFFF00CECE
      C600316B290008630800187B21002184290021843100218C3900219442002194
      4A00219C4A00219C5200299C5A0029A55A0029A5630029AD630029AD6B0029B5
      6B0029B5730029B5730029B5730029B5730029B56B0021A55A00108C3900398C
      4A00BDC6BD00C6BDC600CECECE00CECECE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00C6C6C600FFFFFF00FFFFFF00C6C6
      CE001010840000008C0000009C000000AD000000B5000000BD000000C6000000
      C6000000CE000000CE000000D6000000DE000000DE000000E7000000E7000000
      EF000000EF000000EF000000EF000000EF000000E7000000DE000000BD001818
      A500BDB5C600CEC6BD00CECECE00CECECE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00C6C6C600FFFFFF00FFFFFF00C6C6
      CE001010840000008C0000009C000000AD000000B5000000BD000000C6000000
      C6000000CE000000CE000000C6000000C6000000C6000000D6000000E7000000
      EF000000EF000000EF000000EF000000EF000000E7000000DE000000BD001818
      A500BDB5C600CEC6BD00CECECE00CECECE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00BDBDBD00FFFFFF00FFFFFF00BDB5A5006331
      00007B4200008C520000945A00009C630000A56B0000AD6B0000AD730000B573
      0000BD7B0000BD7B0000C6840000C6840000CE8C0000CE8C0000D6940000D694
      0000DE940000DE9C0000E79C0000E79C0000E79C0000DE9C0000D6940000BD73
      000094630000BDB5A500C6C6C600CECECE00C6C6C600ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00BDBDBD00FFFFFF00FFFFFF00ADBDAD00185A
      1000106B1000187B2100187B290021843100218C3900218C4200219442002194
      4A00219C4A00219C5200219C5A0029A55A0029A5630029AD630029AD6B0029B5
      6B0029B5730029B5730029BD7B0029BD7B0029BD7B0029BD730029B56B00189C
      4A0029844200B5BDAD00CEBDC600CECECE00C6C6C600ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00BDBDBD00FFFFFF00FFFFFF00A5A5BD000000
      730000008C0000009C000000AD000000B5000000B5000000BD000000BD000000
      C6000000CE000000CE000000D6000000D6000000DE000000DE000000E7000000
      E7000000EF000000EF000000F7000000F7000000F7000000EF000000E7000000
      CE000000A500ADA5C600CEC6BD00CECECE00C6C6C600ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00BDBDBD00FFFFFF00FFFFFF00A5A5BD000000
      730000008C0000009C000000AD000000B5000000B5000000BD000000BD000000
      C6000000C6000808C6007B7BD600A5A5DE009C9CDE003939C6000000BD000000
      E7000000EF000000EF000000F7000000F7000000F7000000EF000000E7000000
      CE000000A500ADA5C600CEC6BD00CECECE00C6C6C600ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFFFF00B5ADA500633100007B42
      00008C520000945A00009C5A00009C630000A56B0000AD6B0000AD730000B573
      0000B5730000AD6B0000AD6B0000AD730000B5730000B5730000C6840000D694
      0000DE940000DE9C0000E79C0000E79C0000E7A50000E7A50000E7A50000DE94
      0000BD7B0000945A0000B5AD9400C6BDC600D6D6D600B5BDBD00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFFFF00ADB5A500105A0800106B
      100018732100187B29002184310021843100218C3900218C4200219442002194
      4A00219C4A00219C5200299C5A0029A55A0029A5630029AD630029AD6B0029B5
      6B0029B5730029B5730029BD730029BD7B0029BD7B0029BD7B0029BD7B0029B5
      730021A5520021843900A5B5A500CEBDC600D6D6D600B5BDBD00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFFFF00A5A5BD00000073000000
      940000009C000000A5000000AD000000B5000000B5000000BD000000BD000000
      C6000000CE000000CE000000D6000000D6000000DE000000DE000000E7000000
      E7000000EF000000EF000000EF000000F7000000F7000000F7000000F7000000
      E7000000CE000000A5009C9CBD00CEC6BD00D6D6D600B5BDBD00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFFFF009C9CBD00000073000000
      940000009C000000A5000000AD000000B5000000B5000000BD000000BD000000
      C6003131CE00E7E7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8CD6000000
      C6000000EF000000EF000000EF000000F7000000F7000000F7000000F7000000
      E7000000CE000000A5009C9CBD00CEC6BD00D6D6D600B5BDBD00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500FFF7F700FFFFFF00C6C6BD00633100007B420000844A
      00008C520000945A00009C5A00009C630000A56B0000AD6B0000AD730000AD6B
      0000B5842100BDA56300BDA56300BDA56300C6A56300C6A56300AD842900AD73
      0000D6940000DE9C0000E79C0000E79C0000E7A50000EFA50000EFA50000E7A5
      0000DE940000BD7B0000945A0000BDB5A500BDBDBD00DEDEDE009C9C9C00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500FFF7F700FFFFFF00BDC6BD00105A0800106B08001873
      1800187B2100217B29002184310021843100218C3900218C4200219442002194
      420021944A00219C520029A55A0029A55A0029A5630029AD630029AD6B0029B5
      6B0029B56B0029B5730029BD730029BD7B0029BD7B0029BD7B0029BD840029BD
      7B0029B5730021A5520021843900ADBDAD00C6BDBD00DEDEDE009C9C9C00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500FFF7F700FFFFFF00BDBDCE000000730000008C000000
      94000000A5000000A5000000AD000000AD000000B5000000BD000000BD000000
      C6000000C6000000CE000000CE000000D6000000DE000000DE000000E7000000
      E7000000E7000000EF000000EF000000F7000000F7000000F7000000F7000000
      EF000000E7000000CE000000A500A5A5BD00C6BDBD00DEDEDE009C9C9C00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500FFF7F700FFFFFF00B5B5C6000000730000008C000000
      94000000A5000000A5000000AD000000AD000000B5000000BD000000BD000000
      C600D6D6EF00FFFFF700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF004242
      CE000000DE000000EF000000EF000000EF000000F7000000F7000000F7000000
      EF000000E7000000CE000000A500A5A5BD00C6BDBD00DEDEDE009C9C9C00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D600D6D6D600FFFFFF00DEDED6006339080073390000844A00008C52
      000094520000945A00009C5A00009C630000A56B0000AD6B0000AD6B0000BD8C
      2100FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B594
      3100C6840000DE9C0000DE9C0000E79C0000E79C0000E7A50000E7A50000E7A5
      0000E79C0000D6940000BD7300008C630800C6C6C600C6BDBD00DEDEDE00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D600D6D6D600FFFFFF00D6DED6002163180010630800186B18001873
      2100187B2100187B29002184310021843100218C390018843100218439002984
      4200187B3900107B3900219C520029A55A0029A55A0029AD630029AD630029AD
      6B0029B56B0029B5730029B5730029BD730029BD7B0029BD7B0029BD7B0029BD
      7B0029BD7B0029B56B00189C4A0031844200C6C6BD00C6BDBD00DEDEDE00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D600D6D6D600FFFFFF00D6D6DE000808730000008400000094000000
      9C000000A5000000A5000000AD000000AD000000B5000000B5000000AD000000
      BD000000C6000000CE000000CE000000D6000000D6000000DE000000DE000000
      E7000000E7000000E7000000DE000000E7000000EF000000EF000000EF000000
      EF000000EF000000DE000000C60008089C00C6C6C600C6BDBD00DEDEDE00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D600D6D6D600FFFFFF00D6D6DE000000730000008400000094000000
      9C000000A5000000A5000000AD000000AD000000B5000000BD000000BD002121
      CE00FFFFF700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF009494
      E7000000D6000000EF000000EF000000EF000000EF000000EF000000EF000000
      EF000000EF000000DE000000C60008089C00C6C6C600C6BDBD00DEDEDE00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADB5B500FFFFFF00F7FFFF007B6342006B3100007B420000844A00008C52
      000094520000945A00009C5A00009C630000A5630000A56B0000A5630000D6B5
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6BD
      8400BD7B0000DE940000DE9C0000E79C0000E79C0000E79C0000E79C0000E7A5
      0000E79C0000DE9C0000CE8C0000A56300009C7B4A00CECECE00D6CECE00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADB5B500FFFFFF00FFF7FF00527B4A00085A0000186B1000187318001873
      2100187B2100187B29002184310021843100107B29005A9C6B00C6CEC600CED6
      D600BDCEC6005A946B0010733900219C520029A55A0029A5630029AD630029AD
      6B0029B56B0029B56B0029B5730029B5730029BD7B0029BD7B0029BD7B0029BD
      7B0029BD7B0029B5730029AD6300108C390063946B00CEC6CE00CECECE00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADB5B500FFFFFF00FFFFF7004242840000007B0000008C00000094000000
      9C0000009C000000A5000000A5000000AD000000AD001818AD0018189C000000
      94000000BD000000CE000000CE000000CE000000D6000000D6000000DE000000
      DE000000DE001010CE002929BD000000B5000000DE000000EF000000EF000000
      EF000000EF000000E7000000D6000000B5004A4AA500D6CEC600CECECE00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADB5B500FFFFFF00FFFFF7003939840000007B0000008C00000094000000
      9C0000009C000000A5000000A5000000AD000000B5000000B5000000BD002121
      CE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF008C8C
      E7000000DE000000E7000000E7000000E7000000EF000000EF000000EF000000
      EF000000EF000000E7000000D6000000B5004A4AA500D6CEC600CECECE00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00E7E7E700FFFFFF00B5ADA50063290000733900007B4A0000844A00008C52
      00008C520000945A00009C5A00009C630000A5630000A56B0000A5630000D6B5
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6BD
      8C00BD7B0000DE940000DE940000DE9C0000E79C0000E79C0000E79C0000E79C
      0000E79C0000E79C0000DE940000C68400008C520000B5A59400C6C6C600DEDE
      DE009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00E7E7E700FFFFFF00ADB5A500105A000018630800186B1000187318001873
      2100187B2100187B290021842900107B21006BA57300E7E7E700E7E7E700DEDE
      E700E7E7E700E7E7E70073A58C0010733900219C520029A5630029AD630029AD
      6B0029AD6B0029B56B0029B5730029B5730029B5730029BD730029BD730029BD
      730029BD730029B5730029B56B0021A55A00107B29009CAD9C00CEBDC600DEDE
      DE009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00E7E7E700FFFFFF00A5A5BD00000073000000840000008C00000094000000
      9C0000009C000000A5000000A5000000A5005A63BD00DEDEDE00DEE7DE006363
      B500000094000000BD000000CE000000CE000000D6000000D6000000DE000000
      D6004242D600EFEFEF00FFFFF7009C9CD6000000AD000000D6000000EF000000
      E7000000E7000000E7000000DE000000CE0000009C009494B500CEC6BD00DEDE
      DE009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00E7E7E700FFFFFF009C9CB500000073000000840000008C00000094000000
      9C0000009C000000A5000000A5000000AD000000AD000000B5000000BD000000
      BD00C6C6EF00FFFFF700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF003131
      DE000000DE000000E7000000E7000000E7000000E7000000E7000000E7000000
      E7000000E7000000E7000000DE000000CE0000009C009494B500CEC6BD00DEDE
      DE009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00EFEFEF00735229006B3100007B420000844A0000844A00008C52
      00008C520000945A0000945A00009C630000A5630000A56B0000A5630000CEAD
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6BD
      8C00BD7B0000D6940000DE940000DE940000DE9C0000DE9C0000DE9C0000DE9C
      0000DE9C0000DE9C0000DE940000CE8C0000AD6B00008C632100C6C6C600D6CE
      CE00B5B5B500E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00EFE7EF0042733900105A0000186B1000186B1000187318001873
      180018732100187B2900107321006B9C7300DEDEDE00D6DEDE00D6DEDE00DEDE
      DE00DEDEDE00DEDEDE00E7E7E7007BA58C00107B3900219C520029AD630029AD
      630029AD6B0029AD6B0029B56B0029B5730029B5730029B5730029B5730029B5
      730029B5730029B5730029B56B0029AD63001894420042844A00CEC6C600D6CE
      CE00B5B5B500E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00EFEFE7002929840000007B0000008C0000008C00000094000000
      940000009C000000A50000009C005A5ABD00D6D6CE00CECECE00D6D6D600E7E7
      DE006363B500000094000000BD000000CE000000CE000000D6000000CE004A4A
      D600EFEFEF00EFEFEF00EFEFEF00FFFFF7009C9CD6000000AD000000D6000000
      E7000000E7000000E7000000DE000000D6000000BD0021219400CEC6C600D6CE
      CE00B5B5B500E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00EFEFE70021187B0000007B0000008C0000008C00000094000000
      940000009C000000A5000000A5000000AD000000AD000000B5000000B5000000
      BD001818CE00CECEEF00FFFFF700FFFFF700FFFFF700FFFFF7006B6BE7000000
      D6000000DE000000DE000000E7000000E7000000E7000000E7000000E7000000
      E7000000E7000000E7000000DE000000D6000000BD0021219400CEC6C600D6CE
      CE00B5B5B500E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00FFF7FF00B5ADA5005A290000733900007B420000844A0000844A00008C52
      00008C520000945A0000945A00009C5A00009C630000A56B0000A5630000CEAD
      6300FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6BD
      8C00BD7B0000D6940000D6940000D6940000DE940000DE940000DE940000DE94
      0000DE940000DE940000DE940000D6940000BD7B000094520000B5A59400C6C6
      C600DEDEDE00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00FFF7FF00ADB5A500105A000018630800186B1000186B1000186B18001873
      180018732100107318006B9C7300D6D6D600CED6D600D6D6D600D6DEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00E7E7E7007BAD9400107B3900219C5A0029AD
      630029AD630029AD6B0029AD6B0029B56B0029B56B0029B56B0029B5730029B5
      730029B5730029B56B0029B56B0029AD6B00219C520010842900A5AD9C00CEC6
      C600DEDEDE00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00FFFFF700A5A5B500000073000000840000008C0000008C00000094000000
      940000009C0000009C006363B500CECEC600BDC6C600C6C6CE00CECECE00D6D6
      D600E7E7E7006B6BB500000094000000BD000000CE000000C6004A4ACE00EFEF
      E700E7EFE700E7E7E700E7EFEF00EFEFEF00FFFFF7009494D6000000A5000000
      D6000000E7000000DE000000DE000000D6000000C60000009C009C94B500CEC6
      C600DEDEDE00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00FFFFF7009494B50000006B000000840000008C0000008C00000094000000
      940000009C0000009C000000A5000000A5000000AD000000AD000000B5000000
      BD000000BD000000C6004A4AD6007B7BE7006363DE001818D6000000D6000000
      D6000000D6000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000D6000000C60000009C009C94B500CEC6
      C600DEDEDE00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00F7F7
      F700EFEFEF008C7B5A006B310000733900007B4200007B420000844A0000844A
      00008C52000094520000945A00009C5A00009C630000A5630000A5630000CEAD
      6300F7FFFF00F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00D6BD
      8C00B5730000D68C0000D68C0000D6940000D6940000D6940000D6940000DE94
      0000D6940000D6940000D6940000D6940000C6840000A56300008C6B3900CEC6
      CE00DEDEDE00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00F7F7
      F700EFEFEF006B8C63001863000010630800186B1000186B1000186B18001873
      1800106B10006B946B00D6CED600CECECE00CECECE00CED6D600D6D6D600D6DE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7E70084AD9400107B3900219C
      5A0029AD630029AD630029AD630029AD6B0029AD6B0029AD6B0029B56B0029B5
      6B0029B56B0029AD6B0029AD6B0029AD630029A55A00188C390052845200CEC6
      CE00DEDEDE00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00F7F7
      F700F7EFE7005A5A940000007B000000840000008C0000008C00000094000000
      9400000094005252B500C6C6BD00B5B5B500BDBDBD00BDC6C600C6CECE00CECE
      CE00D6D6D600E7EFE7006363B500000094000000BD004242CE00E7EFE700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00FFFFF7008C8CCE000000
      BD000000DE000000DE000000DE000000D6000000CE000000AD0039399400D6CE
      C600DEDEDE00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00F7F7
      F700F7F7EF004A4A8C0000007B000000840000008C0000008C00000094000000
      940000009C0000009C000000A5000000A5000000AD000000AD000000B5000000
      B5000000B5000000AD000000AD000000AD000000AD000000AD000000BD000000
      D6000000D6000000D6000000D6000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE000000D6000000CE000000AD0039399400D6CE
      C600DEDEDE00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00F7F7
      F700C6C6C600735229008C63210073420000734200007B420000844A0000844A
      00008C5200008C520000945A0000945A00009C630000A5630000A5630000CEAD
      6300F7FFFF00F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00CEBD
      8400B5730000CE8C0000CE8C0000CE8C0000D6940000D6940000D6940000D694
      0000D6940000D6940000D6940000D68C0000CE840000B57300008C5A0000C6C6
      C600D6CECE00BDBDBD00E7E7E700FFFFFF00FFFFFF00FFFFFF00ADADAD00F7F7
      F700C6C6C60042733900428431001863080018630800186B1000186B10000863
      080063946B00CECED600C6C6CE00C6C6C600CECECE00CECECE00CED6D600D6D6
      D600D6DEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7E70084AD9400107B
      3900219C5A0029AD630029AD630029AD630029AD6B0029AD6B0029AD6B0029AD
      6B0029AD6B0029AD6B0029AD630029AD630029A55A0021944200297B3900C6C6
      C600D6CECE00BDBDBD00E7E7E700FFFFFF00FFFFFF00FFFFFF00ADADAD00F7F7
      F700C6C6C6002929840021219C00000084000000840000008C0000008C000000
      9400000094008484BD00BDBDB500B5B5B500B5B5BD00BDBDBD00BDC6C600C6CE
      CE00CECED600D6D6D600E7E7E7005A5AB5003939B500E7E7E700E7E7E700DEE7
      E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7EF00DEDEEF000000
      C6000000D6000000D6000000D6000000D6000000CE000000BD0000009400C6C6
      C600D6D6CE00BDBDBD00E7E7E700FFFFFF00FFFFFF00FFFFFF00ADADAD00F7F7
      F700BDBDBD0018187B0021219C00000084000000840000008C0000008C000000
      94000000940000009C0000009C000000A5000000A5000000AD000000AD000000
      B5001010B5009494CE00D6D6E700DEDEE700DEDEE700BDBDDE004242B5000000
      B5000000CE000000D6000000D6000000D6000000D6000000D6000000D6000000
      D6000000D6000000D6000000D6000000D6000000CE000000BD0000009400C6C6
      C600D6D6CE00BDBDBD00E7E7E700FFFFFF00FFFFFF00F7F7F700C6C6C600EFEF
      EF00ADA59400845A2100946B31008C6321007B4200007B420000844A0000844A
      00008C5200008C520000945A0000945A00009C5A00009C6300009C5A0000CEAD
      6300F7F7FF00EFF7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00CEBD
      8400B5730000CE8C0000CE8C0000CE8C0000CE8C0000CE8C0000CE8C0000D68C
      0000D68C0000CE8C0000CE8C0000CE8C0000CE840000BD7B00008C520000A594
      8C00CECECE00CECECE00C6C6C600FFFFFF00FFFFFF00F7F7F700C6C6C600F7EF
      EF009CAD9400427B31005284420042843900186B100010630800086308006B94
      6B00DED6DE00CECECE00C6C6CE00C6C6C600C6C6C600CECECE00CECECE00D6D6
      D600D6D6D600D6DEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7DEE70084AD
      9400107B3900219C520029A5630029A5630029AD630029AD630029AD630029AD
      630029AD630029AD630029A5630029A5630029A55A00219C4A0010732100949C
      9400D6CECE00CECECE00C6C6C600FFFFFF00FFFFFF00F7F7F700C6C6C600F7EF
      EF009494AD0021218C0031319C0021219C0000008C000000840000008C000000
      9400000094003131AD00BDBDBD00B5B5B500B5B5B500B5BDBD00BDBDBD00C6C6
      C600C6CECE00CED6D600D6DED600DEE7DE00DEE7DE00DEE7DE00DEDEDE00DEE7
      E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7E700F7F7EF006363DE000000
      CE000000D6000000D6000000CE000000CE000000CE000000BD00000094008C8C
      A500D6CECE00CECECE00C6C6C600FFFFFF00FFFFFF00F7F7F700C6C6C600F7F7
      EF008484A5000808840031319C0021219C0000008C000000840000008C000000
      94000000940000009C0000009C000000A5000000A5000000A5000000AD000000
      B500D6D6E700FFFFEF00EFEFEF00EFEFEF00EFEFEF00F7F7EF00FFFFF7004242
      BD000000C6000000CE000000CE000000CE000000D6000000D6000000D6000000
      D6000000D6000000D6000000CE000000CE000000CE000000BD00000094008C8C
      A500D6CECE00CECECE00C6C6C600FFFFFF00FFFFFF00E7E7E700DEDEDE00E7E7
      E700A5947B00845A21008C632900946B3100946B21007B4A00007B420000844A
      0000844A00008C5200008C520000945A0000945A00009C6300009C5A0000C6A5
      6300EFF7FF00EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700FFFFFF00CEB5
      8400AD6B0000C6840000C6840000CE840000CE8C0000CE8C0000CE8C0000CE8C
      0000CE8C0000CE8C0000CE8C0000CE8C0000C6840000BD7B0000945200009C84
      5A00CECED600DEDEDE00B5B5B500FFFFFF00FFFFFF00E7E7E700DEDEDE00E7E7
      E7008C9C8400427B31004A844200528C42004A84390018630800739C6B00E7E7
      E700D6D6DE00CECED600CECECE00C6CECE00C6C6C600CECECE00D6D6D600DED6
      DE00D6D6D600D6DEDE00D6DEDE00DEDEDE00DEDEDE00DEDEDE00D6DEDE00DEDE
      E70094B59C00187B42002194520029A55A0029A55A0029A5630029A5630029A5
      630029A5630029A55A0029A55A0029A55A0029A55A00219C4A00108429007394
      7300D6CED600DEDEDE00B5B5B500FFFFFF00FFFFFF00E7E7E700DEDEDE00EFE7
      DE007B7BA5002121940029299C003131A50021219C0000008C0000008C000000
      8C0000009400000094003939B500B5BDBD00B5B5B500B5B5B500B5BDBD00BDBD
      BD00C6C6C600C6CECE00CED6D600D6DEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEE7E700DEE7E700DEE7E700E7E7E700EFEFE7006363D6000000CE000000
      CE000000CE000000CE000000CE000000CE000000CE000000BD000000A5005A5A
      A500DED6CE00DEDEDE00B5B5B500FFFFFF00FFFFFF00E7E7E700DEDEDE00EFE7
      E70063639C001818940029299C003131A50021219C0000008C0000008C000000
      8C00000094000000940000009C0000009C000000A5000000A5000000A5002929
      BD00EFEFE700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00FFFFEF009494
      CE000000B5000000CE000000CE000000CE000000CE000000CE000000CE000000
      CE000000CE000000CE000000CE000000CE000000CE000000BD000000A5005A5A
      A500DED6CE00DEDEDE00B5B5B500FFFFFF00FFFFFF00D6D6D600DEDEDE00D6D6
      DE0084735A00845A21008C632900946B2900946B3100946B2900845200007B42
      0000844A00008C5200008C520000945A0000945A00009C5A00009C5A0000C6A5
      6300EFF7F700EFEFEF00EFEFEF00EFEFEF00F7F7F700F7F7F700FFFFFF00CEB5
      8400AD6B0000C6840000C6840000C6840000C6840000C6840000C6840000CE84
      0000C6840000C6840000C6840000C6840000C6840000BD7B00009C5A00009C7B
      4200D6D6DE00E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600DEDEDE00DED6
      DE006B845A004A8431004A843900528442004A84390094B58C00F7EFF700E7E7
      E700DEDEDE00D6D6D600CECED600CECECE00CECECE00CECECE0084B58C008CB5
      9400D6D6D600D6D6DE00D6DEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6DE
      DE00DEDEE7008CB59C00107339002194520029A55A0029A55A0029A55A0029A5
      5A0029A55A0029A55A0029A55A0029A55A00299C5A0021944A00108429005A94
      6300DED6D600E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600DEDEDE00DEDE
      D6005A5A8C002121940029299C0029299C003131A5002929A500000094000000
      8C000000940000009400000094003939B500BDBDBD00B5B5B500B5B5B500B5BD
      BD00BDBDC600C6C6C600CECECE00CED6D600D6DEDE00D6DEDE00DEDEDE00DEDE
      DE00DEDEDE00DEE7E700DEE7E700EFF7E7006B6BD6000000C6000000CE000000
      CE000000CE000000CE000000C6000000C6000000C6000000BD000000A5004242
      A500DEDECE00E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600DEDEDE00DEDE
      D600424284002121940029299C0029299C003131A5002929A500000094000000
      8C0000009400000094000000940000009C0000009C000000A5000000A5002929
      BD00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7EF009494
      CE000000B5000000C6000000C6000000C6000000CE000000CE000000CE000000
      CE000000CE000000CE000000C6000000C6000000C6000000BD000000A5004242
      A500DEDECE00E7E7E700A5A5A500FFFFFF00FFFFFF00DEDEDE00D6D6D600CEC6
      CE007B6342008C6329008C632900946B2900946B29009C6B31009C7329008C5A
      0800844A0000844A00008C5200008C520000945A0000945A0000945A0000C6A5
      6300EFEFF700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFF7EF00F7FFFF00CEB5
      8400A56B0000BD7B0000BD7B0000C6840000C6840000C6840000C6840000C684
      0000C6840000C6840000C6840000C6840000BD840000B57B00009C5A00008C6B
      2900D6D6DE00E7E7E700A5A5A500FFFFFF00FFFFFF00DEDEDE00D6D6D600CEC6
      CE005A7B4A004A8439004A8439004A8439007BA56B00FFFFFF00F7F7F700EFEF
      EF00E7E7E700DEDEDE00D6D6D600D6D6D600CECECE004A945200107B2100107B
      21005AA56B00CED6D600DEDEDE00D6DEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6DEDE00DEDEDE008CAD9C001073390018944A0029A55A0029A55A0029A5
      5A00299C5A00219C5200219C5200219C5200219C520021944A00188431004A84
      4A00DED6D600E7E7E700A5A5A500FFFFFF00FFFFFF00DEDEDE00D6D6D600CECE
      C60042428C002929940029299C0029299C0029299C003131A5002929A5000808
      940000008C000000940000009400000094003939B500BDBDBD00B5B5B500B5B5
      B500BDBDBD00BDC6C600C6C6CE00CECECE00CED6D600D6DEDE00DEDEDE00DEDE
      DE00DEDEDE00DEE7DE00E7EFE7006B6BD6000000BD000000C6000000C6000000
      C6000000C6000000C6000000C6000000C6000000BD000000BD000000A5002929
      9400DEDECE00E7E7E700A5A5A500FFFFFF00FFFFFF00DEDEDE00D6D6D600CECE
      C60029297B002929940029299C0029299C0029299C003131A5002929A5000808
      940000008C0000009400000094000000940000009C0000009C0000009C002929
      B500E7E7DE00DEDEDE00DEDEE700E7E7E700E7E7E700E7E7E700EFEFE7009494
      CE000000AD000000C6000000C6000000C6000000C6000000C6000000C6000000
      C6000000C6000000C6000000C6000000C6000000BD000000BD000000A5002929
      9400DEDECE00E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600BDBD
      BD007B6342008C6329008C632900946B2900946B2900946B29009C7329009C73
      31009C6B21008C5A0000844A00008C5200008C520000945A000094520000BDA5
      6300E7EFF700E7E7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00F7F7FF00C6B5
      8400A5630000BD7B0000BD7B0000BD7B0000BD7B0000BD7B0000BD7B0000BD7B
      0000BD7B0000BD7B0000BD7B0000BD7B0000BD7B0000B57300009C5A00007B5A
      1000CECED600E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600BDBD
      BD005A7B4A004A8439004A8439004A7B31007BA57300FFFFFF00F7F7F700F7F7
      F700EFEFEF00E7E7E700E7DEE700CED6CE004A8C4A0010731800187B29002184
      3100107B29004A9C5A00CED6D600DEDEDE00D6DEDE00DEDEDE00D6DEDE00DEDE
      DE00D6DEDE00D6DEDE00DEDEDE0094B5A50018733900188C4A00219C5200219C
      5200219C5200219C5200219C5200219C5200219C4A0021944A00188431003173
      3900D6CED600E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600C6BD
      BD0042428C002929940029299C0029299C0029299C0029299C002929A5003131
      A5002121A500000094000000940000009400000094003939B500B5B5BD00B5B5
      B500B5B5BD00BDBDBD00BDC6C600C6C6CE00CECECE00CED6D600D6DEDE00D6DE
      DE00DEDEDE00DEE7DE006363CE000000BD000000BD000000BD000000BD000000
      BD000000BD000000BD000000BD000000BD000000BD000000B5000000A5001010
      8400D6D6CE00E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600BDBD
      BD001818730029299C0029299C0029299C0029299C0029299C002929A5003131
      A5002121A50000009400000094000000940000009C0000009C0000009C003131
      B500E7E7DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00EFEFE7009494
      CE000000A5000000BD000000BD000000BD000000BD000000BD000000BD000000
      BD000000BD000000BD000000BD000000BD000000BD000000B5000000A5001010
      8400D6D6CE00E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600BDB5
      BD007B6342008C6329008C6329008C6B2900946B2900946B2900946B29009C73
      29009C733100A57329009C6B1800945A00008C5200008C5200008C4A0000BD9C
      6300E7E7EF00E7E7E700E7E7E700E7E7E700EFEFEF00EFEFEF00F7F7FF00CEBD
      9C00B5841000C6942100C6942100C6942100C6942100C6942100C6941800C684
      0000BD7B0000BD7B0000BD7B0000BD7B0000B57B0000B57300009C5A00007352
      0800CECED600E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600BDB5
      B5005A7B4A004A8439004A8439004A8439004A843900A5BD9C00FFFFFF00F7F7
      F700F7F7F700F7F7F700E7E7E7005A945A001073180018732100187B2100187B
      290018842900107B21004A9C5A00CED6D600DEDEDE00DEDEDE00DEE7E700DEE7
      E700E7E7E700E7E7E700DEDEDE00E7E7E700A5BDB500428C5A00429C630039A5
      5A00299C520021944A0021944A0021944A0021944A002194420018843100316B
      3100D6CED600E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600BDBD
      B50042428C00292994002929940029299C0029299C0029299C002929A5002929
      A5003131A5002929A5001818A50000009C000000940000008C006B73BD00BDBD
      B500ADADB500B5B5B500BDBDBD00BDC6C600C6CECE00CED6D600D6DEDE00DEE7
      E700E7EFE700B5B5D6001818A5002121C6002121CE002121C6001818C6000000
      C6000000BD000000BD000000BD000000BD000000B5000000B5000000A5000808
      8400D6D6CE00E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6D6D600BDB5
      B5001818730029299C002929940029299C0029299C0029299C002929A5002929
      A5003131A5002929A5001818A50000009C000000940000009400000094003131
      B500E7E7DE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00EFEFE700ADAD
      D6001818B5002121C6002121C6002121CE002121CE002121CE001818C6000000
      C6000000BD000000BD000000BD000000BD000000B5000000B5000000A5000808
      8400D6D6CE00E7E7E700A5A5A500FFFFFF00FFFFFF00D6D6D600D6CECE00BDB5
      BD00846B4A00845A29008C6329008C632900946B2900946B2900946B29009C6B
      29009C7329009C732900A57B3100A57B3100A57329009C6B10009C630000C6A5
      6B00E7E7EF00E7E7E700E7E7E700EFE7EF00EFEFEF00EFEFEF00F7F7FF00D6C6
      A500B5842100C6943100C6942900C6942900C6943100C69C3100CE9C3100CE9C
      3100C6942900C68C1800BD7B0000B5730000B5730000AD6B0000945A00007B5A
      1800D6D6DE00EFEFEF00A5A5A500FFFFFF00FFFFFF00D6D6D600D6CECE00BDB5
      BD005A8452004A8431004A8439004A8439004A84390042843900A5C69C00FFFF
      FF00FFFFFF00E7EFE7006B9C6B004A8C4A004A945200428C4200398C3900318C
      3900318C4200318C4200318C420073B58400DEE7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEE700E7E7E700B5C6BD005294630052A5
      6B005AAD73004AA56300319C52002194420021944200218C4200188429003973
      3900DED6DE00EFEFEF00A5A5A500FFFFFF00FFFFFF00D6D6D600D6CECE00BDBD
      B5004A4A8C00292994002929940029299C0029299C0029299C0029299C002929
      A5002929A5002929A5003131AD003131AD001818A5005A5AB500BDBDC600B5B5
      B500B5B5BD00BDBDBD00BDBDC600C6CECE00CED6D600D6D6D600DEDEDE00DEE7
      E700E7E7E700E7EFEF008C8CC6002121A5002929C6003131CE003131CE003131
      CE002929C6001818C6000000BD000000B5000000B5000000AD0000009C001818
      8400DEDED600EFEFEF00A5A5A500FFFFFF00FFFFFF00D6D6D600D6CECE00BDB5
      B50018187300292994002929940029299C0029299C0029299C0029299C002929
      A5002929A5002929A5003131AD003131AD002929AD001010A5000000A5004A4A
      B500E7E7DE00DEDEDE00DEDEDE00DEDEDE00E7E7E700E7E7E700EFEFE700BDBD
      D6002929B5002929C6002929C6002929C6003131C6003131C6003131CE003131
      CE002929C6001818C6000000BD000000B5000000B5000000AD0000009C001818
      8400DEDED600EFEFEF00A5A5A500FFFFFF00FFFFFF00DEDEDE00D6CECE00BDBD
      BD00846B5200845A29008C6329008C6329008C632900946B2900946B2900946B
      29009C6B29009C7329009C732900A5732900A57B2900A57B3100A57B2100CEB5
      8C00E7EFEF00E7E7E700E7E7E700E7E7E700EFEFEF00EFEFEF00F7F7FF00D6C6
      A500B5842100C6942900C6942900C6942900C6942900C6942900C6942900C694
      2900C6942900C6943100C6942900BD840800AD6B0000A56B00008C5200008C63
      2900DEE7E700EFEFEF00ADADAD00FFFFFF00FFFFFF00DEDEDE00D6CECE00C6BD
      BD0063845A004A7B31004A8439004A8439004A8439004A8439004A8439009CBD
      9400C6D6C60073A56B004A8C4200529452005294520052945A005A9C5A005A9C
      5A005A9C5A005A9C63005AA563004A9C5A0084BD8C00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700DEE7E700DEDEDE00DEDEE700ADC6B5004A94
      630052A56B005AAD73005AAD7300429C5A00218C4200218C3900107B21004A84
      4A00E7DEE700EFEFEF00ADADAD00FFFFFF00FFFFFF00DEDEDE00D6CECE00C6BD
      BD0052528C0029299400292994002929940029299C0029299C0029299C002929
      9C002929A5002929A5002929A5002121A5006B6BBD00D6D6CE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6CE00CECECE00CECECE00CED6D600D6D6DE00DEDE
      DE00DEE7E700E7E7E700EFEFEF008C8CC6002121A5002929BD002929C6002929
      C6002929C6003131C6002929C6000808BD000000AD000000A500000094002929
      9400E7E7DE00EFEFEF00ADADAD00FFFFFF00FFFFFF00DEDEDE00D6CECE00C6BD
      BD002929730029299400292994002929940029299C0029299C0029299C002929
      9C002929A5002929A5002929A5002929A5002929AD003131AD002929AD006B6B
      C600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7E700BDBD
      D6002929B5002929C6002929C6002929C6002929C6002929C6002929C6002929
      C6002929C6003131C6002929C6000808BD000000AD000000A500000094002929
      9400E7E7DE00EFEFEF00ADADAD00FFFFFF00FFFFFF00EFEFEF00D6D6D600C6C6
      C60094846B00845A29008C6329008C6329008C632900946B2900946B2900946B
      2900946B29009C7329009C7329009C732900A5732900A57B2900A5732100BD9C
      5A00E7E7EF00E7EFEF00E7EFEF00EFEFF700EFEFF700EFF7F700EFF7F700C6AD
      6B00B5842100BD8C2900BD8C2900BD942900BD942900BD942900BD942900BD94
      2900BD942900BD942900BD942900BD943100BD841800A56B0000844A00009473
      4A00E7E7EF00EFEFEF00B5B5B500FFFFFF00FFFFFF00EFEFEF00D6D6D600CEC6
      C6007B9473004A7B31004A7B39004A8439004A8439004A843900528442004284
      3900428439004A8C4200528C4A00528C4A005294520052945200529452005294
      5A00529C5A00529C5A00529C5A00529C63004A9C5A007BB58C00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEDEDE00DEDEDE00ADC6
      B5004A8C5A00529C63005AAD6B005AAD6B004AA5630021843900107318006394
      6300EFE7EF00EFEFEF00B5B5B500FFFFFF00FFFFFF00EFEFEF00D6D6D600CEC6
      BD006B6B9C002929940029299400292994002929940029299C0029299C002929
      9C0029299C002929A50021219C006B6BB500D6D6D600C6C6CE00C6C6C600C6C6
      C600BDBDC600BDC6C600C6C6C600C6C6C600CECECE00CECECE00D6D6D600D6D6
      DE00DEDEDE00DEE7E700E7E7E700EFF7EF008C8CC6002121A5002929BD002929
      C6002929BD002929BD002929BD003131BD001818BD000000A50000008C004A4A
      9C00EFEFE700EFEFEF00B5B5B500FFFFFF00FFFFFF00EFEFEF00D6D6D600CECE
      C600424284002121940029299400292994002929940029299C0029299C002929
      9C0029299C002929A5002929A5002929A5002929A5002929AD002121AD006B6B
      BD00E7E7DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7DE00C6C6
      D6002929AD002929BD002929BD002929BD002929BD002929BD002929BD002929
      BD002929BD002929BD002929BD003131BD001818BD000000A50000008C004A4A
      9C00EFEFE700EFEFEF00B5B5B500FFFFFF00FFFFFF00F7F7F700D6D6D600CEC6
      C600ADA59400845A3100845A29008C6329008C6329008C632900946B2900946B
      2900946B2900946B29009C7329009C7329009C732900A5732900A57B2900A57B
      2900BD9C5A00CEBD9400CEB58C00CEB58C00CEB58C00D6BD9400C6A56300B584
      2900BD8C2900BD8C2900BD8C2900BD8C2900BD8C2900BD8C2900BD8C2900BD8C
      2900BD8C2900BD8C2900BD8C2900BD8C2900BD8C3100AD8421007B4200009C84
      6B00EFEFF700DEDEDE00CECECE00FFFFFF00FFFFFF00F7F7F700D6D6D600CEC6
      C6009CAD9400528439004A7B31004A7B39004A8439004A8439004A8442005284
      420052844200528C4200528C4A00528C4A0052944A0052945200529452005294
      520052945A00529C5A00529C5A00529C5A00529C63004A9C5A0084B58C00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEDEDE00DEDE
      DE00ADBDB5004A8C5A00529C63005AA56B005AA56B004A9C5A00106B10007B94
      7300F7EFF700DEDEDE00CECECE00FFFFFF00FFFFFF00F7F7F700D6D6D600CEC6
      C6009494AD00313194002929940029299400292994002929940029299C002929
      9C0029299C0021219C007373BD00DEDEDE00D6D6D600CECECE00C6C6CE00C6C6
      C600C6C6C600BDBDC600C6C6C600C6C6C600C6C6C600CECECE00CECECE00D6D6
      D600D6DEDE00DEDEDE00DEE7E700E7E7E700EFF7EF008C8CBD0021219C002929
      BD002929BD002929BD002929BD002929BD003131BD002121B50000008C006B6B
      9C00F7F7EF00DEDEDE00CECECE00FFFFFF00FFFFFF00F7F7F700D6D6D600D6CE
      C6006363940018188C002929940029299400292994002929940029299C002929
      9C0029299C0029299C002929A5002929A5002929A5002929A5002121A5006B6B
      BD00E7E7DE00D6DED600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6
      D6003131AD002929BD002929BD002929BD002929BD002929BD002929BD002929
      BD002929BD002929BD002929BD002929BD003131BD002121B50000008C006B6B
      9C00F7F7EF00DEDEDE00CECECE00FFFFFF00FFFFFF00FFFFFF00D6D6D600CEC6
      C600ADA59C008C6B4200845A29008C6329008C6329008C6329008C632900946B
      2900946B2900946B29009C6B29009C7329009C7329009C732900A5732900A57B
      2900A57321009C6B18009C732900A57B42009C733100946B1800A5732100B584
      2900B5842900B58C2900B58C2900B58C2900BD8C2900BD8C2900BD8C2900BD8C
      2900BD8C2900BD8C2900BD8C2900B58C2900B5842900AD843100845A1000B5AD
      A500F7F7F700CECECE00E7E7E700FFFFFF00FFFFFF00FFFFFF00D6D6D600CEC6
      C600A5A5A5005A8C4A004A7B31004A7B31004A7B39004A8439004A8439005284
      420052844200528C4200528C4200528C4A00528C4A0052944A00529452005294
      5200529452005294520052945A00529C5A00529C5A00529C5A004A9C520084B5
      8C00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEE700D6DE
      DE00DEDEDE00ADBDAD004A8C5A00529C630052A563005A9C6300317B3100ADB5
      A500F7F7F700CECECE00E7E7E700FFFFFF00FFFFFF00FFFFFF00D6D6D600CEC6
      C600A59CA50042429C002929940029299400292994002929940029299C002929
      9C00212194006B6BB500EFEFEF00DEDEDE00D6D6D600CECECE00CECECE00C6C6
      C600C6C6C600BDBDC600BDBDC600C6CECE00CECECE00C6C6C600CECECE00CECE
      D600D6D6D600D6DEDE00DEDEDE00DEE7E700E7E7E700EFF7EF007B7BBD002121
      AD002929BD002929BD002929BD002929B5002929B5003131B50010108C00A5A5
      B500F7F7F700CECECE00E7E7E700FFFFFF00FFFFFF00FFFFFF00D6D6D600D6CE
      C6007B7B940008087B003131940029299400292994002929940029299C002929
      9C0029299C0029299C0029299C002929A5002929A5002929A5002121A5007373
      BD00DEE7DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00CECE
      D6003131AD002929B5002929B5002929BD002929BD002929BD002929BD002929
      BD002929BD002929BD002929BD002929B5002929B5003131B50010108C00A5A5
      B500F7F7F700CECECE00E7E7E700FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECE
      CE00ADADAD008C735200845A2900846329008C6329008C6329008C632900946B
      2900946B2900946B2900946B29009C6B29009C7329009C7329009C732900A573
      29009C732900B59C7300D6CEC600E7E7E700DEDEDE00C6BDA500947B4200A573
      2100B5842900B5842900B5842900B5842900B5842900B5842900B5842900B584
      2900B5842900B5842900B5842900B5842900AD842900A57B290084632100DEDE
      DE00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECE
      CE00B5ADAD006B8C5A004A7B31004A7B31004A7B39004A8439004A8439004A84
      39005284420052844200528C4200528C4200528C4A00528C4A00528C4A005294
      520052945200529452005294520052945A00529C5A00529C5A00529C5A004A94
      520084B58C00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00D6D6DE00DED6DE0094AD9C004A8C5200529C5A0052945200427B4200DEDE
      DE00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECE
      CE00B5ADAD005252940029299400292994002929940029299400292994002929
      9C0021219400A5A5D600F7F7EF00E7E7E700DEDEDE00D6D6D600CECECE00CECE
      CE00C6C6C600C6C6C600CECECE007B7BC6006B6BC600CECECE00C6CECE00CECE
      CE00CED6D600D6D6D600D6DEDE00DEDEDE00DEE7E700EFEFE700CECEE7002929
      AD002929B5002929B5002929B5002929B5002929B5002929AD0021218C00E7DE
      DE00FFFFF700B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECE
      CE00ADA5A5001818730029299400292994002929940029299400292994002929
      9C0029299C0029299C0029299C0029299C002929A5002929A5002121A5007B7B
      BD00DEDED600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECE
      D6003939AD002929B5002929B5002929B5002929B5002929B5002929B5002929
      B5002929B5002929B5002929B5002929B5002929B5002929AD0021218C00E7DE
      DE00FFFFF700B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700D6D6
      D600BDBDBD00A59C8C00845A3100845A2900846329008C6329008C6329008C63
      29008C6B2900946B2900946B2900946B2900946B29009C7329009C7329009C6B
      2100BDAD8400E7E7E700DEDEE700DEDEDE00DEDEE700E7EFEF00D6CEC6009473
      3100A57B2900AD842900AD842900AD842900B5842900B5842900B5842900B584
      2900B5842900B5842900B5842900AD842900AD7B2900946B18008C735200F7F7
      FF00F7F7F700B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700D6D6
      D600BDBDBD0094A58C00528439004A7B31004A7B31004A7B39004A8439004A84
      39004A8439005284420052844200528C4200528C4200528C4A00528C4A00528C
      4A0052944A005294520052945200529452005294520052945A0052945A00529C
      5A004A94520084B58C00E7E7E700E7E7EF00E7E7E700E7E7E700E7E7E700DEE7
      E700DEDEDE00D6D6DE00CECECE0052945A00529C5A00428C4200638C6300F7F7
      F700F7F7F700B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700D6D6
      D600C6BDB5008C8CAD0031319400292994002929940029299400292994002929
      9400212194006363B500EFEFEF00EFEFE700DEDEE700DEDEDE00D6D6D600CECE
      CE00CECECE00CED6CE008484BD002121A5002121A5006B6BC600CECECE00CECE
      CE00CECECE00CED6D600D6D6D600D6DEDE00DEE7E700EFEFE7007373C6002121
      AD002929B5002929B5002929B5002929AD002929AD0018189C0052529400FFFF
      F700F7F7F700B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700D6D6
      D600C6C6BD005252840018188C00292994002929940029299400292994002929
      940029299C0029299C0029299C0029299C0029299C002929A50021219C008484
      BD00DEDED600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D6004242A5002929AD002929B5002929B5002929B5002929B5002929B5002929
      B5002929B5002929B5002929B5002929AD002929AD0018189C0052529400FFFF
      F700F7F7F700B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00C6BDC600ADADA5008C6B4A00845A2900845A29008C6329008C6329008C63
      29008C632900946B2900946B2900946B2900946B2900946B2900946B2900A584
      4200DED6D600D6D6DE00DED6D600DEDEDE00DEDEDE00DEDEDE00E7E7EF00BDA5
      84009C732100AD842900AD842900AD842900AD842900AD842900AD842900AD84
      2900AD842900AD842900AD842900AD7B2900A57B31007B521000C6C6BD00FFFF
      FF00D6D6D600D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00C6BDC600ADADA500638C52004A7B31004A7B31004A7B31004A7B39004A84
      39004A8439004A843900528442005284420052844200528C4200528C4A00528C
      4A00528C4A00528C4A0052944A00529452005294520052945200529452005294
      520052945A004A944A0084B58C00E7EFEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700DEE7E700E7E7E700A5BDA500529452005294520031733100BDC6BD00FFFF
      FF00D6D6D600D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00C6C6BD00ADA5AD004A4A9C00292994002929940029299400292994002929
      940029299400212194006363B500EFEFEF00EFEFE700DEDEE700DED6DE00D6D6
      D600DED6D6008484BD002121A5002929A5002929A5002121A5006B6BBD00CECE
      CE00CECECE00CECECE00CED6D600D6DED600E7E7E7007B7BC6002121AD002929
      AD002929AD002929AD002929AD002929AD003131AD0010108C00BDBDCE00FFFF
      FF00D6D6D600D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00CEC6C6008C8C940018187B00313194002929940029299400292994002929
      94002929940029299C0029299C0029299C0029299C0029299C0021219C008484
      BD00DEDED600CECECE00CECECE00CECED600D6D6D600D6D6D600D6D6D600D6D6
      D6004A4AA5002929AD002929AD002929AD002929AD002929AD002929AD002929
      AD002929AD002929AD002929AD002929AD003131AD0010108C00BDBDCE00FFFF
      FF00D6D6D600D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700CECECE00B5B5B500A5948400845A2900845A2900846329008C6329008C63
      29008C6329008C6329008C6B2900946B2900946B2900946B2900946B2100AD8C
      5A00D6D6DE00D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7E700C6BD
      A5009C6B2100A57B2900A57B2900AD7B2900AD7B2900AD7B2900AD7B2900AD7B
      2900AD7B2900AD7B2900A57B2900A57B2900946B2100846B4200F7F7FF00FFFF
      FF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700CECECE00BDADB5008CA584004A7B31004A7B31004A7B31004A7B31004A7B
      39004A8439004A8439004A843900528442005284420052844200528C4200528C
      4200528C4A00528C4A00528C4A00528C4A0052944A0052945200529452005294
      520052945200529452004A944A0084B58400E7EFEF00E7E7EF00E7E7E700E7E7
      E700EFEFEF00A5C6A5004A945200529452004A8C42005A845200FFF7F700FFFF
      FF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700CECECE00BDB5AD008484A500292994002929940029299400292994002929
      94002929940029299400212194006363B500EFEFEF00EFE7E700DEDEDE00E7E7
      DE008484BD0021219C002929A5002929A5002929A5002929A5002121A5006B6B
      BD00CED6D600CECECE00CECECE00DEDEDE007B7BC6002121A5002929AD002929
      AD002929AD002929AD002929AD002929A50021219C0042428C00FFFFF700FFFF
      FF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700CECECE00BDBDB50039397B0021218C002929940029299400292994002929
      940029299400292994002929940029299C0029299C0029299C0021219C008C8C
      C600D6D6CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6
      D6005252A5002121A5002929AD002929AD002929AD002929AD002929AD002929
      AD002929AD002929AD002929AD002929A50021219C0042428C00FFFFF700FFFF
      FF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CED6D600C6BDBD00ADADAD0094735200845A2100845A2900846329008463
      29008C6329008C6329008C6329008C632900946B2900946B2900946B2100A584
      5200D6D6DE00D6D6D600D6D6D600D6D6D600D6D6D600DEDED600DEE7E700C6B5
      94009C6B2100A57B2900A57B2900A57B2900A57B2900A57B2900A57B2900A57B
      2900A57B2900A57B2900A57B29009C732900734A0800C6BDB500FFFFFF00DEDE
      DE00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CED6D600C6BDBD00ADADAD006B945A00427B29004A7B31004A7B31004A7B
      31004A7B39004A8439004A8439004A843900528442005284420052844200528C
      4200528C4200528C4A00528C4A00528C4A00528C4A0052944A0052944A005294
      52005294520052945200529452004A8C4A0084B58400E7EFEF00EFEFEF00EFEF
      F700A5C6A5004A944A0052944A0052945200316B2900BDC6BD00FFFFFF00DEDE
      DE00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CED6D600C6BDBD00ADADAD005252A50021218C0029299400292994002929
      9400292994002929940029299400212194006B6BB500EFEFEF00EFEFEF008C8C
      C60021219C0029299C002929A5002929A5002929A5002929A5002929A5002121
      A5006B6BBD00CED6D600D6DEDE007B84C6002121A5002929A5002929A5002929
      A5002929A5002929A5002929A5002929A50008088400B5B5C600FFFFFF00DEDE
      DE00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CED6D600CEC6BD008C8C9C0010187B003131940029299400292994002929
      94002929940029299400292994002929940029299C0029299C00212194008C8C
      C600D6D6CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6
      D6005252AD002121A5002929A5002929A5002929A5002929A5002929A5002929
      A5002929A5002929A5002929A5003131A50008088400B5B5C600FFFFFF00DEDE
      DE00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00CECECE00B5B5B500A59C940084633100845A2900845A29008463
      2900846329008C6329008C6329008C6329008C632900946B2900946B2900946B
      2900C6BDA500D6DEDE00D6D6D600D6D6D600D6D6D600D6DEDE00DEDEDE00A584
      4A009C732900A5732900A5732900A5732900A57B2900A57B2900A57B2900A57B
      2900A57B2900A57329009C733100845A10009C8C7300FFFFFF00FFFFFF00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00CECECE00BDB5B5009CA59400528439004A7B31004A7B31004A7B
      31004A7B31004A7B39004A8439004A8439004A8439004A843900528442005284
      420052844200528C4200528C4200528C4200528C4A00528C4A00528C4A00528C
      4A0052944A0052944A0052944A0052944A004A8C42008CB58C00D6E7DE0094BD
      94004A8C4A0052944A0052944A00397B3100849C7B00FFFFFF00FFFFFF00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00CECECE00BDB5B5009494AD003131940029299400292994002929
      940029299400292994002929940029299400212194004A4AA5005A5AAD002929
      9C0029299C0029299C0029299C0029299C0029299C002929A5002929A5002929
      A5002121A5004A4AB5005252B5002121A5002929A5002929A5002929A5002929
      A5002929A5002929A5003131A50010108C007373A500FFFFFF00FFFFFF00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00CECECE00BDBDB5005252840018188C0031319400292994002929
      9400292994002929940029299400292994002929940029299400212194009494
      C600D6D6CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6
      D6005A5AAD0021219C002929A5002929A5002929A5002929A5002929A5002929
      A5002929A5002929A5003131A50010108C007373A500FFFFFF00FFFFFF00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6D600CEC6C600B5ADAD00A5948400845A2900845A2900845A
      2900845A2900846329008C6329008C6329008C6329008C632900946B29008C63
      29009C733900C6BDA500D6D6DE00D6D6DE00DEDEDE00D6D6CE00B5946B00946B
      21009C7329009C7329009C7329009C7329009C7329009C7329009C7329009C73
      29009C7329009C7329008C63210084633900F7F7F700FFFFFF00CECECE00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6D600CEC6C600B5ADAD008CA584004A7B31004A7B31004A7B
      31004A7B31004A7B31004A7B39004A7B39004A8439004A8439004A8439004A84
      3900528442005284420052844200528C4200528C4200528C4200528C4A00528C
      4A00528C4A00528C4A00528C4A00528C4A00528C4A004A8C420052944A004A8C
      4200528C4A00528C4A0042843900527B4A00F7F7F700FFFFFF00CECECE00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6D600CEC6C600B5ADAD008484AD0029299400292994002929
      9400292994002929940029299400292994002929940029299400212194002929
      940029299C0029299C0029299C0029299C0029299C0029299C0029299C002929
      9C002929A50029299C0021219C002929A5002929A5002929A5002929A5002929
      A5002929A5002929A5002121940039398C00F7F7F700FFFFFF00CECECE00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6D600CEC6C600ADADA50031317B0021219400292994002929
      9400292994002929940029299400292994002929940029299400212194009494
      C600D6D6CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6
      CE006363AD0021219C002929A5002929A5002929A5002929A5002929A5002929
      A5002929A5002929A5002121940039398400F7F7F700FFFFFF00CECECE00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700CECECE00BDBDBD00B5B5B5009C846B007B5A2100845A
      2900845A2900845A2900846329008C6329008C6329008C6329008C6329008C63
      29008C632900946B2900AD8C5A00B59C7300B5946B009C7B3900946B21009C6B
      29009C6B29009C7329009C7329009C7329009C7329009C7329009C7329009C73
      2900946B2900946321007B5A2900DEDEDE00FFFFFF00EFEFEF00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700CECECE00BDBDBD00B5B5B500849C73004A7B29004A7B
      31004A7B31004A7B31004A7B31004A7B31004A7B39004A8439004A8439004A84
      39004A84390052844200528442005284420052844200528C4200528C4200528C
      4200528C4200528C4200528C4A00528C4A00528C4A00528C4A00528C4A00528C
      4A00528C4A004A8439004A733900DEDEDE00FFFFFF00EFEFEF00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700CECECE00BDBDBD00BDB5AD006B6BA500212194002929
      9400292994002929940029299400292994002929940029299400292994002929
      9400292994002929940029299C0029299C0029299C0029299C0029299C002929
      9C0029299C0029299C0029299C0029299C0029299C0029299C0029299C002929
      9C0029299C0021219C0029298400DEDEDE00FFFFFF00EFEFEF00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700CECECE00C6BDBD00A5A5A50029297B00212194002929
      9400292994002929940029299400292994002929940029299400212194009C9C
      C600CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600D6D6
      CE006B6BAD0021219C0029299C0029299C0029299C0029299C0029299C002929
      9C0029299C0021219C0029298400D6D6DE00FFFFFF00EFEFEF00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700D6CECE00BDB5B500B5ADB5009C846B00845A
      2100845A2900845A2900845A2900846329008C6329008C6329008C6329008C63
      29008C6329008C6329008C6321008C6321008C632100946B2900946B2900946B
      2900946B2900946B2900946B2900946B29009C6B2900946B2900946B2900946B
      29008C63210073522100D6CECE00FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700D6CECE00BDB5B500B5ADB5007B9C6B004A7B
      29004A7B31004A7B31004A7B31004A7B31004A7B31004A7B39004A8439004A84
      39004A8439004A8439004A8439004A8439005284420052844200528442005284
      420052844200528C4200528C4200528C4200528C4200528C4200528C4200528C
      42004A84390042733100CED6CE00FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700D6CECE00BDB5B500B5B5AD006B6BA5002121
      9400292994002929940029299400292994002929940029299400292994002929
      9400292994002929940029299400292994002929940029299C0029299C002929
      9C0029299C0029299C0029299C0029299C0029299C0029299C0029299C002929
      9C002121940021218400CECED600FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700CECECE00BDBDB5009C9C9C0021217B002121
      9400292994002929940029299400292994002929940029299400212194009494
      BD00DEDECE00CECEC600CECEC600CECEC600CECEC600CECEC600CECEC600D6D6
      D6006363AD002121940029299C0029299C0029299C0029299C0029299C003131
      9C002121940021217B00CECED600FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00D6CECE00BDB5B500B5B5B500A594
      7B00846331007B5A2100845A2900845A290084632900846329008C6329008C63
      29008C6329008C6329008C6329008C632900946B2900946B2900946B2900946B
      2900946B2900946B2900946B2900946B2900946B2900946B2900946B2900845A
      18007B633100D6D6D600FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00D6CECE00BDB5B500B5B5B5008CA5
      8400528439004A7B29004A7B31004A7B31004A7B31004A7B31004A7B31004A7B
      39004A8439004A8439004A8439004A8439004A8439004A8439004A8439005284
      420052844200528442005284420052844200528442005284420052844200427B
      3100527B4200D6D6D600FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00D6CECE00BDB5B500B5B5AD007B7B
      AD003131940021218C0029299400292994002929940029299400292994002929
      9400292994002929940029299400292994002929940029299400292994002929
      940029299C0029299C0029299C0029299C0029299C0029299C0029299C001818
      8C0031318400D6D6D600FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00D6CECE00BDBDB5009C949C002929
      7B0018188C003131940029299400292994002929940029299400292994004242
      9C008C8CBD00ADADC600ADADC600B5B5C600B5B5C600ADADC600A5A5C6007373
      B5002929940029299C0029299C0029299C0029299C0029299C0031319C001818
      8C0029298400CECED600FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00D6CECE00BDB5B500B5B5
      B500AD9C94008C6B4A00845A2100845A2900845A2900845A2900846329008463
      29008C6329008C6329008C6329008C6329008C6329008C6329008C632900946B
      2900946B2900946B2900946B2900946B29008C6B29008C6329007B521800947B
      6300E7E7E700FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00BDB5B500B5AD
      B5009CAD9400638C52004A7B29004A7B29004A7B31004A7B31004A7B31004A7B
      31004A7B31004A7B39004A8439004A8439004A8439004A8439004A8439004A84
      39004A8439004A84390052843900528442004A8439004A84390039732900738C
      6B00E7E7E700FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00BDB5B500B5B5
      AD009494AD004A4A9C0021219400292994002929940029299400292994002929
      9400292994002929940029299400292994002929940029299400292994002929
      9400292994002929940029299400292994002929940029299400181884006363
      9400E7E7E700FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00C6BDBD00ADA5
      A500424284001010840029299400313194002929940029299400292994002929
      940021218C002929940031319400313194003131940029299400212194002121
      9400292994002929940029299400292994003131940029299400101084005252
      9400E7E7E700FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CECECE00C6BD
      BD00B5ADB500B5ADAD00A58C7B008C6B4200845A2900845A2900845A2900845A
      290084632900846329008C6329008C6329008C6329008C6329008C6329008C63
      29008C6329008C6329008C6329008C6329007B52210084633900BDB5A500F7F7
      FF00FFFFFF00EFEFEF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CECECE00C6BD
      BD00B5ADAD00ADADAD008CA57B005A8C4A004A7B31004A7B31004A7B31004A7B
      31004A7B31004A7B31004A7B31004A7B31004A7B39004A8439004A8439004A84
      39004A8439004A8439004A8439004A843900427B3100527B4A00ADBDAD00FFF7
      FF00FFFFFF00EFEFEF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CECECE00C6BD
      BD00B5B5AD00ADADB5007B7BAD0042429C002929940029299400292994002929
      9400292994002929940029299400292994002929940029299400292994002929
      94002929940029299400292994002929940021218C0039398C00A5A5BD00FFFF
      F700FFFFFF00EFEFEF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CECECE00C6C6
      C600BDB5AD007B7B940021217B00181884002929940031319400292994002929
      9400292994002929940029299400292994002929940029299400292994002929
      9400292994002929940031319400292994001010840029297B009C9CB500FFFF
      F700FFFFFF00EFEFEF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00CECECE00BDB5B500B5B5B500ADA5A500A5947B008C734A00845A3100845A
      2900845A2900845A2900845A2900845A2900845A2900845A29008C632900845A
      2900845A2900845A21007B5A290084634200ADA59400E7E7E700FFFFFF00FFFF
      FF00D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00CECECE00BDB5B500B5ADB500A5ADA5008CA58400638C5200528439004A7B
      31004A7B31004A7B31004A7B31004A7B31004A7B31004A7B31004A7B31004A7B
      31004A7B3100427B31004A7B3100527B4A009CAD9C00E7E7E700FFFFFF00FFFF
      FF00D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00CECECE00BDB5B500BDB5AD00A5A5AD007B7BAD004A4A9C00313194002929
      9400292994002929940029299400292994002929940029299400292994002929
      94002929940021218C0029298C0042428C009494AD00EFE7E700FFFFFF00FFFF
      FF00D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECE
      CE00CECECE00C6BDB500B5ADAD0073738C00181873001010840018188C002121
      9400292994003131940031319400313194003131940031319400313194002929
      94002121940018188C0010108400212173008C8CA500E7E7E700FFFFFF00FFFF
      FF00D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00D6CECE00CEC6C600BDBDBD00B5B5B500B5ADAD009C948C00A594
      7B0094735A0084633900846339008463310084633100845A31007B5A3100846B
      4200947B5A0094847300BDBDB500DEDEDE00F7F7F700FFFFFF00EFEFEF00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00D6CECE00CEC6C600BDBDBD00B5ADB500ADADAD00949C8C008CA5
      84006B8C5A005A8442005284420052843900528439004A7B39004A7B39005A84
      4A007394630084947B00BDBDB500DEDEDE00F7F7F700FFFFFF00EFEFEF00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00D6CECE00CEC6C600BDBDBD00B5B5AD00ADADAD008C8C9C007B7B
      AD005A5A9C0039398C0039399400313194003131940031318C0031318C004242
      94005A5A9C0073739C00B5B5BD00DEDEDE00F7F7F700FFFFFF00EFEFEF00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00D6CECE00CEC6C600C6C6BD00B5ADAD008C8C9C004A4A7B002929
      840021217B0018187B0010107B0010107B0010107B0010107B0018187B002121
      8400313184005A5A8C00ADA5B500DEDEDE00FFF7F700FFFFFF00EFEFEF00B5B5
      B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700D6D6DE00CECECE00CECECE00CEC6C600BDBDBD00BDBD
      BD00BDBDBD00ADADA500A59C9C009C9494009C9C9400A5A59C00B5B5AD00CECE
      CE00DED6DE00E7E7E700EFEFEF00EFEFEF00E7DEDE00B5B5B500C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700D6D6DE00CECECE00CECECE00CEC6C600C6BDBD00BDBD
      BD00BDB5BD00ADADAD00A5A59C009C9C94009C9C9400A5A59C00B5B5AD00CECE
      CE00DED6DE00E7E7E700EFEFEF00EFEFEF00E7DEDE00B5B5B500C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700D6D6DE00CECECE00CECECE00CEC6C600C6BDBD00C6BD
      BD00BDBDB500ADA5AD009C9CA50094949C0094949C009C9CA500B5ADB500CECE
      CE00DEDED600EFE7E700EFEFEF00EFEFEF00E7DEE700B5B5B500C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700D6D6DE00CECECE00CECECE00CECEC600CEC6BD00C6BD
      B500B5ADB5009C94A500848494007B738C007B7B94008C849C00A5A5AD00C6C6
      C600DEDED600EFEFE700F7EFEF00EFEFEF00E7DEDE00B5B5B500C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700D6D6D600CECECE00D6D6
      D600D6D6D600D6CECE00D6CECE00D6CECE00D6D6D600DED6D600DEDEDE00E7DE
      DE00E7DEDE00D6D6D600D6D6D600D6D6D600E7E7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700D6D6D600CECECE00D6D6
      D600D6D6D600D6CECE00D6CECE00D6CECE00D6D6D600DED6D600DEDEDE00E7DE
      DE00E7DEDE00D6D6D600D6D6D600D6D6D600E7E7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700D6D6D600CECECE00D6D6
      D600D6D6D600D6CECE00D6CECE00D6D6CE00D6D6D600DED6D600DEDEDE00E7DE
      DE00E7DEDE00D6D6D600D6D6D600D6D6D600E7E7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700D6D6D600CECECE00D6D6
      D600D6D6D600D6D6CE00D6D6CE00DED6D600DED6D600DEDED600E7DEDE00E7E7
      DE00E7DEDE00D6D6D600D6D6D600D6D6D600E7E7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDEDE00D6D6D600CECECE00CECECE00CECECE00CECECE00D6D6D600DEDE
      DE00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDEDE00D6D6D600CECECE00CECECE00CECECE00CECECE00D6D6D600DEDE
      DE00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDEDE00D6D6D600CECECE00CECECE00CECECE00CECECE00D6D6D600DEDE
      DE00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDEDE00D6D6D600CECECE00CECECE00CECECE00CECECE00D6D6D600DEDE
      DE00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      28000000C0000000900000000100010000000000800D00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  object ImageList3: TImageList
    Height = 48
    Width = 48
    Left = 140
    Top = 553
  end
  object ppmPayout: TPopupMenu
    Left = 660
    Top = 1
    object LoanSettlement1: TMenuItem
      Caption = 'Loan Settlement'
      OnClick = LoanSettlement1Click
    end
    object LoanTransfer1: TMenuItem
      Caption = 'Arrears Settlement'
      OnClick = LoanTransfer1Click
    end
    object Beneficiary1: TMenuItem
      Caption = '3rd Party - Beneficiary'
      OnClick = Beneficiary1Click
    end
    object OnceOff1: TMenuItem
      Caption = '3rd Party - Once-Off'
      OnClick = OnceOff1Click
    end
  end
  object ImageList4: TImageList
    Height = 32
    Width = 32
    Left = 204
    Top = 553
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00F7F7F700DEDE
      DE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600DEDEDE00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00D6D6D600B5ADAD00EFE7
      E700FFF7F700FFF7F700FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700EFEFEF00EFE7EF00E7E7E700E7E7DE00DEDEDE00DEDEDE00DED6D600D6D6
      D600CECECE00ADADAD009C9C9C00F7F7F7000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00BDB5B500CED6DE005AC6
      EF0031BDF70031C6F70029C6F70029C6EF0029C6EF0029C6EF0021C6EF0021C6
      EF0021C6EF0021C6EF0018C6EF0018C6E70018C6E70018C6E70010C6E70010C6
      E70010C6E70008C6E70008C6E70008C6DE0008C6DE0000C6DE0000C6DE0000C6
      DE0018C6DE008CBDC600B5B5B500DEDEDE000000000000000000000000000000
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
      000000000000000000000000000000000000E7E7E700E7D6D6005AC6EF0000B5
      FF0000B5FF0000B5FF0000B5FF0000BDFF0000BDFF0000BDFF0000C6FF0000C6
      FF0000C6FF0000CEFF0000CEFF0000BDE70000C6F70000D6FF0000D6FF0000DE
      FF0000DEFF0000DEFF0000DEFF0000E7FF0000E7FF0000E7FF0000E7FF0000E7
      FF0000E7FF0018C6DE00CECECE00D6D6D6000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00BDB5B500A5CEDE0000B5
      FF0000B5FF0000B5FF0000B5FF0000BDFF0000BDFF0000BDFF0000C6FF0000C6
      FF0000C6FF0000C6FF00004A5A0042424200293939000084A50000D6FF0000DE
      FF0000DEFF0000DEFF0000DEFF0000E7FF0000E7FF0000E7FF0000E7FF0000E7
      FF0000E7FF006BBDC600B5B5B500F7F7F7000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00B5ADAD00DECECE0021BD
      F70000B5FF0000B5FF0000B5FF0000BDFF0000BDFF0000BDFF0000C6FF0000C6
      FF0000C6FF000084AD005A5A5A006B6B6B006B6B6B002139390000D6FF0000DE
      FF0000DEFF0000DEFF0000DEFF0000E7FF0000E7FF0000E7FF0000E7FF0000E7
      FF0008C6DE00CECECE00ADADAD00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00BDB5AD00B5CE
      DE0000B5FF0000B5FF0000B5FF0000BDFF0000BDFF0000BDFF0000C6FF0000C6
      FF0000C6FF00008CB5004A52520063636300636363001839390000D6FF0000DE
      FF0000DEFF0000DEFF0000DEFF0000DEFF0000E7FF0000E7FF0000E7FF0000DE
      FF00A5C6CE00B5ADAD00F7F7F700FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00BDBDBD00DEC6
      C60042C6EF0000B5FF0000B5FF0000BDFF0000BDFF0000BDFF0000C6FF0000C6
      FF0000C6FF0000C6FF00005A730021293100103939000094B50000D6FF0000D6
      FF0000DEFF0000DEFF0000DEFF0000DEFF0000DEFF0000E7FF0000E7FF0042C6
      DE00DEDEDE00C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00B5A5
      A500C6CED60000B5FF0000B5FF0000BDFF0000BDFF0000BDFF0000BDFF0000C6
      FF0000C6FF0000C6FF0000CEFF0000CEFF0000CEFF0000D6FF0000D6FF0000D6
      FF0000DEFF0000DEFF0000DEFF0000DEFF0000DEFF0000DEFF0000D6EF00D6DE
      DE00A5A5A500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00CECE
      CE00D6C6C60063C6EF0000B5FF0000B5FF0000BDFF0000BDFF0000BDFF0000C6
      FF0000C6FF0000C6FF00006B8C00005A7300006B84000094BD0000D6FF0000D6
      FF0000D6FF0000DEFF0000DEFF0000DEFF0000DEFF0000DEFF0084CEDE00D6D6
      D600E7E7E700FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5A5A500CECECE0000BDFF0000B5FF0000BDFF0000BDFF0000BDFF0000C6
      FF0000C6FF0000BDF7001818180042424200424242000052630000D6FF0000DE
      FF0010DEFF0018DEFF0018E7FF0010E7FF0000E7FF0029CEE700EFEFEF00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00CEBDBD008CCEE70000BDFF0000BDFF0000BDFF0000BDFF0000BD
      FF0000C6FF0000B5EF0018181800524A52006363630039737B0021DEFF0021DE
      FF0021DEFF0021DEFF0021DEFF0021E7FF0021DEFF00C6DEE700BDBDBD00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A5A500D6C6C60042CEFF0010C6FF0000C6FF0000C6FF0000C6
      FF0000C6FF0000BDE7004A4A4A006363630063636300396B7B0021DEFF0021DE
      FF0021DEFF0021DEFF0021DEFF0021DEFF0073D6E700F7F7F700C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00C6B5B500ADD6E70021C6FF0021CEFF0021CEFF0021CE
      FF0021CEFF0021BDE7004A4A4A005A5A5A005A5A5A00316B730021DEFF0021DE
      FF0021DEFF0021DEFF0021DEFF0031D6F700EFF7F700ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADADAD00CEBDBD005ACEF70021CEFF0021CEFF0021CE
      FF0021CEFF0021B5DE0042424200525252005252520031636B0021D6FF0021DE
      FF0021DEFF0021DEFF0021DEFF00ADDEEF00E7E7E700E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5ADAD00BDCEDE0021C6FF0021CEFF0021CE
      FF0021CEFF0021ADDE00424242004A4A4A004A4A4A00315A630021D6FF0021D6
      FF0021D6FF0021DEFF0052D6EF00FFFFFF00ADADAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CEBDBD006BD6F70021C6FF0021CE
      FF0021CEFF0021ADD60039393900424242004242420031525A0021D6FF0021D6
      FF0021D6FF0029D6FF00D6EFEF00C6C6C600F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C6CED60029C6FF0021C6
      FF0021CEFF0021A5CE00313131003939390039393900294A5A0021D6FF0021D6
      FF0021D6FF0084D6EF00F7F7F700C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00C6B5B50084D6EF0021C6
      FF0021C6FF00219CC600292929003131310031313100294A520021D6FF0021D6
      FF0039CEF700EFEFEF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C6C6C60039CE
      FF0021C6FF00219CC60029292900292929002929290029424A0021CEFF0021CE
      FF00B5DEEF00DED6D600E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDADAD009CD6
      E70021C6FF0021ADD60021292900212121002929290021424A0021CEFF0063D6
      F700F7E7E700ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C6BD
      BD0052CEFF0021C6FF0021BDF70021ADD60021ADDE0021C6F70029CEFF00D6DE
      DE00BDB5B500F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700ADAD
      AD00B5CEDE0021C6FF0021C6FF0021C6FF0021C6FF0021C6FF008CD6EF00E7CE
      CE00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500BDBDBD0073D6F70021C6FF0021C6FF0021C6FF0042CEFF00DECECE00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5A5A500BDC6C6005ACEF70021C6FF0031C6FF00B5D6DE00C6B5B500E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00A5A5A500BDBDBD00C6CED600CEC6C600C6BDB500B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700ADADAD00A59C9C00A5A5A500D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7
      E700BDBDBD00A5A5A5009C9C9C009C9C9C00949494009C9C9C009C9C9C00ADAD
      AD00CECECE00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6
      D600EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6C600CECECE00D6D6
      D600EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6C600CECECE00D6D6
      D600EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700CECECE009C9C9C009494
      9400949494009494940094948C0094948C0094948C0094948C0094948C009494
      8C0094948C0094949400A5A5A500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600CECECE00DEDE
      DE00E7E7E700EFE7E700E7E7E700E7DEE700E7DEDE00DED6D600D6CECE00CECE
      C600C6C6C600BDBDBD00CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600CECECE00DEDE
      DE00E7E7E700EFE7E700EFE7E700E7E7DE00E7DEDE00DED6D600D6D6CE00CECE
      CE00C6C6C600BDB5B500CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600CECECE00DEDE
      DE00E7E7E700EFE7E700EFE7E700E7E7DE00E7DEDE00DED6D600D6D6CE00CECE
      CE00C6C6C600BDB5B500CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00A5A5A50094949400949494009494
      94009C9C9400ADAD9C00B5B5A500B5B59C00BDB59C00B5AD9400ADA58C00A59C
      8C009C94840094948C00949494009C9C9C00ADADAD00EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00EFEFEF00FFFFFF00FFF7
      FF00EFE7EF00D6D6CE00BDC6BD00ADBDAD00ADBDAD00B5BDB500C6C6C600CEC6
      CE00CEC6CE00C6BDBD00C6C6BD00BDBDBD00CECECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00EFEFEF00FFFFFF00FFFF
      F700EFEFE700D6D6D600BDBDCE00A5A5C600A5A5BD00ADADC600C6BDC600D6CE
      C600D6CEC600C6C6BD00C6C6C600B5B5B500CECECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00EFEFEF00FFFFFF00FFFF
      F700EFEFE700D6D6D600BDBDCE00A5A5C600A5A5BD00ADADC600C6BDC600D6CE
      C600D6CEC600C6C6BD00C6C6C600B5B5B500CECECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600A5A5A5009C9C9C009C9C9C00ADADA500B5AD
      94009C9473009C7B4200AD7B2100B57B1000BD7B0800AD7B1800A57B2900AD94
      5200B5A57B00B5AD94009C9C8C009C9C94009C9C9C00A5A5A500DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00EFEFEF00FFFFFF00FFFFFF00D6DED6008CAD
      8C00528C5A0031844200298C4200298C420029944A0031944A00399452005A9C
      63008CAD9400BDBDBD00CEBDC600BDBDBD00BDBDBD00B5B5B500EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00EFEFEF00FFFFFF00FFFFFF00DEDEE7008C8C
      BD003939A5001010A5000000AD000000B5000000B5000000BD001010BD003131
      B5007373BD00B5B5C600CEC6BD00C6BDBD00C6C6C600ADADAD00EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00EFEFEF00FFFFFF00FFFFFF00DEDEE7008C8C
      BD003939A5001010A5000000AD000000B5000000B5000000BD001010BD003131
      B5007373BD00B5B5C600CEC6BD00C6BDBD00C6C6C600ADADAD00EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700BDBDBD00A5A5A500A5A5A500ADADA500ADA5940094845200B57B
      1000CE840000C6840000C6840000CE840000C6840000CE8C0000CE8C0000CE8C
      0000CE8C0000B58C2900B5A57B00B5ADA500A5A59C00A5A5A500A5A5A500CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CECECE00FFFFFF00FFFFFF00E7EFE70084A57B00317B31002984
      390029944A00319C520031A55A0039AD630039AD6B0039B5730039B5730031AD
      6B0029A55A00399C5A007BAD8400C6C6C600C6B5BD00BDB5B500ADADAD00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CECECE00FFFFFF00FFFFFF00F7F7F7007B7BB500101094000000
      A5000000BD000000C6000000D6000000D6000000DE000000E7000000E7000000
      DE000000D6000808BD006363BD00BDBDBD00C6BDB500BDBDBD00ADADAD00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CECECE00FFFFFF00FFFFFF00F7F7F7007B7BB500101094000000
      A5000000BD000000C6000000D6000000D6000000DE000000E7000000E7000000
      DE000000D6000808BD006363BD00BDBDBD00C6BDB500BDBDBD00ADADAD00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600ADADAD00ADADAD00B5B5AD0094846B00AD7B1000BD7B0000C684
      0000BD7B0000BD7B0000BD7B0000BD7B0000BD7B0000BD7B0000C6840000CE8C
      0000D68C0000DE940000DE9C0800AD8C4A00B5B5A500ADADAD00ADADAD00ADAD
      AD00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00FFFFFF00FFFFFF00B5C6B500397B3900217B2900318C42003194
      4A00319C5200319C5A0031A5630039AD630039AD6B0039B5730039B57B0039BD
      7B0039BD840039BD7B0029AD63004A9C6300ADB5A500C6BDBD00B5B5B500ADAD
      AD00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00FFFFFF00FFFFFF00C6C6D6002929940000009C000000B5000000
      BD000000C6000000CE000000D6000000DE000000DE000000E7000000EF000000
      EF000000F7000000EF000000D6002121BD009494BD00C6C6B500C6BDBD00A5A5
      A500EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00FFFFFF00FFFFFF00C6C6D6002929940000009C000000B5000000
      BD000000C6000000CE000000D6000000D6000000DE000000E7000000EF000000
      EF000000F7000000EF000000D6002121BD009494BD00C6C6B500C6BDBD00A5A5
      A500EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00B5B5B500BDB5B500B5ADAD0094846B00AD730000B5730000BD7B0000B57B
      0000BD7B0000BD7B0000BD7B0000BD7B0000BD7B0000BD7B0000C6840000C684
      0000CE8C0000CE8C0000DE940000E79C0000B5943100B5B5A500B5B5B500BDBD
      BD00B5B5B500EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00FFFFFF00FFFFFF00ADBDA500216B180029843100318C3900318C42003194
      4A00319C5200319C5A0031A5630039AD630039AD6B0039B5730039B57B0039BD
      7B0039BD840039C6840039C68C0031B57300319C520094AD9C00C6BDBD00B5B5
      B500ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00FFFFFF00FFFFFF00B5B5CE0008088C0000009C000000AD000000B5000000
      BD000000C6000000CE000000D6000000DE000000DE000000E7000000EF000000
      EF000000F7000000F7000000F7000000E7000000C6008484BD00C6C6B500BDBD
      BD00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00FFFFFF00FFFFFF00B5B5CE0008088C0000009C000000AD000000B5000000
      BD000000C6000000CE006B6BD600B5B5E7009C9CDE002929CE000000E7000000
      EF000000F7000000F7000000F7000000E7000000C6008484BD00C6C6B500BDBD
      BD00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00BDBD
      BD00C6C6BD00BDB5AD0094847300AD730000AD730000B5730000B5730000B573
      0000B5730000B5730000BD7B0000BD7B0000BD7B0000BD7B0000C6840000C684
      0000CE840000CE8C0000CE8C0000DE940000E79C0000B58C2900B5B5AD00BDBD
      BD00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700EFEF
      EF00FFFFFF00BDC6BD00216B1800297B290031843900318C3900318C4200318C
      4A00529C6B004A9463003194520039A5630039AD6B0039B5730039B5730039BD
      7B0039BD840039BD840039C6840039C6840039BD7B00319C5200A5B5A500B5AD
      B500B5ADAD00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700EFEF
      EF00FFFFFF00CECEDE000808840000009C000000AD000000AD000000B5000000
      B5000000B5000000C6000000CE000000D6000000DE000000DE000000E7000000
      E7000000DE000000EF000000EF000000EF000000E7000000BD009494BD00C6BD
      B500C6C6C600CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700EFEF
      EF00FFFFFF00CECEDE000808840000009C000000AD000000AD000000B5000000
      BD000000C6007B7BDE00F7F7F700FFFFFF00FFFFFF00EFEFF7001010D6000000
      EF000000EF000000EF000000F7000000EF000000E7000000BD009494BD00C6BD
      B500C6C6C600CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600CECE
      CE00C6C6C6008C8473009C630800AD6B0000AD6B0000AD6B0000AD730000B573
      0000B5730000C68C2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6AD5A00C684
      0000C6840000C6840000CE840000CE8C0000D6940000DE9C0000A58C4A00BDBD
      B500CECECE00CECECE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00CECECE00FFFF
      FF00EFEFEF003973310029732100297B310031843100318C3900318C4A00ADC6
      B500DEDEDE00DEE7E7009CBDAD00318C5A0039AD6B0039AD6B0039B5730039B5
      7B0039BD7B0039BD840039BD840039BD840039BD840031AD6B004A945A00C6BD
      BD00B5B5B500ADA5A500F7F7F700FFFFFF00FFFFFF00FFFFFF00CECECE00FFFF
      FF00F7F7F70031319400000094000000A5000000A5000000AD000808B5009494
      CE00848CC6000000AD000000CE000000D6000000D6000000DE000000DE009494
      E700A5A5DE000808C6000000E7000000EF000000EF000000D6001818B500BDBD
      BD00C6BDBD00ADADAD00F7F7F700FFFFFF00FFFFFF00FFFFFF00CECECE00FFFF
      FF00F7F7F70031319400000094000000A5000000A5000000AD000000B5000000
      BD000000C600CECEEF00F7F7F700F7F7F700FFFFFF00FFFFFF005A5ADE000000
      EF000000EF000000EF000000EF000000EF000000EF000000D6001818B500BDBD
      BD00C6BDBD00ADADAD00F7F7F700FFFFFF00FFFFFF00EFEFEF00CECECE00D6D6
      D600A59C9400946B29009C630000A56B0000AD6B0000AD730000AD730000B573
      0000B5730000DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00BD7B
      0000BD7B0000C67B0000C6840000C6840000CE8C0000D6940000DE9C0000A59C
      8400CEC6C600D6D6D600CECECE00FFFFFF00FFFFFF00E7E7E700EFEFEF00FFFF
      FF00849C7B00216B1000297B2900297B31002984310031844200ADC6AD00D6DE
      DE00DEDEDE00DEDEDE00DEDEDE00A5C6B50031945A0039AD6B0039B5730039B5
      730039B57B0039BD7B0039BD7B0039BD7B0039BD7B0039BD7B00299C52007BA5
      7B00C6B5BD00B5B5B500C6C6C600FFFFFF00FFFFFF00E7E7E700EFEFEF00FFFF
      FF008C8CB5000000840000009C000000A5000000A5000808AD009CA5C600CECE
      D600D6D6DE009C9CCE000000AD000000CE000000D6000000D600A5A5E700EFEF
      EF00EFEFEF00BDBDE7000808C6000000E7000000E7000000E7000000C6005A5A
      B500CEC6BD00CEC6C600C6C6C600FFFFFF00FFFFFF00E7E7E700EFEFEF00FFFF
      FF008C8CB5000000840000009C000000A5000000A5000000AD000000B5000000
      BD000000BD00ADADE700F7F7F700F7F7F700FFFFFF00FFFFFF003131DE000000
      E7000000E7000000E7000000EF000000EF000000E7000000E7000000C6005A5A
      B500CEC6BD00CEC6C600C6C6C600FFFFFF00FFFFFF00D6D6D600E7DEDE00D6D6
      CE007B633900945A00009C630000A5630000A56B0000AD6B0000AD6B0000B573
      0000B5730000DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00BD7B
      0000BD7B0000BD7B0000BD7B0000C6840000C6840000CE8C0000DE9C0000AD8C
      3100C6BDBD00E7E7E700D6D6D600E7E7E700FFFFFF00CECECE00F7F7F700D6D6
      D600296B21002973180029732900297B290031843900A5BDA500CECECE00D6D6
      D600D6DEDE00DEDEDE00DEDEDE00DEDEDE00ADC6B50031945A0039AD6B0039B5
      730039B5730039B5730039B57B0039B57B0039B57B0039B57B0039AD6B00318C
      4A00BDBDB500BDB5B500ADADAD00FFFFFF00FFFFFF00CECECE00F7F7F700E7E7
      E70018188C0000008C0000009C0000009C000808A5009494BD00BDBDC600C6C6
      CE00CED6D600D6DEDE009C9CCE000000AD000000C6009CA5DE00E7E7E700E7E7
      E700EFEFEF00EFEFEF00BDBDE7000808C6000000E7000000E7000000D6000000
      B500B5ADBD00CEC6C600ADADAD00FFFFFF00FFFFFF00CECECE00F7F7F700E7E7
      E70018188C0000008C0000009C0000009C000000A5000000AD000000AD000000
      B5000000BD002121CE00C6C6EF00F7F7F700EFEFF7007373E7000000DE000000
      DE000000E7000000E7000000E7000000E7000000E7000000E7000000D6000000
      B500B5ADBD00CEC6C600ADADAD00FFFFFF00FFFFFF00CECECE00E7E7E700B5AD
      AD007B521800945A0000945A00009C630000A5630000A56B0000A56B0000AD6B
      0000AD730000DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00B57B
      0000BD7B0000BD7B0000BD7B0000BD7B0000C6840000CE8C0000D6940000D694
      0000A59C9400DEDED600EFEFEF00D6D6D600F7F7F700D6D6D600F7EFF7009CAD
      9400296B18002973180029732100317B3100A5BDA500CECECE00CECECE00CED6
      D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADC6B50031945A0039AD
      6B0039AD6B0039B5730039B5730039B5730039B5730039B5730039AD6B00299C
      520084A58400C6BDC600BDB5B500EFEFEF00F7F7F700D6CED600F7F7EF00A5A5
      BD000000840000008C000000940000009C002121AD00B5B5BD00B5BDBD00BDC6
      C600C6CECE00CED6D600D6DEDE009C9CCE009C9CD600DEE7E700E7E7E700E7E7
      E700E7E7E700E7EFEF00EFEFEF002121D6000000DE000000DE000000D6000000
      BD006363B500D6CEC600C6C6C600EFEFEF00F7F7F700D6CED600F7F7EF00A5A5
      BD000000840000008C000000940000009C000000A5000000A5000000AD000000
      B5000000BD000000BD000000BD001818BD000808BD000000CE000000D6000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000D6000000
      BD006363B500D6CEC600C6C6C600EFEFEF00EFEFEF00D6D6D600EFEFEF008C84
      6B00844A08008C520000945A00009C5A00009C630000A5630000A56B0000A56B
      0000AD6B0000DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00B57B
      0000B57B0000BD7B0000BD7B0000BD7B0000C6840000CE8C0000D68C0000DE94
      00009C8C6300D6D6D600F7F7F700D6D6D600E7E7E700DEDEDE00E7DEE7007394
      6300528C4A004284310031732900ADBDAD00D6D6D600CECECE00CECECE00CECE
      CE00D6D6D600D6D6DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADC6BD003194
      5A0039AD6B0039AD6B0039AD6B0039AD6B0039AD6B0039AD6B0039AD6B0031A5
      5A00528C5A00CEC6C600C6C6C600D6D6D600E7E7E700DEDEDE00EFE7E7007373
      AD0031319C00080894000000940000009C0000009C006363BD00B5B5BD00BDBD
      BD00BDC6C600C6CECE00CED6D600D6DEDE00DEDEDE00DEE7E700DEE7E700E7E7
      E700E7E7E700E7E7E7007373DE000000D6000000D6000000D6000000D6000000
      C6002929AD00CECEC600D6CECE00D6D6D600E7E7E700DEDEDE00EFE7E7007373
      AD0031319C00080894000000940000009C0000009C000000A5000000AD000000
      AD000000B5003939C600BDBDDE00E7E7EF00D6D6E7008C8CCE000000C6000000
      D6000000D6000000D6000000D6000000D6000000D6000000D6000000D6000000
      C6002929AD00CECEC600D6CECE00D6D6D600DEDEDE00EFEFEF00EFEFEF00846B
      4A00844A00008C520000945A00009C5A00009C6300009C630000A5630000A563
      0000A56B0000DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00B573
      0000B5730000B57B0800BD840800C6840800CE8C1000D69C1800DE9C1800DEA5
      1800A5843100CECECE00F7F7F700D6D6D600D6D6D600E7DEDE00CECECE005A8C
      52005A8C4A005A945200B5CEB500DEE7DE00DEDEDE00D6D6D600CECECE00BDC6
      BD006BAD7B00B5CEBD00D6DEDE00DEDEDE00DEDEDE00DEDEDE00D6DEDE00ADC6
      BD00398C5A0031A5630039AD630039AD630039AD630039AD630039A5630031A5
      5A0031844200C6C6C600D6CECE00C6C6C600D6D6D600E7DEDE00DED6D6005252
      A5003939A5003939A500080894000000940000009C0000009C006363BD00B5B5
      BD00BDBDBD00C6C6C600CECECE00D6D6D600D6DEDE00DEDEDE00DEE7E700DEE7
      E700E7E7E7007373D6000000CE000000CE000000D6000000CE000000CE000000
      C6000000AD00BDB5C600DED6D600C6C6C600D6D6D600E7DEDE00DED6D6005252
      A5003939A5003939A500080894000000940000009C0000009C000000A5000000
      AD000000B500C6C6DE00E7E7E700EFEFEF00EFEFEF00EFEFEF004A4AC6000000
      CE000000CE000000CE000000D6000000D6000000D6000000CE000000CE000000
      C6000000AD00BDB5C600DED6D600C6C6C600DEDEDE00F7F7EF00DEDEDE008C6B
      4A007B4200008C520000945A0000945A00009C5A00009C6300009C630000A563
      0000A5630000DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00B57B
      1000BD7B1000BD841000C68C1000CE8C1800D69C1800D6A52100DEA52900E7AD
      3100C6943100BDBDBD00FFFFFF00DEDEDE00CECECE00E7DEDE00BDBDB5005A84
      4A005A8C4A007BA56B00E7EFE700EFEFEF00E7E7E700DEDEDE00BDCEBD00428C
      4A00318C390039944A00ADC6B500D6DEDE00DEDEDE00DEDEDE00DEDEDE00D6DE
      DE00ADC6BD00398C5A0031A55A0031A5630031A5630031A5630031A55A00319C
      5A00298C3900B5BDB500DED6D600CEC6C600CECECE00DEDEDE00CEC6CE004A4A
      9C003939A5003939A5003939AD0018189C0010109C0000009C0000009C006363
      BD00B5B5BD00BDBDBD00C6C6C600CECECE00D6D6D600DEDEDE00DEDEDE00DEE7
      E7007373D6000000C6000000C6000000C6000000CE000000CE000000CE000000
      C6000000A500A59CBD00E7DED600C6C6C600CECECE00DEDEDE00CEC6CE004A4A
      9C003939A5003939A5003939AD0018189C000000940000009C000000A5000000
      A5000000AD00CECEDE00E7E7E700E7E7E700E7E7E700E7E7E7005A5AC6000000
      C6000000C6000000CE000000CE000000CE000000CE000000CE000000CE000000
      C6000000A500A59CBD00E7DED600C6C6C600D6D6D600EFEFEF00D6CECE008C7B
      6300844A00008C5200008C520000945A00009C5A00009C630000A5630800A56B
      0800A56B0800DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00BD84
      2100BD8C2100C68C2100CE942100CE9C2100D69C2900DEA53100E7AD3100E7B5
      3100CE9C3100B5B5AD00FFFFFF00E7E7E700C6C6C600DED6DE00B5BDAD005284
      42005A8C4A005A8C4A00B5CEB500F7F7F700F7F7F700D6DED600529452003184
      390031843900318C390039944A00ADCEB500DEDEDE00E7E7E700E7E7E700E7E7
      E700DEE7E700BDCEC6005A9C730052AD6B0042A56300319C5A00319C5A00319C
      520029843900ADB5AD00E7DEDE00CECECE00C6C6C600DED6D600BDBDC6004242
      9C003939A5003939A5003939AD004242AD003939AD003131AD001818A5000808
      9C00A5A5BD00B5B5BD00BDBDBD00C6C6C600CED6D600DEDEDE00E7E7E700CECE
      DE003939B5003131CE002929CE002121C6000000C6000000C6000000C6000000
      BD000000A5009494BD00E7E7DE00CECECE00C6C6C600DED6D600BDBDC6004242
      9C003939A5003939A5003939AD004242AD002929A50008089C0000009C000000
      A5000000AD00CECEDE00DEDEDE00E7E7E700E7E7E700E7E7E7006363C6000000
      C6001010C6001010C6000000C6000000C6000000C6000000C6000000C6000000
      BD000000A5009494BD00E7E7DE00CECECE00D6D6D600EFEFEF00D6D6D6008C73
      52009C733100946310008C520000945A00009C5A00009C630800A56B1000A573
      1000AD731800DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00C68C
      3100C6942900CE942900CE9C3100D69C3100D6A53100D6A53100DEAD3100E7AD
      3900CE9C3100ADADAD00FFFFFF00E7E7E700C6C6C600DED6D600B5B5AD005A84
      42005A8C4A005A8C4A005A945200B5CEB500CEDECE006B9C63005A9C5A00639C
      63005A9C63005A9C63005AA563006BAD7300C6D6C600E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEE700C6CEC60063A57B0063AD7B005AAD7300399C5A003194
      4A0029843100ADBDAD00E7E7E700CECECE00C6C6C600D6D6D600BDBDBD004A4A
      9C0039399C003939A5003939A5003939AD003939AD003939AD004242AD00ADAD
      CE00C6C6C600C6C6C600C6C6CE00CECECE00D6D6D600DEDEDE00DEE7E700E7E7
      E700B5B5D6004242B5003939C6003939CE002121C6000808BD000000BD000000
      BD000000A5009494BD00EFE7E700CECECE00C6C6C600D6D6D600BDBDBD004A4A
      9C0039399C003939A5003939A5003939AD004242AD003939AD002929AD001010
      A5000000A500D6D6DE00DEDEDE00DEDEDE00E7E7E700E7E7E7008C8CCE003131
      CE004242CE003939CE003939CE003131CE002121C6000808BD000000BD000000
      BD000000A5009494BD00EFE7E700CECECE00DEDEDE00F7F7F700E7E7E7008C7B
      6B00946B31009C733100A5732900A5732100A5731800A5731800AD731800B57B
      2100B5842900DEBD6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC68C00C694
      3900C69C3100CE9C3100CE9C3900CE9C3900D6A53900D6A53900DEA53900DEAD
      3900BD943900BDBDBD00FFFFFF00DEDEDE00CECECE00D6CECE00B5BDB5005A8C
      4A005A8C42005A8C4A005A8C4A005A9452005A9452005A945A005A9C5A00639C
      5A00639C630063A5630063A56B0063A56B006BAD7300C6D6CE00E7E7E700E7E7
      E700E7E7E700E7E7E700DEDEDE00C6CEC600639C730063AD730063AD73003994
      5200297B2900BDC6BD00EFE7EF00CECECE00CECECE00D6CECE00BDBDBD004A52
      9C0039399C0039399C003939A5003939A5003939A5004242AD00ADADCE00CECE
      CE00C6C6CE00C6C6C600C6C6C600CECECE00CECED600D6D6D600DEDEDE00DEE7
      E700E7E7E700B5B5D6004242B5003939C6004242CE003939C6001818BD000000
      B50000009C00A5A5C600EFEFE700CECECE00CECECE00D6CECE00BDBDBD004A52
      9C0039399C0039399C003939A5003939A5003939AD003939AD004242B5004242
      B5003131B500DEDEE700DEDEDE00E7E7E700E7E7E700E7E7E7009494CE003939
      C6003939C6003939C6003939CE003939CE004242CE003939C6001818BD000000
      B50000009C00A5A5C600EFEFE700CECECE00E7E7E700E7E7E700FFFFFF008C7B
      6B00946B39009C7331009C733100A57B3100AD7B2900AD7B2900B5842900B584
      2900B5843100B5843100CEAD5A00CEAD6300CEAD6300CEAD6300C6943900C694
      3900C69C3900CE9C3900CE9C3900CE9C3900D6A53900D6A53900D6A53900DEAD
      3900A58C5200D6D6D600FFFFFF00D6D6D600D6D6D600CEC6C600BDBDBD006B8C
      5A005A8442005A8C4A005A8C4A005A8C4A005A9452005A9452005A945A005A9C
      5A00639C5A00639C6300639C630063A5630063A56B006BAD7300C6D6CE00E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEDE00BDCEC600639C6B0063AD73005AA5
      6300397B3900D6D6D600EFEFEF00CECECE00D6D6D600CEC6C600C6BDBD006363
      A50031319C0039399C0039399C003939A5003939A500B5B5D600DEDEDE00D6D6
      D600CECECE00C6C6CE00C6C6C600C6C6CE00CECECE00CECED600D6D6D600DEDE
      DE00DEE7E700E7E7E700B5B5D6003939B5003939C6003939C6004242C6002121
      B50000009400C6C6CE00EFEFEF00CECECE00D6D6D600CEC6C600C6BDBD006363
      A50031319C0039399C0039399C003939A5003939A5003939AD003939AD003939
      AD003939B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE009C9CCE003939
      C6003939C6003939C6003939C6003939C6003939C6003939C6004242C6002121
      B50000009400C6C6CE00EFEFEF00CECECE00EFEFEF00CECECE00FFFFFF00A5A5
      A5008C734A00946B39009C733100A57B3100AD7B3100AD843100AD843100B584
      3100B5843100B5843100B5843100B58C3900BD8C3900BD8C3900BD943900C694
      3900C6943900CE9C3900CE9C3900CE9C3900D6A53900D6A53900D6A53900DEA5
      39008C8C7B00EFEFEF00FFFFFF00D6D6D600E7E7E700BDBDBD00BDB5BD007B9C
      73005A8442005A8C42005A8C4A005A8C4A005A8C4A005A9452005A9452005A94
      5A005A945A005A9C5A00639C6300639C630063A5630063A563006BA56B00C6DE
      CE00E7E7E700E7E7E700E7E7E700DEE7E700D6DEDE00ADBDAD00639C6B00639C
      630063946300EFE7EF00EFE7E700DEDEDE00E7E7E700C6C6C600C6C6BD007B7B
      A5003131940039399C0039399C0039399C004A4AAD00EFEFEF00E7E7E700DEDE
      DE00D6D6D600CECECE00C6C6CE008C8CC6008C8CC600CECECE00CED6D600D6D6
      D600DEDEDE00E7E7E700E7EFEF004A4AB5003939BD003939BD003939BD003939
      BD0031319C00E7E7E700EFEFEF00DEDEDE00E7E7E700C6C6C600C6C6BD007B7B
      A5003131940039399C0039399C0039399C003939A5003939A5003939AD003939
      AD004242B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE009C9CCE003939
      BD003939BD003939BD003939BD003939BD003939BD003939BD003939BD003939
      BD0031319C00E7E7E700EFEFEF00DEDEDE00FFFFFF00C6C6C600FFFFFF00CECE
      CE008C7B6B00946B39009C733900A57B3900AD7B3900AD843900AD843900B584
      3900B5843100B57B2100E7BD6300F7D67B00FFDE8C00EFC67300DE940800C694
      3900C6943900C6943900CE9C3900CE9C3900CE9C3900CEA53900D6A53900CE9C
      39009C948C00FFFFFF00FFFFFF00DEDEDE00FFFFFF00B5B5B500BDB5BD009CAD
      94005A8442005A8442005A8C42005A8C4A005A8C4A005A8C4A005A9452005A94
      52005A9452005A945A005A9C5A00639C5A00639C6300639C6300639C63006BA5
      6B00C6DECE00E7E7E700E7E7E700E7E7E700DEDEDE00B5CEBD00639C63005294
      520094AD9400FFF7FF00DEDEDE00EFEFEF00FFFFFF00B5B5B500C6BDB500A59C
      AD00393994003939940039399C0039399C0039399C008C8CC600EFEFEF00DEDE
      E700D6D6DE00D6D6D6008C8CC6003939AD003939AD008C8CC600CECECE00CED6
      D600D6DEDE00DEDEE7008C8CCE003939B5003939BD003939BD003939B5002929
      AD006B6BAD00FFFFF700DEDEDE00EFEFEF00FFFFFF00B5B5B500C6BDB500A59C
      AD00393994003939940039399C0039399C0039399C003939A5003939A5003939
      A5004242AD00DEDEDE00D6D6D600D6D6D600DED6DE00DEDEDE00A5A5CE003939
      B5003939B5003939BD003939BD003939BD003939BD003939BD003939B5002929
      AD006B6BAD00FFFFF700DEDEDE00EFEFEF00FFFFFF00D6D6D600E7E7E700FFFF
      FF00847B7B00946B39009C6B3900A5733900A57B3900AD843900AD843900AD84
      3900B5843900E7AD3900FFFFF700FFFFFF00FFFFFF00FFFFFF00EFB53100BD8C
      3900BD943900C6943900C6943900CE9C3900CE9C3900CE9C3900D6A53900A594
      5A00CECEC600FFFFFF00E7E7E700EFEFEF00FFFFFF00BDBDBD00B5ADAD00ADAD
      AD006B8C5A005A8442005A8442005A8C42005A8C4A005A8C4A005A8C4A005A8C
      52005A9452005A9452005A945A005A945A005A9C5A00639C5A00639C6300639C
      630063A56B00C6DECE00E7E7E700E7E7E700C6D6C6006BA56B00639C5A005A8C
      5A00D6DED600FFFFFF00CECECE00FFFFFF00FFFFFF00BDBDBD00BDBDBD00B5B5
      B50063639C00313194003939940039399C0039399C0039399C008C8CC600E7E7
      EF00DEDEE7009494C6003939AD003939AD003939AD003939AD008C8CC600CECE
      CE00D6D6D6008484C6003939B5003939B5003939B5003939B5003939B5002929
      9C00C6C6D600FFFFFF00C6C6C600FFFFFF00FFFFFF00BDBDBD00BDBDBD00B5B5
      B50063639C00313194003939940039399C0039399C003939A5003939A5003939
      A5004A4AAD00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600A5A5C6003939
      B5003939B5003939B5003939B5003939B5003939B5003939B5003939B5002929
      9C00C6C6D600FFFFFF00C6C6C600FFFFFF00FFFFFF00EFEFEF00CECECE00FFFF
      FF00C6C6C6008C735A00946B39009C733900A57B3900AD7B3900AD7B3900AD84
      3900B5843900EFB54200FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7CE6B00BD8C
      3900BD8C3900BD943900C6943900C6943900C69C3900CE9C3900C6943900948C
      8400EFEFEF00FFFFFF00D6D6D600FFFFFF00FFFFFF00E7E7E700ADADAD00ADA5
      AD0094A58C005A8442005A8442005A8442005A8C42005A8C4A005A8C4A005A8C
      4A005A8C52005A9452005A9452005A9452005A945A005A945A005A9C5A005A9C
      5A005A9C5A00639C6300BDD6C600BDCEBD00639C6300639C5A00528C4A008CA5
      8400FFFFFF00F7F7F700D6D6D600FFFFFF00FFFFFF00E7E7E700BDB5B500B5B5
      AD009C9CAD00393994003939940039399C0039399C0039399C0039399C007B7B
      BD007B84BD003939A5003939A5003939A5003939A5003939AD003939AD007B7B
      BD007B7BC6003939AD003939AD003939AD003939AD003939AD003131A500635A
      A500FFFFFF00F7F7F700D6D6D600FFFFFF00FFFFFF00E7E7E700BDB5B500B5B5
      AD009C9CAD00393994003939940039399C0039399C0039399C0039399C003939
      A5004A4AAD00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600ADADC6003939
      AD003939AD003939AD003939AD003939AD003939AD003939AD003131A500635A
      A500FFFFFF00F7F7F700D6D6D600FFFFFF00FFFFFF00FFFFFF00CECECE00E7E7
      E700F7F7F7008C8C8C00946B42009C6B39009C733900A57B3900AD7B3900AD7B
      3900AD843900E7AD2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFCE8400B584
      3900B58C3900BD8C3900BD943900BD943900C6943900C6943900948C7300D6D6
      CE00F7F7F700E7E7E700E7E7E700FFFFFF00FFFFFF00FFFFFF00B5B5B500A5A5
      A500ADADAD007B946B00528439005A8442005A8442005A8C42005A8C4A005A8C
      4A005A8C4A005A8C4A005A8C52005A9452005A9452005A9452005A9452005A94
      5A005A945A005A945A005A945A005A9C5A005A945A005A9452006B946300E7EF
      E700FFFFFF00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00BDB5
      B500B5B5AD007373A50031319400393994003939940039399C0039399C003939
      9C003939A5003939A5003939A5003939A5003939A5003939AD003939AD003939
      AD003939AD003939AD003939AD003939AD003939AD003939AD0029299400D6D6
      E700FFFFFF00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00BDB5
      B500B5B5AD007373A50031319400393994003939940039399C0039399C003939
      9C005252AD00CECECE00CECECE00CECECE00CECECE00CECECE00ADADC6003939
      AD003939AD003939AD003939AD003939AD003939AD003939AD0029299400D6D6
      E700FFFFFF00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700BDBD
      BD00F7F7F700E7E7E7008C848400946B39009C7339009C733900A57B3900A57B
      3900AD7B3900D6940800FFEFBD00FFFFF700FFFFF700FFF7E700CE9C1800B584
      3900B5843900B58C3900BD8C3900BD8C3900C694390094845A00B5B5B500EFEF
      EF00F7F7F700CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700A5A5
      A500A59C9C00A5ADA500638C5200528439005A8442005A8442005A8C42005A8C
      4A005A8C4A005A8C4A005A8C4A005A8C52005A9452005A9452005A9452005A94
      52005A9452005A9452005A9452005A9452005A9452005A8C5200BDCEBD00FFFF
      FF00F7F7F700DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700B5B5
      B500B5ADAD00ADADAD0052529C00313194003939940039399C0039399C003939
      9C0039399C0039399C003939A5003939A5003939A5003939A5003939A5003939
      A5003939A5003939A5003939A5003939AD003939A500292994009C9CC600FFFF
      FF00F7F7F700DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700B5B5
      B500B5ADAD00ADADAD0052529C00313194003939940039399C0039399C003939
      9C005252AD00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5C6003939
      A5003939A5003939A5003939A5003939AD003939A500292994009C9CC600FFFF
      FF00F7F7F700DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700C6C6C600EFEFEF00D6D6D6008C847B00947342009C7339009C7339009C73
      3900A57B3900AD7B3900AD7B3900AD7B3900AD843900AD843900AD843900AD7B
      3900AD843900AD843900B5843900B5843900847B6300A5A5A500EFEFEF00EFEF
      EF00CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600A5A5A500A59CA500A5A59C00638C5200528439005A8442005A8442005A84
      42005A8C4A005A8C4A005A8C4A005A8C4A005A8C4A005A8C4A005A8C52005A94
      52005A9452005A9452005A9452005A8C4A00528C4A00ADBDAD00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600BDB5B500B5ADAD00ADA5AD0052529C00313194003939940039399C003939
      9C0039399C0039399C0039399C0039399C003939A5003939A5003939A5003939
      A5003939A5003939A5003939A5003939A500292994008C8CB500FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600BDB5B500B5ADAD00ADA5AD0052529C00313194003939940039399C003939
      9C005252AD00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5C6003939
      A5003939A5003939A5003939A5003939A500292994008C8CB500FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D600CECECE00EFEFE700DEDED600948C8400947B5200947339009C73
      39009C733900A5733900A57B3900A57B3900A57B3900A57B3900A57B3900A57B
      3900AD7B3900AD7B3900A5844A007B736B00B5B5B500EFEFEF00EFEFEF00D6D6
      D600EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00ADA5A500A59CA500A5ADA5007B946B005A844200528439005A84
      42005A8442005A8C42005A8C4A005A8C4A005A8C4A005A8C4A005A8C4A005A8C
      4A005A8C4A005A8C4A0052844200638C5200BDCEBD00FFFFFF00FFFFFF00CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5B5B500BDB5B500B5ADAD00ADADB5007373A50039399C00313194003939
      9C0039399C0039399C0039399C0039399C0039399C0039399C0039399C003939
      9C003939A5003939A50031319C0039399400A5A5C600FFFFFF00FFFFFF00CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5B5B500BDB5B500B5ADAD00ADADB5007373A50039399C00313194003939
      9C0039399C007373B5008C8CBD009C9CC6009C9CBD008C8CBD005A5AAD003939
      A5003939A5003939A50031319C0039399400A5A5C600FFFFFF00FFFFFF00CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CECECE00BDBDBD00E7E7E700E7DEDE00B5ADAD00948C7B00947B
      5A00946B3900946B39009C7339009C7339009C7339009C7339009C7339009C73
      39009C7B52008C7B6B0084847B00D6D6CE00E7E7E700E7E7E700CECECE00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00ADA5A500ADA5A500B5ADAD009CAD9400739463005A84
      4200528439005A8442005A8442005A8C42005A8C42005A8C42005A8C4200528C
      4200528442005A844A0094AD8C00E7EFE700FFFFFF00FFFFFF00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500BDB5B500B5ADAD00BDB5B5009C9CB5006363A5003939
      9C0031319C0039399C0039399C0039399C0039399C0039399C0039399C003139
      9C0031319400393994007373A500DEDEE700FFFFFF00FFFFFF00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B500BDB5B500B5ADAD00BDB5B5009C9CB5006363A5003939
      9C0039399C0039399C0039399C0039399C0039399C0039399C0039399C003939
      9C0031319400393994007373A500DEDEE700FFFFFF00FFFFFF00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEDEDE00B5B5B500DEDEDE00E7E7DE00DED6D600B5B5
      AD0094948C008484840084847B008C8473008C7B7300847B73007B737300847B
      7B009C9C9C00C6C6C600E7E7E700E7E7E700D6D6D600C6C6C600F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600ADADAD00B5ADAD00B5ADB500BDB5B500A5AD
      9C00849C7B006B945A00638C52005A844A005A8442005A8C4A00638C52007394
      6B009CAD9400D6D6D600FFF7FF00FFFFFF00EFEFEF00CECECE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600B5B5B500BDB5B500BDB5B500BDB5B500A59C
      B5007B7BAD005A5AA5004A4A9C0042429C003939940042429C0042429C005A5A
      9C008C84AD00CECED600FFFFF700FFFFFF00EFEFEF00CECECE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600B5B5B500BDB5B500BDB5B500BDB5B500A59C
      B5007B7BAD005A5AA5004A4A9C0042429C003939940042429C0042429C005A5A
      9C008C84AD00CECED600FFFFF700FFFFFF00EFEFEF00CECECE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00C6C6C600BDBDBD00E7E7E700E7E7
      DE00DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6BD00CECEC600E7DEDE00E7E7
      E700E7E7E700E7E7E700D6D6D600CECECE00D6D6D600F7F7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDBDBD00B5B5B500BDBDBD00C6BD
      BD00C6BDBD00BDBDBD00BDBDB500B5BDB500B5BDB500BDBDBD00CECECE00E7DE
      DE00F7EFEF00F7F7F700E7E7E700CECECE00DEDEDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDBDBD00BDBDBD00C6BDBD00C6BD
      BD00C6BDBD00C6BDBD00B5B5BD00B5ADBD00B5ADBD00BDB5C600CEC6CE00E7DE
      DE00F7EFEF00F7F7F700E7E7E700CECECE00DEDEDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BDBDBD00BDBDBD00C6BDBD00C6BD
      BD00C6BDBD00C6BDBD00B5B5BD00B5ADBD00B5ADBD00BDB5C600CEC6CE00E7DE
      DE00F7EFEF00F7F7F700E7E7E700CECECE00DEDEDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700C6C6C600ADAD
      AD00C6C6C600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700D6D6
      D600C6C6C600C6C6C600CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700C6C6C600C6BD
      BD00C6C6C600CEC6C600D6CECE00D6D6D600DED6D600DEDEDE00DEDEDE00DEDE
      DE00D6D6D600CECECE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700C6C6C600BDBD
      BD00C6C6C600CEC6C600D6CECE00D6D6CE00DED6D600DEDEDE00E7DEDE00DEDE
      DE00D6CECE00CECECE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700C6C6C600BDBD
      BD00C6C6C600CEC6C600D6CECE00D6D6CE00DED6D600DEDEDE00E7DEDE00DEDE
      DE00D6CECE00CECECE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700DEDEDE00CECECE00CECECE00C6C6C600BDBDBD00C6C6C600C6C6C600D6D6
      D600E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700D6D6D600CECECE00C6C6C600C6C6C600CECECE00D6D6D600E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700D6D6D600CECECE00C6C6C600C6C6C600CECECE00D6D6D600E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700D6D6D600CECECE00C6C6C600C6C6C600CECECE00D6D6D600E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  object ImageList5: TImageList
    Height = 32
    Width = 32
    Left = 268
    Top = 553
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
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
      00000000000000000000000000000000000000000000FFFFFF00F7F7F700DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600E7E7E700F7F7F700000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000D6D6D600BDBDBD00F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7
      E700D6D6D600BDBDBD00ADADAD00F7F7F7000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00C6C6C600E7E7E700B5B5
      B500A5A5A500A5A5A500A5A5A5009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0094949400949494009494940094949400949494008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008484840084848400848484008484
      84008C8C8C00B5B5B500BDBDBD00E7E7E7000000000000000000000000000000
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
      000000000000000000000000000000000000E7E7E700E7E7E700B5B5B5009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400848484008C8C8C0094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494008C8C8C00D6D6D600DEDEDE000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00C6C6C600CECECE009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494008C8C8C00424242005A5A5A004A4A4A0063636300949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      940094949400ADADAD00BDBDBD00F7F7F7000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B5B5B500E7E7E7009C9C
      9C00949494009494940094949400949494009494940094949400949494009494
      9400949494006B6B6B00737373007B7B7B007B7B7B004A4A4A00949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      94008C8C8C00DEDEDE00B5B5B500FFFFFF000000000000000000000000000000
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
      00000000000000000000000000000000000000000000FFFFFF00C6C6C600D6D6
      D600949494009494940094949400949494009494940094949400949494009494
      9400949494006B6B6B00636363007B7B7B007B7B7B0042424200949494009494
      9400949494009494940094949400949494009494940094949400949494008C8C
      8C00C6C6C600BDBDBD00F7F7F700000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000C6C6C600DEDE
      DE00ADADAD009494940094949400949494009494940094949400949494009494
      9400949494009494940052525200424242004242420073737300949494009494
      9400949494009494940094949400949494009494940094949400949494009C9C
      9C00E7E7E700CECECE0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FFFFFF00B5B5
      B500DEDEDE009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      94009494940094949400949494009494940094949400949494008C8C8C00E7E7
      E700B5B5B500FFFFFF0000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00D6D6D600B5B5B50094949400949494009494940094949400949494009494
      940094949400949494005A5A5A00525252005A5A5A0073737300949494009494
      9400949494009494940094949400949494009494940094949400BDBDBD00DEDE
      DE00E7E7E7000000000000000000000000000000000000000000000000000000
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
      0000B5B5B500DEDEDE008C8C8C00949494009494940094949400949494009494
      9400949494008C8C8C00313131005A5A5A005A5A5A004A4A4A00949494009494
      94009C9C9C009C9C9C009C9C9C009C9C9C00949494009C9C9C00F7F7F700B5B5
      B500FFFFFF000000000000000000000000000000000000000000000000000000
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
      0000E7E7E700CECECE00C6C6C600949494009494940094949400949494009494
      9400949494008C8C8C0031313100636363007B7B7B0073737300A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500E7E7E700C6C6C600F7F7
      F700000000000000000000000000000000000000000000000000000000000000
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
      000000000000B5B5B500DEDEDE00ADADAD009C9C9C0094949400949494009494
      9400949494008C8C8C00636363007B7B7B007B7B7B006B6B6B00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500BDBDBD00FFFFFF00CECECE000000
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
      000000000000EFEFEF00C6C6C600D6D6D600A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500949494006363630073737300737373006B6B6B00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF00B5B5B500FFFFFF000000
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
      00000000000000000000B5B5B500D6D6D600B5B5B500A5A5A500A5A5A500A5A5
      A500A5A5A500949494005A5A5A006B6B6B006B6B6B006B6B6B00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500D6D6D600EFEFEF00E7E7E700000000000000
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
      00000000000000000000F7F7F700BDBDBD00D6D6D600A5A5A500A5A5A500A5A5
      A500A5A5A5008C8C8C005A5A5A005A5A5A006363630063636300A5A5A500A5A5
      A500A5A5A500A5A5A500B5B5B50000000000B5B5B500FFFFFF00000000000000
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
      0000000000000000000000000000BDBDBD00D6D6D600C6C6C600A5A5A500A5A5
      A500A5A5A5008C8C8C00525252005A5A5A005A5A5A005A5A5A00A5A5A500A5A5
      A500A5A5A500A5A5A500EFEFEF00CECECE00F7F7F70000000000000000000000
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
      0000000000000000000000000000FFFFFF00B5B5B500D6D6D600A5A5A500A5A5
      A500A5A5A5008C8C8C004A4A4A0052525200525252005A5A5A00A5A5A500A5A5
      A500A5A5A500C6C6C600FFFFFF00CECECE000000000000000000000000000000
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
      000000000000000000000000000000000000CECECE00CECECE00C6C6C600A5A5
      A500A5A5A500848484004A4A4A004A4A4A004A4A4A0052525200A5A5A500A5A5
      A500ADADAD00F7F7F700B5B5B500FFFFFF000000000000000000000000000000
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
      00000000000000000000000000000000000000000000ADADAD00D6D6D600ADAD
      AD00A5A5A5008484840042424200424242004A4A4A0052525200A5A5A500A5A5
      A500DEDEDE00E7E7E700E7E7E700000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000E7E7E700C6C6C600CECE
      CE00A5A5A5008C8C8C0042424200424242004242420052525200A5A5A500BDBD
      BD00F7F7F700B5B5B500FFFFFF00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000B5B5B500CECE
      CE00B5B5B500A5A5A5009C9C9C008C8C8C008C8C8C009C9C9C00A5A5A500E7E7
      E700C6C6C600F7F7F70000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000F7F7F700BDBD
      BD00D6D6D600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE00E7E7
      E700CECECE000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00CECECE00C6C6C600A5A5A500A5A5A500A5A5A500ADADAD00E7E7E700ADAD
      AD00FFFFFF000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00ADADAD00D6D6D600BDBDBD00A5A5A500ADADAD00D6D6D600CECECE00E7E7
      E700000000000000000000000000000000000000000000000000000000000000
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
      0000EFEFEF00B5B5B500CECECE00D6D6D600D6D6D600CECECE00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      000000000000F7F7F700B5B5B500ADADAD00ADADAD00D6D6D600000000000000
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
      0000EFEFEF00D6D6D600BDBDBD00BDBDBD00ADADAD00BDBDBD00C6C6C600DEDE
      DE00F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00CECECE00ADADAD00A5A5A5009C9C9C009C9C9C009C9C9C00A5A5A500B5B5
      B500D6D6D600F7F7F700FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00CECECE00ADADAD00A5A5A5009C9C9C009C9C9C009C9C9C00A5A5A500B5B5
      B500D6D6D600F7F7F700FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00D6D6D600BDBDBD00B5B5B500ADADAD00BDBDBD00BDBDBD00D6D6
      D600F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700C6C6C600ADAD
      AD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500B5B5B500CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DEDEDE00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C00B5B5B500EFEFEF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DEDEDE00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C00B5B5B500EFEFEF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700C6C6C600ADAD
      AD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500ADADAD00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00A5A5A500A5A5A500A5A5
      A500A5A5A500B5B5B500C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00ADAD
      AD00A5A5A500A5A5A500A5A5A500B5B5B500D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00EFEFEF00ADADAD00A5A5A500A5A5A500A5A5
      A500ADADAD00B5B5B500C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00ADAD
      AD00A5A5A500A5A5A500A5A5A500A5A5A500BDBDBD00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00EFEFEF00ADADAD00A5A5A500A5A5A500A5A5
      A500ADADAD00B5B5B500C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00ADAD
      AD00A5A5A500A5A5A500A5A5A500A5A5A500BDBDBD00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600A5A5A500A5A5A500A5A5
      A500ADADAD00B5B5B500C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00ADAD
      AD00A5A5A500A5A5A500A5A5A500ADADAD00D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700BDBDBD00ADADAD00ADADAD00BDBDBD00BDBD
      BD00A5A5A500737373006363630063636300636363006363630073737300ADAD
      AD00C6C6C600BDBDBD00ADADAD00ADADAD00ADADAD00C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00D6D6D600ADADAD00ADADAD00ADADAD00BDBDBD00B5B5
      B5008484840073737300737373007B7B7B007B7B7B007B7B7B007B7B7B008C8C
      8C00B5B5B500BDBDBD00ADADAD00ADADAD00ADADAD00ADADAD00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00D6D6D600ADADAD00ADADAD00ADADAD00BDBDBD00ADAD
      AD00737373006B6B6B006B6B6B007B7B7B007B7B7B0073737300737373007B7B
      7B00ADADAD00BDBDBD00ADADAD00ADADAD00ADADAD00ADADAD00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700B5B5B500ADADAD00ADADAD00BDBDBD00BDBD
      BD008C8C8C007373730063636300636363006B6B6B006B6B6B00848484009494
      9400BDBDBD00BDBDBD00ADADAD00ADADAD00ADADAD00C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00B5B5B500B5B5B500BDBDBD00B5B5B500737373005A5A
      5A00636363006B6B6B0073737300737373007B7B7B007B7B7B007B7B7B007373
      7300636363007B7B7B00BDBDBD00BDBDBD00B5B5B500B5B5B500BDBDBD00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00CECECE00B5B5B500B5B5B500BDBDBD00A5A5A5006B6B6B007373
      73007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C008C8C8C008C8C
      8C008C8C8C0084848400A5A5A500BDBDBD00B5B5B500B5B5B500B5B5B500E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00CECECE00B5B5B500B5B5B500BDBDBD009C9C9C005A5A5A007373
      7300737373007B7B7B007B7B7B007B7B7B008484840084848400848484008C8C
      8C00848484007B7B7B009C9C9C00BDBDBD00B5B5B500B5B5B500B5B5B500E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00B5B5B500B5B5B500BDBDBD00ADADAD00636363006363
      63006B6B6B0073737300737373007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007373730084848400B5B5B500BDBDBD00ADADAD00B5B5B500BDBDBD00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700BDBDBD00BDBDBD00BDBDBD00848484005A5A5A00636363006B6B
      6B006B6B6B0073737300737373007B7B7B007B7B7B007B7B7B00848484008484
      840084848400848484007B7B7B008C8C8C00C6C6C600B5B5B500BDBDBD00C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      0000D6D6D600BDBDBD00BDBDBD00BDBDBD006B6B6B006B6B6B00737373007B7B
      7B007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C008C8C8C008C8C
      8C008C8C8C00949494008C8C8C0084848400C6C6C600BDBDBD00BDBDBD00BDBD
      BD00F7F7F7000000000000000000000000000000000000000000000000000000
      0000D6D6D600BDBDBD00BDBDBD00BDBDBD005A5A5A006B6B6B006B6B6B007373
      7300737373007B7B7B007B7B7B007B7B7B008484840084848400848484008C8C
      8C008C8C8C008C8C8C00848484007B7B7B00C6C6C600BDBDBD00BDBDBD00BDBD
      BD00F7F7F7000000000000000000000000000000000000000000000000000000
      0000F7F7F700BDBDBD00BDBDBD00BDBDBD006B6B6B00636363006B6B6B007373
      7300737373007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008C8C
      8C008484840084848400737373008C8C8C00C6C6C600B5B5B500BDBDBD00C6C6
      C600FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C600C6C6C600BDBDBD00737373005A5A5A00636363006B6B6B006B6B
      6B006B6B6B007373730073737300737373007B7B7B007B7B7B007B7B7B008484
      84008C8C8C008C8C8C008C8C8C008484840084848400C6C6C600BDBDBD00C6C6
      C600D6D6D600000000000000000000000000000000000000000000000000EFEF
      EF00C6C6C600C6C6C600BDBDBD005A5A5A006B6B6B0073737300737373007373
      73007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C008C8C8C008C8C
      8C008C8C8C0094949400949494008C8C8C007B7B7B00BDBDBD00C6C6C600C6C6
      C600C6C6C600FFFFFF000000000000000000000000000000000000000000EFEF
      EF00C6C6C600C6C6C600BDBDBD004A4A4A006B6B6B006B6B6B006B6B6B007373
      7300737373007B7B7B007B7B7B007B7B7B008484840084848400848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C0073737300BDBDBD00C6C6C600C6C6
      C600C6C6C600FFFFFF000000000000000000000000000000000000000000FFFF
      FF00C6C6C600C6C6C600BDBDBD0052525200636363006B6B6B00737373007373
      7300737373007B7B7B00ADADAD00D6D6D600CECECE008C8C8C00848484008C8C
      8C008C8C8C008C8C8C00848484007B7B7B007B7B7B00BDBDBD00C6C6C600C6C6
      C600D6D6D600000000000000000000000000000000000000000000000000DEDE
      DE00CECECE00C6C6C6006B6B6B005A5A5A0063636300636363006B6B6B006B6B
      6B006B6B6B00A5A5A500ADADAD00ADADAD00ADADAD00A5A5A5007B7B7B008484
      8400848484008C8C8C008C8C8C008C8C8C008484840073737300C6C6C600CECE
      CE00CECECE00E7E7E70000000000000000000000000000000000FFFFFF00C6C6
      C600CECECE00C6C6C600525252006B6B6B006B6B6B0073737300737373007373
      73008484840084848400737373008484840084848400848484008C8C8C008C8C
      8C008C8C8C009494940094949400949494008C8C8C007B7B7B00C6C6C600CECE
      CE00CECECE00DEDEDE0000000000000000000000000000000000FFFFFF00C6C6
      C600CECECE00C6C6C60042424200636363006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B00737373007B7B7B007B7B7B007B7B7B0084848400848484008484
      84007B7B7B00848484008C8C8C008C8C8C00848484006B6B6B00C6C6C600CECE
      CE00CECECE00DEDEDE000000000000000000000000000000000000000000D6D6
      D600CECECE00C6C6C6004A4A4A00636363006B6B6B006B6B6B00737373007373
      730073737300BDBDBD00FFFFFF000000000000000000FFFFFF00848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B0073737300C6C6C600CECE
      CE00CECECE00E7E7E70000000000000000000000000000000000F7F7F700DEDE
      DE00D6D6D6007B7B7B005A5A5A005A5A5A006363630063636300636363006B6B
      6B00BDBDBD000000000000000000000000000000000000000000FFFFFF007B7B
      7B00848484008C8C8C008C8C8C008C8C8C008C8C8C00848484008C8C8C00CECE
      CE00DEDEDE00DEDEDE00FFFFFF00000000000000000000000000E7E7E700DEDE
      DE00D6D6D6005A5A5A00636363006B6B6B006B6B6B007373730073737300C6C6
      C600E7E7E700E7E7E700BDBDBD007373730084848400848484008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B00CECE
      CE00DEDEDE00D6D6D600FFFFFF00000000000000000000000000E7E7E700DEDE
      DE00D6D6D6004A4A4A0063636300636363006B6B6B006B6B6B0073737300BDBD
      BD00B5B5B5006B6B6B00737373007B7B7B007B7B7B007B7B7B0084848400C6C6
      C600CECECE007B7B7B00848484008484840084848400848484006B6B6B00CECE
      CE00DEDEDE00D6D6D600FFFFFF00000000000000000000000000F7F7F700DEDE
      DE00D6D6D6005A5A5A005A5A5A00636363006B6B6B006B6B6B006B6B6B007373
      730073737300E7E7E700FFFFFF00000000000000000000000000ADADAD008484
      8400848484008C8C8C008C8C8C008C8C8C00848484007B7B7B007B7B7B00CECE
      CE00DEDEDE00D6D6D600FFFFFF00000000000000000000000000E7E7E700E7E7
      E700ADADAD005A5A5A005A5A5A005A5A5A006363630063636300636363006B6B
      6B00CECECE000000000000000000000000000000000000000000000000007373
      73008484840084848400848484008C8C8C008C8C8C00848484007B7B7B00ADAD
      AD00D6D6D600E7E7E700EFEFEF00000000000000000000000000D6D6D600E7E7
      E700A5A5A5005A5A5A00636363006B6B6B006B6B6B0073737300C6C6C600E7E7
      E700E7E7E700E7E7E700E7E7E700C6C6C6007373730084848400848484008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00848484009C9C
      9C00D6D6D600E7E7E700E7E7E700000000000000000000000000D6D6D600E7E7
      E700A5A5A500525252006363630063636300636363006B6B6B00BDBDBD00DEDE
      DE00E7E7E700BDBDBD006B6B6B007B7B7B007B7B7B007B7B7B00CECECE00F7F7
      F700F7F7F700DEDEDE007B7B7B008484840084848400848484007B7B7B009494
      9400D6D6D600E7E7E700E7E7E700000000000000000000000000DEDEDE00E7E7
      E700ADADAD005252520063636300636363006B6B6B006B6B6B006B6B6B007373
      730073737300D6D6D600FFFFFF00FFFFFF0000000000000000009C9C9C008484
      840084848400848484008484840084848400848484008484840073737300A5A5
      A500D6D6D600E7E7E700EFEFEF000000000000000000FFFFFF00EFEFEF00E7E7
      E7006B6B6B00525252005A5A5A005A5A5A005A5A5A0063636300636363006B6B
      6B00C6C6C6000000000000000000000000000000000000000000000000007373
      7300848484008484840084848400848484008484840084848400848484007B7B
      7B00CECECE00EFEFEF00EFEFEF000000000000000000F7F7F700EFEFEF00E7E7
      E7004A4A4A005A5A5A00636363006B6B6B006B6B6B00BDBDBD00DEDEDE00DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700C6C6C60073737300848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00848484007373
      7300CECECE00EFEFEF00E7E7E700FFFFFF0000000000F7F7F700EFEFEF00E7E7
      E700393939005A5A5A0063636300636363006B6B6B00B5B5B500CECECE00D6D6
      D600DEDEDE00E7E7E700BDBDBD006B6B6B007B7B7B00CECECE00EFEFEF00EFEF
      EF00F7F7F700F7F7F700D6D6D6007B7B7B0084848400848484007B7B7B006363
      6300CECECE00EFEFEF00E7E7E700FFFFFF0000000000FFFFFF00EFEFEF00E7E7
      E700424242005A5A5A006363630063636300636363006B6B6B006B6B6B006B6B
      6B007373730084848400E7E7E700FFFFFF00FFFFFF00BDBDBD00848484008484
      84008484840084848400848484008484840084848400848484007B7B7B006B6B
      6B00CECECE00EFEFEF00E7E7E7000000000000000000F7F7F700F7F7F700BDBD
      BD005A5A5A00525252005A5A5A005A5A5A005A5A5A0063636300636363006B6B
      6B00C6C6C6000000000000000000000000000000000000000000000000007373
      7300848484008484840084848400848484008484840084848400848484007373
      7300ADADAD00E7E7E700F7F7F700FFFFFF0000000000E7E7E700F7F7F700BDBD
      BD006B6B6B005A5A5A00636363006B6B6B00BDBDBD00D6D6D600D6D6D600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700C6C6C600737373008484
      840084848400848484008C8C8C008C8C8C008C8C8C0084848400848484007B7B
      7B00A5A5A500E7E7E700F7F7F700F7F7F70000000000E7E7E700F7F7F700BDBD
      BD006B6B6B005A5A5A005A5A5A00636363007B7B7B00C6C6C600C6C6C600CECE
      CE00D6D6D600DEDEDE00E7E7E700BDBDBD00C6C6C600EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00F7F7F700F7F7F7008C8C8C007B7B7B007B7B7B007B7B7B007373
      73009C9C9C00E7E7E700F7F7F700F7F7F70000000000F7F7F700F7F7F700BDBD
      BD00525252005A5A5A006363630063636300636363006B6B6B006B6B6B006B6B
      6B007373730073737300737373007B7B7B00737373007B7B7B007B7B7B007B7B
      7B008484840084848400848484008484840084848400848484007B7B7B007373
      7300A5A5A500E7E7E700F7F7F700FFFFFF0000000000EFEFEF00FFFFFF009C9C
      9C005A5A5A0052525200525252005A5A5A005A5A5A005A5A5A00636363006363
      6300C6C6C6000000000000000000000000000000000000000000000000007373
      73007B7B7B007B7B7B007B7B7B0084848400848484007B7B7B007B7B7B007B7B
      7B0094949400E7E7E700FFFFFF00FFFFFF0000000000DEDEDE00FFFFFF008484
      8400848484007373730063636300C6C6C600E7E7E700DEDEDE00D6D6D600D6D6
      D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700C6C6C6007373
      7300848484008484840084848400848484008484840084848400848484007B7B
      7B0073737300E7E7E700FFFFFF00F7F7F70000000000DEDEDE00FFFFFF007B7B
      7B0084848400737373005A5A5A0063636300636363009C9C9C00C6C6C600C6C6
      C600CECECE00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00B5B5B5007B7B7B007B7B7B007B7B7B007B7B7B007373
      730063636300E7E7E700FFFFFF00F7F7F70000000000E7E7E700FFFFFF008484
      8400737373005A5A5A005A5A5A006363630063636300636363006B6B6B006B6B
      6B006B6B6B0094949400D6D6D600EFEFEF00EFEFEF00BDBDBD00737373007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      730073737300E7E7E700FFFFFF00F7F7F70000000000FFFFFF00000000008484
      84007373730063636300525252005A5A5A005A5A5A005A5A5A00636363006363
      6300C6C6C600FFFFFF0000000000000000000000000000000000000000006B6B
      6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0073737300DEDEDE0000000000FFFFFF0000000000F7F7F700000000006B6B
      6B008484840084848400DEDEDE00EFEFEF00E7E7E700E7E7E700DEDEDE00CECE
      CE009C9C9C00CECECE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700C6C6
      C600737373007B7B7B0084848400848484008484840084848400848484007B7B
      7B006B6B6B00DEDEDE0000000000F7F7F70000000000F7F7F700000000006363
      630084848400848484007B7B7B00636363006363630063636300A5A5A500C6C6
      C600C6C6C600CECECE00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7E700EFEF
      EF00EFEFEF00B5B5B5007B7B7B007B7B7B007B7B7B007B7B7B00737373007373
      73005A5A5A00DEDEDE0000000000F7F7F70000000000F7F7F700000000005A5A
      5A0084848400737373005A5A5A00636363006363630063636300636363006B6B
      6B006B6B6B00DEDEDE00EFEFEF00F7F7F700F7F7F700F7F7F7009C9C9C007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      73005A5A5A00DEDEDE0000000000F7F7F700FFFFFF0000000000FFFFFF007B7B
      7B007373730073737300636363005A5A5A005A5A5A005A5A5A005A5A5A006363
      6300C6C6C600FFFFFF00FFFFFF00000000000000000000000000000000006B6B
      6B00737373007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      730073737300CECECE0000000000FFFFFF00FFFFFF0000000000FFFFFF006B6B
      6B007B7B7B00A5A5A500FFFFFF00FFFFFF00EFEFEF00E7E7E700D6D6D6007B7B
      7B007373730073737300C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700C6C6C600737373007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B006B6B6B00CECECE0000000000FFFFFF00FFFFFF0000000000FFFFFF006363
      6300848484008484840084848400848484006B6B6B0063636300636363009C9C
      9C00C6C6C600C6C6C600CECECE00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7
      E700ADADAD007373730073737300737373007373730073737300737373007373
      73005A5A5A00CECECE0000000000FFFFFF00FFFFFF0000000000FFFFFF006363
      630084848400848484007B7B7B00636363006363630063636300636363006B6B
      6B006B6B6B00DEDEDE00EFEFEF00EFEFEF00EFEFEF00F7F7F700A5A5A5007373
      7300737373007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00737373007373
      73005A5A5A00CECECE0000000000FFFFFF00FFFFFF0000000000F7F7F7007B7B
      7B0073737300737373007373730073737300636363005A5A5A005A5A5A005A5A
      5A00BDBDBD00F7F7F700FFFFFF00FFFFFF00FFFFFF0000000000000000006B6B
      6B00737373007373730073737300737373007373730073737300737373007373
      73006B6B6B00BDBDBD0000000000FFFFFF00FFFFFF0000000000F7F7F7006B6B
      6B007B7B7B0084848400D6D6D600FFFFFF00FFFFFF00E7E7E700848484006B6B
      6B006B6B6B007373730073737300CECECE00E7E7E700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00D6D6D6008C8C8C008C8C8C00848484007B7B7B007B7B7B007B7B
      7B006B6B6B00BDBDBD0000000000FFFFFF00FFFFFF0000000000F7F7F7006B6B
      6B00848484008484840084848400848484008484840084848400737373006B6B
      6B00BDBDBD00C6C6C600CECECE00D6D6D600DEDEDE00E7E7E700EFEFEF00DEDE
      DE008C8C8C00949494008C8C8C00848484007B7B7B0073737300737373006B6B
      6B0063636300BDBDBD0000000000FFFFFF00FFFFFF0000000000F7F7F7006B6B
      6B00848484008484840084848400848484006B6B6B0063636300636363006363
      63006B6B6B00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00A5A5A5007373
      7300737373007373730073737300737373007373730073737300737373007373
      730063636300BDBDBD0000000000FFFFFF00FFFFFF0000000000FFFFFF007B7B
      7B00737373007373730073737300737373007B7B7B007B7B7B00737373006B6B
      6B00C6C6C600F7F7F700F7F7F700FFFFFF00FFFFFF0000000000000000008484
      84008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C0084848400737373007373
      730063636300BDBDBD0000000000FFFFFF00FFFFFF0000000000FFFFFF007373
      73007B7B7B007B7B7B0084848400CECECE00E7E7E700949494008C8C8C009494
      94008C8C8C008C8C8C00949494009C9C9C00D6D6D600EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00D6D6D600949494009C9C9C00949494007B7B7B007373
      73006B6B6B00BDBDBD0000000000FFFFFF00FFFFFF0000000000FFFFFF006B6B
      6B007B7B7B0084848400848484008484840084848400848484008C8C8C00C6C6
      C600CECECE00CECECE00D6D6D600DEDEDE00DEDEDE00E7E7E700EFEFEF00EFEF
      EF00D6D6D6008C8C8C009494940094949400949494008C8C8C00737373006B6B
      6B0063636300BDBDBD0000000000FFFFFF00FFFFFF0000000000FFFFFF006B6B
      6B00848484008484840084848400848484008484840084848400737373006363
      630063636300E7E7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00B5B5B5009494
      940094949400949494008C8C8C00848484007B7B7B0073737300737373007373
      730063636300BDBDBD0000000000FFFFFF00FFFFFF0000000000000000007B7B
      7B0073737300737373007373730073737300737373007B7B7B007B7B7B007B7B
      7B00CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      84008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00848484007373
      73006B6B6B00CECECE0000000000FFFFFF00FFFFFF0000000000000000007373
      73007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C008C8C8C008C8C
      8C00949494009494940094949400949494009C9C9C00D6D6D600EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700D6D6D600949494009C9C9C00949494007B7B
      7B0063636300CECECE0000000000FFFFFF00FFFFFF0000000000000000006B6B
      6B007B7B7B008484840084848400848484008484840084848400CECECE00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7E700EFEF
      EF00EFEFEF00CECECE008C8C8C00949494009494940094949400949494007373
      73005A5A5A00CECECE0000000000FFFFFF00FFFFFF0000000000000000006363
      63008484840084848400848484008484840084848400848484008C8C8C008C8C
      8C0084848400EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBDBD009494
      940094949400949494009494940094949400949494008C8C8C00737373006B6B
      6B005A5A5A00CECECE0000000000FFFFFF0000000000F7F7F700000000008C8C
      8C0073737300737373007373730073737300737373007B7B7B007B7B7B007B7B
      7B00ADADAD000000000000000000000000000000000000000000D6D6D6008484
      84008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008484
      840073737300E7E7E70000000000FFFFFF0000000000EFEFEF00000000007B7B
      7B007B7B7B007B7B7B007B7B7B008484840084848400848484008C8C8C008C8C
      8C008C8C8C00949494009494940094949400949494009C9C9C00DEDEDE00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00E7E7E700CECECE0094949400949494009494
      940073737300E7E7E70000000000FFFFFF0000000000EFEFEF00000000007373
      73007B7B7B007B7B7B00848484008484840084848400D6D6D600E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7
      E700EFEFEF00EFEFEF00CECECE008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C0063636300E7E7E70000000000FFFFFF0000000000EFEFEF00000000006B6B
      6B00848484008484840084848400848484008484840084848400848484008C8C
      8C008C8C8C00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00C6C6C6009494
      9400949494009494940094949400949494009494940094949400949494007373
      73004A4A4A00E7E7E70000000000FFFFFF0000000000E7E7E70000000000B5B5
      B5006B6B6B007373730073737300737373007373730073737300737373007B7B
      7B007B7B7B007B7B7B0094949400A5A5A5009C9C9C0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008C8C8C00FFFFFF0000000000FFFFFF0000000000E7E7E70000000000A5A5
      A5007B7B7B007B7B7B007B7B7B007B7B7B008484840084848400848484008C8C
      8C008C8C8C008C8C8C009494940094949400949494009494940094949400DEDE
      DE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700C6C6C600949494009494
      940084848400FFFFFF0000000000FFFFFF0000000000E7E7E70000000000A5A5
      A5007B7B7B007B7B7B007B7B7B00848484008C8C8C00F7F7F700EFEFEF00E7E7
      E700DEDEDE00D6D6D600D6D6D600B5B5B500B5B5B500D6D6D600DEDEDE00E7E7
      E700E7E7E700EFEFEF00F7F7F700949494008C8C8C008C8C8C008C8C8C008C8C
      8C007B7B7B00FFFFFF0000000000FFFFFF0000000000D6D6D600000000008C8C
      8C007B7B7B008484840084848400848484008484840084848400848484008484
      84008C8C8C00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700C6C6C6008C8C
      8C008C8C8C008C8C8C0094949400949494008C8C8C008C8C8C008C8C8C008C8C
      8C0063636300FFFFFF0000000000FFFFFF0000000000F7F7F70000000000DEDE
      DE006B6B6B006B6B6B0073737300737373007373730073737300737373007373
      73007B7B7B00D6D6D600FFFFFF00F7F7F700FFFFFF00FFFFFF00949494007B7B
      7B00848484008484840084848400848484008484840084848400848484007B7B
      7B00A5A5A5000000000000000000FFFFFF0000000000F7F7F70000000000DEDE
      DE007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008484
      8400848484008C8C8C008C8C8C008C8C8C009494940094949400949494009494
      9400DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D6D6D600949494008484
      8400A5A5A5000000000000000000FFFFFF0000000000F7F7F70000000000DEDE
      DE00848484007B7B7B007B7B7B007B7B7B0084848400BDBDBD00F7F7F700EFEF
      EF00E7E7E700DEDEDE00B5B5B500848484008C8C8C00B5B5B500D6D6D600DEDE
      DE00E7E7E700E7E7E700B5B5B5008C8C8C008C8C8C008C8C8C008C8C8C007B7B
      7B00A5A5A5000000000000000000FFFFFF0000000000EFEFEF0000000000DEDE
      DE007B7B7B007B7B7B0084848400848484008484840084848400848484008484
      84008C8C8C00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700C6C6C6008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C00949494000000000000000000FFFFFF000000000000000000F7F7F7000000
      00008C8C8C006B6B6B006B6B6B00737373007373730073737300737373007373
      7300A5A5A500EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700EFEFEF007B7B
      7B008484840084848400848484008484840084848400848484007B7B7B008484
      8400DEDEDE0000000000FFFFFF00000000000000000000000000EFEFEF000000
      00008C8C8C007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00848484008484
      840084848400848484008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C009494
      940094949400DEDEDE00EFEFEF00EFEFEF00DEDEDE00949494008C8C8C008C8C
      8C00DEDEDE0000000000FFFFFF00000000000000000000000000EFEFEF000000
      0000848484007B7B7B007B7B7B007B7B7B007B7B7B0084848400B5B5B500F7F7
      F700EFEFEF00B5B5B50084848400848484008484840084848400B5B5B500D6D6
      D600DEDEDE00B5B5B5008C8C8C008C8C8C008C8C8C008C8C8C00848484008484
      8400DEDEDE0000000000FFFFFF00000000000000000000000000EFEFEF000000
      00006B6B6B007B7B7B007B7B7B00848484008484840084848400848484008484
      84008C8C8C00E7E7E700DEDEDE00DEDEDE00DEDEDE00E7E7E700C6C6C6008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C007373
      7300DEDEDE0000000000FFFFFF00000000000000000000000000E7E7E7000000
      0000DEDEDE006B6B6B006B6B6B00737373007373730073737300737373007373
      7300B5B5B500E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00000000007373
      73007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B009494
      9400FFFFFF0000000000FFFFFF00000000000000000000000000E7E7E7000000
      0000D6D6D60084848400737373007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00848484008484840084848400848484008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C0094949400DEDEDE00D6D6D600949494008C8C8C007B7B7B009C9C
      9C00FFFFFF0000000000FFFFFF00000000000000000000000000E7E7E7000000
      0000D6D6D600848484007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00ADAD
      AD00ADADAD00848484008484840084848400848484008484840084848400ADAD
      AD00ADADAD0084848400848484008484840084848400848484007B7B7B009C9C
      9C00FFFFFF0000000000FFFFFF00000000000000000000000000D6D6D6000000
      0000CECECE007B7B7B007B7B7B007B7B7B008484840084848400848484008484
      84008C8C8C00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C6008484
      84008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00848484007B7B
      7B00FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF00EFEF
      EF00FFFFFF009C9C9C006B6B6B006B6B6B006B6B6B0073737300737373007373
      730094949400EFEFEF00E7E7E700E7E7E700EFEFEF00EFEFEF00DEDEDE007373
      73007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00E7E7
      E700FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00EFEF
      EF00FFFFFF009C9C9C007B7B7B00737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B008484840084848400848484008484840084848400848484008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C0084848400A5A5A500E7E7
      E700FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00EFEF
      EF00FFFFFF009C9C9C00848484007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400848484007B7B7B009C9C9C00E7E7
      E700FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00EFEF
      EF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008484
      840094949400DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C6008484
      84008484840084848400848484008484840084848400848484006B6B6B00E7E7
      E700FFFFFF00F7F7F7000000000000000000000000000000000000000000E7E7
      E700FFFFFF00F7F7F7008C8C8C006B6B6B006B6B6B006B6B6B00737373007373
      7300737373008C8C8C00DEDEDE00FFFFFF00EFEFEF00BDBDBD007B7B7B007373
      7300737373007373730073737300737373007373730073737300C6C6C600FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000E7E7
      E700FFFFFF00F7F7F700949494007B7B7B00737373007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00848484008484840084848400848484008484
      84008484840084848400848484008484840084848400A5A5A500C6C6C600FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000E7E7
      E700FFFFFF00F7F7F700949494007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00848484008484840084848400848484008484
      8400848484008484840084848400848484007B7B7B009C9C9C00C6C6C600FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000D6D6
      D600FFFFFF00F7F7F700737373007B7B7B007B7B7B007B7B7B00848484008484
      840094949400D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE008484
      8400848484008484840084848400848484008484840073737300BDBDBD00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000DEDEDE00F7F7F700E7E7E7007B7B7B006B6B6B006B6B6B006B6B6B006B6B
      6B00737373007373730073737300737373007373730073737300737373007373
      73007373730073737300737373007373730073737300B5B5B500F7F7F700F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000DEDEDE00F7F7F700E7E7E700A5A5A5008484840073737300737373007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00848484008484
      84008484840084848400848484007B7B7B00ADADAD00BDBDBD00F7F7F700F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000DEDEDE00F7F7F700E7E7E7009C9C9C00848484007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00848484008484
      84008484840084848400848484007B7B7B00ADADAD00BDBDBD00F7F7F700F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000CECECE00F7F7F700E7E7E700737373007B7B7B007B7B7B007B7B7B007B7B
      7B008C8C8C00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE008484
      8400848484008484840084848400848484007B7B7B00A5A5A500F7F7F700F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00F7F7F700EFEFEF00949494006B6B6B006B6B6B006B6B
      6B006B6B6B007373730073737300737373007373730073737300737373007373
      73007373730073737300737373007B7B7B00C6C6C600F7F7F700F7F7F700F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00F7F7F700EFEFEF00ADADAD00949494007B7B7B007373
      73007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0084848400BDBDBD00C6C6C600F7F7F700F7F7F700F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00F7F7F700EFEFEF00A5A5A5009C9C9C007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0084848400BDBDBD00C6C6C600F7F7F700F7F7F700F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D600F7F7F700EFEFEF00737373007B7B7B007B7B7B007B7B
      7B007B7B7B00A5A5A500B5B5B500BDBDBD00BDBDBD00B5B5B500949494008484
      84008484840084848400848484006B6B6B00BDBDBD00F7F7F700F7F7F700F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00D6D6D600F7F7F700F7F7F700C6C6C6007B7B7B006B6B
      6B006B6B6B006B6B6B006B6B6B00737373007373730073737300737373007373
      7300737373007373730094949400DEDEDE00F7F7F700F7F7F700F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00D6D6D600F7F7F700F7F7F700C6C6C600ADADAD009494
      94008C8C8C007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B008C8C8C00B5B5B500B5B5B500DEDEDE00F7F7F700F7F7F700F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00D6D6D600F7F7F700F7F7F700C6C6C600ADADAD009C9C
      9C008C8C8C007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B008C8C8C00B5B5B500B5B5B500DEDEDE00F7F7F700F7F7F700F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00CECECE00F7F7F700F7F7F700A5A5A500737373007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008484
      8400848484007B7B7B0073737300DEDEDE00F7F7F700F7F7F700F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00E7E7E700EFEFEF00EFEFEF00C6C6
      C600949494007B7B7B007B7B7B007373730073737300737373006B6B6B008C8C
      8C00B5B5B500D6D6D600EFEFEF00EFEFEF00E7E7E700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00E7E7E700EFEFEF00EFEFEF00C6C6
      C600ADADAD00B5B5B500ADADAD00A5A5A500A5A5A500ADADAD00BDBDBD00B5B5
      B500C6C6C600D6D6D600EFEFEF00EFEFEF00E7E7E700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00E7E7E700EFEFEF00EFEFEF00C6C6
      C600ADADAD00B5B5B500B5B5B500ADADAD00ADADAD00ADADAD00BDBDBD00B5B5
      B500C6C6C600D6D6D600EFEFEF00EFEFEF00E7E7E700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600E7E7E700EFEFEF00EFEFEF00A5A5
      A500737373007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B006B6B
      6B008C8C8C00D6D6D600EFEFEF00EFEFEF00DEDEDE00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00D6D6D600D6D6D600DEDEDE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00DEDEDE00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700CECECE00CECECE00D6D6D600EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00DEDEDE00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700CECECE00CECECE00D6D6D600EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00DEDEDE00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700C6C6C600EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700C6C6C600C6C6C600CECECE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00DEDEDE00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00D6D6
      D600D6D6D600E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00D6D6
      D600D6D6D600E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00D6D6
      D600D6D6D600E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700C6C6
      C600CECECE00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDE
      DE00D6D6D600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      8000000100000000000000000000000087FFC000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000000000000000000000
      80000001000000000000000000000000C0000003000000000000000000000000
      C0000003000000000000000000000000E0000007000000000000000000000000
      F0000007000000000000000000000000F000000F000000000000000000000000
      F800001F000000000000000000000000F800001F000000000000000000000000
      FC00003F000000000000000000000000FC00013F000000000000000000000000
      FE00007F000000000000000000000000FE0000FF000000000000000000000000
      FF0000FF000000000000000000000000FF8001FF000000000000000000000000
      FF8001FF000000000000000000000000FFC003FF000000000000000000000000
      FFC007FF000000000000000000000000FFE007FF000000000000000000000000
      FFE00FFF000000000000000000000000FFF00FFF000000000000000000000000
      FFF83FFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFF007FFFFC001FFFFC001FFFFF007FF
      FF8001FFFF00007FFF00007FFF8001FFFF00007FFC00003FFC00003FFF00007F
      FC00001FF800001FF800001FFC00001FF800000FF000000FF000000FF800000F
      F0000007F0000007F0000007F0000007E0000007E0000003E0000003E0000007
      E0000003C0000003C0000003E0018003C007C001C0000001C0000001C001C001
      C007E001C0000001C0000001C000C0018007E001800000008000000080000001
      8007E0008000000080000000800000008007E000800000008000000080000000
      A003E002A0000002A0000002A00000024001E002400000024000000240000002
      4000600240000002400000024000000240006002400000024000000240000002
      60002002600000026000000260000002A007C002A0000002A0000002A0000002
      A0000002A0000002A0000002A0000002A0000006A0000006A0000006A0000006
      D0000005D0000005D0000005D0000005D0002005D0000005D0000005D0000005
      C0000003C0000003C0000003C0000003E0000003E0000003E0000003E0000003
      F0000007F0000007F0000007F0000007F800000FF800000FF800000FF800000F
      F800001FF800001FF800001FF800001FFE00003FFE00003FFE00003FFE00003F
      FF0000FFFF0000FFFF0000FFFF0000FFFFC003FFFFC003FFFFC003FFFFC003FF
      FFFC3FFFFFFFFFFFFFFC3FFFFFFC3FFF00000000000000000000000000000000
      000000000000}
  end
  object dlgExport: TSaveDialog
    DefaultExt = '.pdf'
    Filter = 'PDF files (*.pdf)|*.pdf'
    Left = 852
    Top = 211
  end
  object plBureau: TppDBPipeline
    DataSource = dtmLoanC.dtsPrintBureau
    UserName = 'plBureau'
    Left = 748
    Top = 3
    object plBureauppField1: TppField
      FieldAlias = 'LoanRef'
      FieldName = 'LoanRef'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plBureauppField2: TppField
      FieldAlias = 'ClientCode'
      FieldName = 'ClientCode'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object plBureauppField3: TppField
      FieldAlias = 'IDNumber'
      FieldName = 'IDNumber'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object plBureauppField4: TppField
      FieldAlias = 'FirstName'
      FieldName = 'FirstName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object plBureauppField5: TppField
      FieldAlias = 'LastName'
      FieldName = 'LastName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 4
    end
    object plBureauppField6: TppField
      FieldAlias = 'Address1'
      FieldName = 'Address1'
      FieldLength = 35
      DisplayWidth = 35
      Position = 5
    end
    object plBureauppField7: TppField
      FieldAlias = 'Address2'
      FieldName = 'Address2'
      FieldLength = 35
      DisplayWidth = 35
      Position = 6
    end
    object plBureauppField8: TppField
      FieldAlias = 'Address3'
      FieldName = 'Address3'
      FieldLength = 25
      DisplayWidth = 25
      Position = 7
    end
    object plBureauppField9: TppField
      FieldAlias = 'Address4'
      FieldName = 'Address4'
      FieldLength = 25
      DisplayWidth = 25
      Position = 8
    end
    object plBureauppField10: TppField
      FieldAlias = 'AddressCode'
      FieldName = 'AddressCode'
      FieldLength = 4
      DisplayWidth = 4
      Position = 9
    end
    object plBureauppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'AccountID'
      FieldName = 'AccountID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 10
    end
    object plBureauppField12: TppField
      FieldAlias = 'Subscriber'
      FieldName = 'Subscriber'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object plBureauppField13: TppField
      FieldAlias = 'AccountNo'
      FieldName = 'AccountNo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object plBureauppField14: TppField
      FieldAlias = 'Source'
      FieldName = 'Source'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plBureauppField15: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object plBureauppField16: TppField
      FieldAlias = 'OpenDate'
      FieldName = 'OpenDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object plBureauppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Instalment'
      FieldName = 'Instalment'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 16
    end
    object plBureauppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'LoanID'
      FieldName = 'LoanID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 17
    end
    object plBureauppField19: TppField
      FieldAlias = 'AutoDisabled'
      FieldName = 'AutoDisabled'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 18
    end
    object plBureauppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CurrentBalance'
      FieldName = 'CurrentBalance'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 19
    end
    object plBureauppField21: TppField
      FieldAlias = 'Period'
      FieldName = 'Period'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object plBureauppField22: TppField
      FieldAlias = 'LastPayDate'
      FieldName = 'LastPayDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 21
    end
    object plBureauppField23: TppField
      FieldAlias = 'Enabled'
      FieldName = 'Enabled'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 22
    end
    object plBureauppField24: TppField
      FieldAlias = 'DisableUser'
      FieldName = 'DisableUser'
      FieldLength = 10
      DisplayWidth = 10
      Position = 23
    end
    object plBureauppField25: TppField
      FieldAlias = 'DisableDate'
      FieldName = 'DisableDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
    object plBureauppField26: TppField
      FieldAlias = 'CreateUser'
      FieldName = 'CreateUser'
      FieldLength = 10
      DisplayWidth = 10
      Position = 25
    end
    object plBureauppField27: TppField
      FieldAlias = 'CreateDate'
      FieldName = 'CreateDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 26
    end
  end
  object ppmQuotation: TPopupMenu
    OnPopup = ppmQuotationPopup
    Left = 556
    Top = 19
    object Quotation1: TMenuItem
      Caption = 'Quotation'
      OnClick = Quotation1Click
    end
    object QuotationCallScript1: TMenuItem
      Caption = 'Quotation Call Script'
      OnClick = QuotationCallScript1Click
    end
    object RecordedCalls1: TMenuItem
      Caption = 'Telephonically Recorded Quotation'
    end
  end
  object imlTools: TImageList
    BlendColor = clWindow
    BkColor = clWhite
    Left = 816
    Top = 208
    Bitmap = {
      494C01010D000E00040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00185A1000298C
      39004AAD6B0039844A00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C00949494009494
      94009494940094949400949494009494940094949400186B100031944200429C
      520039D6940042DE9C004ABD7B00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500FFFFFF00FFFFF700FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700184A1000217B2100FFFFFF00FFFF
      FF004294520031CE840039D6940042844A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E7004A8C3900FFFFFF00EFF7F700DEEF
      DE00FFFFFF0039945200109C4A0042AD63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E7005A8C4A00E7EFDE0039944A00298C
      3900FFFFFF00FFFFFF0042945200429C52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00EFE7E700EFEF
      E700EFEFE700EFE7E700EFEFE700EFEFE7004A6B4200528C3900528C42005A94
      5A00318C4200FFFFFF00FFFFFF00318439000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF006B9C5A006B9C52005A8C
      4200318C390073AD73009CBD9400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500FFFFFF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF005A7B5200739C
      5A0073A563004A733900FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500FFFFFF00F7F7EF00F7F7
      EF00EFF7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7F700FFFFFF00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00FFF7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFF700FFFFFF00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00E7E7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00B5ADB500BDBDBD00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDBDBD00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00BDBDBD00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00ADAD
      AD008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C009494
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B500736B6B005A52
      4A00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD0094949400949494009494
      9400949494008C8C8C006B6B6B007B7B7B00949494006B636300D69C3900D684
      29004A393100BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400E7E7E700E7E7E700E7E7
      E700E7E7E700948C8400BD8C42006B4231009C9C9C00847B7300E7AD6B00E794
      52004A292100292929008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400E7E7E700E7E7E700E7E7
      E700E7E7E700846B5200F7C67300A5633100292929006B6B6B00393131006352
      4A00636363002121210021212100ADADAD00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400EFEFEF00EFEFEF00DEDE
      E7005252A500292152007B6B630073635A004A4A4A0029292900313131002121
      21005252520063636300181818005A5A5A00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400EFEFEF00EFEFEF00EFEF
      EF00EFEFEF001010840010105200313131006B6B6B00525252005A4A39005A5A
      5A005A5A5A00393939007373730031313100FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400EFEFEF00EFEFEF00EFEF
      EF00EFEFEF001818940000008C004A4A6B004A4A4A005A5A5A008C6B52004A4A
      4A005A5252004242420042424200A5A5A500FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400EFEFEF00EFEFEF00EFEF
      EF00EFEFEF001818AD000000A5008484BD00B5B5B5004A4A4A00525252005A5A
      5A004A4A4A0073737300ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180008A5180008A51800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000D6000000D6000000D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200BD636300BD636300BD636300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400F7F7F700F7F7F700F7F7
      F700F7F7F7003939C6001010C6008484C600F7F7F700EFEFEF00D6D6D600A5A5
      A5007B7B7B00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180021B5310021B5310008A5180008A51800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000B5000808E7000808E7000000D6000000D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200B55A0000E7841800E7841800BD636300BD636300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094949400F7F7F700EFEFF700F7F7
      F700F7F7F7007373E7007B7BEF009C9CD600F7F7F700F7F7FF00F7F7FF00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180021B5310021D6390021B5310021B5310008A5180008A5
      180008A51800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000B5000808E7001008F7000808E7000808E7000000D6000000
      D6000000D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200B55A0000E7841800EFA55200E7841800E7841800BD636300BD63
      6300BD636300FFFFFF00FFFFFF00FFFFFF0094949400EFEFEF007373EF00DEDE
      DE00DEDEE7008C8CF7009C9CF7007B7BCE00BDBDDE006363D600FFFFFF00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180021B5310021D6390021D6390021B5310021B5310021D6
      390021B5310008A5180008A51800FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000B5000808E7001008F7001008F7000808E7000000D6001008
      F7000808E7000000D6000000D600FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200B55A0000E7841800EFA55200EFA55200E7841800E7841800EFA5
      5200E7841800BD636300BD636300FFFFFF0094949400EFEFEF008484FF00A5A5
      F7007B7BEF00ADADFF00C6C6FF007B7BF7008484EF008C8CF700F7F7FF00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180021B5310021D6390021D6390021B5310021B5310021D6
      390021B5310021B5310021C6310008A51800FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000B5000808E7001008F7001008F7000808E7000000D6001008
      F7000808E7000000D6000808E7000000D600FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200B55A0000E7841800EFA55200EFA55200E7841800E7841800EFA5
      5200E7841800E7841800D6731800BD636300A5A5A500B5B5B500BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180021B5310021D6390021D6390021B5310021B5310008A5
      180008A5180008A5180008A51800FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000B5000808E7001008F7001008F7000808E7000808E7000000
      D6000000D6000000D6000000D600FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200B55A0000E7841800EFA55200EFA55200E7841800E7841800BD63
      6300BD636300BD636300BD636300FFFFFF00FFFFFF009C9C9C00E7E7E700BDBD
      BD00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180021B5310021D6390008A5180008A5180008A51800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000B5000808E7001008F7000000D6000000D6000000D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200B55A0000E7841800EFA55200BD636300BD636300BD636300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C00C6C6
      C600EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      73007363520008A5180008A5180008A51800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      7300736352000000D6000000D6000000D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C7B
      730073635200BD636300BD636300BD636300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5
      A500A5A5A500ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00A5A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A637B00BD949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A637B00BD949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6B5AD00C69C8400BD8C
      7300BD8C7300BD846B00B5846B00B57B6300B57B6300B57B6300AD735A00AD73
      5A00AD735200C6AD9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B9CC600188CE7004A7BA500C694
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B9CC600188CE7004A7BA500C694
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5846B00F7F7F700EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7E700EFE7E700F7EFEF00E7E7E700ADA5
      9C00A59C9400AD735A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000008400000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004AB5FF0052B5FF00218CEF004A7B
      A500C6949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004AB5FF0052B5FF00218CEF004A7B
      A500C6949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5846B00FFFFFF00EFCE
      B500E7CEB500EFCEBD00E7CEBD00E7CEB500E7CEB500EFD6BD00F7DEC600F7DE
      C600ADB5B500AD735A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000840000008400000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0052B5FF0052B5FF001884
      E7004A7BA500C6949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0052B5FF0052B5FF001884
      E7004A7BA500C6949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5846B00FFFFFF00EFEF
      EF00F7F7F700F7F7F700EFEFEF00EFEFEF00EFF7F700EFF7F700F7F7F700FFFF
      FF00E7E7E700AD735A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000840000008400000084848400848484008484
      840084848400848484008484840084848400FFFFFF00FFFFFF0052B5FF004AB5
      FF00188CE7004A7BA500BD949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0052B5FF004AB5
      FF00188CE7004A7BA500BD949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5846B00FFFFFF00F7CE
      B500EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCE
      AD00F7F7F700AD7B5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF0052B5
      FF004AB5FF002184DE005A6B7300FFFFFF00AD7B7300C6A59C00D6B5A500CEA5
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0052B5
      FF004AB5FF002184DE005A6B7300FFFFFF00AD7B7300C6A59C00D6B5A500CEA5
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5846B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001018180018293100BDBDBD00FFFFFF00FFFF
      FF00E7E7E700AD7B5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFFD600FFFFD600FFFF
      D600E7DEBD00CEADA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFFD600FFFFD600FFFF
      D600E7DEBD00CEADA500FFFFFF00FFFFFF00FFFFFF00B5846B00FFFFFF00F7D6
      B500F7D6BD00F7D6BD00F7D6BD002139390018ADDE00088CD60010ADDE00F7D6
      BD00E7E7E700B57B6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEB5B500D6B5A500FFEFC600FFFFD600FFFFD600FFFFD600FFFF
      DE00FFFFEF00F7F7EF00B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEB5B500D6B5A500FFEFC600FFFFD600FFFFD600FFFFD600FFFF
      DE00FFFFEF00F7F7EF00B58C8C00FFFFFF00FFFFFF00B5846B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00A5FFFF0042DEFF00008CDE0008AD
      E700E7E7E700B57B6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6948C00F7DEB500F7D6A500FFF7CE00FFFFD600FFFFDE00FFFF
      EF00FFFFF700FFFFFF00DED6BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6948C00F7DEB500F7D6A500FFF7CE00FFFFD600B55A1800FFFF
      EF00FFFFF700FFFFFF00DED6BD00FFFFFF00FFFFFF00B5846B00FFFFFF00F7CE
      B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6B50094EFFF0073D6F700088C
      D60008ADDE00B57B6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000840000008400000084000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEBDA500FFE7AD00F7CE9400E7D6C600E7D6C600E7D6C600E7D6
      C600E7D6C600FFFFEF00F7EFD600C69C9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEBDA500FFE7AD00F7CE9400FFF7CE00E7D6C600B55A1800E7D6
      C600E7D6C600FFFFEF00F7EFD600C69C9400FFFFFF00B5846B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094F7FF006BDE
      F7000084D60018A5D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000840000008400000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7C6AD00FFDEAD00EFBD8400B55A1800B55A1800B55A1800B55A
      1800B55A1800FFFFDE00F7F7D600C6AD9C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7C6AD00FFDEAD00EFBD8400B55A1800B55A1800B55A1800B55A
      1800B55A1800FFFFDE00F7F7D600C6AD9C00FFFFFF00B5846B00FFFFFF00F7CE
      B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500B5E7
      DE0073DEF70094A5A5006B638C00BDBDC600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000008400000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEFC600FFFFDE00FFFF
      DE00FFFFDE00FFFFDE00F7EFD600C6A59C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEFC600B55A1800FFEF
      C600FFFFDE00FFFFDE00F7EFD600C6A59C00FFFFFF00B5847300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADEFF700A59494005252FF005A52DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C69C9400FFEFC600FFEFC600F7D6A500F7CE9C00F7E7B500FFF7
      CE00FFF7D600FFFFD600E7DEBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C69C9400FFEFC600FFEFC600F7D6A500F7CE9C00B55A1800FFF7
      CE00FFF7D600FFFFD600E7DEBD00FFFFFF00FFFFFF00B5846B00FFFFFF00FFFF
      FF008C9494008C8C8C00949494009494940094949400949494007B7B7B00B5AD
      AD00DEE7E700B57B63007B7BEF007373E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEC6AD00FFFFFF00FFF7EF00F7CE9400EFBD8400F7CE
      9C00FFE7B500FFF7C600BD9C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEC6AD00FFFFFF00FFF7EF00F7CE9400EFBD8400F7CE
      9C00FFE7B500FFF7C600BD9C8C00FFFFFF00FFFFFF00BD8C7300DEBDAD00D6B5
      A500B59C9400ADA5A5009C9C9C00A5A5A500A5A5A500A5A5A500A59C9400AD94
      8400DEBDA500B57B6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D6BDBD00F7EFD600FFEFC600FFE7AD00FFE7
      B500F7DEB500CEAD9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D6BDBD00F7EFD600FFEFC600FFE7AD00FFE7
      B500F7DEB500CEAD9C00FFFFFF00FFFFFF00FFFFFF00D6CECE00CEAD9400CEA5
      8C00CEA59400C69C8C0084848400949494007B7B84007B737300B5846B00BD84
      6B00BD846B00C6BDC600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEAD9400CEAD9C00DEBDA500DEBD
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEAD9400CEAD9C00DEBDA500DEBD
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CECECE00BDBDC600CECECE00ADADAD00ADADB500CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840084848400FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00840000008400000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400BDBDBD00B5B5B500848484008484840084848400EFEFEF00848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000840000008400000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400E7E7
      E700B5B5B500B5B5B500B5B5B500525252004A4A4A0084848400CECECE00EFEF
      EF00C6C6C600848484008484840084848400FFFFFF00FFFFFF00FFFFFF008484
      84008484840084848400848484008484840084848400C6C6C600840000008400
      0000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000008484840084848400848484008484
      840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400DEDEDE00D6D6
      D600A5A5A500A5A5A500A5A5A500525252001010100010101000181818001010
      100094949400CECECE0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084848400FFFFFF00FFFFFF0084848400D6D6D600D6D6D600A5A5
      A500E7DEDE00DED6D600CECECE00C6C6C600B5B5B5009C9C9C007B7373001010
      10001010100010101000848484008C8C8C00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF008484
      84008484840084848400848484008484840084848400C6C6C600840000008400
      0000840000008400000084848400FFFFFF0084848400D6D6D600A5A5A500F7F7
      F700FFFFFF00FFFFFF00EFE7EF00E7E7E700E7E7E700DEDEDE00CECECE00BDBD
      BD00A5A5A50073737300949494008C8C8C00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000008484840084848400A5A5A500FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00ADA5AD00B5ADAD00C6BDBD00D6CECE00E7E7E700E7E7
      E700D6D6D600C6C6C600A5A5A50084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600840000008400
      00008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000840000008400000084000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF008484840084848400F7F7
      F700C6BDBD00948C8C00A59C9C00ADADAD00ADA5A500B5ADAD00ADADAD00B5AD
      AD00CECECE00DEDEDE00D6D6D60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000840000008400000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF008484
      8400CEA59400BD9C8400A58C7B0094847B008C7B7B00948C9400A5A5A500BDB5
      B500D6D6D600CECECE0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      84008484840084848400848484008484840084848400C6C6C600840000008400
      0000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000008484840084848400848484008484
      840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C9C00FFEFC600FFDEB500EFC69C00D6AD8C00CEA58400CE9C9C009C94
      94008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C9C00FFE7CE00FFDEBD00FFDEB500FFDEA500FFD69C00CE9C9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      9C00FFEFDE00FFE7CE00FFE7C600FFDEBD00FFDEAD00CE9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      9C00FFF7E700FFEFDE00FFE7CE00FFE7C600FFDEB500CE9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000840000008400000084000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C9C00FFFF
      F700FFFFF700FFF7E700FFEFD600FFEFCE00F7D6BD00CE9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000840000008400000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C9C00CE9C
      9C00CE9C9C00FFF7EF00FFEFDE00FFE7D600CE9C9C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00840000008400000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C9C00CE9C9C00CE9C9C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFC30000000000000001000000000000
      4010000000000000400800000000000040000000000000004002000000000000
      40010000000000004003000000000000402F000000000000402F000000000000
      402F000000000000402F000000000000082F0000000000008FEF000000000000
      CFEF000000000000E00F000000000000FF87FFFFFFFFFFFF0003E7FFE7FFE7FF
      0001E7FFE7FFE7FF0000E7FFE7FFE7FF0000E7FFE7FFE7FF0000E7FFE7FFE7FF
      0000E7FFE7FFE7FF0001E0FFE0FFE0FF0003E03FE03FE03F000FE007E007E007
      000FE001E001E001000FE000E000E000000FE001E001E001800FE01FE01FE01F
      C00FE0FFE0FFE0FFE00FFFFFFFFFFFFFFFFF9FFF9FFF8003FF3F0FFF0FFF8003
      FE3F07FF07FF8003FC3F83FF83FF8003F800C1FFC1FF8003F000E10FE10F8003
      E000F003F0038003C000F801F8018003C000F801F8018003E000F800F8008003
      F03FF800F8008000F83FF800F8008000FC7FF801F8018000FFFFFC01FC018003
      FFFFFE03FE038003FFFFFF0FFF0FF81FF33FFF87FC7FFFFFE007FF83F87FFFCF
      C000E001F000FF878001C000E000FF830000C0008000E0010000C0018000C000
      0000C003C001C0008000FF83E07FC000E001E001F000C001F003C000E000C003
      F01FC0008000FF87E03FC0018000FF8FE03FC003C001FF9FC03FFF87E07FFFFF
      C07FFF8FF07FFFFFF8FFFF9FF8FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ppmQuotationSend: TPopupMenu
    Left = 598
    Top = 9
    object viaFax1: TMenuItem
      Caption = 'via Fax'
      Enabled = False
      OnClick = Quotation1Click
    end
    object viaEmail1: TMenuItem
      Caption = 'via Email'
      OnClick = Quotation1Click
    end
  end
  object ppmZoom: TPopupMenu
    Left = 701
    Top = 309
    object FittoPage1: TMenuItem
      Caption = 'Fit to Page'
      OnClick = FittoPage1Click
    end
    object PageWidth1: TMenuItem
      Caption = 'Page Width'
      OnClick = PageWidth1Click
    end
    object PageHeight1: TMenuItem
      Caption = 'Page Height'
      OnClick = PageHeight1Click
    end
    object N251: TMenuItem
      Tag = 25
      Caption = '25%'
      OnClick = N5001Click
    end
    object N501: TMenuItem
      Tag = 50
      Caption = '50%'
      OnClick = N5001Click
    end
    object N751: TMenuItem
      Tag = 75
      Caption = '75%'
      OnClick = N5001Click
    end
    object N1001: TMenuItem
      Tag = 100
      Caption = '100%'
      OnClick = N5001Click
    end
    object N1501: TMenuItem
      Tag = 150
      Caption = '150%'
      OnClick = N5001Click
    end
    object N2001: TMenuItem
      Tag = 200
      Caption = '200%'
      OnClick = N5001Click
    end
    object N5001: TMenuItem
      Tag = 500
      Caption = '500%'
      OnClick = N5001Click
    end
  end
  object XMLDoc: TXMLDocument
    Left = 600
    Top = 339
    DOMVendorDesc = 'MSXML'
  end
  object imlAccountFlags: TImageList
    Height = 24
    Width = 24
    Left = 784
    Top = 299
    Bitmap = {
      494C010102000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
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
      00000000000000000000000000000000000000000000C6C6C600A5A5A500A5A5
      A50000000000A5A5A500A5A5A500C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600ADADAD00C6C6C60000000000000000000000
      000000000000000000000000000000000000C6C6C600ADADAD00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60084848C00101039000000
      39000000000000734A00297352007B8C8C00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6008484940018184A0084849400C6C6C600000000000000
      0000000000000000000000000000C6C6C6008484940018184A0084849400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C60084848C0010103900525294001010
      5A000000000000734A006BB58C00296B4A007B8C8400C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484940029295A005A5AA50029295A0084849400C6C6C6000000
      00000000000000000000C6C6C6008484940029295A005A5AA50029295A008484
      9400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60084848C001818390052529C006363BD001010
      5A000000000000734A006BC694006BB58C00296B4A007B8C8400C6C6C6000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C6008484940029295A006363B5004A4AAD006363B50029295A0084849400C6C6
      C60000000000C6C6C6008484940029295A006363B5004A4AB5006363B5002929
      5A0084849400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848C001818420052529C004A4AAD005A5ABD001818
      630000000000007B52006BC6940029AD7B006BB58C00296B52007B8C8400C6C6
      C600000000000000000000000000000000000000000000000000000000008C8C
      9400313163006363B5004A4AB5004A4AAD004A4AB5006B6BB500313163008C8C
      9400BDBDBD008C8C9400313163006B6BB5005252B5004A4AB5004A4AB5006363
      B500313163008C8C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60084848C00181842005A5AA5004A4AB5004242AD006363BD001818
      63009494940000734A006BC69400009C6B0029AD7B006BB58C00296B52007B8C
      8400C6C6C6000000000000000000000000000000000000000000000000002121
      52007373D6005252B5004A4AB5004A4AB5004A4AB5005252B5006B6BBD003131
      63006B6B8400313163006B6BBD005252BD005252B5004A4AB5004A4AB5005252
      BD007B7BDE002121520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60084848C00212142005A5AA5005252B5004A4AB5004A4AB5006363C6002929
      7300006B4A00006B4A006BC69C0000A5730000A5730029B584006BB58C00296B
      52007B8C8400C6C6C6000000000000000000000000000000000000000000ADAD
      B500292973007373EF005252BD005252B5005252BD005252BD005A5ABD006B6B
      BD00424273007373BD005A5ABD005252BD005252BD005252BD005252BD007373
      EF0029297300ADADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      8C00212142005A5AA5005A5ABD005252B5005252B5005252B5006363C6006B6B
      C6006BCEA5006BCEA5006BCEA50000AD7B0000AD7B0000AD7B0029BD8C006BBD
      9400296B52007B8C8C00C6C6C600000000000000000000000000000000000000
      0000ADADB50031317B007B7BEF005A5ABD005252BD005A5ABD005A5ABD005A5A
      C6007B7BCE005A5AC6005A5ABD005A5ABD005A5ABD005A5AC6007B7BEF003131
      7B00ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60084848C002121
      4A006363AD005A5AC6005252BD005252BD005252BD005252BD005252BD005252
      BD0000B5840000B5840000B5840000B5840000B5840000B5840000B5840029BD
      8C006BBD9400296B52007B8C8C00C6C6C6000000000000000000000000000000
      000000000000ADADB500313184008484F7006363C6005A5AC6005A5AC6005A5A
      C6005A5AC6005A5AC6005A5AC6005A5AC6006363C6008484F70031318400ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484940029295A006363
      AD006363C6005A5AC6005A5AC6005A5AC6005A5AC6005A5AC6005A5AC6005A5A
      C60000BD8C0000BD8C0000BD8C0000BD8C0000BD8C0000BD8C0000BD8C0000BD
      8C0029C694006BC69C00187B52007B948C000000000000000000000000000000
      00000000000000000000ADADB500393984008C8CF7006363CE006363C6006363
      CE006363CE006363CE006363CE006363CE008C8CF70039398400ADADB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60029295A005A5AD6007373
      D6006363C6006363C6006363C6006363C6006363C6006363C6006363C6006363
      C60000C6940000C6940000C6940000C6940000C6940000C6940000C6940000C6
      940000C6940018DEB50000FFB500087352000000000000000000000000000000
      00000000000000000000C6C6C60073738C0039398C008484DE006363CE006363
      CE006363CE006363CE006363CE008484DE0039398C0073738C00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5AD00313173007B7B
      EF007373D6006363CE006363CE006363CE006363CE006363CE006363CE006363
      CE0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE
      9C0000E7B50000FFCE00009C630094ADA5000000000000000000000000000000
      000000000000C6C6C6008C8C9C0031316B005A5ABD006B6BCE006B6BD6006B6B
      D6006B6BD6006B6BD6006B6BD6006B6BD6005A5ABD0031316B008C8C9C00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5AD003131
      73008484EF007B7BDE007373DE007373DE007373DE007373DE007373DE007373
      DE0000D6A50000D6A50000D6A50000D6A50000D6A50000D6A50000D6A50000E7
      BD0000FFD600009C630094ADA500000000000000000000000000000000000000
      0000C6C6C6008C8C9C0031316B005A5ABD006B6BD6006B6BD6007373DE007373
      DE007373DE007373DE007373DE007373DE006B6BD6006363C60031316B008C8C
      9C00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      AD0039397B009494EF008484E7007B7BE7007B7BE7007B7BE700ADADF700ADAD
      FF0000FFDE0000FFDE0000FFDE0000DEAD0000DEAD0000DEAD0000EFBD0000FF
      D60000A5630094ADA5000000000000000000000000000000000000000000C6C6
      C60094949C00313173005A5ABD006B6BD6007373DE007373DE007B7BE7008484
      E700C6C6F7008484E7007B7BE7007B7BE7007373DE007373DE006363C6003131
      730094949C00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5AD0039397B009C9CF7008C8CEF008484EF008484EF00BDBDFF005A5A
      AD00009C6300009C630000FFE70000EFB50000EFB50000F7C60000FFD60000A5
      630094ADA5000000000000000000000000000000000000000000000000009494
      9C00393973005A5ABD006B6BD6007373DE007373DE007B7BE7008484EF00BDBD
      F7006363C600BDBDF7008C8CEF007B7BE7007B7BE7007373DE007373DE006363
      C6003939730094949C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5AD0039398400A5A5F7009494F7008C8CF700BDBDFF005252
      9C0000000000009C630000FFE70000F7BD0000F7CE0000FFDE0000A5630094AD
      A500000000000000000000000000000000000000000000000000000000004A4A
      7B009494E7007373D6007373DE007B7BE7007B7BE7008C8CEF00C6C6FF005A5A
      AD009494AD005A5AAD00C6C6FF008C8CEF008484EF007B7BE7007B7BE7007B7B
      DE009C9CE7004A4A7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5AD0042428400A5A5F7009C9CFF00C6C6FF005252
      A50000000000009C630000FFEF0000FFD60000FFDE0000A5630094ADA5000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      BD005A5AAD00A5A5F7007B7BE7007B7BE7008C8CEF00C6C6FF005A5AB500B5B5
      BD0000000000B5B5BD005A5AB500C6C6FF008C8CF7008484EF008484E700ADAD
      F7005A5AAD00B5B5BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5AD0042428400ADADF700CECEFF005A5A
      AD0000000000009C630000FFEF0000FFDE0000A5630094ADA500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5BD006363B500B5B5F7008C8CEF00C6C6FF006363B500B5B5BD000000
      00000000000000000000B5B5BD006363B500C6C6FF009494F700BDBDF7006363
      B500B5B5BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5B5004A4A8C00ADADF7005A5A
      AD0000000000009C630000FFDE0000A5630094ADA50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5C6006363B500ADADFF006363B500B5B5C600000000000000
      0000000000000000000000000000B5B5C6006363BD00B5B5FF006363B500B5B5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADB5005A5AA5005252
      940000000000009C630008BD7B0094B5AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5B5C6005A5A9C00B5B5C60000000000000000000000
      000000000000000000000000000000000000B5B5C6005A5A9C00B5B5C6000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFFFFFF
      FFFF000000000000FF88FFFC7F1F000000000000FF087FF83E0F000000000000
      FE083FF01C07000000000000FC081FE00803000000000000F8080FE000030000
      00000000F00007E00003000000000000E00003E00003000000000000C00001F0
      0007000000000000800000F8000F000000000000800000FC001F000000000000
      000000FC001F000000000000800000F8000F000000000000C00001F000070000
      00000000E00003E00003000000000000F00007E00003000000000000F8080FE0
      0003000000000000FC081FE00803000000000000FE083FF01C07000000000000
      FF087FF83E0F000000000000FF88FFFC7F1F000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ppmVetting: TPopupMenu
    Left = 660
    Top = 307
    object None1: TMenuItem
      Caption = 'None'
    end
    object Accept1: TMenuItem
      Caption = 'Accept'
    end
    object Accept2: TMenuItem
      Caption = 'Reject'
    end
  end
  object imlCreditVetting: TImageList
    Left = 908
    Top = 267
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700CECE
      CE00BD8C6300AD5A1800AD5A1000AD5A1000AD5A1000AD5A1800BD8C6300CECE
      CE00F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00008C4A00008C4A00CECECE000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700C6AD9C00AD5A
      1000CE8C4A00DEAD6B00E7B57B00E7B57B00E7B57B00DEAD6B00CE8C4A00AD5A
      1000C6AD9C00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE000084420008EFAD0008EFAD0000844200CECECE0000000000000000000000
      00000000000000000000000000000000000000000000C6AD9C00AD5A1800DEA5
      6300E7B57300E7B57300DEAD6B00DEAD6B00DEAD6B00DEAD6B00E7B57300DEA5
      6300AD5A1800C6AD9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE000084
      420008EFAD0000DE9C0000DE9C0008EFAD0000844200CECECE00000000000000
      000000000000000000000000000000000000E7E7E700AD5A1000DEA55A00DEAD
      6B00DEAD6B00DEAD6B00DEA55A0000000000DEA55A00DEA56300DEA56300DEAD
      6B00DEA55A00AD5A1000E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE000084420018EF
      B50000DE9C0000DE9C0000DE9C0000DE9C0018EFB50000844200CECECE000000
      000000000000000000000000000000000000BD8C6300C6843900DEA56300DEA5
      6300DEA55A00DEA55A00D69C5A0000000000D69C5A00DEA55A00DEA55A00DEA5
      5A00DEA56300C6843900BD8C6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE000084420029EFBD0000CE
      9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0029EFBD0000844200CECE
      CE0000000000000000000000000000000000AD5A1800D69C5A00DEA55A00D69C
      5A00D69C5A00D69C5A00D69C5200D6944A00D6944A00D69C5A00D69C5A00D69C
      5A00DEA55A00D69C5A00AD5A1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008C4A0039EFC60000CE9C0000CE
      9C0000CE9C0039EFBD0039EFBD0000CE9C0000CE9C0000CE9C0039EFC6000084
      4200CECECE00000000000000000000000000AD5A1800D69C5A00D69C5200D69C
      5200D69C5200D69C5200D6944A0000000000DEB57B00D6944A00D6945200D694
      5200D6945200D69C5A00AD5A1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008C4A004AF7CE0000C69C0000C6
      9C004AF7CE0000844200008442004AF7CE0000C69C0000C69C0000C69C004AF7
      CE0000844200CECECE000000000000000000AD5A1000DEA56B00D6944A00D694
      4A00D6944A00D6944A00CE8C4200EFD6BD0000000000DEA56300D6944A00D694
      4A00D6944A00DEA56B00AD5A1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008442005AF7D6005AF7
      D600008442000000000000000000008442005AF7D60000C69C0000C69C0000C6
      9C005AF7D60000844200CECECE0000000000AD5A1000DEB57B00CE8C4A00CE8C
      4A00CE8C4A00CE8C3900CE8C3900CE843100F7E7D60000000000CE8C3900CE8C
      4A00CE8C4A00DEB57B00AD5A1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008C4A00008C
      4A00000000000000000000000000000000000084420073F7DE0000BD9C0000BD
      9C0000BD9C005AF7D60000844200CECECE00AD5A1800E7BD9400CE8C3900CE8C
      3900CE84310000000000D6944A00CE843100D694520000000000CE843100CE8C
      3900CE8C3900E7BD9400AD5A1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084420084F7E70000B5
      9C0000B59C0000B59C0073F7DE00008C4A00D6A57300D6A57B00DEA56B00CE84
      3100C67B290000000000EFD6BD00C6731800EFD6BD0000000000C67B2900CE84
      3100DEA56B00D6A57B00D6A57300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084420084F7
      E70000B59C0000B59C0084F7E700008C4A0000000000AD5A1800EFCEAD00DEA5
      6300C67B2100DEB57B00000000000000000000000000DEB57B00C67B2100DEA5
      6300EFCEAD00AD5A180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      420094FFEF0094FFEF00008442000000000000000000EFD6BD00B56B2900E7C6
      A500E7BD8C00CE8C4A00C6731800BD6B1000C6731800CE8C4A00E7BD8C00E7C6
      A500B56B2900EFD6BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008C4A00008C4A0000000000000000000000000000000000EFD6BD00AD5A
      1800CE946300E7C69C00EFCEAD00EFCEAD00EFCEAD00E7C69C00CE946300AD5A
      1800EFD6BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6A57300AD5A1800AD5A1000AD5A1000AD5A1000AD5A1800D6A573000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000847373005A4A42005A4A
      42005A4A42005A4A42005A4A42005A4A42005A4A42005A4A42005A4A42005A4A
      42005A4A42008473730000000000000000008C94A500214A7300214A6B00214A
      6B00214A6B00214A6B00214A6B00214A6B00214A6B00214A6B00214A6B00214A
      6B00214A6B00214A6B00214A73008C94A5000000000000000000C6C6C6008C8C
      9C0029296B00212163002121630021216300212163002121630029296B008C8C
      9C00C6C6C600000000000000000000000000000000000000000000000000C6C6
      C600ADADAD00C6C6C600000000000000000000000000C6C6C600ADADAD00C6C6
      C6000000000000000000000000000000000000000000735A5200FFFFF700FFFF
      F700B5B5E700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700735A52000000000000000000426B9C0084C6E7009CDEF7009CE7
      F7009CE7F7009CE7F7009CE7F700A5E7F700A5E7F7009CE7F7009CE7F7009CE7
      F7009CE7F7009CE7F7008CC6EF00426B9C0000000000C6C6C6008C8C9C003131
      73006363B5006363BD006363C6006363C6006363C6006363C6006363BD003131
      73008C8C9C00C6C6C60000000000000000000000000000000000C6C6C6008484
      94002121520084849400C6C6C60000000000C6C6C60084849400212152008484
      9400C6C6C60000000000000000000000000000000000735A5200FFFFFF00DECE
      C600A59CCE00DECEC600DECEC600DECEC600DECEC600DECEC600DECEC600DECE
      C600FFFFFF00735A5200000000000000000042739C008CCEEF009CDEF7005ABD
      F7005ABDF7005ABDF7005AC6F70031638400316384005AC6F7005ABDF7005ABD
      F7005ABDF7009CDEF70084C6EF0042739C00C6C6C60094949C0039397B006363
      BD005A5ABD004A4AB5004A4AB5004A4AB5004A4AB5004A4AB5005A5ABD006B6B
      BD0039397B0094949C00C6C6C6000000000000000000C6C6C6008C8C94003131
      6B005A5AAD0031316B008C8C9400BDBDBD008C8C940031316B005A5AAD003131
      6B008C8C9400C6C6C600000000000000000000000000735A5200FFFFFF00F7F7
      EF00B5ADDE00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7
      EF00FFFFFF00735A5200000000000000000094A5BD005294C6009CE7FF0063C6
      F7005AC6F7005AC6F70063CEF700214263002142630063CEF7005AC6F7005AC6
      F70063C6F7009CE7FF005294C60094A5BD0094949C00424284006B6BBD005A5A
      BD007373C600F7F7FF00FFFFFF00FFFFFF00FFFFFF00BDBDE7005A5ABD005A5A
      BD006B6BBD004242840094949C0000000000000000008C8C940031316B006363
      B5004A4AB5006B6BB50031316B006B6B840031316B006B6BB5005252B5006363
      B50031316B008C8C9400000000000000000000000000735A5200FFFFFF00DECE
      CE00A59CCE00DECECE00DECECE00DECECE00DECECE00DECECE00DECECE00DECE
      CE00FFFFFF00735A52000000000000000000000000004A73A5009CD6F70094DE
      FF0063CEFF0063CEFF0063CEFF007BD6FF007BD6FF0063CEFF0063CEFF0063CE
      FF0094DEFF009CD6F7004A73A50000000000424284007373C6006363C6005A5A
      BD00F7F7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECEEF005252
      BD006363C6007373C600424284000000000000000000292963007B7BDE005252
      BD004A4AB5005252BD006B6BBD004A4A84006B6BBD005252BD005252BD005252
      BD008484E70029296300000000000000000000000000735A5200FFFFFF00FFF7
      F700B5B5E700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFFF00735A520000000000000000000000000094ADBD00529CC600A5EF
      FF006BCEFF0063CEFF006BCEFF0021426300214263006BCEFF0063CEFF006BCE
      FF00A5EFFF00529CC60094ADBD0000000000424284007373CE005252BD00ADAD
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494
      D6005252BD007373CE00424284000000000000000000ADADBD00393994007B7B
      EF005A5AC6005A5ABD005A5AC6007B7BCE005A5AC6005A5ABD005A5AC6007B7B
      F70039399400ADADBD0000000000000000000000000073635200FFFFFF00DED6
      CE00A59CCE00DED6CE00DED6CE00DED6CE00DED6CE00DED6CE00DED6CE00DED6
      CE00FFFFFF0073635200000000000000000000000000000000004A7BA5009CD6
      F70094DEFF0063CEFF006BD6FF0021426300214263006BD6FF0063CEFF0094DE
      FF009CD6F7004A7BA50000000000000000004A4A8C007B7BD6005A5ABD00D6D6
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9CDE00CECE
      EF005A5AC6007B7BD6004A4A8C00000000000000000000000000ADADBD004242
      9C008484F7006363CE006363C6006363C6006363C6006363CE008C8CF7004242
      9C00ADADBD00000000000000000000000000000000007B635A00FFFFFF00FFFF
      FF00B5B5E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B635A000000000000000000000000000000000094ADBD005A9C
      CE00A5EFFF0073D6FF0073D6FF00214263002142630073D6FF0073D6FF00A5EF
      FF005A9CCE0094ADBD000000000000000000525294008484DE005A5AC600EFEF
      FF00E7E7F700FFFFFF00F7F7FF00FFFFFF00FFFFFF00FFFFFF008C8CDE00DEDE
      F7006363C6008484DE0052529400000000000000000000000000C6C6C6007B7B
      94004A4AAD008484DE006363CE006B6BCE006B6BCE008484DE004A4AAD007B7B
      9400C6C6C60000000000000000000000000000000000846B5A00FFFFFF00E7D6
      D600A59CCE00E7D6D600E7D6D600E7D6D600E7D6D600E7D6D600E7D6D600E7D6
      D600FFFFFF00846B5A0000000000000000000000000000000000000000004A7B
      AD00A5E7F7009CE7FF0084E7FF00214263002142630084E7FF009CE7FF00A5E7
      F7004A7BAD000000000000000000000000005A5A9C008C8CDE006363C600DEDE
      F7008C8CDE00FFFFFF009494E700FFFFFF00ADADEF00FFFFFF009494DE00DEDE
      F7006363CE008C8CDE005A5A9C000000000000000000C6C6C60094949C003939
      7B005A5ABD006B6BD6007373DE007373DE007373DE007373DE006363C6003939
      7B0094949C00C6C6C6000000000000000000000000008C736300FFFFFF00FFFF
      FF00B5B5E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008C736300000000000000000000000000000000000000000094AD
      BD0063ADCE00ADF7FF008CEFFF0021426300214263008CEFFF00ADF7FF0063AD
      CE0094ADBD000000000000000000000000006363A5009494E7006363CE00DEDE
      F7009494E700FFFFFF009C9CE700FFFFFF009C9CEF00FFFFFF007373DE007373
      D6006B6BD6009494E7006363A50000000000000000009494A500424284006363
      BD007373D6007373DE008484E700CECEF7008484EF007B7BE7007373DE006363
      C600424284009494A50000000000000000000000000000A5730000DEBD00009C
      6B00004A2900009C6B00009C6B00004A2900009C6B00009C6B00004A2900009C
      6B0000DEBD0000A5730000000000000000000000000000000000000000000000
      00005284AD00ADEFF700B5F7FF002142630021426300B5F7FF00ADEFF7005284
      AD00000000000000000000000000000000006B6BAD00ADADEF009494E7007373
      DE009C9CE700FFFFFF009C9CEF00FFFFFF00A5A5EF00FFFFFF007B7BE7007373
      DE009494E700ADADEF006B6BAD00000000000000000052528C009494E7007373
      DE007B7BE7008484EF00C6C6FF007373D600C6C6FF008C8CEF007B7BEF008484
      E7009C9CEF0052528C0000000000000000000000000000B57B0000E7CE000894
      6300948C8C000894630008946300948C8C000894630008946300948C8C000894
      630000E7CE0000B57B0000000000000000000000000000000000000000000000
      00009CADC6006BB5D600B5FFFF00A5FFFF00A5FFFF00B5FFFF006BB5D6009CAD
      C60000000000000000000000000000000000BDBDC6007B7BB500BDBDF7009494
      EF008C8CEF00C6C6F700A5A5F700FFFFFF00A5A5F700A5A5F7008484EF009C9C
      EF00BDBDF7007B7BBD00BDBDC6000000000000000000B5B5C6006B6BBD00ADAD
      F7008C8CEF00C6C6FF006B6BBD009C9CB5006B6BBD00CECEFF009494F700BDBD
      F7006B6BBD00B5B5C60000000000000000000000000000BD8C0000E7D60021BD
      9C00C6C6C60021BD9C0021BD9C00C6C6C60021BD9C0021BD9C00C6C6C60021BD
      9C0000E7D60000BD8C0000000000000000000000000000000000000000000000
      000000000000528CB500B5F7FF00B5FFFF00B5FFFF00ADF7F700528CB5000000
      00000000000000000000000000000000000000000000BDBDCE007B7BBD00BDBD
      FF009C9CF7008C8CF7008C8CF700ADADFF009494FF008C8CF700A5A5F700BDBD
      FF007B7BBD00BDBDCE0000000000000000000000000000000000B5B5C6007373
      BD00B5B5FF007373C600B5B5C60000000000B5B5C6007373C600BDBDFF007373
      BD00B5B5C600000000000000000000000000000000004ACEAD0000CE9C0042BD
      9C00FFFFFF0042BD9C0042BD9C00FFFFFF0042BD9C0042BD9C00FFFFFF0042BD
      9C0000CE9C004ACEAD0000000000000000000000000000000000000000000000
      0000000000009CB5C60063B5D600B5FFFF00B5FFFF0063B5D6009CB5C6000000
      0000000000000000000000000000000000000000000000000000BDBDCE007B7B
      BD00B5B5F700BDBDFF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00B5B5FF007B7B
      BD00BDBDCE00000000000000000000000000000000000000000000000000B5B5
      C6006B6BAD00B5B5C600000000000000000000000000B5B5C6006B6BAD00B5B5
      C60000000000000000000000000000000000000000000000000000000000CECE
      CE00C6C6C600CECECE00CECECE00C6C6C600CECECE00CECECE00C6C6C600CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CB5C6004A8CBD004A8CBD0094ADC600000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      CE007373B5007373B5007373B5007373B5007373B5007373B5007373B500BDBD
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF01F00000000F9FFC00700000000
      F0FF800300000000E07F800300000000C03F010100000000801F010100000000
      000F000100000000000701010000000000030081000000008601004100000000
      CF00044100000000FF80044100000000FFC0838300000000FFE1800300000000
      FFF3C00700000000FFFFF01F000000008003FFFFE00FFFFF80030000C007E38F
      800300008003C107800300000001800380030000000180038003800100018003
      80038001000180038003C0030001C0078003C0030001C0078003E00700018003
      8003E007000180038003F00F000180038003F00F000180038003F81F8003C107
      8003F81FC007E38FE00FFC3FE00FFFFF00000000000000000000000000000000
      000000000000}
  end
end
