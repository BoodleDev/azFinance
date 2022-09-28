object frmSMSMessage: TfrmSMSMessage
  Left = 486
  Top = 325
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'SMS Preview'
  ClientHeight = 160
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblSMS: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Message'
  end
  object memSMSMessage: TMemo
    Left = 8
    Top = 24
    Width = 409
    Height = 97
    TabStop = False
    ReadOnly = True
    TabOrder = 1
  end
  object btnClose: TButton
    Left = 344
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
end
