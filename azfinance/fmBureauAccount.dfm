object frmBureauAccount: TfrmBureauAccount
  Left = 459
  Top = 280
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Account'
  ClientHeight = 313
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    367
    313)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 37
    Width = 45
    Height = 13
    Caption = 'Company'
  end
  object Label2: TLabel
    Left = 15
    Top = 61
    Width = 59
    Height = 13
    Caption = 'Account No.'
  end
  object Label3: TLabel
    Left = 15
    Top = 85
    Width = 51
    Height = 13
    Caption = 'Instalment'
  end
  object Label4: TLabel
    Left = 15
    Top = 160
    Width = 69
    Height = 13
    Caption = 'Date Last Paid'
  end
  object Label5: TLabel
    Left = 15
    Top = 12
    Width = 33
    Height = 13
    Caption = 'Source'
  end
  object Label7: TLabel
    Left = 15
    Top = 134
    Width = 92
    Height = 13
    Caption = 'Settlement Amount'
  end
  object Label8: TLabel
    Left = 17
    Top = 182
    Width = 23
    Height = 13
    Caption = 'Note'
  end
  object Label6: TLabel
    Left = 15
    Top = 109
    Width = 90
    Height = 13
    Caption = 'Original Instalment'
  end
  object btnCancel: TButton
    Left = 281
    Top = 279
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 8
  end
  object btnOK: TButton
    Left = 202
    Top = 279
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnClick = btnOKClick
  end
  object memNote: TMemo
    Left = 112
    Top = 185
    Width = 241
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 6
  end
  object cmbSource: TComboBox
    Left = 112
    Top = 8
    Width = 241
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = cmbSourceChange
    Items.Strings = (
      'Application Form'
      'Bank Statement'
      'Settlement Letter'
      'Other')
  end
  object edtCompany: TEdit
    Left = 112
    Top = 32
    Width = 241
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = 'edtCompany'
  end
  object edtAccountNo: TEdit
    Left = 112
    Top = 56
    Width = 241
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Text = 'edtAccountNo'
  end
  object edtSettleAmount: TEdit
    Left = 112
    Top = 128
    Width = 241
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Enabled = False
    TabOrder = 4
    Text = 'edtSettleAmount'
    OnKeyPress = edtSettleAmountKeyPress
  end
  object dtpLastPaid: TDateTimePicker
    Left = 112
    Top = 152
    Width = 241
    Height = 21
    Date = 39728.629460972220000000
    Time = 39728.629460972220000000
    Checked = False
    TabOrder = 5
    OnExit = dtpLastPaidExit
  end
  object edtOriginalInstalment: TEdit
    Left = 112
    Top = 104
    Width = 241
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clWhite
    Enabled = False
    TabOrder = 9
    Text = 'edtOriginalInstalment'
    OnKeyPress = edtOriginalInstalmentKeyPress
  end
  object edtInstalment: TEdit
    Left = 112
    Top = 80
    Width = 241
    Height = 21
    Color = clWhite
    TabOrder = 3
    Text = 'edtInstalment'
    OnKeyPress = edtInstalmentKeyPress
  end
end
