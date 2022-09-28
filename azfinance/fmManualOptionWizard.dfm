inherited frmManualOptionWizard: TfrmManualOptionWizard
  Left = 574
  Top = 338
  Caption = 'Create Manual Option'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcWizard: TPageControl
    inherited tsMain: TTabSheet
      Caption = 'Select Reason && Loan Option'
      object grdOptions: TDBGrid
        Left = 5
        Top = 59
        Width = 588
        Height = 169
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtmPayouts.dtsScoreOptions
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdOptionsDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'LoanPeriod'
            Title.Alignment = taCenter
            Title.Caption = 'Period'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanCapital'
            Title.Alignment = taRightJustify
            Title.Caption = 'Loan Capital'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Instalment'
            Title.Alignment = taRightJustify
            Width = 64
            Visible = True
          end>
      end
      object cmbReason: TDBLookupComboBox
        Left = 168
        Top = 103
        Width = 201
        Height = 21
        KeyField = 'TypeKey'
        ListField = 'Description'
        ListSource = dtmLoanC.dtsManOptionReasons
        TabOrder = 2
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 5
        Top = 0
        Width = 588
        Height = 56
        Caption = 'Filter'
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 24
          Width = 59
          Height = 13
          Caption = 'Loan Capital'
        end
        object lblFilterPeriod: TLabel
          Left = 216
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Period'
        end
        object edtFilterCapital: TEdit
          Left = 74
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 0
          OnChange = edtFilterCapitalChange
        end
        object edtFilterPeriod: TEdit
          Left = 253
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 1
          OnChange = edtFilterCapitalChange
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Select Loans to Consolidate'
      ImageIndex = 1
      object lvwPayouts: TListView
        Left = 8
        Top = 8
        Width = 585
        Height = 209
        Checkboxes = True
        Columns = <
          item
            Caption = 'Pay No.'
          end
          item
            Caption = 'Payout Type'
            Width = 150
          end
          item
            Caption = 'Reference'
            Width = 200
          end
          item
            Alignment = taRightJustify
            Caption = 'Amount'
            Width = 100
          end>
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Finish'
      ImageIndex = 2
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 108
        Height = 13
        Caption = 'Click finish to complete'
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 484
    Top = 105
  end
end
