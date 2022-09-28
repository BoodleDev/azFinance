object frmResultOptions: TfrmResultOptions
  Left = 464
  Top = 308
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Result Options'
  ClientHeight = 228
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 18
    Top = 136
    Width = 271
    Height = 33
    Hint = 
      'Tools/ Internet Options/ Advanced/ Resuse windows for launching ' +
      'shortcuts'
    AutoSize = False
    Caption = 
      'Note: In order to open multiple results your Internet Explorer m' +
      'ust be set to use multiple windows.'
    ParentShowHint = False
    ShowHint = True
    WordWrap = True
  end
  object btnClose: TButton
    Left = 158
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 78
    Top = 188
    Width = 75
    Height = 24
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = btnOkClick
  end
  object GroupBox1: TGroupBox
    Left = 15
    Top = 8
    Width = 273
    Height = 121
    Caption = 'Please select the results to display'
    TabOrder = 2
    object cbxCS: TCheckBox
      Left = 56
      Top = 21
      Width = 97
      Height = 17
      Caption = 'Compuscan'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
    end
    object cbxNLR: TCheckBox
      Left = 56
      Top = 45
      Width = 97
      Height = 17
      Caption = 'NLR'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
    object cbxExperian: TCheckBox
      Left = 56
      Top = 69
      Width = 97
      Height = 17
      Caption = 'Experian'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
    end
    object cbxSumm: TCheckBox
      Left = 56
      Top = 93
      Width = 97
      Height = 17
      Caption = 'Summary'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
    end
  end
end
