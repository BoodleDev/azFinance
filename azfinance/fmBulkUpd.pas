unit fmBulkUpd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DBGrdCF,
  ADOgrdCFS, Buttons, fmUpdDtl, DB, Unit32, uBase32, fmLookUp, DBStyleGrid;

type
  TfrmBulkUpd = class(TfrmBase)
    btnImport: TToolButton;
    grdBase: TDBGrid;
    StatusBar1: TStatusBar;
    cbxUpdate: TComboBox;
    Label1: TLabel;
    cbxOptions: TComboBox;
    Label2: TLabel;
    btnUpdate: TBitBtn;
    btnLocate: TToolButton;
    btnAdd: TToolButton;
    ToolButton1: TToolButton;
    procedure cbxUpdateChange(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxOptionsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbxOptionsChange(Sender: TObject);
    procedure btnLocateClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    NoMatch: Integer;
    procedure AddLoanToUpdate(AddNew: Boolean);
    procedure ShowStatus;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBulkUpd: TfrmBulkUpd;
  frmUpdDtl: TfrmUpdDtl;

implementation

uses uLScentral, dmLoanMan, dmMain;

{$R *.DFM}

procedure TfrmBulkUpd.cbxUpdateChange(Sender: TObject);
begin
  inherited;
  if cbxUpdate.ItemIndex = 0 then
    BuildLoanStatusList(cbxOptions.Items);
end;

procedure TfrmBulkUpd.btnImportClick(Sender: TObject);
var
  FldToUse: String;
  I, J: Integer;
begin
  if frmUpdDtl.Showmodal = mrOK then
  begin
    Screen.Cursor := crHourGlass;
    NoMatch := 0;
    dtmLoanMan.cdsToUpd.DisableControls;
    dtmLoanMan.cdsToUpd.EmptyDataSet;
    FldToUse := frmUpdDtl.cbxMap.Text;
    for I := 0 to frmUpdDtl.Memo1.Lines.Count - 1 do
    begin
      dtmLoanMan.cdsToUpd.Append;
      RunQry(dtmMain.qryToUse,'Select LoanID,RefNo,EntCode,Status '+
        'from lsLoanDetail where RTrim(Cast('+FldToUse+ ' as varchar(15))) = '+
        ''''+ frmUpdDtl.Memo1.Lines[I]+'''','O');
      dtmLoanMan.cdsToUpd.FieldByName('Exists').AsBoolean := not
        dtmMain.qryToUse.FieldByName('LoanID').IsNull;
      if not dtmLoanMan.cdsToUpd.FieldByName('Exists').AsBoolean then
      begin
        Inc(NoMatch);
        dtmLoanMan.cdsToUpd.FieldByName(FldToUse).Value := frmUpdDtl.Memo1.Lines[I];
      end
      else
        for J := 0 to dtmMain.qryToUse.Fields.Count - 1 do
          dtmLoanMan.cdsToUpd.FieldByName(
            dtmMain.qryToUse.Fields[J].FieldName).Value :=
              dtmMain.qryToUse.Fields[J].Value;
      dtmLoanMan.cdsToUpd.Post;
    end;
    dtmLoanMan.cdsToUpd.EnableControls;
    ShowStatus;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmBulkUpd.FormCreate(Sender: TObject);
begin
  inherited;
  frmUpdDtl := TfrmUpdDtl.Create(Self);
  dtmLoanMan := TdtmLoanMan.Create(Self);
  dtmLoanMan.cdsToUpd.CreateDataSet;  
  dtmLoanMan.qryLoanLU.Open;
end;

procedure TfrmBulkUpd.FormDestroy(Sender: TObject);
begin
  inherited;
  frmUpdDtl.Free;
  dtmLoanMan.Free;
end;

procedure TfrmBulkUpd.cbxOptionsDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cbxOptions.Canvas.FillRect(Rect);
  cbxOptions.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1,
    cbxOptions.Items.Names[Index]);
end;

procedure TfrmBulkUpd.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not dtmLoanMan.cdsToUpd.FieldByName('Exists').AsBoolean then
  begin
    grdBase.Canvas.Font.Color := clRed;
    grdBase.Canvas.FillRect(Rect);
    grdBase.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end
  else if Column.FieldName = 'Status' then
  begin
    grdBase.Canvas.FillRect(Rect);
    grdBase.Canvas.TextOut(Rect.Left+2,Rect.Top+2,GetLoanStatus(Column.Field.AsInteger));
  end;
end;

procedure TfrmBulkUpd.cbxOptionsChange(Sender: TObject);
begin
  inherited;
  btnUpdate.Enabled := cbxOptions.ItemIndex > -1;
end;

procedure TfrmBulkUpd.btnLocateClick(Sender: TObject);
begin
  AddLoanToUpdate(False);
end;

procedure TfrmBulkUpd.AddLoanToUpdate(AddNew: Boolean);
var
  LUID: Integer;
begin
  inherited;
  LUID := ShowLU(dtmLoanMan.qryLoanLU,'Select Loan');
  if LUID <> -1 then
  begin
    if AddNew then
      dtmLoanMan.cdsToUpd.Append
    else
    begin
      Dec(NoMatch);
      dtmLoanMan.cdsToUpd.Edit;
    end;
    dtmLoanMan.cdsToUpd.FieldByName('LoanID').AsInteger := LUID;
    dtmLoanMan.cdsToUpd.FieldByName('RefNo').AsString :=
      dtmLoanMan.qryLoanLU.FieldByName('RefNo').AsString;
    dtmLoanMan.cdsToUpd.FieldByName('EntCode').AsString :=
      dtmLoanMan.qryLoanLU.FieldByName('EntCode').AsString;
    dtmLoanMan.cdsToUpd.FieldByName('Status').AsInteger :=
      dtmLoanMan.qryLoanLU.FieldByName('Status').AsInteger;
    dtmLoanMan.cdsToUpd.FieldByName('Exists').AsBoolean := True;
    dtmLoanMan.cdsToUpd.Post;
    grdBase.Repaint;
    ShowStatus;
  end;
end;

procedure TfrmBulkUpd.ShowStatus;
begin
    StatusBar1.SimpleText := IntToStr(dtmLoanMan.cdsToUpd.RecordCount) +
      ' record\s - ' + IntToStr(NoMatch) + ' not found';
end;

procedure TfrmBulkUpd.btnAddClick(Sender: TObject);
begin
  AddLoanToUpdate(True);
end;

procedure TfrmBulkUpd.btnUpdateClick(Sender: TObject);
begin
  inherited;
  dtmLoanMan.DoBulkUpDate(cbxOptions.Items.Values[
    cbxOptions.Items.Names[cbxOptions.ItemIndex]]);
end;

procedure TfrmBulkUpd.ToolButton1Click(Sender: TObject);
begin
  inherited;
  dtmLoanMan.cdsToUpd.Delete;
end;

end.
