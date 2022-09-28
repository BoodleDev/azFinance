object frmAdvancedFilterAdmin: TfrmAdvancedFilterAdmin
  Left = 0
  Top = 0
  Caption = 'Advanced Filter Admin'
  ClientHeight = 471
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    886
    471)
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 8
    Top = 8
    Width = 466
    Height = 455
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'SQLCommand'
    DataSource = dtmAdvancedFilter.dtsAdminFilter
    TabOrder = 0
    OnKeyDown = DBMemo1KeyDown
  end
  object DBMemo2: TDBMemo
    Left = 480
    Top = 295
    Width = 398
    Height = 168
    Anchors = [akRight, akBottom]
    DataField = 'LookupValues'
    DataSource = dtmAdvancedFilter.dtsAdminFields
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 480
    Top = 8
    Width = 398
    Height = 281
    Anchors = [akTop, akRight, akBottom]
    DataSource = dtmAdvancedFilter.dtsAdminFields
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FieldNo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FieldName'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FieldCaption'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FieldType'
        PickList.Strings = (
          'STRING'
          'DATE'
          'MONEY')
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lookup'
        Visible = True
      end>
  end
end
