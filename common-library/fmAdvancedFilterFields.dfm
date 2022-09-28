object frmAdvancedFilterFields: TfrmAdvancedFilterFields
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Visible Fields'
  ClientHeight = 274
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    391
    274)
  PixelsPerInch = 96
  TextHeight = 13
  object clbFields: TCheckListBox
    Left = 8
    Top = 8
    Width = 375
    Height = 219
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = 2
    ItemHeight = 13
    PopupMenu = ppmSelection
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 227
    Top = 241
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 308
    Top = 241
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object ppmSelection: TPopupMenu
    Left = 104
    Top = 208
    object SelectAll1: TMenuItem
      Caption = 'Select All'
      OnClick = SelectAll1Click
    end
    object ClearAll1: TMenuItem
      Caption = 'Clear All'
      OnClick = SelectAll1Click
    end
  end
end
