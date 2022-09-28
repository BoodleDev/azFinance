{===============================================================================
 Author         : Wynand Wessels
 Date           :
 Unit           :
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
unit fmNLRToDo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, StdCtrls, Grids, DBGrids, ExtCtrls, Menus, ComCtrls, ToolWin,
  Unit32,  DBGrdClr, Mask, DBCtrls;

type
  TfrmNLRToDo = class(TfrmDBBase)
    pnlMain: TPanel;
    Panel1: TPanel;
    grdPSN: TDBGrdClr;
    grdNLRToDo: TDBGrdClr;
    Label3: TLabel;
    btnAdd: TToolButton;
    btnRemove: TToolButton;
    cbShowALL: TCheckBox;
    DBEdit1: TDBEdit;
    btnAddAll: TToolButton;
    btnClear: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure grdNLRToDoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure grdPSNDblClick(Sender: TObject);
    procedure grdNLRToDoDblClick(Sender: TObject);
    procedure cbShowALLClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenQuerys(inVal: Boolean);
    procedure SetFilter;
  public
    { Public declarations }
  end;


implementation

uses dmMain, dmNLR;

{$R *.DFM}

procedure TfrmNLRToDo.FormCreate(Sender: TObject);
begin

  dtmNLR := TdtmNLR.Create(Nil);
  inherited;
  FilterDataSet(dtmNLR.qryNLRToDo,'TransType = ' + IntToStr(dtmMain.nlrTransType));
  Self.Cursor := crHourGlass;
  OpenQuerys(True);
  Self.Cursor := crDefault;
  grdPSN.OddColor := dtmMain.OddGrdColor;
  grdNLRToDo.OddColor := dtmMain.OddGrdColor;
  case dtmMain.NlrTransType of
    NLRReg : Self.Caption := Self.Caption + ' - Register loan';
    NLRQry : Self.Caption := Self.Caption + ' - Query client';
    NLRCls : Self.Caption := Self.Caption + ' - Close loan';
  end;
end;

procedure TfrmNLRToDo.FormShow(Sender: TObject);
begin
  inherited;
  Self.Color       := dtmMain.ScrPnlColor;
  grdPSN.Color     := dtmMain.GrdColor;
  grdNLRToDo.Color := dtmMain.GrdColor;
  grdPSN.FixedColor:= dtmMain.FixGrdColor;
  grdNLRToDo.FixedColor := dtmMain.FixGrdColor;
  SetFilter;
end;

procedure TfrmNLRToDo.OpenQuerys(inVal: Boolean);
begin
  dtmNLR.qryData.Active := inVal;
  dtmNLR.qryNLRToDo.Active    := inVal;
end;

procedure TfrmNLRToDo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FilterDataSet(dtmNLR.qryNLRToDo,'');
  OpenQuerys(False);
  dtmNLR.Free;
  dtmNLR := Nil;
end;

procedure TfrmNLRToDo.btnAddClick(Sender: TObject);
begin
  inherited;
  try
    if not dtmMain.NlrTransType = NLRQry then
    begin
      if ((dtmMain.NlrTransType = nlrCLS) and ( dtmNLR.qryData.FieldByName('NLRRegNo').AsString = '')) and
         (dtmNLR.qryData.FieldByName('EnqRef').AsString = '') then
        ShowMessage('This loan has not been Queried or been Registerd.')
      else
        dtmNLR.BuildNLRStr;
    end
    else
     dtmNLR.BuildNLRStr;
  except
    dtmNLR.qryNLRToDo.Cancel;
  end;
end;

procedure TfrmNLRToDo.btnRemoveClick(Sender: TObject);
begin
  inherited;
  if dtmNLR.qryNLRToDo.RecordCount > 0 then
   if MesDlg('Are you sure you want to delete this record?','C') = mrYes then
     dtmNLR.qryNLRToDo.Delete;
end;

procedure TfrmNLRToDo.grdNLRToDoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not dtmNLR.qryNLRToDo.Fields[0].IsNull then
  begin
    if (Column.FieldName = 'StatusCode') or (Column.FieldName = 'TransType') then
    begin
      grdNLRToDo.Canvas.FillRect(Rect);
      grdNLRToDo.Canvas.TextOut(Rect.Left+2,Rect.Top+1,dtmNLR.GetNLRStatus(Column.Field.AsInteger));
    end;
  end;
end;

procedure TfrmNLRToDo.grdPSNDblClick(Sender: TObject);
begin
  inherited;
  btnAddClick(nil);
end;

procedure TfrmNLRToDo.grdNLRToDoDblClick(Sender: TObject);
begin
  inherited;
  btnRemoveClick(nil);
end;

procedure TfrmNLRToDo.cbShowALLClick(Sender: TObject);
begin
  inherited;
  if  cbShowALL.Checked then
    FilterDataSet(dtmNLR.qryData,'')
  else
    SetFilter;
end;

procedure TfrmNLRToDo.SetFilter;
var
 TheType : String;
begin
  TheType := '';
  case dtmMain.NlrTransType of
    NLRReg : TheType := 'RegNo';
    NLRQry : TheType := 'QryNo';
  end;
  if TheType <> '' then
    FilterDataSet(dtmNLR.qryData,'('+TheType+' = null) or ('+TheType +' = '''')')
  else
  if dtmMain.NlrTransType = NLRCls then
    FilterDataSet(dtmNLR.qryData,'LoanStatus >=70 ')
end;

procedure TfrmNLRToDo.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if Assigned(dtmNLR) then
    dtmNLR.qryData.Locate('EntityID',dtmMain.qryEntID.FieldByName('EntityID').AsInteger,[]);
end;

// This will add all depending on the type.
procedure TfrmNLRToDo.btnAddAllClick(Sender: TObject);
begin
  inherited;
  dtmNLR.qryData.DisableControls;
  dtmNLR.qryData.First;
  while not dtmNLR.qryData.Eof do
  begin
    btnAddClick(nil);
    dtmNLR.qryData.Next;
  end;
  dtmNLR.qryData.First;
  dtmNLR.qryData.EnableControls;
end;

procedure TfrmNLRToDo.btnClearClick(Sender: TObject);
begin
  inherited;
  dtmNLR.qryNLRToDo.DisableControls;
  dtmNLR.qryNLRToDo.First;
  while not dtmNLR.qryNLRToDo.Eof do
  begin
    dtmNLR.qryNLRToDo.Delete;
  end;
  dtmNLR.qryNLRToDo.EnableControls;
end;

end.
