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
    lblE: TLabel;
    dbtName: TDBText;
    dbtName2: TDBText;
    dbtTel1: TDBText;
    dbtTel2: TDBText;
    dbtFax: TDBText;
    dbtTel3: TDBText;
    edtName: TDBEdit;
    edtName2: TDBEdit;
    edtTel1: TDBEdit;
    edtTel2: TDBEdit;
    edtFax: TDBEdit;
    edtTel3: TDBEdit;
    edtEmail: TDBEdit;
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
    dbtRefFld2: TDBText;
    StatusBar1: TStatusBar;
    dbtEmail: TDBHyperLink;
    procedure FormCreate(Sender: TObject);
    procedure btnPhysicalClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbtEmailClick(Sender: TObject);
  private
    { Private declarations }
    FReadOnly: boolean;
    FDBName: string;
    procedure SetShowBoxes(ShowStatus : boolean);
  protected
    procedure DoAddressDetail(adrType: integer);
  public
    { Public declarations }
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
end;

procedure TfrmEntityDetail.ShowBoxes(ShowStatus: boolean);
begin
  SetShowBoxes(ShowStatus);
end;

procedure TfrmEntityDetail.SetShowBoxes(ShowStatus: boolean);
var
  i : integer;
begin
  for i := 0 to ComponentCount-1 do
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
  lblTelEg.Visible := ShowStatus;
  // cbxCategory.Visible := ShowStatus;
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

procedure TfrmEntityDetail.dbtEmailClick(Sender: TObject);
begin
  inherited;
  dbtEmail.OpenEmail('','');
end;

end.
