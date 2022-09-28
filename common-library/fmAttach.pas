unit fmAttach;

{===============================================================================
 Author  : Willene le Roux
 Date    : 13/02/2003
 Unit    : Document Form to retrieve and store document paths.
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Menus, ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask,
  Grids, DBGrids, DBGrdClr, Buttons, dmAttach, Unit32, ShellApi,
  GetEdtFilter, EdtFilter, db;

type
  TfrmAttach = class(TfrmDBBase)
    pnlMain: TPanel;
    grdAttach: TDBGrdClr;
    pnlTop: TPanel;
    cmbDocType: TDBLookupComboBox;
    lblTypeID: TLabel;
    lblDocType: TLabel;
    cmbMasterID: TDBLookupComboBox;
    lblMasterID: TLabel;
    lblRefNo: TLabel;
    edtRefNo: TDBEdit;
    odlAttach: TOpenDialog;
    cmbTypeID: TComboBox;
    edtTypeID: TDBEdit;
    edtRecID: TDBEdit;
    btnFilter: TToolButton;
    pnlFilter: TPanel;
    radRefNo: TRadioButton;
    radTypeID: TRadioButton;
    radDocType: TRadioButton;
    lblDescription: TLabel;
    lblDocument: TLabel;
    btnDocument: TSpeedButton;
    txtHyperlink: TDBText;
    memDescription: TDBMemo;
    edfRefNo: TEdtFilter;
    GetEdtFilter: TGetEdtFilter;
    cmbFTypeID: TComboBox;
    lblFDescription: TLabel;
    tlbFilter: TToolBar;
    btnClose: TToolButton;
    btnDo: TToolButton;
    edfDocType: TEdtFilter;
    edfMasterID: TEdtFilter;
    edfTypeID: TEdtFilter;
    cmbFDocType: TComboBox;
    cmbFMasterID: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDocumentClick(Sender: TObject);
    procedure cmbTypeIDChange(Sender: TObject);
    procedure edtRecIDChange(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure radRefNoClick(Sender: TObject);
    procedure btnDoClick(Sender: TObject);
    procedure cmbFTypeIDChange(Sender: TObject);
    procedure cmbFDocTypeChange(Sender: TObject);
    procedure cmbFMasterIDChange(Sender: TObject);
    procedure radDocTypeClick(Sender: TObject);
    procedure radTypeIDClick(Sender: TObject);
  private
    { Private declarations }
    dtmAttach : TdtmAttach;
    FLinkType : Integer;
    DocList   : TStringList;
    MasterList : TStringlist;
    FFilterType: Integer;
    procedure SetLinkType(const Value: Integer);
    procedure SetFilterType(const Value: Integer);
  public
    { Public declarations }
    property LinkType : Integer read FLinkType write SetLinkType;
    property FilterType : Integer read FFilterType write SetFilterType;
    procedure DoRadioCheck;
    procedure PopulateCombos(qryUse : TDataSet);
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TfrmAttach.FormCreate(Sender: TObject);
begin
  dtmAttach  := TdtmAttach.Create(Self);
  dtmAttach.SetActiveQueries(True);
  CurrentDts := dtmAttach.dtsAttach;
  DocList := TStringlist.Create;
  MasterList := TStringlist.Create;
  //
  dtmMain.SetGrdColors(grdAttach);
  tlbFilter.Color := dtmMain.RecBarColor;
  //
  case dtmAttach.qryAttach.FieldByName('TypeID').AsInteger of
    0 : LinkType := Entity;
    1 : LinkType := Notes;
    2 : LinkType := Loans;
    3 : LinkType := Projects;
  end;
  //Populating comboboxes
  while not dtmAttach.qryDocTypes.Eof do
  begin
    cmbFDocType.Items.Add(dtmAttach.qryDocTypes.FieldByName('Description').AsString);
    DocList.Add(dtmAttach.qryDocTypes.FieldByName('Description').AsString+'='+
      dtmAttach.qryDocTypes.FieldByName('TypeKey').AsString);
    dtmAttach.qryDocTypes.Next;
  end;
end;

procedure TfrmAttach.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DocList.Free;
  DocList := nil;
  //
  MasterList.Free;
  MasterList := nil;
  //
  dtmAttach.Free;
  dtmAttach := nil;
end;

procedure TfrmAttach.btnDocumentClick(Sender: TObject);
begin
  if MesDlg('Would you like to attach a new document?', 'C') = mrYes then
  begin
    if odlAttach.Execute then
    begin
      dtmAttach.qryAttach.Edit;
      dtmAttach.qryAttach.FieldbyName('Hyperlink').AsString := odlAttach.FileName;
      dtmAttach.qryAttach.FieldbyName('FileName').AsString  := ExtractFileName(odlAttach.FileName);
      dtmAttach.qryAttach.Post;
    end;
  end
  else
    ShellExecute(Handle, 'open', pChar(dtmAttach.qryAttach.FieldByName('Hyperlink').AsString)
      ,'', '', SW_SHOW);
end;

procedure TfrmAttach.cmbTypeIDChange(Sender: TObject);
begin
  edtTypeID.Text := IntToStr(cmbTypeID.ItemIndex);
  if cmbTypeID.Text = 'Entity' then
    LinkType := Entity
  else
    if cmbTypeID.Text = 'Note' then
      LinkType := Notes
  else
    if cmbTypeID.Text = 'Loan' then
      LinkType := Loans
  else
    LinkType := Projects;
end;

procedure TfrmAttach.SetLinkType(const Value: Integer);
begin
  FLinkType := Value;
  case LinkType of
    Entity   : begin
                 cmbTypeID.Text := 'Entity';
                 cmbMasterID.ListSource := dtmAttach.dtsEntity;
               end;
    Notes    : begin
                 cmbTypeID.Text := 'Note';
                 cmbMasterID.ListSource := dtmAttach.dtsNotes;
               end;
    Loans    : begin
                 cmbTypeID.Text := 'Loan';
                 cmbMasterID.ListSource := dtmAttach.dtsLoans;
               end;
    Projects : begin
                 cmbTypeID.Text := 'Entity';
                 cmbMasterID.ListSource := dtmAttach.dtsProjects;
               end;
  end;
end;

procedure TfrmAttach.edtRecIDChange(Sender: TObject);
begin
  SetLinkType(dtmAttach.qryAttach.FieldByname('TypeID').AsInteger);
end;

procedure TfrmAttach.btnFilterClick(Sender: TObject);
begin
  pnlFilter.Visible := True;
  tlbFilter.Visible := True;
  tlbDBBase.Visible := False;
  pnlTop.Visible    := False;
end;

procedure TfrmAttach.btnCloseClick(Sender: TObject);
begin
  pnlFilter.Visible := False;
  tlbFilter.Visible := False;
  tlbDBBase.Visible := True;
  pnlTop.Visible    := True;
  FilterDataSet(dtmAttach.qryAttach,'');
end;

procedure TfrmAttach.DoRadioCheck;
begin
  edfRefNo.feActive    := False;
  edfDocType.feActive  := False;
  edfTypeID.feActive   := False;
  edfMasterID.feActive := False;
  if radRefNo.Checked then
    edfRefNo.feActive := True
  else
    if radDocType.Checked then
      edfDocType.feActive := True
  else
    if radTypeID.Checked then
    begin
      edfTypeID.feActive   := True;
      edfMasterID.feActive := True;
    end;
end;

procedure TfrmAttach.radRefNoClick(Sender: TObject);
begin
  DoRadioCheck;
  edfRefNo.SetFocus;
end;

procedure TfrmAttach.btnDoClick(Sender: TObject);
begin
  GetEdtFilter.Active := True;
  FilterDataSet(dtmAttach.qryAttach,GetEdtFilter.FilterResult);
end;

procedure TfrmAttach.cmbFTypeIDChange(Sender: TObject);
begin
  edfTypeID.Text := IntToStr(cmbFTypeID.ItemIndex);
  if cmbFTypeID.Text = 'Entity' then
    FilterType := Entity
  else
    if cmbFTypeID.Text = 'Note' then
      FilterType := Notes
  else
    if cmbFTypeID.Text = 'Loan' then
      FilterType := Loans
  else
    FilterType := Projects;
end;

procedure TfrmAttach.cmbFDocTypeChange(Sender: TObject);
begin
  edfDocType.Text := DocList.Values[cmbFDocType.Text];
end;

procedure TfrmAttach.SetFilterType(const Value: Integer);
begin
  FFilterType := Value;
   case FilterType of
    Entity   : PopulateCombos(dtmAttach.qryEntity);
    Notes    : PopulateCombos(dtmAttach.qryNotes);
    Loans    : PopulateCombos(dtmAttach.qryLoans);
    Projects : PopulateCombos(dtmAttach.qryProjects);
   end;
end;

procedure TfrmAttach.PopulateCombos(qryUse: TDataSet);
begin
  cmbFMasterID.Clear;
  while not qryUse.Eof do
  begin
    cmbFMasterID.Items.Add(qryUse.FieldByName('MasterName').AsString);
    MasterList.Add(qryUse.FieldByName('MasterName').AsString+'='+
    qryUse.FieldByName('MasterID').AsString);
    qryUse.Next;
  end;
end;

procedure TfrmAttach.cmbFMasterIDChange(Sender: TObject);
begin
  edfMasterID.Text := MasterList.values[cmbFMasterID.Text];

end;

procedure TfrmAttach.radDocTypeClick(Sender: TObject);
begin
  DoRadioCheck;
  cmbFDocType.SetFocus;
end;

procedure TfrmAttach.radTypeIDClick(Sender: TObject);
begin
  DoRadioCheck;
  cmbFTypeID.SetFocus;
end;

end.
