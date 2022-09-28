unit fmAccountLegalApplication;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, Mask, ComCtrls,
  DBDateTimePicker, ToolWin, ExtCtrls, db, Unit32;

type
  TfrmAccountLegalApplication = class(TForm)
    btnClose: TButton;
    imgFalse: TImage;
    imgTrue: TImage;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    grdApplication: TDBGrid;
    imgDocument: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure grdApplicationDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdApplicationDblClick(Sender: TObject);
  private
    TypeDescription: String;
    FAccountID: Integer;
    FTypeID: Integer;
    procedure SetAccountID(const Value: Integer);
    procedure SetTypeID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property AccountID: Integer read FAccountID write SetAccountID;
    property TypeID: Integer read FTypeID write SetTypeID;
  end;

var
  frmAccountLegalApplication: TfrmAccountLegalApplication;

implementation

uses dmMain, dmLegal, fmLegalApplicationMaintain;

{$R *.dfm}


procedure TfrmAccountLegalApplication.FormCreate(Sender: TObject);
begin
  dtmLegal := TdtmLegal.Create(Self);
end;

procedure TfrmAccountLegalApplication.btnNewClick(Sender: TObject);
begin
  (*with dtmLegal do
    begin
      cmdInsert.Parameters.ParamByName('AccountID').Value := dsApplication.Parameters[0].Value;
      cmdInsert.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
      cmdInsert.Parameters.ParamByName('ApplicationTypeID').Value := TypeID;
      cmdInsert.Execute;

      dsApplication.Requery();
      dsApplication.Locate('LegalApplicationID', cmdInsert.Parameters.ParamByName('ApplicationID').Value, [])
    end;*)

  if MessageDlg('Are you sure you want to create a new ' + TypeDescription + ' application?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      btnEditClick(Sender);
end;

procedure TfrmAccountLegalApplication.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dtmLegal);
end;

procedure TfrmAccountLegalApplication.SetAccountID(const Value: Integer);
begin
  FAccountID := Value;

  with dtmLegal do
  begin
    dsApplication.Close;
    dsApplication.Parameters.ParamByName('AccountID').Value := AccountID;
    dsApplication.Parameters.ParamByName('ApplicationTypeID').Value := TypeID;
    dsApplication.Open;

    //SetEditMode;
  end;
end;

procedure TfrmAccountLegalApplication.SetTypeID(const Value: Integer);
begin
  FTypeID := Value;

  if TypeID = 1 then
    TypeDescription:= 'Debt Review'
  else
    TypeDescription := 'Admin Order';

  Self.Caption := TypeDescription + ' Applications';
end;

procedure TfrmAccountLegalApplication.btnEditClick(Sender: TObject);
begin
  frmLegalApplicationMaintain := TfrmLegalApplicationMaintain.Create(Self);
  try
    if Sender = btnNew then
    begin
      dtmLegal.dsApplication.Insert;
      dtmLegal.dsApplication.FieldByName('AccountID').AsInteger := AccountID;
      dtmLegal.dsApplication.FieldByName('CreateUserID').AsInteger := dtmMain.UserKey;
      dtmLegal.dsApplication.FieldByName('LegalApplicationTypeID').AsInteger := TypeID;
    end
    else
      dtmLegal.dsApplication.Edit;

   if frmLegalApplicationMaintain.ShowModal = mrOK then
   begin
      dtmLegal.dsApplication.Post;
      RequeryOnRecord(dtmLegal.dsApplication, 'LegalApplicationID');
   end
   else
      dtmLegal.dsApplication.Cancel;
  finally
    FreeAndNil(frmLegalApplicationMaintain);
  end;
end;

procedure TfrmAccountLegalApplication.grdApplicationDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Graphic: TGraphic;
begin
  if (Column.FieldName = 'Excluded') or (Column.FieldName = 'Approved') then
  begin
    grdApplication.Canvas.FillRect(Rect);

    if dtmLegal.dsApplication.FieldByName(Column.FieldName).AsBoolean then
      Graphic := imgTrue.Picture.Graphic
    else
      Graphic := imgFalse.Picture.Graphic;

    grdApplication.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - Graphic.Width) div 2), Rect.Top + 2, Graphic);
  end;

  if Column.FieldName = 'ApplicationDate' then
    if not dtmLegal.dsApplication.FieldByName('ApplicationDocumentID').IsNull then
      grdApplication.Canvas.Draw(Rect.Right - 18, Rect.Top, imgDocument.Picture.Graphic);

  if Column.FieldName = 'ApproveRejectDate' then
    if not dtmLegal.dsApplication.FieldByName('ApproveRejectDocumentID').IsNull then
      grdApplication.Canvas.Draw(Rect.Right - 18, Rect.Top, imgDocument.Picture.Graphic);

  if Column.FieldName = 'CancelDate' then
    if not dtmLegal.dsApplication.FieldByName('CancelDocumentID').IsNull then
      grdApplication.Canvas.Draw(Rect.Right - 18, Rect.Top, imgDocument.Picture.Graphic);
end;

procedure TfrmAccountLegalApplication.grdApplicationDblClick(
  Sender: TObject);
begin
  btnEdit.Click;
end;

end.
