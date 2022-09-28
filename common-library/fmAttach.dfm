inherited frmAttach: TfrmAttach
  Tag = 12
  Left = 193
  Top = 56
  Width = 595
  Height = 419
  Caption = 'Attachments'
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited tlbDBBase: TToolBar
    Left = 546
    Width = 41
    Height = 390
    ButtonHeight = 37
    ButtonWidth = 41
    inherited btnNew: TToolButton
      Top = 37
    end
    inherited btnAmend: TToolButton
      Top = 74
    end
    inherited btnSave: TToolButton
      Top = 111
    end
    inherited btnCancel: TToolButton
      Top = 148
    end
    inherited btnDelete: TToolButton
      Top = 185
      Wrap = True
    end
    object btnFilter: TToolButton
      Left = 0
      Top = 222
      Caption = 'Filter'
      ImageIndex = 17
      OnClick = btnFilterClick
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 499
    Height = 390
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object grdAttach: TDBGrdClr
      Left = 0
      Top = 235
      Width = 499
      Height = 155
      Align = alClient
      DataSource = dtmAttach.dtsAttach
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'RefNo'
          Title.Caption = 'Ref no'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FileName'
          Title.Caption = 'File name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateAdded'
          Title.Caption = 'Date added'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserID'
          Title.Caption = 'Added by'
          Visible = True
        end>
    end
    object pnlTop: TPanel
      Left = 0
      Top = 90
      Width = 499
      Height = 145
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object lblTypeID: TLabel
        Left = 8
        Top = 34
        Width = 31
        Height = 14
        Caption = 'Link to'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblDocType: TLabel
        Left = 232
        Top = 8
        Width = 72
        Height = 14
        Caption = 'Document type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblMasterID: TLabel
        Left = 232
        Top = 34
        Width = 75
        Height = 14
        Caption = 'Link description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblRefNo: TLabel
        Left = 8
        Top = 8
        Width = 32
        Height = 14
        Caption = 'Ref no'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblDescription: TLabel
        Left = 8
        Top = 62
        Width = 54
        Height = 14
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblDocument: TLabel
        Left = 8
        Top = 123
        Width = 48
        Height = 14
        Caption = 'Document'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnDocument: TSpeedButton
        Left = 72
        Top = 120
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          080000000000000100000000000000000000000100000001000000000000AADD
          EE007799BB00CCEEEE00BBCCEE0099AACC0088AAAA0088AACC00CCDDEE002222
          330088AABB007777AA006688AA0077889900667799007788BB007799AA007788
          AA0055668800556699006677AA00557799006677BB006699BB00443366008899
          BB00668899005555770044556600333366006677880044447700445577005555
          88006666AA003344550044446600444455006666990033335500222244004466
          77006688BB003344440055778800223344002222220066666600444444003344
          660044335500FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000033332F30302F
          2F3333333333333333333323003131282E302F33333333333333332332323223
          20092E302F3333333333331D31313124311F202800302F333333332327272709
          27201B2909272E302F33331D272727272D2823210913151B2E2F33232727272B
          27231B09092C26151433331D2727271D231F2013092829142A33332324242425
          241C2112261514091233331D00001E1F201F202109221A140A3333330301191A
          1B1C121209150E0C070C3333333303010A0B1213091415161718333333333333
          0301050D090E0F101133333333333333330809090A0B0C020A33333333333333
          3333333303040506073333333333333333333333333301010233}
        OnClick = btnDocumentClick
      end
      object txtHyperlink: TDBText
        Left = 104
        Top = 123
        Width = 56
        Height = 14
        AutoSize = True
        DataField = 'Hyperlink'
        DataSource = dtmAttach.dtsAttach
      end
      object cmbDocType: TDBLookupComboBox
        Left = 320
        Top = 4
        Width = 177
        Height = 22
        DataField = 'DocType'
        DataSource = dtmAttach.dtsAttach
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmAttach.dtsDocTypes
        TabOrder = 1
      end
      object cmbMasterID: TDBLookupComboBox
        Left = 320
        Top = 30
        Width = 177
        Height = 22
        DataField = 'MasterID'
        DataSource = dtmAttach.dtsAttach
        KeyField = 'MasterID'
        ListField = 'MasterName'
        ListSource = dtmAttach.dtsEntity
        TabOrder = 3
      end
      object edtRefNo: TDBEdit
        Left = 72
        Top = 4
        Width = 81
        Height = 22
        DataField = 'RefNo'
        DataSource = dtmAttach.dtsAttach
        TabOrder = 0
      end
      object cmbTypeID: TComboBox
        Left = 72
        Top = 30
        Width = 137
        Height = 22
        ItemHeight = 14
        TabOrder = 2
        OnChange = cmbTypeIDChange
        Items.Strings = (
          'Entity'
          'Note'
          'Loan'
          'Project')
      end
      object edtTypeID: TDBEdit
        Left = 192
        Top = 4
        Width = 25
        Height = 22
        DataField = 'TypeID'
        DataSource = dtmAttach.dtsAttach
        TabOrder = 5
        Visible = False
      end
      object edtRecID: TDBEdit
        Left = 160
        Top = 4
        Width = 25
        Height = 22
        DataField = 'RecID'
        DataSource = dtmAttach.dtsAttach
        TabOrder = 6
        Visible = False
        OnChange = edtRecIDChange
      end
      object memDescription: TDBMemo
        Left = 72
        Top = 56
        Width = 425
        Height = 57
        DataField = 'Description'
        DataSource = dtmAttach.dtsAttach
        TabOrder = 4
      end
    end
    object pnlFilter: TPanel
      Left = 0
      Top = 0
      Width = 499
      Height = 90
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      Visible = False
      object GetEdtFilter: TGetEdtFilter
        Left = 384
        Top = 16
        Width = 57
        Height = 14
        Caption = 'GetEditFilter'
        Visible = False
        Active = False
        feType = tqAnd
      end
      object lblFDescription: TLabel
        Left = 256
        Top = 61
        Width = 54
        Height = 14
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object radRefNo: TRadioButton
        Left = 8
        Top = 8
        Width = 65
        Height = 17
        Caption = 'Ref no'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = radRefNoClick
      end
      object radTypeID: TRadioButton
        Left = 8
        Top = 60
        Width = 65
        Height = 17
        Caption = 'Link type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = radTypeIDClick
      end
      object radDocType: TRadioButton
        Left = 8
        Top = 34
        Width = 97
        Height = 17
        Caption = 'Document type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = radDocTypeClick
      end
      object edfRefNo: TEdtFilter
        Left = 112
        Top = 5
        Width = 89
        Height = 22
        TabOrder = 3
        feDataField = 'RefNo'
        feOperator = '='
        feType = tqStr
        feActive = False
      end
      object cmbFTypeID: TComboBox
        Left = 112
        Top = 57
        Width = 121
        Height = 22
        ItemHeight = 14
        TabOrder = 4
        OnChange = cmbFTypeIDChange
        Items.Strings = (
          'Entity'
          'Note'
          'Loan'
          'Project')
      end
      object edfDocType: TEdtFilter
        Left = 280
        Top = 32
        Width = 25
        Height = 22
        TabOrder = 5
        Visible = False
        feDataField = 'DocType'
        feOperator = '='
        feType = tqInt
        feActive = False
      end
      object edfMasterID: TEdtFilter
        Left = 344
        Top = 32
        Width = 25
        Height = 22
        TabOrder = 6
        Visible = False
        feDataField = 'MasterID'
        feOperator = '='
        feType = tqInt
        feActive = False
      end
      object edfTypeID: TEdtFilter
        Left = 312
        Top = 32
        Width = 25
        Height = 22
        TabOrder = 7
        Visible = False
        feDataField = 'TypeID'
        feOperator = '='
        feType = tqInt
        feActive = False
      end
      object cmbFDocType: TComboBox
        Left = 112
        Top = 31
        Width = 161
        Height = 22
        ItemHeight = 14
        TabOrder = 8
        OnChange = cmbFDocTypeChange
      end
      object cmbFMasterID: TComboBox
        Left = 320
        Top = 56
        Width = 177
        Height = 22
        ItemHeight = 14
        TabOrder = 9
        OnChange = cmbFMasterIDChange
      end
    end
  end
  object tlbFilter: TToolBar [2]
    Left = 499
    Top = 0
    Width = 47
    Height = 390
    Align = alRight
    ButtonHeight = 37
    ButtonWidth = 44
    Caption = 'tlbFilter'
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ShowCaptions = True
    TabOrder = 2
    Visible = False
    object btnClose: TToolButton
      Left = 0
      Top = 0
      Caption = 'Close'
      ImageIndex = 29
      Wrap = True
      OnClick = btnCloseClick
    end
    object btnDo: TToolButton
      Left = 0
      Top = 37
      Caption = 'Do filter'
      ImageIndex = 14
      OnClick = btnDoClick
    end
  end
  inherited ppmDBBase: TPopupMenu
    Left = 496
    Top = 272
  end
  object odlAttach: TOpenDialog
    Left = 496
    Top = 312
  end
end
