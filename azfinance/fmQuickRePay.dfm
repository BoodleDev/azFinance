inherited frmQuickRePay: TfrmQuickRePay
  Tag = 1079
  Left = 233
  Top = 160
  Width = 385
  Height = 259
  BorderIcons = [biSystemMenu]
  Caption = 'Early payment calculator'
  OldCreateOrder = True
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 329
    Width = 48
    Height = 225
    ButtonWidth = 48
    inherited btnExit: TToolButton
      Caption = '    Exit    '
    end
  end
  inherited pnlBBase: TPanel
    Width = 329
    Height = 225
    object lblLoanInd2: TLabel
      Left = 8
      Top = 8
      Width = 55
      Height = 14
      Caption = 'Client name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 53
      Height = 14
      Caption = 'Client code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 62
      Height = 14
      Caption = 'Loan amount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 184
      Height = 14
      Caption = 'Outstanding balance on client account'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 120
      Width = 124
      Height = 14
      Caption = 'Repayment term (months)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 192
      Width = 201
      Height = 14
      Caption = 'Estimated instalment amount for new term'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 96
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Name'
      DataSource = dtmMain.dtsEntDet
    end
    object DBText2: TDBText
      Left = 96
      Top = 32
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'EntCode'
      DataSource = dtmMain.dtsEntDet
    end
    object DBText3: TDBText
      Left = 96
      Top = 56
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'AmtToFin'
      DataSource = dtmLS.dtsEntLoan
    end
    object Bevel1: TBevel
      Left = 8
      Top = 80
      Width = 329
      Height = 9
      Shape = bsTopLine
    end
    object DBText4: TDBText
      Left = 224
      Top = 96
      Width = 65
      Height = 17
      DataField = 'LoanBal'
      DataSource = dtmLS.dtsEntLoan
    end
    object Label6: TLabel
      Left = 8
      Top = 144
      Width = 47
      Height = 14
      Caption = 'Start date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 168
      Width = 96
      Height = 14
      Caption = 'First instalment date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edtRepayAmt: TEdit
      Left = 224
      Top = 192
      Width = 97
      Height = 21
      TabStop = False
      Color = clAqua
      ReadOnly = True
      TabOrder = 1
      Text = 'R 0.00'
    end
    object seTerm: TSpinEdit
      Left = 224
      Top = 120
      Width = 49
      Height = 22
      MaxValue = 20
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = seTermChange
    end
    object dtpStart: TDateTimePicker
      Left = 224
      Top = 144
      Width = 97
      Height = 21
      Date = 38020.466877349500000000
      Time = 38020.466877349500000000
      TabOrder = 2
      OnChange = seTermChange
    end
    object dtpFirst: TDateTimePicker
      Left = 224
      Top = 168
      Width = 97
      Height = 21
      Date = 38020.466877349500000000
      Time = 38020.466877349500000000
      TabOrder = 3
      OnChange = seTermChange
    end
  end
end
