object frmLoanNewRate: TfrmLoanNewRate
  Left = 582
  Top = 363
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'New Interest Rate'
  ClientHeight = 136
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    246
    136)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 28
    Width = 65
    Height = 13
    Caption = 'Interest Rate'
  end
  object Label2: TLabel
    Left = 24
    Top = 57
    Width = 69
    Height = 13
    Caption = 'Effective Date'
  end
  object edtInterestRate: TDBEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 21
    DataField = 'InterestRate'
    DataSource = dtmLoanRates.dtsRateHistory
    TabOrder = 0
  end
  object dtpEffectiveDate: TDBDateTimePicker
    Left = 104
    Top = 53
    Width = 121
    Height = 21
    Date = 39489.000000000000000000
    Time = 39489.000000000000000000
    TabOrder = 1
    DataField = 'EffectiveDate'
    DataSource = dtmLoanRates.dtsRateHistory
    ReadOnly = False
  end
  object btnCancel: TButton
    Left = 152
    Top = 96
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 72
    Top = 96
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
  end
end
