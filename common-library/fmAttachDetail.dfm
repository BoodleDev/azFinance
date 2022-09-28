object frmAttachDetail: TfrmAttachDetail
  Left = 274
  Top = 257
  Width = 442
  Height = 269
  BorderIcons = [biSystemMenu]
  Caption = 'Attachment'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 50
    Height = 13
    Caption = 'Reference'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 80
    Height = 13
    Caption = 'Document Name'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 42
    Height = 13
    Caption = 'Category'
  end
  object Label4: TLabel
    Left = 24
    Top = 137
    Width = 97
    Height = 13
    Caption = 'Filename / Hyperlink'
  end
  object btnOpenFile: TSpeedButton
    Left = 395
    Top = 151
    Width = 23
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '...'
    OnClick = btnOpenFileClick
  end
  object edtRefNo: TDBEdit
    Left = 24
    Top = 32
    Width = 193
    Height = 21
    DataField = 'RefNo'
    DataSource = dtmNotes.dtsAttach
    TabOrder = 0
  end
  object edtDocName: TDBEdit
    Left = 24
    Top = 72
    Width = 193
    Height = 21
    DataField = 'DocName'
    DataSource = dtmNotes.dtsAttach
    TabOrder = 1
  end
  object cmbCategory: TDBLookupComboBox
    Left = 24
    Top = 112
    Width = 193
    Height = 21
    DataField = 'DocType'
    DataSource = dtmNotes.dtsAttach
    KeyField = 'TypeKey'
    ListField = 'Description'
    ListSource = dtmNotes.dtsLUDocType
    TabOrder = 2
  end
  object edtFilename: TDBEdit
    Left = 24
    Top = 152
    Width = 368
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Hyperlink'
    DataSource = dtmNotes.dtsAttach
    TabOrder = 3
  end
  object btnSave: TButton
    Left = 263
    Top = 192
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Save'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 343
    Top = 192
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object dlgFile: TOpenDialog
    Left = 256
    Top = 64
  end
end
