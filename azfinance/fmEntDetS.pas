unit fmEntDetS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Menus, ComCtrls, Unit32, ToolWin, UConst, StdCtrls, DBCtrls,
  Mask, Buttons, ExtCtrls, fmAdrDetail, Db, ShellAPI, Grids, DBGrids;

type
  TfrmEntDetS = class(TfrmDBBase)
    Panel1: TPanel;
    Label1: TLabel;
    dbtUser: TDBText;
    pnlTop: TPanel;
    lblCode: TLabel;
    dbtCode: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlMB: TPanel;
    lblN: TLabel;
    lblS: TLabel;
    lblT1: TLabel;
    lblT2: TLabel;
    lblF: TLabel;
    lblM: TLabel;
    lblE: TLabel;
    lblTitle: TLabel;
    lblID: TLabel;
    edtName: TDBEdit;
    edtName2: TDBEdit;
    edtTel1: TDBEdit;
    edtTel2: TDBEdit;
    edtFax: TDBEdit;
    edtTel3: TDBEdit;
    edtEmail: TDBEdit;
    btnPost: TBitBtn;
    btnPhysical: TBitBtn;
    edtIDno: TDBEdit;
    cmbTitle: TDBComboBox;
    grdContacts: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnPhysicalClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FReadOnly: boolean;
    FDBName: string;
    FEntityID: Integer;
    procedure SetShowBoxes(ShowStatus : boolean);
    procedure SetEntityID(const Value: Integer);
  protected
    procedure DoAddressDetail(adrType: integer);
  public
    { Public declarations }
    property EntityID: Integer read FEntityID write SetEntityID;
    property DBName : string read FDBName write FDBName;
    procedure ShowBoxes(ShowStatus : boolean); virtual;
  end;

implementation

uses dmEntity, dmMain;

{$R *.DFM}

procedure TfrmEntDetS.FormCreate(Sender: TObject);
begin
  inherited;
  dtmEntity := TdtmEntity.Create(Self);
end;

procedure TfrmEntDetS.ShowBoxes(ShowStatus: boolean);
begin
  SetShowBoxes(ShowStatus);
end;

procedure TfrmEntDetS.SetShowBoxes(ShowStatus: boolean);
var
  i : integer;
begin
  for i := 0 to ComponentCount-1 do
  begin
   { if Components[i] is TDBEdit then
      TDBEdit(Components[i]).Visible := ShowStatus
    else if Components[i] is TDBComboBox then
      TDBComboBox(Components[i]).Visible := ShowStatus}
    if Components[i] is TDBEdit then
    begin
      TDBEdit(Components[i]).ReadOnly := True;
      TDBEdit(Components[i]).Color    := clBtnFace;
    end
    else if Components[i] is TDBComboBox then
    begin
      TDBComboBox(Components[i]).ReadOnly := True;
      TDBComboBox(Components[i]).Color    := clBtnFace;
    end;
  end;
  FReadOnly := True;
  btnAmend.Enabled := False;
  // cbxCategory.Visible := ShowStatus;
end;

procedure TfrmEntDetS.DoAddressDetail(adrType: integer);
var
  frmAdr : TfrmAdrDetail;
begin
  frmAdr := TfrmAdrDetail.Create(Self);
  try
    frmAdr.Color  := dtmMain.ScrPnlColor;
    frmAdr.ShowBoxes := not FReadOnly;
    frmAdr.CurEntID  := dtmEntity.qryEntity.FieldByName('EntityID').AsInteger;
    frmAdr.CurTypeID := dtmEntity.qryEntity.FieldByName('EntType').AsInteger;
    frmAdr.CurAdrType:= adrType;
    frmAdr.CurrentID := dtmMain.CurrentID;
    frmAdr.ShowModal;
  finally
    frmAdr.Free;
  end;
end;

procedure TfrmEntDetS.btnPostClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrPost);
end;

procedure TfrmEntDetS.btnPhysicalClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrPhys);
end;

procedure TfrmEntDetS.FormShow(Sender: TObject);
begin
  inherited;
  if dtmEntity.qryEntity.FieldByName('EntType').AsInteger = CPYType then
  begin
    lblTitle.Hide;
    cmbTitle.Hide;
    lblN.Caption := 'Company Name';
    lblS.Caption := 'Contact Person';
    lblID.Caption := 'Reg. No.';
  end;
end;

procedure TfrmEntDetS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dtmEntity);
end;

procedure TfrmEntDetS.SetEntityID(const Value: Integer);
begin
  FEntityID := Value;

  dtmEntity.CurID := EntityID;
end;

end.
