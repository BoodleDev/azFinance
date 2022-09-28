object frmPassUpd: TfrmPassUpd
  Left = 218
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Change Password'
  ClientHeight = 138
  ClientWidth = 297
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
    Left = 21
    Top = 44
    Width = 70
    Height = 13
    Caption = 'New password'
  end
  object Label2: TLabel
    Left = 8
    Top = 68
    Width = 83
    Height = 13
    Caption = 'Confirm password'
  end
  object Label3: TLabel
    Left = 27
    Top = 20
    Width = 64
    Height = 13
    Caption = 'Old password'
  end
  object edtPassword: TEdit
    Left = 100
    Top = 40
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 100
    Top = 64
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 84
    Top = 104
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 162
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 100
    Top = 16
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
end
