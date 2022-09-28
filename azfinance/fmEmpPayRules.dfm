object frmEmpPayRules: TfrmEmpPayRules
  Left = 295
  Top = 229
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Employer'#39's Pay Rules'
  ClientHeight = 208
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  DesignSize = (
    521
    208)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 113
    Height = 13
    Caption = 'Please select a pay rule'
  end
  object lstPayRules: TDBLookupListBox
    Left = 16
    Top = 24
    Width = 405
    Height = 173
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'PayRuleID'
    DataSource = dtmEntityLoan.dtsPersonLoan
    KeyField = 'PayRuleID'
    ListField = 'PayRule'
    ListSource = dtmEntityLoan.dtsPayRules
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 431
    Top = 136
    Width = 82
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 431
    Top = 168
    Width = 82
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
