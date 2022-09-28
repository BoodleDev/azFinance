object frmArrearsSettlement: TfrmArrearsSettlement
  Left = 367
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Arrears Settlement Calculator'
  ClientHeight = 466
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    664
    466)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 321
    Height = 177
    Caption = 'Account Details'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 34
      Width = 60
      Height = 13
      Caption = 'Account No.'
    end
    object Label2: TLabel
      Left = 16
      Top = 58
      Width = 33
      Height = 13
      Caption = 'Arrears'
    end
    object Label3: TLabel
      Left = 16
      Top = 82
      Width = 59
      Height = 13
      Caption = 'Delinquency'
    end
    object edtAccountNo: TEdit
      Left = 96
      Top = 30
      Width = 121
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
    object edtArrears: TEdit
      Left = 96
      Top = 54
      Width = 121
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
    end
    object edtDelinquency: TEdit
      Left = 96
      Top = 78
      Width = 49
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 336
    Top = 8
    Width = 321
    Height = 177
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Payment Schedule'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 34
      Width = 58
      Height = 13
      Caption = '1st Payment'
    end
    object Label5: TLabel
      Left = 16
      Top = 58
      Width = 67
      Height = 13
      Caption = 'No. of Months'
    end
    object Label6: TLabel
      Left = 16
      Top = 82
      Width = 48
      Height = 13
      Caption = 'Instalment'
    end
    object Label7: TLabel
      Left = 16
      Top = 106
      Width = 90
      Height = 13
      Caption = 'Arrears Repayment'
    end
    object Label8: TLabel
      Left = 16
      Top = 130
      Width = 92
      Height = 13
      Caption = 'Total Instalment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbStartmonth: TComboBox
      Left = 116
      Top = 30
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object cmbTerm: TComboBox
      Left = 116
      Top = 54
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 116
      Top = 79
      Width = 121
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 116
      Top = 103
      Width = 121
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 116
      Top = 127
      Width = 121
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 192
    Width = 649
    Height = 231
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Payment Summary'
      object grdSummary: TDBGrid
        Left = 0
        Top = 0
        Width = 641
        Height = 203
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object btnClose: TButton
    Left = 583
    Top = 431
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 3
  end
end
