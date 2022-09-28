unit fmCodeTblGrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBGrdClr, dmCodeTblGrp,
  DBCtrls, StdCtrls, uBase32, ADOdb, fmDBBase, Menus, Buttons, Mask, Unit32;

type
  TfrmCodeTblGrp = class(TfrmDBBase)
    pnlTop: TPanel;
    lblMasterGroup: TLabel;
    lblMasterKey: TLabel;
    lblSubGrpKey: TLabel;
    cbxGrpKey: TComboBox;
    grdCodeGrp: TDBGrdClr;
    btnMaster: TSpeedButton;
    btnSub: TSpeedButton;
    lblMaster: TLabel;
    lblSub: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
    procedure btnMasterClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure cbxGrpKeyChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    dtmCodeGrp : TdtmCodeTblGrp;
    TypeList  : TStringList;
    procedure Populatecombo;
  public
    { Public declarations }
    procedure SetMasterParams;
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TfrmCodeTblGrp.FormCreate(Sender: TObject);
begin
  dtmCodeGrp := TdtmCodeTblGrp.Create(Self);
  dtmCodeGrp.SetActiveQueries(True);
  CurrentDts := dtmCodeGrp.dtsCodeGrp;
  TypeList   := TStringList.Create;
  dtmMain.SetGrdColors(grdCodeGrp);
end;

procedure TfrmCodeTblGrp.FormShow(Sender: TObject);
begin
  inherited;
  //
  lblMaster.Caption := dtmCodeGrp.qryGrpKey.FieldByName('TypeDesc').AsString;
  lblSub.Caption := lblMaster.Caption;
  PopulateCombo;
  cbxGrpKey.ItemIndex := 0;
  cbxGrpKey.OnChange(nil);
end;

procedure TfrmCodeTblGrp.Populatecombo;
begin
  cbxGrpKey.Clear;
  dtmCodeGrp.qryGrpCodesLU.First;
  while not dtmCodeGrp.qryGrpCodesLU.Eof do
  begin
    cbxGrpKey.Items.Add(dtmCodeGrp.qryGrpCodesLU.FieldByName('Description').AsString);
    TypeList.Add(dtmCodeGrp.qryGrpCodesLU.FieldByName('Description').AsString+'='+
      dtmCodeGrp.qryGrpCodesLU.FieldByName('IDVal').AsString);
    dtmCodeGrp.qryGrpCodesLU.Next;
  end;
end;

procedure TfrmCodeTblGrp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmCodeGrp.Free;
  dtmCodeGrp := nil;
  //
  TypeList.Free;
  TypeList := nil;
end;

procedure TfrmCodeTblGrp.btnNewClick(Sender: TObject);
var
  Code : Integer;
begin
  // inherited;
  Code := ShowLU(dtmCodeGrp.qryCodesLU, 'Lookup - Subdetail');
  if Code <> -1 then
  begin
    if dtmCodeGrp.qryCodeGrp.Locate('TypeKey',
      dtmCodeGrp.qryCodesLU.FieldByName('IDVal').AsInteger,[]) then
      MesDlg('The selected record has already been added into the database!','E')
    else
      dtmCodeGrp.AddTypeKeyToGrp(StrToInt(TypeList.Values[cbxGrpKey.Text]),Code);
  end;
end;

procedure TfrmCodeTblGrp.btnDeleteClick(Sender: TObject);
begin
//  inherited;
   if MesDlg('Are you sure you want to delete this record?','C') = mrYes then
     dtmCodeGrp.DelTypeKeyToGrp(StrToInt(TypeList.Values[cbxGrpKey.Text]),
       dtmCodeGrp.qryCodeGrp.FieldByName('TypeKey').AsInteger);
end;

procedure TfrmCodeTblGrp.btnMasterClick(Sender: TObject);
var
  LUres : integer;
begin
  LUres := ShowLU(dtmCodeGrp.qryGrpKey, 'Lookup - Master group');
  if LUres <> -1 then
  begin
    lblMaster.Caption := dtmCodeGrp.qryGrpKey.FieldByName('TypeDesc').AsString;
 //   lblSub.Caption := lblMaster.Caption;
    PopulateCombo;
    cbxGrpKey.ItemIndex := 0;
    cbxGrpKey.OnChange(nil);
  end;
end;

procedure TfrmCodeTblGrp.btnSubClick(Sender: TObject);
var
  LUres : integer;
begin
  LUres := ShowLU(dtmCodeGrp.qrySubGrpKey, 'Lookup - Sub group');
  if LUres <> -1 then
    lblSub.Caption := dtmCodeGrp.qrySubGrpKey.FieldByName('TypeDesc').AsString;
end;

procedure TfrmCodeTblGrp.SetMasterParams;
begin
  dtmCodeGrp.qryCodeGrp.Close;
  dtmCodeGrp.qryCodeGrp.Parameters.ParamByName('Grpkey').Value :=
    StrToInt(TypeList.Values[cbxGrpKey.Text]);
  dtmCodeGrp.qryCodeGrp.Open;
end;

procedure TfrmCodeTblGrp.cbxGrpKeyChange(Sender: TObject);
begin
  if cbxGrpKey.ItemIndex > -1 then
    SetMasterParams;
end;

end.
