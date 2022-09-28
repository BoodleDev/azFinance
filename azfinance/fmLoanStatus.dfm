object frmLoanStatus: TfrmLoanStatus
  Left = 303
  Top = 235
  Width = 425
  Height = 381
  BorderIcons = [biSystemMenu]
  Caption = 'Select new loan status'
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
    417
    347)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 50
    Height = 13
    Caption = 'Available :'
  end
  object Label2: TLabel
    Left = 8
    Top = 200
    Width = 39
    Height = 13
    Caption = 'Invalid :'
  end
  object lstLoanStatus: TListBox
    Left = 8
    Top = 24
    Width = 298
    Height = 169
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnDblClick = lstLoanStatusDblClick
    OnDrawItem = lstLoanStatusDrawItem
  end
  object btnCancel: TButton
    Left = 321
    Top = 55
    Width = 83
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object btnSelect: TButton
    Left = 321
    Top = 23
    Width = 83
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Select'
    TabOrder = 2
    OnClick = btnSelectClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 328
    Width = 417
    Height = 19
    Panels = <>
  end
  object lstInvalid: TListBox
    Left = 8
    Top = 216
    Width = 298
    Height = 105
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    ItemHeight = 13
    Sorted = True
    TabOrder = 4
    OnDrawItem = lstLoanStatusDrawItem
    OnEnter = lstInvalidEnter
  end
end
