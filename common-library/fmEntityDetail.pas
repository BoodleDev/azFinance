unit fmEntityDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Menus, ComCtrls, Unit32, ToolWin, UConst, StdCtrls, DBCtrls,
  Mask, Buttons, ExtCtrls, fmAdrDetail, Db, ShellAPI, DBHyperLink;

type
  TfrmEntityDetail = class(TfrmDBBase)
    pnlMB: TPanel;
    pnlTop: TPanel;
    pcEntity: TPageControl;
    tsMain: TTabSheet;
    dbtUser: TDBText;
    lblN: TLabel;
    lblS: TLabel;
    lblT1: TLabel;
    lblT2: TLabel;
    lblF: TLabel;
    lblM: TLabel;
    edtName: TDBEdit;
    edtName2: TDBEdit;
    edtTel1: TDBEdit;
    edtTel2: TDBEdit;
    edtFax: TDBEdit;
    edtTel3: TDBEdit;
    tsAddress: TTabSheet;
    lblCode: TLabel;
    dbtCode: TDBText;
    btnPost: TBitBtn;
    btnPhysical: TBitBtn;
    rgpDefAddress: TDBRadioGroup;
    rgpDelAdr: TDBRadioGroup;
    rgpDocAdr: TDBRadioGroup;
    dtsEntity: TDataSource;
    lblTelEg: TLabel;
    lblN1: TLabel;
    dbtN1: TDBText;
    edtRefFld2: TDBEdit;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    edtCell: TEdit;
    lblE: TLabel;
    edtEmail: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnPhysicalClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCellEnter(Sender: TObject);
    procedure edtCellExit(Sender: TObject);
    procedure edtCellKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
//    CellLink: TFieldDataLink;
    FDBName: string;
    procedure SetShowBoxes;
//    procedure DataChange(Sender: TObject);
//    procedure UpdateData(Sender: TObject);
  protected
    procedure DoAddressDetail(adrType: integer);
  public
    { Public declarations }
    FReadOnly: boolean;
    property DBName : string read FDBName write FDBName;
    procedure ShowBoxes(ShowStatus : boolean); virtual;
  end;

implementation

uses dmEntity, dmMain;

{$R *.DFM}

procedure TfrmEntityDetail.FormCreate(Sender: TObject);
begin
  inherited;
  Currentdts := dtsEntity;
  dbtUser.Parent := StatusBar1;
  dbtUser.Left := 50;
  dbtUser.Top := 4;

  FReadOnly := False;

 { CellLink := TFieldDataLink.Create;
  CellLink.DataSource := dtsEntity;
  CellLink.FieldName := 'TelNo3';
  CellLink.OnActiveChange := DataChange;
  CellLink.OnDataChange := DataChange;
  CellLink.OnEditingChange := UpdateData;
  CellLink.OnUpdateData := DataChange;   }
end;

procedure TfrmEntityDetail.ShowBoxes(ShowStatus: boolean);
begin
  SetShowBoxes;
end;

procedure TfrmEntityDetail.SetShowBoxes;
var
  i : integer;
begin
{  for i := 0 to ComponentCount-1 do
  begin
    if Components[i] is TDBEdit then
      (Components[i] as TDBEdit).Visible := ShowStatus
    else if Components[I] is TDBLookupComboBox then
      TDBLookupComboBox(Components[I]).Visible := ShowStatus
    else if Components[I] is TDBComboBox then
      TDBComboBox(Components[I]).Visible := ShowStatus
    else if Components[I] is TComboBox then
      TComboBox(Components[I]).Visible := ShowStatus;
  end;
  FReadOnly := not ShowStatus;
  btnAmend.Visible := ShowStatus;
  lblTelEg.Visible := ShowStatus;}
  // cbxCategory.Visible := ShowStatus;
  FReadOnly := True;
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TDBEdit then
    begin
      TDBEdit(Components[i]).ReadOnly := True;
      TDBEdit(Components[i]).Color    := clBtnFace;
    end
    else if Components[i] is TEdit then
    begin
      TEdit(Components[i]).ReadOnly := True;
      TEdit(Components[i]).Color    := clBtnFace;
    end
    else if Components[I] is TDBLookupComboBox then
    begin
      TDBLookupComboBox(Components[I]).ReadOnly := True;
      TDBLookupComboBox(Components[I]).Color    := clBtnFace;
    end
    else if Components[I] is TDBComboBox then
    begin
      TDBComboBox(Components[I]).ReadOnly := True;
      TDBComboBox(Components[I]).Color    := clBtnFace;
    end
    else if Components[I] is TComboBox then
    begin
      TComboBox(Components[I]).Enabled := False;
      TComboBox(Components[I]).Color   := clBtnFace;
    end
    else if Components[I] is TDateTimePicker then
    begin
      TDateTimePicker(Components[I]).Enabled := False;
      TDateTimePicker(Components[I]).Color   := clBtnFace;
    end
    else if Components[I] is TDBMemo then
    begin
      TDBMemo(Components[I]).ReadOnly := False;
      TDBMemo(Components[I]).Color := dtmMain.ScrPnlColor;
    end
    else if Components[I] is TDBRadioGroup then
      TDBRadioGroup(Components[I]).ReadOnly := True
    else if Components[I] is TSpeedButton then
      TSpeedButton(Components[I]).Visible := False
    else if Components[I] is TDBCheckBox then
    begin
      TDBCheckBox(Components[I]).ReadOnly := True;
      TDBCheckBox(Components[I]).Color := clBtnFace;
    end;
  end;
  btnAmend.Enabled := False;
  //lblTelEg.Visible := ShowStatus;
end;

procedure TfrmEntityDetail.DoAddressDetail(adrType: integer);
var
  frmAdr : TfrmAdrDetail;
begin
  CheckDataSet(dtsEntity.DataSet);
  frmAdr := TfrmAdrDetail.Create(Self);
  try
    frmAdr.Color  := dtmMain.ScrPnlColor;
    frmAdr.ShowBoxes := not FReadOnly;
    frmAdr.CurEntID  := dtsEntity.DataSet.FieldByName('EntityID').AsInteger;
    frmAdr.CurTypeID := dtsEntity.DataSet.FieldByName('EntType').AsInteger;
    frmAdr.CurAdrType:= adrType;
    frmAdr.CurrentID := dtmMain.CurrentID;
    frmAdr.ShowModal;
  finally
    frmAdr.Free;
  end;
end;

procedure TfrmEntityDetail.btnPostClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrPost);
end;

procedure TfrmEntityDetail.btnPhysicalClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrPhys);
end;

procedure TfrmEntityDetail.FormShow(Sender: TObject);
begin
  inherited;
  pcEntity.ActivePage := tsMain;
  // lblECT.Caption := cbxCategory.Text;
end;

//procedure TfrmEntityDetail.UpdateData(Sender: TObject);
//begin
//  if CellLink.DataSet.State in [dsEdit,dsBrowse] then
//  CellLink.DataSet.FieldByName('TelNo3').AsString := edtCell.Text;
//end;

//procedure TfrmEntityDetail.DataChange(Sender: TObject);
//begin
//  //if edtCell.Text <> CellLink.DataSet.FieldByName('TelNo3').AsString then
//  if CellLink.DataSet.State = dsBrowse then
//  begin
//    if edtCell.Focused then
//      edtCell.Text := StringReplace(CellLink.DataSet.FieldByName('TelNo3').AsString, ' ', '', [rfReplaceAll])
//    else
//      edtCell.Text := CellLink.DataSet.FieldByName('TelNo3').AsString;
//  end;
//
//  {case DataSet.State of
//  dsBrowse: begin
//              btnBankAmend.Enabled := True;
//              btnBankSave.Enabled := False;
//              btnBankCancel.Enabled := False;
//            end;
//  dsInsert, dsEdit: begin
//              btnBankAmend.Enabled := False;
//              btnBankSave.Enabled := True;
//              btnBankCancel.Enabled := True;
//            end;
//  end; }
//end;

procedure TfrmEntityDetail.edtCellEnter(Sender: TObject);
begin
  inherited;
//  edtCell.Text := StringReplace(edtCell.Text, ' ', '', [rfReplaceAll]);
end;

procedure TfrmEntityDetail.edtCellExit(Sender: TObject);
begin
  inherited;
{  edtCell.Text := Copy(edtCell.Text,1,3) + ' ' + Copy(edtCell.Text,4,3) + ' ' +
    Copy(edtCell.Text,7,4);

  if CellLink.DataSet.State in [dsEdit,dsInsert] then
    CellLink.DataSet.FieldByName('TelNo3').AsString := edtCell.Text;  }
end;

procedure TfrmEntityDetail.edtCellKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  {  //Copy(edtCell.Text, 1, edtCell.SelStart) + Key +
    //Copy(edtCell.Text, edtCell.SelStart + edtCell.SelLength, Length(edtCell.Text) -
    //  edtCell.SelStart - edtCell.SelLength);
  if not (Ord(Key) in [48..57,VK_BACK, VK_DELETE]) or ((Length(edtCell.Text) = 10) and (not (Ord(Key) in [VK_BACK, VK_DELETE]))) then
    if edtCell.SelLength = 0 then
      Abort;

  if CellLink.DataSet.State = dsBrowse then
    CellLink.DataSet.Edit;  }


end;

end.
