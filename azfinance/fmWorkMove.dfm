object frmWorkMove: TfrmWorkMove
  Left = 554
  Top = 369
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Redirect Account'
  ClientHeight = 225
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    346
    225)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 60
    Height = 13
    Caption = 'Account No.'
  end
  object Label2: TLabel
    Left = 16
    Top = 44
    Width = 75
    Height = 13
    Caption = 'Current Process'
  end
  object Label3: TLabel
    Left = 16
    Top = 68
    Width = 63
    Height = 13
    Caption = 'New Process'
  end
  object edtAccountNo: TEdit
    Left = 96
    Top = 12
    Width = 145
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 3
  end
  object edtCurrentProcess: TEdit
    Left = 96
    Top = 40
    Width = 233
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 4
  end
  object btnCancel: TButton
    Left = 255
    Top = 190
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 177
    Top = 190
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object lstNewProcess: TDBLookupListBox
    Left = 96
    Top = 68
    Width = 233
    Height = 108
    KeyField = 'ProcessID'
    ListField = 'Description'
    ListSource = dtmWorkFlow.dtsRedirectProcess
    TabOrder = 0
  end
end
