object frmPayoutDetail: TfrmPayoutDetail
  Left = 226
  Top = 53
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Payout Detail'
  ClientHeight = 478
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBeneficiary: TPanel
    Left = 0
    Top = 72
    Width = 379
    Height = 84
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label14: TLabel
      Left = 21
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Beneficiary'
    end
    object Label15: TLabel
      Left = 21
      Top = 57
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object btnBeneficiary: TSpeedButton
      Left = 323
      Top = 3
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnBeneficiaryClick
    end
    object Label7: TLabel
      Left = 21
      Top = 34
      Width = 73
      Height = 13
      Caption = 'Beneficiary Ref'
    end
    object DBEdit8: TDBEdit
      Left = 104
      Top = 53
      Width = 137
      Height = 21
      DataField = 'Amount'
      DataSource = dtmLoanC.dtsPayouts
      TabOrder = 1
    end
    object edtBeneficiary: TEdit
      Left = 104
      Top = 5
      Width = 217
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 104
      Top = 29
      Width = 137
      Height = 21
      DataField = 'ThirdRefNo'
      DataSource = dtmLoanC.dtsPayouts
      TabOrder = 2
    end
  end
  object pnlLoanTransfer: TPanel
    Left = 0
    Top = 15
    Width = 379
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 9
      Width = 50
      Height = 13
      Caption = 'Reference'
    end
    object SpeedButton1: TSpeedButton
      Left = 323
      Top = 4
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 21
      Top = 37
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 33
      Width = 137
      Height = 21
      DataField = 'Amount'
      DataSource = dtmLoanC.dtsPayouts
      TabOrder = 1
    end
    object edtLoanRef: TEdit
      Left = 80
      Top = 5
      Width = 241
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object pnlOnceOff: TPanel
    Left = 0
    Top = 156
    Width = 379
    Height = 281
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label4: TLabel
      Left = 21
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Third Party'
    end
    object Label5: TLabel
      Left = 21
      Top = 58
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object Label6: TLabel
      Left = 21
      Top = 33
      Width = 73
      Height = 13
      Caption = 'Third Party Ref'
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 86
      Width = 349
      Height = 185
      Caption = 'Bank Details'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        349
        185)
      object Label3: TLabel
        Left = 13
        Top = 27
        Width = 23
        Height = 13
        Caption = 'Bank'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 13
        Top = 51
        Width = 33
        Height = 13
        Caption = 'Branch'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 13
        Top = 79
        Width = 69
        Height = 13
        Caption = 'Account Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 13
        Top = 105
        Width = 79
        Height = 13
        Caption = 'Account Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 13
        Top = 131
        Width = 66
        Height = 13
        Caption = 'Account Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtAccName: TDBEdit
        Left = 104
        Top = 75
        Width = 234
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'AccName'
        DataSource = dtmLoanC.dtsPayoutBank
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtAccNo: TDBEdit
        Left = 104
        Top = 101
        Width = 234
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'AccNo'
        DataSource = dtmLoanC.dtsPayoutBank
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object btnEditBank: TBitBtn
        Left = 256
        Top = 151
        Width = 84
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Update'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnEditBankClick
      end
      object edtBank: TDBEdit
        Left = 104
        Top = 23
        Width = 234
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'BName'
        DataSource = dtmLoanC.dtsPayoutBank
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edtBankBranch: TDBEdit
        Left = 104
        Top = 49
        Width = 234
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'sBranch'
        DataSource = dtmLoanC.dtsPayoutBank
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtAccType: TDBEdit
        Left = 104
        Top = 127
        Width = 234
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'sAccountType'
        DataSource = dtmLoanC.dtsPayoutBank
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 54
      Width = 137
      Height = 21
      DataField = 'Amount'
      DataSource = dtmLoanC.dtsPayouts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 104
      Top = 4
      Width = 241
      Height = 21
      DataField = 'Name'
      DataSource = dtmLoanC.dtsPayouts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 29
      Width = 137
      Height = 21
      DataField = 'ThirdRefNo'
      DataSource = dtmLoanC.dtsPayouts
      TabOrder = 3
    end
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 437
    Width = 379
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      379
      41)
    object btnCancel: TButton
      Left = 292
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 212
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 379
    Height = 15
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
  end
end
