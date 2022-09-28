object frmPayLoanTransfer: TfrmPayLoanTransfer
  Left = 262
  Top = 223
  Width = 578
  Height = 305
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Arrears Settlement'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    570
    271)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 76
    Height = 13
    Caption = 'Arrears Amount'
  end
  object Label1: TLabel
    Left = 8
    Top = 12
    Width = 117
    Height = 13
    Caption = 'Arrears Settlement Date'
  end
  object grdLoans: TDBGrid
    Left = 6
    Top = 66
    Width = 557
    Height = 165
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmPayouts.dtsArrears
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RefNo'
        Title.Caption = 'Loan Ref.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanStatus'
        Title.Caption = 'Status'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LoanPeriod'
        Title.Alignment = taCenter
        Title.Caption = 'Period'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NoOfPay'
        Title.Alignment = taCenter
        Title.Caption = 'No. Paid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PayIns'
        Title.Alignment = taRightJustify
        Title.Caption = 'Instalment'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanBal'
        Title.Alignment = taRightJustify
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ArrearsAmount'
        Title.Alignment = taRightJustify
        Title.Caption = 'Arrears Amount'
        Width = 90
        Visible = True
      end>
  end
  object edtAmount: TEdit
    Left = 130
    Top = 36
    Width = 146
    Height = 21
    TabOrder = 1
    OnEnter = edtAmountEnter
    OnExit = edtAmountExit
  end
  object btnCancel: TButton
    Left = 484
    Top = 238
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 404
    Top = 238
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOKClick
  end
  object edtArrears: TDBEdit
    Left = 416
    Top = 12
    Width = 65
    Height = 21
    DataField = 'ArrearsAmount'
    DataSource = dtmPayouts.dtsArrears
    TabOrder = 4
    Visible = False
    OnChange = edtArrearsChange
  end
  object dtpSettleDate: TDateTimePicker
    Left = 131
    Top = 8
    Width = 145
    Height = 21
    Date = 39291.000000000000000000
    Time = 39291.000000000000000000
    TabOrder = 5
    OnChange = dtpSettleDateChange
  end
end
