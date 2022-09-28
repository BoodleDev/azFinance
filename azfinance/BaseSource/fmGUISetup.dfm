object frmGUISetup: TfrmGUISetup
  Left = 258
  Top = 205
  Width = 430
  Height = 388
  Caption = 'User interface setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 422
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnDefault: TSpeedButton
      Left = 176
      Top = 9
      Width = 77
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Apply Defaults'
      OnClick = btnDefaultClick
    end
    object btnSave: TSpeedButton
      Left = 257
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save'
      OnClick = btnSaveClick
    end
    object btnCancel: TSpeedButton
      Left = 337
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      OnClick = btnCancelClick
    end
  end
  object grdControls: TcdsSortGrd
    Left = 0
    Top = 0
    Width = 422
    Height = 313
    Align = alClient
    DataSource = dtmGuiSetup.dtsGuiSetup
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OddColor = clInfoBk
    SelColor = clNavy
    SelColorFont = clWhite
    Columns = <
      item
        Expanded = False
        FieldName = 'ControlName'
        ReadOnly = True
        Title.Caption = 'Label Name'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ControlCaption'
        Title.Caption = 'Label Caption'
        Width = 150
        Visible = True
      end>
  end
end
