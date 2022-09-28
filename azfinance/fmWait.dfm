object frmWait: TfrmWait
  Left = 471
  Top = 258
  BorderStyle = bsToolWindow
  Caption = 'Please Wait....'
  ClientHeight = 93
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  DesignSize = (
    304
    93)
  PixelsPerInch = 96
  TextHeight = 13
  object lblDisplayMessage: TLabel
    Left = 16
    Top = 24
    Width = 55
    Height = 14
    Caption = 'LOADING...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btnOK: TButton
    Left = 114
    Top = 56
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'OK'
    Enabled = False
    ModalResult = 1
    TabOrder = 0
    OnClick = btnOKClick
  end
end
