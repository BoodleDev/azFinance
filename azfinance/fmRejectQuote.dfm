object frmRejectQuote: TfrmRejectQuote
  Left = 320
  Top = 264
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reason for Rejecting Quotation'
  ClientHeight = 180
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 17
      Width = 36
      Height = 13
      Caption = 'Reason'
    end
    object cmbReason: TComboBox
      Left = 66
      Top = 13
      Width = 280
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cmbReasonChange
      Items.Strings = (
        'Lesser Amount/Period'
        'Cancelled'
        'Other'
        'Original Quotation')
    end
  end
  object pnlAmount: TPanel
    Left = 0
    Top = 36
    Width = 360
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 18
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object Label3: TLabel
      Left = 18
      Top = 35
      Width = 30
      Height = 13
      Caption = 'Period'
    end
    object edtAmount: TDBEdit
      Left = 66
      Top = 3
      Width = 191
      Height = 21
      DataField = 'AppAmt'
      DataSource = dtmLoanC.dtsLoanDet
      TabOrder = 0
    end
    object edtPeriod: TDBEdit
      Left = 66
      Top = 31
      Width = 191
      Height = 21
      DataField = 'AppPeriod'
      DataSource = dtmLoanC.dtsLoanDet
      TabOrder = 1
    end
  end
  object pnlOther: TPanel
    Left = 0
    Top = 91
    Width = 360
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object Label4: TLabel
      Left = 18
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Specify'
    end
    object memSpecify: TMemo
      Left = 66
      Top = 3
      Width = 280
      Height = 44
      TabOrder = 0
    end
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 143
    Width = 360
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      360
      37)
    object btnCancel: TButton
      Left = 269
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 189
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
  end
end
