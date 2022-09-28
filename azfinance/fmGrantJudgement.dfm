object frmGrantJudgement: TfrmGrantJudgement
  Left = 160
  Top = 85
  Width = 896
  Height = 640
  Caption = 'Grant Judgement'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 185
    Width = 888
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 888
    Height = 185
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      888
      185)
    object Label4: TLabel
      Left = 9
      Top = 41
      Width = 45
      Height = 13
      Caption = 'Find Text'
    end
    object Label5: TLabel
      Left = 224
      Top = 41
      Width = 54
      Height = 13
      Caption = 'Find in field'
    end
    object grdForJudgement: TDBGrid
      Left = 8
      Top = 62
      Width = 867
      Height = 120
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmLegal.dtsForJudgment
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = grdForJudgementDblClick
      OnTitleClick = grdForJudgementTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'LoanID'
          Title.Caption = 'Loan ID'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RefNo'
          Title.Caption = 'Loan Ref.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntCode'
          Title.Caption = 'Client Code'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name2'
          Title.Caption = 'Surname'
          Width = 170
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HODate'
          Title.Alignment = taCenter
          Title.Caption = 'Handover Date'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HOAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Handover Amount'
          Width = 110
          Visible = True
        end>
    end
    object edtFind: TEdit
      Left = 60
      Top = 37
      Width = 126
      Height = 21
      TabOrder = 1
      OnChange = edtFindChange
    end
    object cmbField: TComboBox
      Left = 283
      Top = 37
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = cmbFieldChange
      Items.Strings = (
        'Loan ID'
        'Loan Ref.'
        'Client Code'
        'Name'
        'Surname'
        'Handover Date'
        'Handover Amount')
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 188
    Width = 888
    Height = 418
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      888
      418)
    object pnlAddRemove: TPanel
      Left = 322
      Top = 2
      Width = 245
      Height = 34
      Anchors = [akTop]
      TabOrder = 0
      object btnRemove: TBitBtn
        Left = 125
        Top = 4
        Width = 113
        Height = 25
        Caption = 'Remove'
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnAdd: TBitBtn
        Left = 7
        Top = 4
        Width = 113
        Height = 25
        Caption = 'Add'
        TabOrder = 1
        OnClick = btnAddClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 37
      Width = 867
      Height = 68
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Judgement Defaults'
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 79
        Height = 13
        Caption = 'Judgement Date'
      end
      object Label2: TLabel
        Left = 200
        Top = 32
        Width = 95
        Height = 13
        Caption = '1st Instalment Date'
      end
      object Label3: TLabel
        Left = 405
        Top = 32
        Width = 86
        Height = 13
        Caption = 'Magistrates Court'
      end
      object dtpJDDate: TDateTimePicker
        Left = 91
        Top = 28
        Width = 100
        Height = 21
        Date = 38940.000000000000000000
        Time = 38940.000000000000000000
        ShowCheckbox = True
        TabOrder = 0
      end
      object dtpInstalDate: TDateTimePicker
        Left = 297
        Top = 28
        Width = 100
        Height = 21
        Date = 38940.000000000000000000
        Time = 38940.000000000000000000
        ShowCheckbox = True
        TabOrder = 1
      end
      object cmbMagistrate: TComboBox
        Left = 495
        Top = 28
        Width = 153
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
      end
      object chkOverwrite: TCheckBox
        Left = 655
        Top = 30
        Width = 170
        Height = 17
        Caption = 'Overwrite existing information'
        TabOrder = 3
      end
    end
    object grdBatch: TDBGrid
      Left = 8
      Top = 137
      Width = 867
      Height = 264
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmLegal.dtsJudgementBatch
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = grdBatchDblClick
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'LoanID'
          Title.Caption = 'Loan ID'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HODate'
          Title.Alignment = taCenter
          Title.Caption = 'Handover Date'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HOAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Handover Amount'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JDAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Judgment Amount'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JDInstalment'
          Title.Alignment = taRightJustify
          Title.Caption = 'Instalment'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'JDDate'
          Title.Alignment = taCenter
          Title.Caption = 'Judgement Date'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FirstInstalDate'
          Title.Alignment = taCenter
          Title.Caption = '1st Instalment Date'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CaseNumber'
          Title.Caption = 'Case No.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sMagistrate'
          Title.Caption = 'Magistrates Court'
          Width = 100
          Visible = True
        end>
    end
    object CoolBar1: TCoolBar
      Left = 8
      Top = 108
      Width = 867
      Height = 30
      Align = alNone
      Anchors = [akLeft, akTop, akRight]
      BandBorderStyle = bsNone
      Bands = <
        item
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 26
          Width = 863
        end>
      object ToolBar1: TToolBar
        Left = 9
        Top = 0
        Width = 850
        Height = 26
        BorderWidth = 1
        ButtonWidth = 125
        Caption = 'ToolBar1'
        EdgeBorders = []
        Flat = True
        Images = dtmMain.imglstMain
        List = True
        ShowCaptions = True
        TabOrder = 0
        object btnJudgementDetail: TToolButton
          Left = 0
          Top = 0
          AutoSize = True
          Caption = 'Judgement Details'
          ImageIndex = 41
          OnClick = btnJudgementDetailClick
        end
        object ToolButton1: TToolButton
          Left = 119
          Top = 0
          Width = 8
          Caption = 'ToolButton1'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object btnProcess: TToolButton
          Left = 127
          Top = 0
          AutoSize = True
          Caption = 'Process Judgements'
          ImageIndex = 42
          OnClick = btnProcessClick
        end
      end
    end
  end
end
