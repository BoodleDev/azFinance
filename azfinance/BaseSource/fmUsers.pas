unit fmUsers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DBGrdClr,
  dmUsers, Unit32;

type
  TfrmUsers = class(TfrmBase)
    grdUsers: TDBGrdClr;
    pnlTop: TPanel;
    cmbUserGrps: TComboBox;
    lblPrompt: TLabel;
    btnAddUsr: TToolButton;
    btnDelUsr: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure cmbUserGrpsChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDelUsrClick(Sender: TObject);
    procedure btnAddUsrClick(Sender: TObject);
  private
    { Private declarations }
    UserLst : TStringList;
    dtmUsers : TdtmUsers;
    function LUuser:integer;
    procedure PopulateCombo;
    procedure AddUserToGrp(inUsr: string);
  public
    { Public declarations }
  end;

implementation

uses dmMain, fmLUdata;

{$R *.DFM}

procedure TfrmUsers.FormCreate(Sender: TObject);
begin
  inherited;
  dtmUsers := TdtmUsers.Create(Self);
  dtmUsers.SetActiveQueries(True);
  //
  dtmMain.SetGrdColors(grdUsers);
  PopulateCombo;
  FilterDataSet(dtmUsers.qryUsrLst,'UsrGrp = '+ UserLst.Values[cmbUserGrps.Text]);
end;

procedure TfrmUsers.PopulateCombo;
begin
  //Populating filter combobox
  UserLst := TStringList.Create;
  dtmUsers.qryLUUsrGrp.First;
  while not dtmUsers.qryLUUsrGrp.Eof do
  begin
    cmbUserGrps.Items.Add(dtmUsers.qryLUUsrGrp.FieldByName('description').AsString);
    UserLst.Add(dtmUsers.qryLUUsrGrp.FieldByName('Description').AsString+'='+
      dtmUsers.qryLUUsrGrp.FieldByName('TypeKey').AsString);
    dtmUsers.qryLUUsrGrp.Next;
  end;
  cmbUserGrps.ItemIndex := 0;
end;

procedure TfrmUsers.cmbUserGrpsChange(Sender: TObject);
begin
  FilterDataSet(dtmUsers.qryUsrLst,'UsrGrp='+ UserLst.Values[cmbUserGrps.Text]);
end;

procedure TfrmUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  UserLst.Free;
  UserLst := nil;
  //
  dtmUsers.Free;
  dtmUsers := nil;
end;

procedure TfrmUsers.AddUserToGrp(inUsr: string);
begin
//  if not dtmUsers.qryUsrLst.Locate('UserID',inUsr,[]) then
  begin
    dtmUsers.ExeAQry('insert into SecurityUAG values('''+inUsr+''','+
       dtmUsers.qryUsrLst.FieldByName('AppID').AsString+','+
       dtmUsers.qryUsrLst.FieldByName('UsrGrp').AsString+')');
    dtmUsers.qryUsrLst.Requery;
    MesDlg('User added group','I');
  end
//  else
//    MesDlg('User already in group.','I');
end;

procedure TfrmUsers.btnAddUsrClick(Sender: TObject);
begin
  inherited;
  if dtmUsers.qryUsrLst.FieldByName('UserID').IsNull then
    MesDlg('Have to add a least one user, in "Security form" for this function.','I')
  else
  begin
    dtmUsers.qryLUusers.Open;
    if LUuser = 0 then
    begin
     //
     if MesDlg('Add user '+dtmUsers.qryLUUsers.FieldByName('UserID').AsString+
       ' to user group '+dtmUsers.qryUsrLst.FieldByName('LUGroup').AsString+'?','C')
       = mrYes then
     begin
       AddUserToGrp(dtmUsers.qryLUUsers.FieldByName('UserID').AsString);
     end;
    end;
    dtmUsers.qryLUusers.Close;
  end;
end;

procedure TfrmUsers.btnDelUsrClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Delete user '+dtmUsers.qryUsrLst.FieldByName('UserID').AsString+
    ' from user group '+dtmUsers.qryUsrLst.FieldByName('LUGroup').AsString+'?','C')
    = mrYes then
  begin
    //
    dtmUsers.ExeAQry('delete from SecurityUAG where UserID='''+
      dtmUsers.qryUsrLst.FieldByName('UserID').AsString+''' and UsrGrp='+
      dtmUsers.qryUsrLst.FieldByName('UsrGrp').AsString);
    dtmUsers.qryUsrLst.Requery;
    MesDlg('User removed from group','I');
  end;
end;

function TfrmUsers.LUuser:integer;
var
  frmLUusr  : TfrmLUdata;
begin
  frmLUusr := TfrmLUData.Create(self);
  try
    frmLUusr.SetLookUpForm(dtmUsers.qryLUUsers,'Lookup users',True);
    frmLUusr.ShowModal;
    Result := frmLUusr.ChoosenID;
  finally
    frmLUusr.Free;
  end;
end;

end.
