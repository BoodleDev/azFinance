object EZShadeDlg: TEZShadeDlg
  Left = 184
  Top = 254
  Width = 185
  Height = 235
  BorderStyle = bsSizeToolWin
  Caption = 'Set shaded objects'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CheckListBox1: TCheckListBox
    Left = 0
    Top = 0
    Width = 177
    Height = 208
    OnClickCheck = CheckListChange
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
  end
end
