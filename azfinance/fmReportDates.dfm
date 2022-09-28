object frmRptDates: TfrmRptDates
  Left = 329
  Top = 292
  Width = 211
  Height = 154
  BorderIcons = [biSystemMenu]
  Caption = 'Report Dates'
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
  object Label1: TLabel
    Left = 3
    Top = 0
    Width = 78
    Height = 13
    Caption = 'Month End Date'
  end
  object cmbStartDate: TDBComboBox
    Left = 3
    Top = 16
    Width = 145
    Height = 21
    DataField = 'MonthEndDate'
    DataSource = dtmReports.dtsMonthEndDates
    ItemHeight = 13
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 86
    Width = 203
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnCancel: TSpeedButton
      Left = 88
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Cancel'
    end
    object btnOK: TSpeedButton
      Left = 16
      Top = 8
      Width = 65
      Height = 25
      Caption = 'OK'
      OnClick = btnOkClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 203
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 3
      Top = 4
      Width = 45
      Height = 13
      Caption = 'End Date'
      Visible = False
    end
    object cmbEndDate: TComboBox
      Left = 5
      Top = 20
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Visible = False
    end
  end
end
