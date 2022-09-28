object frmDocumentReindex: TfrmDocumentReindex
  Left = 405
  Top = 270
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reindex Document'
  ClientHeight = 201
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    405
    201)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Loan Ref.'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 75
    Height = 13
    Caption = 'Document Type'
  end
  object Label3: TLabel
    Left = 24
    Top = 48
    Width = 62
    Height = 13
    Caption = 'No. of Pages'
  end
  object Bevel1: TBevel
    Left = 16
    Top = 56
    Width = 369
    Height = 50
    Shape = bsBottomLine
  end
  object Label4: TLabel
    Left = 24
    Top = 124
    Width = 54
    Height = 13
    Caption = 'Reindex As'
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 20
    Width = 89
    Height = 21
    Color = clBtnFace
    DataField = 'LoanRef'
    DataSource = dtsDocument
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 68
    Width = 257
    Height = 21
    Color = clBtnFace
    DataField = 'Description'
    DataSource = dtsDocument
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 44
    Width = 89
    Height = 21
    Color = clBtnFace
    DataField = 'Pages'
    DataSource = dtsDocument
    ReadOnly = True
    TabOrder = 2
  end
  object cmdNewDocument: TDBLookupComboBox
    Left = 112
    Top = 120
    Width = 257
    Height = 21
    DataField = 'DocType'
    DataSource = dtsDocument
    KeyField = 'DocType'
    ListField = 'Description'
    ListSource = dtsDocLookup
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 296
    Top = 162
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object btnOK: TButton
    Left = 216
    Top = 162
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 5
  end
  object qryDocument: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DocumentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DocumentID, LD.RefNo AS LoanRef, DC.DocType, DT.Descripti' +
        'on, Pages'
      'FROM dtDocs DC'
      'LEFT JOIN dtDocumentTypes DT ON DC.DocType = DT.DocType'
      'LEFT JOIN lsLoanDetail LD ON DC.LoanID = LD.LoanID'
      'WHERE DocumentID = :DocumentID')
    Left = 280
    Top = 16
    object qryDocumentDocumentID: TAutoIncField
      FieldName = 'DocumentID'
      ReadOnly = True
    end
    object qryDocumentLoanRef: TStringField
      FieldName = 'LoanRef'
      Size = 15
    end
    object qryDocumentDocType: TStringField
      FieldName = 'DocType'
      Size = 5
    end
    object qryDocumentDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object qryDocumentPages: TWordField
      Alignment = taLeftJustify
      FieldName = 'Pages'
    end
  end
  object dtsDocument: TDataSource
    DataSet = qryDocument
    Left = 280
    Top = 32
  end
  object qryDocLookup: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'SELECT DocType, Description'
      'FROM dtDocumentTypes'
      'ORDER BY Description')
    Left = 312
    Top = 16
  end
  object dtsDocLookup: TDataSource
    DataSet = qryDocLookup
    Left = 312
    Top = 32
  end
end
