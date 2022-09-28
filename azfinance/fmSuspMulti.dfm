object frmSuspMulti: TfrmSuspMulti
  Left = 241
  Top = 284
  Width = 424
  Height = 276
  BorderIcons = [biMinimize]
  Caption = 'Multi-Suspense Allocation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grdMain: TDBGrid
    Left = 8
    Top = 8
    Width = 318
    Height = 225
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmBatchSusp.dtsMultiSusp
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = grdMainCellClick
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'LoanID'
        Title.Caption = 'Loan ID'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EntCode'
        Title.Caption = 'Entity Code'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Width = 95
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 333
    Top = 176
    Width = 75
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 333
    Top = 208
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
end
