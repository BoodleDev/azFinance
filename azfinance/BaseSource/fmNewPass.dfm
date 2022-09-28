object frmNewPass: TfrmNewPass
  Left = 258
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'New Password'
  ClientHeight = 180
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 71
    Height = 13
    Caption = 'New Password'
  end
  object Label2: TLabel
    Left = 16
    Top = 119
    Width = 109
    Height = 13
    Caption = 'Confirm New Password'
  end
  object Label3: TLabel
    Left = 16
    Top = 26
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object edtPass: TEdit
    Left = 16
    Top = 88
    Width = 273
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object edtConfirm: TEdit
    Left = 16
    Top = 133
    Width = 273
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 312
    Top = 100
    Width = 81
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 312
    Top = 129
    Width = 81
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object edtUser: TEdit
    Left = 16
    Top = 43
    Width = 273
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 4
  end
end
