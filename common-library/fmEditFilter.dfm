object frmEditFilter: TfrmEditFilter
  Left = 368
  Top = 197
  Width = 673
  Height = 360
  Caption = 'Edit Filter'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lvwFilter: TListView
    Left = 0
    Top = 27
    Width = 665
    Height = 138
    Align = alClient
    Columns = <
      item
        Caption = 'Filter By'
        Width = 150
      end
      item
        Caption = 'Condition'
        Width = 150
      end
      item
        Caption = 'Value'
        Width = 200
      end
      item
        Caption = 'Group'
      end
      item
        Caption = 'Group Type'
        Width = 80
      end>
    MultiSelect = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnChange = lvwFilterChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 165
    Width = 665
    Height = 120
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Filter By'
    end
    object Label2: TLabel
      Left = 200
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Condition'
    end
    object Label3: TLabel
      Left = 344
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Value'
    end
    object lblAnd: TLabel
      Left = 346
      Top = 56
      Width = 18
      Height = 13
      Caption = 'and'
    end
    object lstLookup: TCheckListBox
      Left = 344
      Top = 32
      Width = 217
      Height = 81
      ItemHeight = 13
      PopupMenu = ppmSelectClear
      TabOrder = 6
    end
    object cmbField: TComboBox
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cmbFieldChange
    end
    object cmbCondition: TComboBox
      Left = 200
      Top = 32
      Width = 137
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cmbConditionChange
    end
    object edtValue: TEdit
      Left = 344
      Top = 32
      Width = 217
      Height = 21
      TabOrder = 2
    end
    object btnAdd: TButton
      Left = 8
      Top = 60
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 3
      OnClick = btnAddClick
    end
    object btnUpdate: TButton
      Left = 88
      Top = 60
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 4
      OnClick = btnAddClick
    end
    object btnDelete: TButton
      Left = 168
      Top = 60
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 5
      OnClick = btnDeleteClick
    end
    object dtpDate1: TDateTimePicker
      Left = 344
      Top = 32
      Width = 217
      Height = 21
      Date = 39348.917913229170000000
      Time = 39348.917913229170000000
      TabOrder = 7
    end
    object dtpDate2: TDateTimePicker
      Left = 344
      Top = 72
      Width = 217
      Height = 21
      Date = 39348.917913229170000000
      Time = 39348.917913229170000000
      TabOrder = 8
    end
    object Button1: TButton
      Left = 248
      Top = 60
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 9
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 285
    Width = 665
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      665
      41)
    object btnCancel: TButton
      Left = 575
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 495
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
    end
    object btnGroup: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Group'
      TabOrder = 2
      OnClick = btnGroupClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label4: TLabel
      Left = 16
      Top = 8
      Width = 147
      Height = 13
      Caption = 'Generate report that matches '
    end
    object Label5: TLabel
      Left = 248
      Top = 8
      Width = 83
      Height = 13
      Caption = 'conditions below:'
    end
    object cmbFilterCondition: TComboBox
      Left = 166
      Top = 4
      Width = 77
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'All'
      Items.Strings = (
        'All'
        'Any')
    end
  end
  object ppmSelectClear: TPopupMenu
    Left = 288
    Top = 209
    object SelectAll1: TMenuItem
      Caption = 'Select All'
      OnClick = SelectAll1Click
    end
    object ClearAll1: TMenuItem
      Caption = 'Clear All'
      OnClick = SelectAll1Click
    end
  end
end
