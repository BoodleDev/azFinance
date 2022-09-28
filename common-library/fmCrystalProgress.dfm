object frmCrystalProgress: TfrmCrystalProgress
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'In Progress...'
  ClientHeight = 76
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Please Wait'
  end
  object ProgressBar: TProgressBar
    Left = 8
    Top = 23
    Width = 451
    Height = 26
    TabOrder = 0
  end
  object tmrProgress: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrProgressTimer
    Left = 112
    Top = 40
  end
end
