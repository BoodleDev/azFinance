object frmActiveOffers: TfrmActiveOffers
  Left = 195
  Top = 175
  Width = 681
  Height = 352
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Active Options'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    673
    318)
  PixelsPerInch = 96
  TextHeight = 13
  object grdOffers: TDBGrid
    Left = 8
    Top = 16
    Width = 658
    Height = 154
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmLoanC.dtsActiveOffers
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
        FieldName = 'QuotationID'
        Title.Caption = 'Quotation ID'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OfferNo'
        Title.Alignment = taCenter
        Title.Caption = 'Option No.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Title.Caption = 'Loan Amount'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Instalment'
        Title.Alignment = taRightJustify
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Period'
        Title.Alignment = taCenter
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Settlements'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total Settlements'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Payout'
        Title.Alignment = taRightJustify
        Width = 100
        Visible = True
      end>
  end
  object grdSettlements: TDBGrid
    Left = 8
    Top = 177
    Width = 658
    Height = 101
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dtmLoanC.dtsActivePayouts
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Title.Caption = 'Company Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ThirdRefNo'
        Title.Caption = 'Reference'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Instalment'
        Title.Alignment = taRightJustify
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ExpiryDate'
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end>
  end
  object btnCancel: TButton
    Left = 591
    Top = 285
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 510
    Top = 285
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
  end
end
