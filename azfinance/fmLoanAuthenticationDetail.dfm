object frmLoanAuthenticationDetail: TfrmLoanAuthenticationDetail
  Left = 489
  Top = 253
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Authentication Detail'
  ClientHeight = 158
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    298
    158)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 34
    Height = 13
    Caption = 'Bureau'
  end
  object Label2: TLabel
    Left = 24
    Top = 44
    Width = 23
    Height = 13
    Caption = 'Date'
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object cmbBureau: TDBComboBox
    Left = 80
    Top = 12
    Width = 145
    Height = 21
    Style = csSimple
    Color = clBtnFace
    DataField = 'Bureau'
    DataSource = dtmFraud.dtsAuthentication
    ItemHeight = 13
    Items.Strings = (
      'XDS'
      'TU')
    ReadOnly = True
    TabOrder = 4
    TabStop = False
  end
  object dtpCompleteDate: TDBDateTimePicker
    Left = 80
    Top = 40
    Width = 145
    Height = 21
    Date = 40918.000000000000000000
    Time = 40918.000000000000000000
    TabOrder = 0
    DataField = 'CompleteDate'
    DataSource = dtmFraud.dtsAuthentication
    ReadOnly = False
  end
  object cmbResult: TDBComboBox
    Left = 80
    Top = 68
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'Authenticated'
    DataSource = dtmFraud.dtsAuthentication
    ItemHeight = 16
    Items.Strings = (
      'True'
      'False')
    TabOrder = 1
    OnDrawItem = cmbResultDrawItem
  end
  object btnCancel: TButton
    Left = 152
    Top = 120
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object btnOK: TButton
    Left = 73
    Top = 120
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
  end
end
