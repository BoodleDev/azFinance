object frmLoanAuthoriseFlag: TfrmLoanAuthoriseFlag
  Left = 640
  Top = 357
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Authorise Flags'
  ClientHeight = 231
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    386
    231)
  PixelsPerInch = 96
  TextHeight = 13
  object chlAuthorise: TCheckListBox
    Left = 8
    Top = 32
    Width = 368
    Height = 156
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 16
    Style = lbOwnerDrawFixed
    TabOrder = 0
    OnClick = chlAuthoriseClick
  end
  object chkSelectAll: TCheckBox
    Left = 8
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Select All'
    TabOrder = 1
    OnMouseUp = chkSelectAllMouseUp
  end
  object btnCancel: TButton
    Left = 303
    Top = 197
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 223
    Top = 197
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOKClick
  end
end
