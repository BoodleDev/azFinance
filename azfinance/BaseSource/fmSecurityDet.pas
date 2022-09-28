unit fmSecurityDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, ComCtrls, ToolWin, DB, StdCtrls,fmLookup, Mask, DBCtrls, Unit32, Menus,
  Buttons, Grids, DBGrids, DBGrdClr, dmUserSetup, uBase32;

type
  TfrmSecurityDet = class(TfrmDBBase)
    Label1: TLabel;
    edtUserID: TDBEdit;
    Label2: TLabel;
    edtSurname: TDBEdit;
    edtName: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnCompany: TSpeedButton;
    btnPerson: TSpeedButton;
    lblCompany: TLabel;
    lblPerson: TLabel;
    Label6: TLabel;
    dbtAddedBy: TDBText;
    Label5: TLabel;
    grdUAG: TDBGrdClr;
    Label7: TLabel;
    btnActV: TToolButton;
    lblStatus: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCompanyClick(Sender: TObject);
    procedure btnPersonClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnActVClick(Sender: TObject);
  private
    { Private declarations }
    FLUdataCPY: TDataSet;
    FLUdataPSN: TDataSet;
    FdtmData: TdtmUserSetup;
    procedure SetLabel(LUData :TDataset; ToLabel :TLabel);
    procedure SetLUdataCPY(const Value: TDataSet);
    procedure SetLUdataPSN(const Value: TDataSet);
    procedure SetEntityID(EntID :integer);
    procedure SetStatusLbl;
  public
    { Public declarations }
    property LUdataPSN: TDataSet read FLUdataPSN write SetLUdataPSN;
    property LUdataCPY: TDataSet read FLUdataCPY write SetLUdataCPY;
    property dtmData  : TdtmUserSetup read FdtmData write FdtmData;
    procedure SetGrdColors(Grd,Fix,Odd : TColor);
  end;

implementation

{$R *.DFM}

procedure TfrmSecurityDet.FormShow(Sender: TObject);
begin
  inherited;
  CurrentDts := dtmData.dtsUsers;//Set the current datasource
  edtUserID.SetFocus;//Set the active control to the first Edit
  SetLabel(LUdataPSN,lblPerson);
  SetLabel(LUdataCPY,lblCompany);
  dtmData.SetUserDetStatus(True);
  //dtmMain.SetGrdColors(grdUAG);
  btnActV.Enabled := dtmData.qryUsers.FieldByName('Status').AsInteger = 1;
  SetStatusLbl;
end;

procedure TfrmSecurityDet.SetGrdColors(Grd, Fix, Odd: TColor);
begin
  grdUAG.Color      := Grd;
  grdUAG.FixedColor := Fix;
  grdUAG.OddColor   := Odd;
end;

procedure TfrmSecurityDet.SetLabel(LUData:TDataset; ToLabel :TLabel);
begin
  if Assigned(LUdata) then
    if LUdata.Locate('IDVal',dtmData.qryUsers.FieldByName('EntityId').AsInteger,[]) then
      ToLabel.Caption := LUdata.FieldByName('Name').AsString;
end;

procedure TfrmSecurityDet.btnCancelClick(Sender: TObject);
var
  NewUsr : boolean;
begin
  NewUsr := dtmData.qryUsers.State = dsInsert;
  inherited;
  if NewUsr then
    Close;//If a new user then close
end;

procedure TfrmSecurityDet.SetEntityID(EntID: integer);
begin
  dtmData.qryUsers.Edit;
  dtmData.qryUsers.FieldByName('EntityId').AsInteger := EntID;
  dtmData.qryUsers.Post;
end;

procedure TfrmSecurityDet.btnCompanyClick(Sender: TObject);
var
  LURes : integer;
begin
  inherited;
  LURes := ShowLU(LUdataCPY,'Select Company');
  if LURes <> -1 then
    SetEntityID(LURes);
  SetLabel(LUdataCPY,lblCompany);
  lblPerson.Caption := 'Link user to Person';
end;

procedure TfrmSecurityDet.btnPersonClick(Sender: TObject);
var
  LURes : integer;
begin
  inherited;
  LURes := ShowLU(LUdataPSN,'Select Person');
  if LURes <> -1 then
    SetEntityID(LURes);
  SetLabel(LUdataPSN,lblPerson);
  lblCompany.Caption := 'Link user to Company';
end;

procedure TfrmSecurityDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmData.SetUserDetStatus(False);
  //  inherited;//Close the queries
  CurrentDts := nil;//Clear the current datasource
end;

procedure TfrmSecurityDet.SetLUdataCPY(const Value: TDataSet);
begin
  FLUdataCPY := Value;
  if Assigned(LUdataCPY) then
  begin
    LUdataCPY.Open;
    SetLabel(LUdataCPY,lblCompany);
  end;
  btnCompany.Visible := Assigned(LUdataCPY);
  lblCompany.Visible := Assigned(LUdataCPY);
end;

procedure TfrmSecurityDet.SetLUdataPSN(const Value: TDataSet);
begin
  FLUdataPSN := Value;
  if Assigned(LUdataPSN) then
  begin
    LUdataPSN.Open;
    SetLabel(LUdataPSN,lblPerson);
  end;
  btnPerson.Visible := Assigned(LUdataPSN);
  lblPerson.Visible := Assigned(LUdataPSN);
end;

procedure TfrmSecurityDet.btnNewClick(Sender: TObject);
var
  LURes : integer;
begin
  // inherited;
  LURes := ShowLU(dtmData.qryGrpAppLU,'User group / Application');
  if LURes <> -1 then
    dtmData.AddCurUsrGrpApp;
end;

procedure TfrmSecurityDet.btnDeleteClick(Sender: TObject);
begin
  //inherited;
  if MesDlg('Delete User group / Application from user.','C') = mrYes then
    dtmData.DelUsrGrpApp(False);
end;

procedure TfrmSecurityDet.SetStatusLbl;
begin
  if dtmData.qryUsers.FieldByName('Status').AsInteger = 0 then
  begin
    lblStatus.Font.Color := clBlack;
    lblStatus.Caption    := 'Active';
  end
  else
  begin
    lblStatus.Font.Color := clRed;
    lblStatus.Caption    := 'Deleted';
  end;
end;

procedure TfrmSecurityDet.btnActVClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to activate this account?','C') = mrYes then
  begin
    dtmData.qryUsers.Edit;
    dtmData.qryUsers.FieldByName('Status').AsInteger := 0;
    dtmData.qryUsers.Post;
    btnActV.Enabled := False;
    SetStatusLbl;
  end;
end;

end.

