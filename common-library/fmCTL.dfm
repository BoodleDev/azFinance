inherited frmCodeTable: TfrmCodeTable
  Tag = 42
  Left = 349
  Top = 244
  Width = 533
  Height = 387
  Caption = 'Code Table'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 485
    Top = 33
    Height = 320
    inherited btnDelete: TToolButton
      Wrap = True
      Visible = False
    end
    object btnNU: TToolButton
      Left = 0
      Top = 216
      Caption = 'N.U.'
      ImageIndex = 7
      OnClick = btnNUClick
    end
  end
  object pnlTop: TPanel [1]
    Left = 0
    Top = 0
    Width = 525
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object lblGrp: TLabel
      Left = 8
      Top = 10
      Width = 116
      Height = 14
      Caption = 'Select Group / Category'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object imgX: TImage
      Left = 448
      Top = 15
      Width = 13
      Height = 13
      AutoSize = True
      Picture.Data = {
        07544269746D61703E020000424D3E0200000000000036000000280000000D00
        00000D000000010018000000000008020000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF80808080808080808080808080808080808080
        8080808080808080808080808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        FFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFF0000FF0000FF
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFFFF0000FF0000FF00
        00FF0000FFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFF808080FFFF
        FF00FFFFFF808080FFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFF0000FF0000FF
        FFFFFF808080FFFFFF00FFFFFF808080FFFFFF0000FF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFF0000FFFFFFFF808080FFFFFF00FFFFFF808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF00FFFFFF808080
        808080808080808080808080808080808080808080808080808080808080FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Visible = False
    end
    object cbxOptions: TComboBox
      Left = 130
      Top = 6
      Width = 297
      Height = 21
      Style = csDropDownList
      DropDownCount = 15
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
      OnChange = cbxOptionsChange
      Items.Strings = (
        'Company '
        'Person')
    end
  end
  inherited pnlMBase: TPanel
    Top = 33
    Width = 485
    Height = 320
    inherited grdBase: TDBGrdClr
      Left = 8
      Top = 0
      Width = 477
      Height = 320
      Align = alClient
      DataSource = dtsCodeTbl
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OnDrawColumnCell = grdBaseDrawColumnCell
      OnKeyDown = grdBaseKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'TypeKey'
          ReadOnly = True
          Title.Caption = 'Code no.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Description'
          Width = 241
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NotU'
          ReadOnly = True
          Title.Caption = 'N.U.'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserID'
          ReadOnly = True
          Title.Caption = 'User ID'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateAdded'
          ReadOnly = True
          Title.Caption = 'Date added'
          Width = 70
          Visible = True
        end>
    end
    object pnlL: TPanel
      Left = 0
      Top = 0
      Width = 8
      Height = 320
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
    end
  end
  object dtsCodeTbl: TDataSource
    DataSet = dtmCodeTbl.qryCodeTbl
    Left = 56
    Top = 96
  end
end
