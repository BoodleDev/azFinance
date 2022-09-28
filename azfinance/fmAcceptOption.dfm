object frmAcceptOption: TfrmAcceptOption
  Left = 168
  Top = 153
  Width = 559
  Height = 243
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Please select an option to accept...'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    551
    209)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 41
    Width = 80
    Height = 13
    Caption = 'Option Accepted'
  end
  object Label2: TLabel
    Left = 16
    Top = 12
    Width = 71
    Height = 13
    Caption = 'Date Accepted'
  end
  object grdOptions: TDBGrid
    Left = 8
    Top = 64
    Width = 530
    Height = 108
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmLoanC.dtsQuoteOffers
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OfferNo'
        Title.Alignment = taCenter
        Title.Caption = 'Option No'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Period'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Title.Caption = 'Loan Capital'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Instalment'
        Title.Alignment = taRightJustify
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Settlements'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total Settlements'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Payout'
        Title.Alignment = taRightJustify
        Title.Caption = 'Payout Amount'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 37
    Width = 433
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'sOfferNo'
    DataSource = dtmLoanC.dtsQuoteOffers
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 465
    Top = 177
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnAccept: TButton
    Left = 385
    Top = 177
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Accept'
    ModalResult = 1
    TabOrder = 3
  end
  object dtpAcceptDate: TDateTimePicker
    Left = 104
    Top = 8
    Width = 433
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Date = 39242.000000000000000000
    Time = 39242.000000000000000000
    TabOrder = 4
  end
end
