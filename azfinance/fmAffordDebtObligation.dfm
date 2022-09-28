object frmAffordDebtObligation: TfrmAffordDebtObligation
  Left = 2053
  Top = 256
  Width = 747
  Height = 416
  Caption = 'Monthly Financial Debt Obligations'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    731
    378)
  PixelsPerInch = 96
  TextHeight = 13
  object btnClose: TButton
    Left = 335
    Top = 350
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 0
  end
  object grpApplicant: TGroupBox
    Left = 6
    Top = 11
    Width = 720
    Height = 160
    Caption = 'Applicant'
    TabOrder = 1
    object grdApplicant: TDBGrid
      Left = 5
      Top = 16
      Width = 710
      Height = 134
      DataSource = dtmAffordability.dtsSubItemApplicant
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Source'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CategoryDescription'
          Title.Caption = 'Description'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Action'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ActionUser'
          Title.Caption = 'Action By'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ActionDate'
          Title.Caption = 'Action Date'
          Width = 130
          Visible = True
        end>
    end
  end
  object grpSpouse: TGroupBox
    Left = 6
    Top = 180
    Width = 720
    Height = 160
    Caption = 'Spouse'
    TabOrder = 2
    object grdSpouse: TDBGrid
      Left = 5
      Top = 16
      Width = 710
      Height = 168
      DataSource = dtmAffordability.dtsSubItemSpouse
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Source'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CategoryDescription'
          Title.Caption = 'Description'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Action'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ActionUser'
          Title.Caption = 'Action By'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ActionDate'
          Title.Caption = 'Action Date'
          Width = 130
          Visible = True
        end>
    end
  end
end
