object frmEmploymentConfirmationEdit: TfrmEmploymentConfirmationEdit
  Left = 609
  Top = 265
  Width = 491
  Height = 359
  BorderIcons = [biSystemMenu]
  Caption = 'Employment Confirmation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    483
    325)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 108
    Width = 74
    Height = 13
    Caption = 'Contact Person'
  end
  object Label3: TLabel
    Left = 16
    Top = 163
    Width = 37
    Height = 13
    Caption = 'Position'
  end
  object Label4: TLabel
    Left = 16
    Top = 193
    Width = 57
    Height = 13
    Caption = 'Department'
  end
  object Label5: TLabel
    Left = 16
    Top = 135
    Width = 58
    Height = 13
    Caption = 'Contact No.'
  end
  object Label6: TLabel
    Left = 16
    Top = 223
    Width = 23
    Height = 13
    Caption = 'Note'
  end
  object Label7: TLabel
    Left = 16
    Top = 16
    Width = 74
    Height = 13
    Caption = 'Employer Name'
  end
  object Label8: TLabel
    Left = 16
    Top = 70
    Width = 78
    Height = 13
    Caption = 'Registration No.'
  end
  object Label9: TLabel
    Left = 16
    Top = 43
    Width = 66
    Height = 13
    Caption = 'Trading Name'
  end
  object Bevel1: TBevel
    Left = 16
    Top = 97
    Width = 437
    Height = 16
    Shape = bsTopLine
  end
  object edtContactPerson: TDBEdit
    Left = 100
    Top = 105
    Width = 248
    Height = 21
    DataField = 'ContactName'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    TabOrder = 0
  end
  object edtPosition: TDBEdit
    Left = 100
    Top = 160
    Width = 248
    Height = 21
    DataField = 'Position'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    TabOrder = 2
  end
  object edtDepartment: TDBEdit
    Left = 100
    Top = 190
    Width = 248
    Height = 21
    DataField = 'Department'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    TabOrder = 3
  end
  object edtContactNo: TDBEdit
    Left = 100
    Top = 132
    Width = 145
    Height = 21
    DataField = 'ContactNo'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    TabOrder = 1
  end
  object edtNotes: TDBMemo
    Left = 100
    Top = 217
    Width = 353
    Height = 64
    DataField = 'Note'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    TabOrder = 4
  end
  object btnCancel: TButton
    Left = 383
    Top = 292
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 6
  end
  object btnOK: TButton
    Left = 302
    Top = 292
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 5
  end
  object edtEmployerName: TDBEdit
    Left = 100
    Top = 13
    Width = 289
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'EmployerName'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    ReadOnly = True
    TabOrder = 7
  end
  object edtRegistrationName: TDBEdit
    Left = 100
    Top = 67
    Width = 289
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'RegistrationNo'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    ReadOnly = True
    TabOrder = 8
  end
  object edtTradingName: TDBEdit
    Left = 100
    Top = 40
    Width = 289
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'TradingName'
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    ReadOnly = True
    TabOrder = 9
  end
end
