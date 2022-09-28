inherited frmLoanBook: TfrmLoanBook
  Tag = 1076
  Left = 130
  Top = 92
  Width = 645
  Height = 455
  Caption = 'Loan Book'
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited tlbDBBase: TToolBar
    Left = 601
    Height = 421
    ButtonHeight = 37
  end
  inherited pnlBBase: TPanel
    Width = 601
    Height = 421
    object grdLoanBook: TDBGrdClr
      Left = 0
      Top = 0
      Width = 601
      Height = 421
      Align = alClient
      DataSource = dtmLoanMan.dtsLoanbook
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clMenuText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'Description'
          Width = 150
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Current'
          Title.Alignment = taCenter
          Title.Caption = 'Live to date'
          Width = 105
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'METotals'
          Title.Alignment = taCenter
          Title.Caption = 'LTD - Prev. mth'
          Width = 105
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'CurrMonth'
          Title.Alignment = taCenter
          Title.Caption = 'Curr. month'
          Width = 105
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'PrevMonth'
          Title.Alignment = taCenter
          Title.Caption = 'Prev. month'
          Width = 105
          Visible = True
        end>
    end
  end
end
