object frmWorkAddRequest: TfrmWorkAddRequest
  Left = 610
  Top = 284
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Add Request'
  ClientHeight = 213
  ClientWidth = 371
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
  DesignSize = (
    371
    213)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 16
    Width = 60
    Height = 13
    Caption = 'Account No.'
  end
  object Label2: TLabel
    Left = 18
    Top = 46
    Width = 24
    Height = 13
    Caption = 'Type'
  end
  object Label3: TLabel
    Left = 18
    Top = 76
    Width = 23
    Height = 13
    Caption = 'Note'
  end
  object cmbRequestType: TDBLookupComboBox
    Left = 88
    Top = 42
    Width = 169
    Height = 21
    KeyField = 'RequestTypeID'
    ListField = 'Description'
    ListSource = dtmWorkFlow.dtsRequestTypes
    TabOrder = 4
    OnCloseUp = cmbRequestTypeCloseUp
  end
  object btnCancel: TButton
    Left = 285
    Top = 176
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 205
    Top = 176
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object memNote: TMemo
    Left = 88
    Top = 72
    Width = 265
    Height = 89
    TabOrder = 2
    OnChange = memNoteChange
  end
  object edtAccountNo: TEdit
    Left = 88
    Top = 12
    Width = 169
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 3
  end
end
