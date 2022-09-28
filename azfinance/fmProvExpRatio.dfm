object frmProvExpRatio: TfrmProvExpRatio
  Left = 420
  Top = 254
  Width = 249
  Height = 167
  Caption = 'Provision Expense Ratio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 109
    Height = 13
    Caption = 'Loan Provision Amount'
  end
  object Label2: TLabel
    Left = 12
    Top = 48
    Width = 78
    Height = 13
    Caption = 'From Month End'
  end
  object Label3: TLabel
    Left = 134
    Top = 48
    Width = 68
    Height = 13
    Caption = 'To Month End'
  end
  object btnOk: TButton
    Left = 79
    Top = 104
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = btnOkClick
  end
  object NoEdit1: TNoEdit
    Left = 12
    Top = 24
    Width = 117
    Height = 21
    TabOrder = 1
    OnEnter = NoEdit1Enter
    OnExit = NoEdit1Exit
  end
  object cmbMonthEndStart: TComboBox
    Left = 12
    Top = 72
    Width = 101
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnEnter = cmbMonthEndStartEnter
    OnExit = cmbMonthEndStartExit
  end
  object cmbMonthEndEnd: TComboBox
    Left = 124
    Top = 72
    Width = 101
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnEnter = cmbMonthEndEndEnter
    OnExit = cmbMonthEndEndExit
  end
end
