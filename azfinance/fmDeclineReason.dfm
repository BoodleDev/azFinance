object frmDeclineReason: TfrmDeclineReason
  Left = 323
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reason for Declining'
  ClientHeight = 157
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    337
    157)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Reason'
  end
  object lblSpecify: TLabel
    Left = 24
    Top = 64
    Width = 35
    Height = 13
    Caption = 'Specify'
  end
  object btnCancel: TButton
    Left = 238
    Top = 120
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 158
    Top = 120
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object edtReason: TDBEdit
    Left = 24
    Top = 104
    Width = 121
    Height = 21
    DataField = 'CurReason'
    DataSource = dtmLoanC.dtsLoanDet
    TabOrder = 2
    Visible = False
    OnChange = edtReasonChange
  end
  object cmbReason: TDBLookupComboBox
    Left = 24
    Top = 32
    Width = 289
    Height = 21
    DataField = 'CurReason'
    DataSource = dtmLoanC.dtsLoanDet
    KeyField = 'IDVal'
    ListField = 'Description'
    ListSource = dtmLoanC.dtsLUReasons
    TabOrder = 3
  end
  object cmbSubReason: TDBLookupComboBox
    Left = 24
    Top = 80
    Width = 289
    Height = 21
    DataField = 'StatusReasonID2'
    DataSource = dtmLoanC.dtsLoanDet
    KeyField = 'TypeKey'
    ListField = 'Description'
    ListSource = dtmLoanC.dtsSubReasons
    TabOrder = 4
  end
  object edtSubReason: TDBEdit
    Left = 24
    Top = 128
    Width = 121
    Height = 21
    DataField = 'StatusReasonID2'
    DataSource = dtmLoanC.dtsLoanDet
    TabOrder = 5
    Visible = False
    OnChange = edtSubReasonChange
  end
end
