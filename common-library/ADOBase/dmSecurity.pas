unit dmSecurity;

interface

uses
  Windows, Messages, SysUtils, Classes, Variants, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, DBClient, Provider, comobj, Unit32;

type
  TdtmSecurity = class(TDataModule)
    qrySecurity: TADODataSet;
    dtsSecurity: TDataSource;
    qryUserGroups: TADODataSet;
    dtsUserGroups: TDataSource;
    cdsControls: TClientDataSet;
    cdsControlsControl: TStringField;
    dtsControls: TDataSource;
    cdsControlsCaption: TStringField;
    cdsControlsType: TStringField;
    cmdDeleteAll: TADOCommand;
    qryUserGroup: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    AppID: Integer;
    Form: String;
    UserGroup: Integer;
  public
    { Public declarations }
    procedure AddAllControl;
    procedure AddControl(Control: String; ShowMes: Boolean);
    procedure DeleteAll(UserGroup: Integer);
    procedure DoSecuritySetup(Form: TForm);
    procedure LoadUserStrings(UserGroups: TStrings);
    procedure SetSecurity;
    procedure SetSecurityControls(Form: TForm);
    procedure SetSecurityParameters(FormName: String; ApplicationID: Integer);
    procedure SetUserGroup(UserID: String; ApplicationID: Integer);
  end;

var
  dtmSecurity: TdtmSecurity;

    function SetVisible(SecurityForm: TForm; ControlName: String;
      ShowControl: Boolean): Boolean;

implementation

uses dmMain, uConst, fmBase_Security;

{$R *.DFM}

procedure TdtmSecurity.SetSecurityParameters(FormName: String; ApplicationID: Integer);
begin
  Form := FormName;
  AppID := ApplicationID;
end;

procedure TdtmSecurity.DataModuleCreate(Sender: TObject);
begin
  cdsControls.CreateDataSet;
  SetUserGroup(dtmMain.CurrentID, uConst.AppID);
end;

procedure TdtmSecurity.LoadUserStrings(UserGroups: TStrings);
begin
  UserGroups.Clear;
  qryUserGroups.First;
  while not qryUserGroups.Eof do
  begin
    UserGroups.Add(qryUserGroups.FieldByName('Description').AsString);
    qryUserGroups.Next;
  end;
end;

procedure TdtmSecurity.SetSecurity;
begin
  qrySecurity.Parameters.ParamValues['UserGroup;Form;AppID'] :=
    VarArrayOf([qryUserGroups.FieldByName('TypeKey').Value,Form,AppID]);
  qrySecurity.Requery;
end;

procedure TdtmSecurity.AddControl(Control: String; ShowMes: Boolean);
begin
  try
    qrySecurity.Append;
    qrySecurity.FieldByName('AppID').AsInteger := AppID;
    qrySecurity.FieldByName('Form').AsString := Form;
    qrySecurity.FieldByName('UserGroup').AsInteger := qryUserGroups.FieldByName('TypeKey').AsInteger;
    qrySecurity.FieldByName('Control').AsString := Control;
    qrySecurity.Post;
  except
    qrySecurity.Cancel;
    if ShowMes then
      MesDlg('The control has already been added to this usergroup','I');
  end;
end;

procedure TdtmSecurity.AddAllControl;
var
  RecNo: Integer;
begin
  RecNo := cdsControls.RecNo;
  cdsControls.DisableControls;
  qrySecurity.DisableControls;
  try
    Screen.Cursor := crHourGlass;
    cdsControls.First;
    while not cdsControls.Eof do
    begin
      AddControl(cdsControls.FieldByName('Control').AsString, False);
      cdsControls.Next;
    end;
  finally
    Screen.Cursor := crDefault;
    cdsControls.RecNo := RecNo;
    cdsControls.EnableControls;
    qrySecurity.First;
    qrySecurity.EnableControls;
  end;
end;

procedure TdtmSecurity.DeleteAll(UserGroup: Integer);
begin
  cmdDeleteAll.Parameters.ParamValues['UserGroup;Form;AppID'] :=
    VarArrayOf([UserGroup,Form,AppID]);
  cmdDeleteAll.Execute;
  qrySecurity.Requery;
end;

procedure TdtmSecurity.SetSecurityControls(Form: TForm);
begin
  if qrySecurity.Active then
    qrySecurity.Close;
  qrySecurity.Parameters.ParamValues[('UserGroup;Form;AppID')] :=
    VarArrayOf([UserGroup,Form.Name,UConst.AppID]);
  try
    qrySecurity.Open;
    qrySecurity.First;
    while not qrySecurity.Eof do
    begin
      with TControl(Form.FindComponent(qrySecurity.FieldByName('Control').AsString)) do
        Visible := False;
      qrySecurity.Next;
    end;
  finally
   qrySecurity.Close;
  end;
end;

procedure TdtmSecurity.SetUserGroup(UserID: String; ApplicationID: Integer);
begin
  qryUserGroup.Parameters.ParamValues['UserID;AppID'] :=
    VarArrayOf([UserID,ApplicationID]);
  qryUserGroup.Open;
  UserGroup := qryUserGroup.Fields[0].AsInteger;
  qryUserGroup.Close;
end;

procedure TdtmSecurity.DoSecuritySetup(Form: TForm);
var
  frmSecurity: TfrmBase_Security;
begin
  if Uppercase(dtmMain.CurrentID) = 'ADMIN' then
  begin
    frmSecurity := TfrmBase_Security.Create(Self);
    frmSecurity.LoadControls(Form);
    frmSecurity.ShowModal;
    FreeAndNil(frmSecurity);
  end
  else
    MessageDlg('User does not sufficient privileges to access to this facility', mtInformation, [mbOK], 0);
end;

function SetVisible(SecurityForm: TForm; ControlName: String;
  ShowControl: Boolean): Boolean;
begin
  if not ShowControl then
    Result := False
  else
  begin
    with dtmSecurity do
    begin
      if qrySecurity.Active then
        qrySecurity.Close;
      qrySecurity.Parameters.ParamValues[('UserGroup;Form;AppID')] :=
        VarArrayOf([UserGroup,SecurityForm.Name,UConst.AppID]);
      try
        qrySecurity.Open;
        qrySecurity.First;
        Result := not qrySecurity.Locate('Control',ControlName,[]);
      finally
        qrySecurity.Close;
      end;
    end;
  end;
end;

end.
