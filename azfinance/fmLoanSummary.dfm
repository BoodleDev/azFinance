object frmLoanSummary: TfrmLoanSummary
  Left = 195
  Top = 112
  Width = 696
  Height = 544
  Caption = 'Loan Summary'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    688
    510)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 72
    Width = 673
    Height = 161
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Loan Summary'
    TabOrder = 0
    DesignSize = (
      673
      161)
    object grdLoanSummary: TDBGrid
      Left = 8
      Top = 18
      Width = 657
      Height = 135
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmLS.dtsLoanSummary
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdLoanSummaryDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'LoanStatus'
          Title.Caption = 'Status'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanRef'
          Title.Caption = 'Loan Ref'
          Width = 80
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
          FieldName = 'AmtToFin'
          Title.Alignment = taRightJustify
          Title.Caption = 'Financed Amount'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotInterest'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total Interest'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalFees'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total Fees'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalLoan'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total Loan'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Instalment'
          Title.Alignment = taRightJustify
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LoanPeriodM'
          Title.Alignment = taCenter
          Title.Caption = 'Period (Months)'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IntRate'
          Title.Alignment = taCenter
          Title.Caption = 'Interest Rate'
          Width = 64
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CycleEndDay'
          Title.Alignment = taCenter
          Title.Caption = 'Cycle End Day'
          Width = 64
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LoanType'
          Title.Alignment = taCenter
          Title.Caption = 'Loan Type'
          Width = 64
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 240
    Width = 673
    Height = 161
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Account Summary'
    TabOrder = 1
    DesignSize = (
      673
      161)
    object grdAccountSummary: TDBGrid
      Left = 8
      Top = 18
      Width = 657
      Height = 135
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmLS.dtsAccountSummary
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdLoanSummaryDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'LoanStatus'
          Title.Caption = 'Status'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanRef'
          Title.Caption = 'Loan Ref'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Interest'
          Title.Alignment = taRightJustify
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContractFees'
          Title.Alignment = taRightJustify
          Title.Caption = 'Contract Fees'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LegalFees'
          Title.Alignment = taRightJustify
          Title.Caption = 'Legal Fees'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Payments'
          Title.Alignment = taRightJustify
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ArrearsAmt'
          Title.Alignment = taRightJustify
          Title.Caption = 'Arrears'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PaymentDue'
          Title.Alignment = taRightJustify
          Title.Caption = 'Payment Due'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanBal'
          Title.Alignment = taRightJustify
          Title.Caption = 'Loan Balance'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Delinquency'
          Title.Alignment = taCenter
          Title.Caption = 'Cycles Delinquent'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NextDueDate'
          Title.Alignment = taCenter
          Title.Caption = 'Next Due Date'
          Width = 90
          Visible = True
        end>
    end
  end
  object grdFeeSummary: TDBGrid
    Left = 7
    Top = 410
    Width = 673
    Height = 79
    Anchors = [akLeft, akTop, akRight]
    DataSource = dtmLS.dtsFeeSummary
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlCurrentDetail: TPanel
    Tag = 9
    Left = 0
    Top = 0
    Width = 688
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
      Width = 45
      Height = 14
      Caption = 'Home no.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 496
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
      Left = 496
      Top = 40
      Width = 41
      Height = 14
      AutoSize = True
      DataField = 'TelNo3'
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
      Width = 48
      Height = 14
      Caption = 'Mobile no.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtID: TDBEdit
      Left = 368
      Top = 8
      Width = 41
      Height = 21
      DataField = 'EntityID'
      DataSource = dtmMain.dtsEntID
      TabOrder = 0
      Visible = False
      OnChange = edtIDChange
    end
  end
end
