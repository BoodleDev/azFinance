unit fmMyWorkNotify;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Unit32, ADODB;

type
  TfrmMyWorkNotify = class(TForm)
    grdNotify: TDBGrid;
    btnClose: TButton;
    imgNew: TImage;
    imgYes: TImage;
    imgNo: TImage;
    procedure grdNotifyDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdNotifyCellClick(Column: TColumn);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    ResultOK: Boolean;
  public
    { Public declarations }
  end;

var
  frmMyWorkNotify: TfrmMyWorkNotify;

implementation

uses dmMain, DB;

{$R *.dfm}

procedure TfrmMyWorkNotify.grdNotifyDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  (*if (Column.FieldName = 'NewDocument') or (Column.FieldName = 'NewNote') then
  begin
    grdNotify.Canvas.FillRect(Rect);
    if dtmMain.dsWorkNotify.FieldByName(Column.FieldName).AsBoolean then
      grdNotify.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left) - 16) div 2, Rect.Top, imgNew.Picture.Graphic);
  end; *)


  if Column.FieldName = 'Notified' then
  begin
    grdNotify.Canvas.FillRect(Rect);
    if dtmMain.dsWorkNotify.FieldByName('Notified').AsBoolean then
      grdNotify.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgYes.Width) div 2), Rect.Top + 1, imgYes.Picture.Bitmap)
    else
      grdNotify.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgNo.Width) div 2), Rect.Top + 1, imgNo.Picture.Bitmap);
  end;
end;

procedure TfrmMyWorkNotify.grdNotifyCellClick(Column: TColumn);
begin
  if Column.FieldName = 'Notified' then
  begin
    dtmMain.dsWorkNotify.Edit;
    dtmMain.dsWorkNotify.FieldByName('Notified').AsBoolean := not dtmMain.dsWorkNotify.FieldByName('Notified').AsBoolean;
    dtmMain.dsWorkNotify.FieldByName('NotifyDate').AsDateTime := Now;
    dtmMain.dsWorkNotify.FieldByName('NotifyUser').AsString := dtmMain.CurrentID;
    dtmMain.dsWorkNotify.Post;

    if dtmMain.dsWorkNotify.FieldByName('Notified').AsBoolean then
      ResultOK := True;
  end;
end;

procedure TfrmMyWorkNotify.btnCloseClick(Sender: TObject);
begin
  if ResultOK then
    ModalResult := mrOK
  else
    ModalResult := mrCancel;
end;

end.
