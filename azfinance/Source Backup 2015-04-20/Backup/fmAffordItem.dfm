object frmAffordItem: TfrmAffordItem
  Left = 368
  Top = 248
  Width = 360
  Height = 196
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Net Income'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    344
    158)
  PixelsPerInch = 96
  TextHeight = 13
  object grdSubItems: TDBGrid
    Left = 6
    Top = 8
    Width = 339
    Height = 114
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAffordability.dtsSubItems
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = grdSubItemsKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Width = 100
        Visible = True
      end>
  end
  object btnClose: TButton
    Left = 138
    Top = 130
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 1
  end
end
