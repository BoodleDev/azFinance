object frmAffordSettle: TfrmAffordSettle
  Left = 415
  Top = 444
  Width = 276
  Height = 182
  BorderIcons = [biSystemMenu]
  Caption = 'Affordability Settlement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    268
    148)
  PixelsPerInch = 96
  TextHeight = 13
  object btnLookup: TSpeedButton
    Left = 208
    Top = 23
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btnLookupClick
  end
  object lblLoan: TLabel
    Left = 30
    Top = 28
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Loan ID'
  end
  object lblAmount: TLabel
    Left = 32
    Top = 60
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Amount'
  end
  object edtLoan: TDBEdit
    Left = 72
    Top = 24
    Width = 129
    Height = 21
    DataField = 'SettleLoanID'
    DataSource = dtmLoanC.dtsAFSettle
    TabOrder = 0
  end
  object edtAmount: TDBEdit
    Left = 72
    Top = 56
    Width = 129
    Height = 21
    DataField = 'Amount'
    DataSource = dtmLoanC.dtsAFSettle
    TabOrder = 1
  end
  object pnlButtons: TPanel
    Left = 8
    Top = 96
    Width = 252
    Height = 41
    Anchors = [akTop]
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      Left = 56
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
