object frmLegalSettlement: TfrmLegalSettlement
  Left = 269
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Legal Settlement'
  ClientHeight = 326
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    384
    326)
  PixelsPerInch = 96
  TextHeight = 13
  object btnClose: TButton
    Left = 298
    Top = 293
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 369
    Height = 127
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Legal Details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 46
      Width = 79
      Height = 13
      Caption = 'Judgement Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 96
      Width = 51
      Height = 13
      Caption = 'Legal Fees'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 22
      Width = 73
      Height = 13
      Caption = 'Handover Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 71
      Width = 93
      Height = 13
      Caption = 'Judgement Amount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object memHODate: TMemo
      Left = 200
      Top = 18
      Width = 147
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object memJDDate: TMemo
      Left = 200
      Top = 42
      Width = 147
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object memJDAmount: TMemo
      Left = 200
      Top = 67
      Width = 147
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object memLegalFees: TMemo
      Left = 200
      Top = 92
      Width = 147
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 142
    Width = 369
    Height = 142
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Settlement Details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      369
      142)
    object Label2: TLabel
      Left = 16
      Top = 30
      Width = 78
      Height = 13
      Caption = 'Settlement Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 54
      Width = 122
      Height = 13
      Caption = 'Total Balance Oustanding'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 79
      Width = 135
      Height = 13
      Caption = 'Interest to Date (@ 15.5%)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 104
      Width = 144
      Height = 13
      Caption = 'Total Settlement Amount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtpSettlementDate: TDateTimePicker
      Left = 200
      Top = 26
      Width = 147
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 39126.000000000000000000
      Time = 39126.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = dtpSettlementDateChange
    end
    object memLoanBalance: TMemo
      Left = 200
      Top = 50
      Width = 147
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object memInterest: TMemo
      Left = 200
      Top = 75
      Width = 147
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object memSettlement: TMemo
      Left = 200
      Top = 100
      Width = 147
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object btnPrint: TButton
    Left = 217
    Top = 294
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 3
    OnClick = btnPrintClick
  end
end
