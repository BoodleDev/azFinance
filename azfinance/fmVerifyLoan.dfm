object frmVerifyLoan: TfrmVerifyLoan
  Left = 230
  Top = 284
  Width = 631
  Height = 260
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeToolWin
  Caption = 'Verifying Loan...'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    623
    226)
  PixelsPerInch = 96
  TextHeight = 13
  object stsInfo: TStatusBar
    Left = 0
    Top = 207
    Width = 623
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object btnContinue: TBitBtn
    Left = 351
    Top = 178
    Width = 83
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Continue'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TBitBtn
    Left = 527
    Top = 178
    Width = 83
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object lstMesg: TListBox
    Left = 8
    Top = 6
    Width = 608
    Height = 166
    Style = lbOwnerDrawFixed
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 16
    TabOrder = 0
    OnDrawItem = lstMesgDrawItem
  end
  object btnOverride: TBitBtn
    Left = 439
    Top = 178
    Width = 83
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Override'
    Enabled = False
    TabOrder = 2
    OnClick = btnOverrideClick
  end
end
