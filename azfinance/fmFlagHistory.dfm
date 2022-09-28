object frmFlagHistory: TfrmFlagHistory
  Left = 265
  Top = 214
  Width = 490
  Height = 374
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Loan Flags'
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
  OnDestroy = FormDestroy
  DesignSize = (
    482
    340)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 43
    Width = 60
    Height = 13
    Caption = 'Current Flag'
  end
  object Label2: TLabel
    Left = 16
    Top = 17
    Width = 45
    Height = 13
    Caption = 'Category'
  end
  object btnClose: TButton
    Left = 394
    Top = 302
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object edtCategory: TEdit
    Left = 88
    Top = 13
    Width = 299
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 1
  end
  object btnUpdate: TButton
    Left = 394
    Top = 37
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Update'
    TabOrder = 2
    OnClick = btnUpdateClick
  end
  object cmbCurrentFlag: TComboBox
    Left = 88
    Top = 40
    Width = 297
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 3
    OnChange = cmbCurrentFlagChange
  end
  object pcFlags: TPageControl
    Left = 9
    Top = 76
    Width = 465
    Height = 213
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'History'
      object grdFlagHistory: TDBGrid
        Left = 0
        Top = 0
        Width = 457
        Height = 185
        Align = alClient
        DataSource = dtmLoanFlags.dtsFlagHistory
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'FlagCode'
            Title.Caption = 'Code'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateDate'
            Title.Caption = 'Date Updated'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CreateUser'
            Title.Caption = 'Updated By'
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Notes'
      ImageIndex = 1
      object rdtNotes: TRichEdit
        Left = 0
        Top = 28
        Width = 457
        Height = 157
        Align = alClient
        TabOrder = 0
      end
      object CoolBar1: TCoolBar
        Left = 0
        Top = 0
        Width = 457
        Height = 28
        BandBorderStyle = bsNone
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 26
            Width = 457
          end>
        EdgeBorders = []
        object ToolBar1: TToolBar
          Left = 9
          Top = 0
          Width = 444
          Height = 26
          BorderWidth = 1
          ButtonWidth = 77
          Caption = 'ToolBar1'
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Caption = 'Add Notes'
            ImageIndex = 3
            OnClick = ToolButton1Click
          end
          object ToolButton2: TToolButton
            Left = 77
            Top = 0
            Caption = 'Edit Notes'
            ImageIndex = 4
            OnClick = ToolButton2Click
          end
        end
      end
    end
  end
end
