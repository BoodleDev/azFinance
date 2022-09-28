inherited frmUsers: TfrmUsers
  Left = 189
  Top = 197
  Width = 560
  Height = 282
  Caption = 'Users'
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited tlbDBBase: TToolBar
    Left = 490
    Width = 62
    Height = 248
    ButtonHeight = 37
    ButtonWidth = 62
    object btnAddUsr: TToolButton
      Left = 0
      Top = 37
      Caption = 'Add user'
      ImageIndex = 3
      Wrap = True
      OnClick = btnAddUsrClick
    end
    object btnDelUsr: TToolButton
      Left = 0
      Top = 74
      Caption = 'Delete user'
      ImageIndex = 7
      OnClick = btnDelUsrClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 490
    Height = 248
    object grdUsers: TDBGrdClr
      Left = 0
      Top = 49
      Width = 490
      Height = 199
      Align = alClient
      DataSource = dtmUsers.dtsUsrLst
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OddColor = clInfoBk
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 490
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object lblPrompt: TLabel
        Left = 24
        Top = 16
        Width = 86
        Height = 14
        Caption = 'Select usergroup:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object cmbUserGrps: TComboBox
        Left = 128
        Top = 12
        Width = 185
        Height = 22
        ItemHeight = 14
        TabOrder = 0
        OnChange = cmbUserGrpsChange
      end
    end
  end
end
