object frmPreviewDoc: TfrmPreviewDoc
  Left = 180
  Top = 111
  Width = 696
  Height = 480
  Caption = 'Preview Documents'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 169
    Width = 688
    Height = 5
    Cursor = crVSplit
    Align = alTop
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      688
      169)
    object grdDocuments: TDBGrid
      Left = 7
      Top = 8
      Width = 673
      Height = 158
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtsDocuments
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Description'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Pages'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IndexDate'
          Title.Alignment = taCenter
          Title.Caption = 'Date Received'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IndexUser'
          Title.Caption = 'Received By'
          Width = 80
          Visible = True
        end>
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 174
    Width = 688
    Height = 272
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 688
      Height = 234
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        688
        234)
      object grpPreview: TGroupBox
        Left = 8
        Top = 1
        Width = 675
        Height = 228
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Preview'
        TabOrder = 0
        DesignSize = (
          675
          228)
        object pnlPreview: TPanel
          Left = 10
          Top = 15
          Width = 655
          Height = 203
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
        end
      end
    end
    object pnlTools: TPanel
      Left = 0
      Top = 234
      Width = 688
      Height = 38
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        688
        38)
      object btnOK: TButton
        Left = 525
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'OK'
        ModalResult = 1
        TabOrder = 0
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 605
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Cancel'
        ModalResult = 2
        TabOrder = 1
      end
    end
  end
  object dsDocuments: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsDocumentsAfterOpen
    AfterScroll = dsDocumentsAfterScroll
    CommandText = 
      'SELECT DocumentID, IDNumber, DC.DocType, Description, LoanID, Pa' +
      'ges, Authorised,'#13#10'ReplacedBy, IndexDate, IndexUser'#13#10'FROM dtDocum' +
      'ents DC'#13#10'LEFT JOIN dtDocumentTypes DT ON DC.DocType = DT.DocType' +
      #13#10'WHERE LoanID = :LoanID'#13#10'AND ReplacedBy = 0'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 552
    Top = 248
  end
  object dtsDocuments: TDataSource
    DataSet = dsDocuments
    Left = 552
    Top = 264
  end
end
