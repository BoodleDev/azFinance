object frmEditNotes: TfrmEditNotes
  Left = 435
  Top = 275
  Width = 489
  Height = 311
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Amend Notes'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    481
    277)
  PixelsPerInch = 96
  TextHeight = 13
  object memNotes: TMemo
    Left = 8
    Top = 128
    Width = 467
    Height = 91
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
  end
  object DBStyleGrid1: TDBStyleGrid
    Left = 8
    Top = 10
    Width = 467
    Height = 110
    Anchors = [akLeft, akTop, akRight]
    DataSource = dtsEditNotes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AllowSort = False
    ColumnsResize = False
    ColumnsMove = False
    Columns = <
      item
        Expanded = False
        FieldName = 'NoteTime'
        Title.Caption = 'Time'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preview'
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 258
    Width = 481
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object btnOK: TButton
    Left = 313
    Top = 225
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 393
    Top = 225
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object edtNoteID: TDBEdit
    Left = 280
    Top = 48
    Width = 121
    Height = 21
    DataField = 'NoteID'
    DataSource = dtsEditNotes
    TabOrder = 5
    Visible = False
    OnChange = edtNoteIDChange
  end
  object dtsEditNotes: TDataSource
    Left = 104
    Top = 80
  end
end
