object frmSMSMessage: TfrmSMSMessage
  Left = 776
  Top = 382
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'SMS Preview'
  ClientHeight = 160
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblSMS: TLabel
    Left = 8
    Top = 8
    Width = 72
    Height = 13
    Caption = 'SMS Message:'
  end
  object memSMSMessage: TMemo
    Left = 8
    Top = 24
    Width = 409
    Height = 97
    ReadOnly = True
    TabOrder = 0
  end
  object btnClose: TButton
    Left = 344
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
end
