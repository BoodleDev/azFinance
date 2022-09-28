object frmAllocateTrans: TfrmAllocateTrans
  Left = 347
  Top = 298
  BorderStyle = bsToolWindow
  Caption = 'Select transaction codes'
  ClientHeight = 277
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    478
    277)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 312
    Top = 239
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 0
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 392
    Top = 239
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 9
    Width = 465
    Height = 113
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Transaction Codes'
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 29
      Width = 102
      Height = 13
      Caption = 'Suspense transaction'
    end
    object Label3: TLabel
      Left = 24
      Top = 53
      Width = 79
      Height = 13
      Caption = 'Loan transaction'
    end
    object lblBadDebtTrans: TLabel
      Left = 24
      Top = 77
      Width = 100
      Height = 13
      Caption = 'Bad Debt transaction'
    end
    object lblBadDebtCount: TLabel
      Left = 328
      Top = 77
      Width = 80
      Height = 13
      Caption = 'lblBadDebtCount'
    end
    object lblLoanCount: TLabel
      Left = 328
      Top = 53
      Width = 62
      Height = 13
      Caption = 'lblLoanCount'
    end
    object cmbLoanTrans: TComboBox
      Left = 150
      Top = 49
      Width = 171
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object cmbSuspenseTrans: TComboBox
      Left = 150
      Top = 25
      Width = 171
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
    object cmbBadDebtTrans: TComboBox
      Left = 150
      Top = 73
      Width = 171
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 129
    Width = 465
    Height = 96
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Effective Date'
    TabOrder = 3
    object Label4: TLabel
      Left = 24
      Top = 29
      Width = 103
      Height = 13
      Caption = 'Original effective date'
    end
    object Label5: TLabel
      Left = 24
      Top = 56
      Width = 106
      Height = 13
      Caption = 'Allocate effective date'
    end
    object dtpDefDate: TDateTimePicker
      Left = 150
      Top = 52
      Width = 145
      Height = 21
      Date = 38014.000000000000000000
      Time = 38014.000000000000000000
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 150
      Top = 24
      Width = 145
      Height = 21
      Color = clBtnFace
      DataField = 'EffectDate'
      DataSource = dtmBatchSusp.dtsBatchHistory
      ReadOnly = True
      TabOrder = 1
    end
  end
end
