inherited frmTransSetup: TfrmTransSetup
  Tag = 44
  Left = 110
  Top = 254
  Width = 637
  Height = 370
  Caption = 'Transaction setup'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 589
    Top = 45
    Height = 291
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
  inherited pnlMBase: TPanel
    Top = 45
    Width = 589
    Height = 291
    inherited grdBase: TDBGrdClr
      Left = 8
      Top = 0
      Width = 581
      Height = 291
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtsTCodes
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OnDrawColumnCell = grdBaseDrawColumnCell
      OnKeyDown = grdBaseKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'TransCode'
          PickList.Strings = ()
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Code'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          PickList.Strings = ()
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DefaultVal'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Default val.'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GLAccNo'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'GL account'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContraAccNo'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Contra acc.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VatCode'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Vat code'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NotU'
          PickList.Strings = ()
          ReadOnly = True
          Title.Caption = 'N.U.'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserID'
          PickList.Strings = ()
          ReadOnly = True
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateAdded'
          PickList.Strings = ()
          ReadOnly = True
          Title.Caption = 'Date added'
          Width = 65
          Visible = True
        end>
    end
  end
  object pnlTopTrans: TPanel [2]
    Left = 0
    Top = 0
    Width = 629
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object lblTransT: TLabel
      Left = 8
      Top = 16
      Width = 79
      Height = 13
      Caption = 'Transaction type'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblDrCr: TLabel
      Left = 399
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Debit / Credit'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object imgX: TImage
      Left = 472
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
      Left = 96
      Top = 12
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
  object dtsTCodes: TDataSource
    DataSet = dtmTransSetup.qryTCodes
    Left = 64
    Top = 120
  end
end
