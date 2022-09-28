object frmLookupLoan: TfrmLookupLoan
  Left = 858
  Top = 220
  Width = 704
  Height = 373
  Caption = 'Find Loan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 22
      Width = 34
      Height = 13
      Caption = 'Search'
    end
    object Label2: TLabel
      Left = 248
      Top = 22
      Width = 51
      Height = 13
      Caption = 'Search On'
    end
    object edtSearch: TEdit
      Left = 58
      Top = 18
      Width = 169
      Height = 21
      TabOrder = 0
      OnChange = edtSearchChange
    end
    object cmbSearch: TComboBox
      Left = 307
      Top = 18
      Width = 169
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnClick = cmbSearchClick
      OnSelect = cmbSearchSelect
      Items.Strings = (
        'Account No.'
        'Client Code'
        'ID Number'
        'Surname'
        'Tel.No.'
        'Purchase ID')
    end
  end
  object grdSearch: TDBStyleGrid
    Left = 0
    Top = 57
    Width = 688
    Height = 236
    Align = alClient
    DataSource = dtmMain.dtsLoan
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = grdSearchDrawColumnCell
    OnDblClick = grdSearchDblClick
    AllowSort = True
    ColumnsResize = False
    ColumnsMove = False
    Columns = <
      item
        Expanded = False
        FieldName = 'LoanID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'AccountNo'
        Title.Caption = 'Account No.'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDNumber'
        Title.Caption = 'ID Number'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Surname'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClientCode'
        Title.Caption = 'Client Code'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanType'
        Title.Caption = 'Loan Type'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanStatus'
        Title.Caption = 'Status'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StatusColor'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TelNo'
        Visible = True
      end>
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 293
    Width = 688
    Height = 42
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      688
      42)
    object lblLimit: TLabel
      Left = 16
      Top = 15
      Width = 98
      Height = 13
      Caption = 'Limited to 50 Results'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object btnCancel: TButton
      Left = 610
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 530
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'OK'
      Default = True
      Enabled = False
      ModalResult = 1
      TabOrder = 1
      OnClick = btnOKClick
    end
  end
  object tmrSearch: TTimer
    Enabled = False
    Interval = 600
    OnTimer = tmrSearchTimer
    Left = 264
    Top = 120
  end
end
