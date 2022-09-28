object frmThirdPartySettle: TfrmThirdPartySettle
  Left = 328
  Top = 315
  Width = 825
  Height = 411
  Caption = 'Third Party Settlement'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    817
    377)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 12
    Width = 75
    Height = 13
    Caption = 'Company Name'
  end
  object Label2: TLabel
    Left = 18
    Top = 36
    Width = 50
    Height = 13
    Caption = 'Reference'
  end
  object Label3: TLabel
    Left = 18
    Top = 84
    Width = 92
    Height = 13
    Caption = 'Settlement Amount'
  end
  object Label7: TLabel
    Left = 18
    Top = 60
    Width = 51
    Height = 13
    Caption = 'Instalment'
  end
  object Label4: TLabel
    Left = 18
    Top = 110
    Width = 56
    Height = 13
    Caption = 'Expiry Date'
  end
  object btnBeneficiary: TSpeedButton
    Left = 447
    Top = 7
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btnBeneficiaryClick
  end
  object edtCompanyName: TDBEdit
    Left = 123
    Top = 8
    Width = 321
    Height = 21
    DataField = 'Name'
    DataSource = dtmLoanC.dtsPayouts
    TabOrder = 0
  end
  object edtReference: TDBEdit
    Left = 123
    Top = 32
    Width = 321
    Height = 21
    DataField = 'ThirdRefNo'
    DataSource = dtmLoanC.dtsPayouts
    TabOrder = 1
  end
  object edtAmount: TDBEdit
    Left = 123
    Top = 80
    Width = 153
    Height = 21
    DataField = 'Amount'
    DataSource = dtmLoanC.dtsPayouts
    TabOrder = 3
  end
  object GroupBox2: TGroupBox
    Left = 15
    Top = 175
    Width = 466
    Height = 162
    Caption = 'Bank Details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    DesignSize = (
      466
      162)
    object Label6: TLabel
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
    object Label8: TLabel
      Left = 310
      Top = 53
      Width = 25
      Height = 13
      Caption = 'Code'
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
      Width = 351
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'AccountName'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtAccNo: TDBEdit
      Left = 104
      Top = 101
      Width = 351
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'BankAccNo'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtBank: TDBEdit
      Left = 104
      Top = 23
      Width = 351
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'BankName'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtBankBranch: TDBEdit
      Left = 104
      Top = 49
      Width = 201
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'BranchName'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edtBankBranchChange
    end
    object DBEdit1: TDBEdit
      Left = 342
      Top = 49
      Width = 113
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = 'BranchCode'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object cmbAccountType: TComboBox
      Left = 104
      Top = 126
      Width = 353
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 5
      OnChange = cmbAccountTypeChange
      Items.Strings = (
        'Cheque / Current account'
        'Savings account'
        'Transmission account'
        'Bond account'
        'Credit card account')
    end
    object cmbBranchCode: TDBLookupComboBox
      Left = 342
      Top = 81
      Width = 113
      Height = 21
      DataField = 'BranchCode'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'BranchCode'
      ListField = 'BranchCode'
      ListSource = dtmPayouts.dtsBranchCode
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object cmbBranchName: TDBLookupComboBox
      Left = 104
      Top = 49
      Width = 201
      Height = 21
      DataField = 'BranchName'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'BranchName'
      ListField = 'BranchName'
      ListSource = dtmPayouts.dtsBranchName
      ParentFont = False
      TabOrder = 7
    end
    object cmbBanks: TDBLookupComboBox
      Left = 104
      Top = 23
      Width = 351
      Height = 21
      DataField = 'BankName'
      DataSource = dtmLoanC.dtsPayouts
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'BankName'
      ListField = 'BankName'
      ListSource = dtmPayouts.dtsBanks
      ParentFont = False
      TabOrder = 8
      OnClick = cmbBanksClick
    end
  end
  object btnCancel: TButton
    Left = 726
    Top = 344
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 6
  end
  object btnOK: TButton
    Left = 646
    Top = 344
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 7
    OnClick = btnOKClick
  end
  object edtInstalment: TDBEdit
    Left = 123
    Top = 56
    Width = 153
    Height = 21
    DataField = 'Instalment'
    DataSource = dtmLoanC.dtsPayouts
    TabOrder = 2
  end
  object pnlDocView: TPanel
    Left = 496
    Top = 4
    Width = 313
    Height = 333
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    Color = clAppWorkSpace
    TabOrder = 8
    object CoolBar1: TCoolBar
      Left = 1
      Top = 1
      Width = 311
      Height = 40
      AutoSize = True
      Bands = <
        item
          Control = tlbDocTools
          ImageIndex = -1
          MinHeight = 36
          Width = 307
        end>
      Color = clBtnFace
      ParentColor = False
      object tlbDocTools: TToolBar
        Left = 9
        Top = 0
        Width = 294
        Height = 36
        AutoSize = True
        ButtonHeight = 36
        ButtonWidth = 46
        Caption = 'tlbDocTools'
        EdgeBorders = []
        Flat = True
        Images = dtmMain.imglstMain
        ShowCaptions = True
        TabOrder = 0
        object btnAddDoc: TToolButton
          Left = 0
          Top = 0
          Caption = 'Add'
          ImageIndex = 24
          OnClick = btnAddDocClick
        end
        object btnRemoveDoc: TToolButton
          Left = 46
          Top = 0
          Caption = 'Remove'
          ImageIndex = 25
          OnClick = btnRemoveDocClick
        end
        object btnViewDoc: TToolButton
          Left = 92
          Top = 0
          Caption = 'View'
          ImageIndex = 0
          OnClick = btnViewDocClick
        end
      end
    end
  end
  object dtpExpiryDate: TDBDateTimePicker
    Left = 123
    Top = 106
    Width = 153
    Height = 21
    Date = 39242.000000000000000000
    Time = 39242.000000000000000000
    TabOrder = 4
    DataField = 'ExpiryDate'
    DataSource = dtmLoanC.dtsPayouts
    ReadOnly = False
  end
  object DBCheckBox1: TDBCheckBox
    Left = 16
    Top = 137
    Width = 257
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Requires Authoristion to Pay'
    DataField = 'PayAuthorisation'
    DataSource = dtmLoanC.dtsPayouts
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
end
