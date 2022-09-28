object frmPayLoanSettle: TfrmPayLoanSettle
  Left = 776
  Top = 523
  Width = 712
  Height = 279
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Loan Settlement'
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
    696
    241)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 104
    Height = 13
    Caption = 'Select a loan to settle'
  end
  object Label2: TLabel
    Left = 8
    Top = 12
    Width = 78
    Height = 13
    Caption = 'Settlement Date'
  end
  object btnCancel: TButton
    Left = 618
    Top = 212
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 540
    Top = 212
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOKClick
  end
  object dtpSettleDate: TDateTimePicker
    Left = 96
    Top = 8
    Width = 145
    Height = 21
    Date = 39291.000000000000000000
    Time = 39291.000000000000000000
    TabOrder = 2
    OnChange = dtpSettleDateChange
  end
  object grdSettlements: TDBGrid
    Left = 8
    Top = 56
    Width = 687
    Height = 147
    Anchors = [akLeft, akTop, akRight]
    DataSource = dtmPayouts.dtsSettlePayouts
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = grdSettlementsDrawColumnCell
    OnDblClick = grdLoansDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'LoanID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RefNo'
        Title.Caption = 'Account No.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanStatus'
        Title.Caption = 'Status'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LoanPeriod'
        Title.Alignment = taCenter
        Title.Caption = 'Period'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NoOfPay'
        Title.Alignment = taCenter
        Title.Caption = 'No. Paid'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PayIns'
        Title.Alignment = taRightJustify
        Title.Caption = 'Instalment'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanBal'
        Title.Alignment = taRightJustify
        Title.Caption = 'Loan Balance'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Settlement'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total Settlement'
        Width = 100
        Visible = True
      end>
  end
end
