inherited frmBSms: TfrmBSms
  Tag = 1007
  Left = 146
  Top = 89
  Width = 579
  Height = 277
  Caption = 'frmBSms'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 531
    Height = 248
  end
  inherited pnlMBase: TPanel
    Width = 531
    Height = 248
    inherited grdBase: TDBGrdClr
      Top = 0
      Width = 531
      Align = alTop
      DataSource = dtmSms.dtsSmsLds
      Columns = <
        item
          Expanded = False
          FieldName = 'EntCode'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanKey'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COLUMN1'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name2'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanType'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanPeriod'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AmtToFin'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayIns'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AvlBal'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StartDate'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstInsDate'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndDate'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ArrearsAmt'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ArrearsNo'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ArrearsDate'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AmountDue'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoOfPay'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastDPay'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastAmtPay'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AppDate'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AprvDate'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Title'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo1'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FaxNo'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo3'
          PickList.Strings = ()
          Visible = True
        end>
    end
  end
end
