inherited frmGTAppSet: TfrmGTAppSet
  Tag = 28
  Left = 153
  Top = 109
  Width = 637
  Height = 308
  Caption = 'GT application setup'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 583
    Top = 20
    Width = 46
    Height = 254
    ButtonWidth = 46
    inherited btnNew: TToolButton
      Visible = False
    end
    inherited btnDelete: TToolButton
      Wrap = True
      Visible = False
    end
    object btnLUAcc: TToolButton
      Left = 0
      Top = 216
      Caption = 'Acc. LU'
      ImageIndex = 14
      OnClick = btnLUAccClick
    end
  end
  inherited pnlMBase: TPanel
    Top = 20
    Width = 583
    Height = 254
    inherited grdBase: TDBGrdClr
      Top = 0
      Width = 583
      Height = 254
      Align = alClient
      DataSource = dtsGTApps
      OnEditButtonClick = btnLUAccClick
      OnKeyDown = grdBaseKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Application'
          PickList.Strings = ()
          ReadOnly = True
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RangeFrom'
          PickList.Strings = ()
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'TR. from'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RangeTo'
          PickList.Strings = ()
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'TR. to'
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CtrlAcc'
          PickList.Strings = ()
          Title.Alignment = taRightJustify
          Title.Caption = 'Control account'
          Width = 97
          Visible = True
        end>
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 629
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
  end
  object dtsGTApps: TDataSource
    Left = 144
    Top = 56
  end
end
