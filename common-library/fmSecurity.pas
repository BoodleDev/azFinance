unit fmSecurity;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Grids, DBGrids, Menus, ComCtrls, ToolWin, ExtCtrls, StdCtrls,
  Mask, DBCtrls, dmUserSetup, Unit32, Db, ImgList, fmDBBaseGrdCF, DBGrdCF;

type
  TfrmSecurity = class(TfrmDBBaseGrdCF)
    pnlMain: TPanel;
    lblShow: TLabel;
    cbxStatus: TComboBox;
    Img: TImage;
    edtID: TDBEdit;
    dtsUsers: TDataSource;
    btnLock: TToolButton;
    imglstMain: TImageList;
    Label1: TLabel;
    lblSelC: TLabel;
    edtFilter: TEdit;
    btnResetPassword: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnAmendClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxStatusChange(Sender: TObject);
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtIDChange(Sender: TObject);
    procedure btnLockClick(Sender: TObject);
    procedure grdBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFilterChange(Sender: TObject);
    procedure btnResetPasswordClick(Sender: TObject);
  private
    { Private declarations }
    dtmData : TdtmUserSetup;
    procedure DoSecurityDetail;
  public
    { Public declarations }
  end;

implementation

uses dmMain, fmSecurityDet, fmResetPassword;

{$R *.DFM}

procedure TfrmSecurity.FormCreate(Sender: TObject);
begin
  inherited;
  dtmData := TdtmUserSetup.Create(Self);
  dtsUsers.DataSet := dtmData.qryUsers;
  Currentdts := dtmData.dtsUsers;
  edtID.DataSource := dtmData.dtsUsers;
  dtmMain.SetGrdColors([grdBase]);
end;

procedure TfrmSecurity.FormShow(Sender: TObject);
begin
  inherited;
  cbxStatus.ItemIndex := 0;
end;

procedure TfrmSecurity.cbxStatusChange(Sender: TObject);
begin
  inherited;
  case cbxStatus.ItemIndex of
    0 : FilterDataSet(dtmData.qryUsers,'');
    1 : FilterDataSet(dtmData.qryUsers,'Status=0');
    2 : FilterDataSet(dtmData.qryUsers,'Status=1');
  end;
end;

procedure TfrmSecurity.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'Status' then
  begin
    grdBase.Canvas.FillRect(Rect);
    if Column.Field.AsInteger = 0 then
      grdBase.Canvas.TextOut(Rect.Left+2,Rect.Top+1,'Active')
    else
    begin
      if gdSelected in State then
        grdBase.Canvas.Font.Color := clHighlightText
      else
        grdBase.Canvas.Font.Color := clRed;
        grdBase.Canvas.TextOut(Rect.Left+2,Rect.Top+1,'Deleted');
    end;
  end;
  if Column.FieldName = 'Locked' then
  begin
    grdBase.Canvas.FillRect(Rect);
    if Column.Field.AsBoolean then
      grdBase.Canvas.Draw(Rect.Left+14,Rect.Top,Img.Picture.Bitmap);   // In active
  end;
end;

procedure TfrmSecurity.btnNewClick(Sender: TObject);
begin
  inherited;
  dtmData.qryUsers.FieldByName('AddByUserID').AsString := dtmMain.CurrentID;
  DoSecurityDetail;//Launch the security detail form
end;

procedure TfrmSecurity.btnAmendClick(Sender: TObject);
begin
  inherited;
  DoSecurityDetail;//Launch the security detail form
end;

procedure TfrmSecurity.DoSecurityDetail;
var
  frmSecurityDet : TfrmSecurityDet;
begin
  frmSecurityDet := TfrmSecurityDet.Create(nil);//Create form
  try
    frmSecurityDet.SetGrdColors(dtmMain.GrdColor,dtmMain.FixGrdColor,
      dtmMain.OddGrdColor);  
    frmSecurityDet.dtmData      := dtmData;
    frmSecurityDet.LUdataPSN    := dtmMain.qryPSNLu;
    frmSecurityDet.LUdataCPY    := dtmMain.qryCPYLu;
    frmSecurityDet.ShowModal;//show form
  finally
    frmSecurityDet.Free;//destroy form
    btnAmend.Enabled := True;//Set the amend button to true
  end;
end;

procedure TfrmSecurity.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmData.Free;
  dtmData := nil;
end;

procedure TfrmSecurity.btnDeleteClick(Sender: TObject);
begin
  // inherited;
  if MesDlg('Are you sure you want to delete user ID?','C') = mrYes then
  begin
    dtmData.qryUsers.Edit;
    dtmData.qryUsers.FieldByName('Status').AsInteger      := 1;
    dtmData.qryUsers.FieldByName('DeleteDate').AsDateTime := Now;
    dtmData.qryUsers.Post;
    if MesDlg('Remove all user groups from UserID?','C') = mrYes then
      dtmData.DelUsrGrpApp(True);
    btnDelete.Enabled := False;
  end;  
end;

procedure TfrmSecurity.edtIDChange(Sender: TObject);
begin
  inherited;
  btnDelete.Enabled := dtmData.qryUsers.FieldByName('Status').AsInteger = 0;
end;

procedure TfrmSecurity.btnLockClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to lock user ID?','C') = mrYes then
  begin
    dtmData.qryUsers.Edit;
    dtmData.qryUsers.FieldByName('Locked').AsBoolean := True;
    dtmData.qryUsers.Post;
  end;
end;

procedure TfrmSecurity.grdBaseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssShift in Shift) and (Key = Ord('D')) then
  begin
    // dtmData.DelUsrGrpApp(True);
    Abort;
  end;
end;

procedure TfrmSecurity.edtFilterChange(Sender: TObject);
begin
  inherited;
  if Trim(edtFilter.Text)='' then
    FilterDataSet(grdBase.DataSource.DataSet,'')
  else
    FilterDataSet(grdBase.DataSource.DataSet,grdBase.SelFld+' like '''+
      edtFilter.Text+'%''');
end;

procedure TfrmSecurity.btnResetPasswordClick(Sender: TObject);
begin
  inherited;
  ResetPassword(dtmData.qryUsers.Connection.ConnectionString,
    dtmData.qryUsers.FieldByName('UserID').AsString);
end;

end.
