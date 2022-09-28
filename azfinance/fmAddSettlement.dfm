object frmAddSettlement: TfrmAddSettlement
  Left = 291
  Top = 264
  Width = 598
  Height = 368
  Caption = 'Add Settlement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    582
    330)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 20
    Width = 54
    Height = 13
    Caption = 'Expiry Date'
  end
  object lblSendDetail: TLabel
    Left = 202
    Top = 47
    Width = 37
    Height = 13
    Caption = 'Fax No.'
  end
  object lblSendMethod: TLabel
    Left = 24
    Top = 47
    Width = 64
    Height = 13
    Caption = 'Send Method'
  end
  object edtEmail: TEdit
    Left = 248
    Top = 43
    Width = 265
    Height = 21
    TabOrder = 6
  end
  object dtpExpiryDate: TDateTimePicker
    Left = 96
    Top = 16
    Width = 97
    Height = 21
    Date = 40255.000000000000000000
    Time = 40255.000000000000000000
    TabOrder = 0
    OnChange = dtpExpiryDateChange
  end
  object pcSettlement: TPageControl
    Left = 16
    Top = 80
    Width = 562
    Height = 209
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Summary'
      object grdSummary: TDBGrid
        Left = 0
        Top = 0
        Width = 554
        Height = 181
        Align = alClient
        DataSource = dtmSettlementQuotes.dtsSummary
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Description'
            Width = 321
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 184
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Transactions'
      ImageIndex = 1
      object grdTransactions: TDBGrid
        Left = 0
        Top = 0
        Width = 554
        Height = 181
        Align = alClient
        DataSource = dtmSettlementQuotes.dtsTransactions
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EffectiveDate'
            Title.Caption = 'Date'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Rate'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Insurance'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Interest'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Balance'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object btnCancel: TButton
    Left = 505
    Top = 297
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 425
    Top = 297
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOKClick
  end
  object edtFaxNo: TNumEdit
    Left = 248
    Top = 43
    Width = 113
    Height = 21
    MaxLength = 10
    TabOrder = 4
  end
  object cmbSendMethod: TComboBox
    Left = 96
    Top = 43
    Width = 97
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'None'
    OnChange = cmbSendMethodChange
    Items.Strings = (
      'None'
      'Email'
      'Fax')
  end
end
