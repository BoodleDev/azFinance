object frmDeclineCancelLoan: TfrmDeclineCancelLoan
  Left = 514
  Top = 263
  Width = 357
  Height = 276
  BorderIcons = [biSystemMenu]
  Caption = 'Decline/Cancel Account'
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
    349
    242)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 25
    Width = 37
    Height = 13
    Caption = 'Reason'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 35
    Height = 13
    Caption = 'Specify'
  end
  object cmbStatusReason: TDBLookupComboBox
    Left = 64
    Top = 21
    Width = 265
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CurReason'
    DataSource = dtmLoanC.dtsLoanDet
    KeyField = 'StatusReasonID'
    ListField = 'Description'
    ListSource = dtmLoanC.dtsStatusReason
    TabOrder = 0
  end
  object chlSubReason: TCheckListBox
    Left = 64
    Top = 50
    Width = 265
    Height = 141
    OnClickCheck = chlSubReasonClickCheck
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    Items.Strings = (
      'Reason 1'
      'Reason 2')
    Style = lbOwnerDrawFixed
    TabOrder = 1
    OnDrawItem = chlSubReasonDrawItem
  end
  object btnCancel: TButton
    Left = 256
    Top = 203
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 176
    Top = 203
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOKClick
  end
  object edtStatusReasonID: TDBEdit
    Left = 64
    Top = 205
    Width = 97
    Height = 21
    DataField = 'CurReason'
    DataSource = dtmLoanC.dtsLoanDet
    TabOrder = 4
    Visible = False
    OnChange = edtStatusReasonIDChange
  end
end
