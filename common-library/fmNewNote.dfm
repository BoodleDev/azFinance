object frmNewNote: TfrmNewNote
  Left = 431
  Top = 463
  Width = 488
  Height = 231
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'New Note'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    480
    197)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Department'
  end
  object memNote: TMemo
    Left = 8
    Top = 32
    Width = 463
    Height = 118
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object btnCancel: TButton
    Left = 390
    Top = 161
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 310
    Top = 161
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
  end
  object edtDepartment: TEdit
    Left = 69
    Top = 5
    Width = 252
    Height = 21
    Color = clBtnFace
    TabOrder = 3
  end
  object chkIsInternal: TCheckBox
    Left = 328
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Internal Note'
    TabOrder = 4
  end
end
