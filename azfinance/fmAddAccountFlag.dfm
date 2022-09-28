object frmAddAccountFlag: TfrmAddAccountFlag
  Left = 438
  Top = 332
  Width = 307
  Height = 166
  BorderIcons = [biSystemMenu]
  Caption = 'Add Flag'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    291
    128)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 14
    Width = 66
    Height = 13
    Caption = 'Please select:'
  end
  object btnOK: TButton
    Left = 128
    Top = 96
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 0
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 208
    Top = 96
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object cmbSubFlag: TDBLookupComboBox
    Left = 16
    Top = 64
    Width = 273
    Height = 21
    KeyField = 'SubFlagID'
    ListField = 'Description'
    ListSource = dtmAccountFlag.dtsSubFlags
    TabOrder = 2
  end
  object edtFlag: TDBEdit
    Left = 16
    Top = 32
    Width = 273
    Height = 21
    Color = clBtnFace
    DataField = 'Description'
    DataSource = dtmAccountFlag.dtsFlags
    ReadOnly = True
    TabOrder = 3
  end
end
