object frmImportTrans: TfrmImportTrans
  Left = 437
  Top = 601
  Width = 415
  Height = 414
  Caption = 'Import Transactions'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    399
    376)
  PixelsPerInch = 96
  TextHeight = 13
  object pcImport: TPageControl
    Left = 8
    Top = 8
    Width = 388
    Height = 363
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Import Fields'
      DesignSize = (
        380
        335)
      object Label1: TLabel
        Left = 9
        Top = 9
        Width = 91
        Height = 14
        Caption = 'Default transaction'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object btnOK: TBitBtn
        Left = 297
        Top = 24
        Width = 75
        Height = 25
        Caption = 'OK'
        ModalResult = 1
        TabOrder = 0
        OnClick = btnOKClick
      end
      object btnCancel: TBitBtn
        Left = 297
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Cancel'
        ModalResult = 2
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 48
        Width = 281
        Height = 286
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dtmBatchTrans.dtsImportMap
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ImportField'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DBLookup'
            Width = 110
            Visible = True
          end>
      end
      object cmbTrans: TComboBox
        Left = 8
        Top = 24
        Width = 282
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
      end
      object chkHeaders: TCheckBox
        Left = 138
        Top = 3
        Width = 145
        Height = 17
        Caption = 'First row is column headers'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = chkHeadersClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Errors'
      ImageIndex = 1
      DesignSize = (
        380
        335)
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 377
        Height = 329
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtmBatchTrans.dtsImportErrors
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
end
