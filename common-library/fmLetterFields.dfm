object frmLetterFields: TfrmLetterFields
  Left = 620
  Top = 216
  Width = 320
  Height = 379
  Caption = 'Available Fields'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grdCodes: TDBGrdClr
    Left = 0
    Top = 25
    Width = 312
    Height = 320
    Align = alClient
    DataSource = dtmLoadLet.dtsLetterCodes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = grdCodesDblClick
    OddColor = clInfoBk
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 190
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object chkTop: TCheckBox
      Left = 16
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Stay on top'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkTopClick
    end
  end
end
