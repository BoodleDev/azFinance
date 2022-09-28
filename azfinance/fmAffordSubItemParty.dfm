object frmAffordSubItemParty: TfrmAffordSubItemParty
  Left = 267
  Top = 0
  Width = 747
  Height = 429
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Sub Item Party'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    731
    391)
  PixelsPerInch = 96
  TextHeight = 13
  object btnClose: TButton
    Left = 335
    Top = 363
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 0
  end
  object grpApplicant: TGroupBox
    Left = 6
    Top = 17
    Width = 720
    Height = 160
    Caption = 'Applicant'
    TabOrder = 1
    object grdApplicant: TDBGrid
      Left = 5
      Top = 50
      Width = 710
      Height = 100
      DataSource = dtmAffordability.dtsSubItemApplicant
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdDrawColumnCell
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
          FieldName = 'ActionUserDepartment'
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
    object tlbrApplicant: TToolBar
      Left = 2
      Top = 15
      Width = 716
      Height = 26
      AutoSize = True
      BorderWidth = 1
      ButtonWidth = 61
      Caption = 'tlbrApplicant'
      EdgeBorders = []
      Flat = True
      Images = dtmMain.imglstMain
      List = True
      ShowCaptions = True
      TabOrder = 1
      object btnApplicantAdd: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Add'
        Enabled = False
        ImageIndex = 3
        OnClick = btnAddEditClick
      end
      object btnApplicantEdit: TToolButton
        Left = 50
        Top = 0
        AutoSize = True
        Caption = 'Edit'
        Enabled = False
        ImageIndex = 4
        OnClick = btnAddEditClick
      end
      object btnApplicantEnable: TToolButton
        Left = 99
        Top = 0
        AutoSize = True
        Caption = 'Enable'
        Enabled = False
        ImageIndex = 6
        OnClick = btnEnableDisableClick
      end
      object btnApplicantDisable: TToolButton
        Left = 162
        Top = 0
        AutoSize = True
        Caption = 'Disable'
        Enabled = False
        ImageIndex = 25
        OnClick = btnEnableDisableClick
      end
    end
  end
  object grpSpouse: TGroupBox
    Left = 6
    Top = 186
    Width = 720
    Height = 160
    Caption = 'Spouse'
    TabOrder = 2
    object grdSpouse: TDBGrid
      Left = 5
      Top = 50
      Width = 710
      Height = 100
      DataSource = dtmAffordability.dtsSubItemSpouse
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdDrawColumnCell
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
          FieldName = 'ActionUserDepartment'
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
    object tlbrSpouse: TToolBar
      Left = 2
      Top = 15
      Width = 716
      Height = 26
      Anchors = []
      AutoSize = True
      BorderWidth = 1
      ButtonWidth = 61
      Caption = 'tlbrSpouse'
      EdgeBorders = []
      Flat = True
      Images = dtmMain.imglstMain
      List = True
      ShowCaptions = True
      TabOrder = 1
      object btnSpouseAdd: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Add'
        Enabled = False
        ImageIndex = 3
        OnClick = btnAddEditClick
      end
      object btnSpouseEdit: TToolButton
        Left = 50
        Top = 0
        AutoSize = True
        Caption = 'Edit'
        Enabled = False
        ImageIndex = 4
        OnClick = btnAddEditClick
      end
      object btnSpouseEnable: TToolButton
        Left = 99
        Top = 0
        AutoSize = True
        Caption = 'Enable'
        Enabled = False
        ImageIndex = 6
        OnClick = btnEnableDisableClick
      end
      object btnSpouseDisable: TToolButton
        Left = 162
        Top = 0
        AutoSize = True
        Caption = 'Disable'
        Enabled = False
        ImageIndex = 25
        OnClick = btnEnableDisableClick
      end
    end
  end
end
