object frmConnectNLR: TfrmConnectNLR
  Tag = 1074
  Left = 165
  Top = 259
  BorderStyle = bsNone
  Caption = 'frmConnectNLR'
  ClientHeight = 135
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 135
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 40
      Width = 44
      Height = 14
      Caption = 'Progress'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 76
      Height = 14
      Caption = 'Time connected'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object gugNLR: TGauge
      Left = 2
      Top = 117
      Width = 439
      Height = 16
      Align = alBottom
      ForeColor = clBlue
      Progress = 0
    end
    object Label5: TLabel
      Left = 24
      Top = 64
      Width = 71
      Height = 14
      Caption = 'Current record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblTime: TLabel
      Left = 136
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Loading ...'
    end
    object lblProgress: TLabel
      Left = 136
      Top = 40
      Width = 50
      Height = 13
      Caption = 'Loading ...'
    end
    object TLabel
      Left = 136
      Top = 64
      Width = 3
      Height = 13
    end
    object Label7: TLabel
      Left = 24
      Top = 88
      Width = 81
      Height = 14
      Caption = 'Transaction type'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object dbCurrentRecord: TDBText
      Left = 136
      Top = 64
      Width = 81
      Height = 13
      AutoSize = True
      DataField = 'LULoanKey'
      DataSource = dtmNLR.dtsNLRToDo
    end
    object lblTransType: TLabel
      Left = 136
      Top = 88
      Width = 50
      Height = 13
      Caption = 'Loading ...'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 376
    Top = 8
  end
end
