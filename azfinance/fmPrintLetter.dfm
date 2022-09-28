object frmPrintLetter: TfrmPrintLetter
  Left = 570
  Top = 237
  Width = 310
  Height = 257
  BorderIcons = [biSystemMenu]
  Caption = 'Print Letter'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    294
    219)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 61
    Height = 13
    Caption = 'Select Letter'
  end
  object Label2: TLabel
    Left = 8
    Top = 10
    Width = 43
    Height = 13
    Caption = 'Loan Ref'
  end
  object lstLetter: TListBox
    Left = 8
    Top = 56
    Width = 279
    Height = 126
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    Items.Strings = (
      'Employment Letter'
      'Paid-up Letter')
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 132
    Top = 189
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Enabled = False
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 212
    Top = 189
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object cmbLoanRef: TComboBox
    Left = 61
    Top = 7
    Width = 228
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnChange = cmbLoanRefChange
  end
  object ExportData1: TExportData
    ShowMessageComplete = False
    Destination = 'C:\Program files\Accounting Zone\Letters\Letters.csv'
    ExportDataSet = dsPrintData
    RunExport = False
    DoExportLine = False
    VisibleFldOnly = False
    Left = 120
    Top = 88
  end
  object dsPrintData: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT RefNo AS LoanRef, '#13#10'LEFT(ED.Name,1) + LEFT(ISNULL(PA.Seco' +
      'ndName,'#39#39'),1) AS Initials,'#13#10'ED.RegNo AS IDNumber, ED.Name AS Fir' +
      'stName, ED.Name2 AS LastName, SecondName,'#13#10'CASE Gender WHEN '#39'M'#39' ' +
      'THEN '#39'Sir'#39' WHEN '#39'F'#39' THEN '#39'Madam'#39' ELSE '#39'Sir / Madam'#39' END AS SirMa' +
      'dam,'#13#10'ISNULL(HA.Address1,'#39#39') AS HomeAddress1, ISNULL(HA.Address2' +
      ','#39#39') AS HomeAddress2, '#13#10'ISNULL(HA.Address3,'#39#39') AS HomeAddress3, ' +
      'ISNULL(HA.Address4,'#39#39') AS HomeAddress4, HA.AddressCode AS HomeAd' +
      'dressCode,'#13#10'ED.RefFld1 AS EmployeeNo'#13#10'FROM lsLoanDetail LD'#13#10'LEFT' +
      ' JOIN EntityData ED ON LD.EntityID = ED.EntityID'#13#10'LEFT JOIN lsEn' +
      'tPsnAdd PA ON ED.EntityID = PA.EntityID'#13#10'LEFT JOIN Address HA ON' +
      ' ED.EntityID= HA.EntityID AND HA.AddressType = 2'#13#10'WHERE LD.LoanI' +
      'D = :LoanID'
    DataSource = dtsLoans
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 160
    Top = 88
  end
  object dtsPrintData: TDataSource
    DataSet = dsPrintData
    Left = 160
    Top = 104
  end
  object dsLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT RefNo, LoanID, EntityID'#13#10'FROM lsLoanDetail'#13#10'WHERE EntityI' +
      'D = :EntityID'#13#10'AND Status >= 0'#13#10'AND Status NOT IN (15,10)'#13#10'ORDER' +
      ' BY LoanID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 216
    Top = 96
  end
  object dtsLoans: TDataSource
    DataSet = dsLoans
    Left = 216
    Top = 112
  end
  object dsFilePath: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 'SELECT value FROM Config '#13#10'WHERE Name = '#39'AZ_MergePath'#39#13#10
    Parameters = <>
    Left = 112
    Top = 136
  end
end
