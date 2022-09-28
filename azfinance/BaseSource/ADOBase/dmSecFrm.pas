unit dmSecFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Unit32, ADODB,
  StdCtrls, DBCtrls, ExtCtrls, ComCtrls;

type
  TdtmSecFrm = class(TDataModule)
    qrySecFrm: TADODataSet;
    qryLoadFrm: TADODataSet;
    qryLoadRep: TADODataSet;
    qrySecBld: TADODataSet;
    procedure qrySecFrmBeforeOpen(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FGTAppID: integer;
  public
    { Public declarations }
    // property UserGrp : integer read FUserGrp;
    property GTAppID : integer read FGTAppID write FGTAppID;
    function CanShowFrm(FrmID :integer):boolean;
    function CanShowFrmMes(FrmID :integer):boolean;
    procedure SetForm(var FrmToSet :TForm; FrmID :integer);
    procedure SetFrmObj(var FrmToSet :TForm; FrmID :integer);
    procedure BuildSecFrm(FrmToSet :TForm; FrmID :integer);
  end;

var
  dtmSecFrm: TdtmSecFrm;

implementation

uses uConst, dmMain;

{$R *.DFM}

{ TdtmSecFrm }

procedure TdtmSecFrm.DataModuleCreate(Sender: TObject);
begin
  FGTAppID := AppID;
end;

procedure TdtmSecFrm.BuildSecFrm(FrmToSet: TForm; FrmID: integer);
var
  i : integer;
begin
  qrySecBld.Parameters[0].Value := GTAppID;
  qrySecBld.Parameters[1].Value := FrmID;
  qrySecBld.Open;
  // Do the From first
  if qrySecBld.Locate('ObjID',-1,[]) then
    qrySecBld.Edit
  else
    qrySecBld.Append;
  qrySecBld.FieldByName('AppID').AsInteger  := GTAppID;
  qrySecBld.FieldByName('FrmID').AsInteger  := FrmID;
  qrySecBld.FieldByName('ObjID').AsInteger  := -1;
  qrySecBld.FieldByName('ObjName').AsString := FrmToSet.ClassName;
  qrySecBld.FieldByName('ObjDesc').AsString := FrmToSet.Caption;
  qrySecBld.FieldByName('UseObj').AsInteger := 1;
  qrySecBld.Post;
  //
  for i := 0 to FrmToSet.ComponentCount-1 do
  begin
    if qrySecBld.Locate('ObjID',i,[]) then
      qrySecBld.Edit
    else
      qrySecBld.Append;
    //
    qrySecBld.FieldByName('AppID').AsInteger  := GTAppID;
    qrySecBld.FieldByName('FrmID').AsInteger  := FrmID;
    qrySecBld.FieldByName('ObjID').AsInteger  := i;
    qrySecBld.FieldByName('ObjName').AsString := TControl(FrmToSet.Components[i]).Name;
    if Length(qrySecBld.FieldByName('ObjDesc').AsString)= 0 then
      qrySecBld.FieldByName('ObjDesc').AsString := TControl(FrmToSet.Components[i]).Name;
    if not TControl(FrmToSet.Components[i]).Visible then
      qrySecBld.FieldByName('UseObj').AsInteger := 0;
    //
    if (FrmToSet.Components[i] is TLabel)  or
       (FrmToSet.Components[i] is TDBText) or
       (FrmToSet.Components[i] is TPanel) or
       (FrmToSet.Components[i] is TToolBar) or
       (FrmToSet.Components[i] is TPageControl) or
       (FrmToSet.Components[i] is TTabSheet) then
      qrySecBld.FieldByName('UseObj').AsInteger := 0;
    qrySecBld.Post;
  end;
  qrySecBld.Close;
  RunQry(dtmMain.qryToUse,'delete from GTfrmObj where AppID='+
    IntToStr(GTAppID)+' and FrmID='+IntToStr(FrmID)+' and ObjID>'+
    IntToStr(FrmToSet.ComponentCount-1),'E');
end;

procedure TdtmSecFrm.qrySecFrmBeforeOpen(DataSet: TDataSet);
begin
  TADOQuery(DataSet).Parameters[0].Value := GTAppID;
  TADOQuery(DataSet).Parameters[1].Value := dtmMain.UsrGrp;
end;

procedure TdtmSecFrm.SetForm(var FrmToSet :TForm; FrmID :integer);
var
  i : integer;
begin
  qrySecFrm.Parameters[2].Value := FrmID;
  qrySecFrm.Open;
//  FilterDataSet(qrySecFrm,'FrmID='+IntToStr(FrmID));
  for i := 0 to FrmToSet.ComponentCount-1 do
  begin
    if qrySecFrm.Locate('ObjID',i,[]) then
    begin
      TControl(FrmToSet.Components[i]).Enabled := qrySecFrm.FieldByName('ObjE').AsInteger = 1;
      if FrmToSet.Components[i] is TTabSheet then
        TTabSheet(FrmToSet.Components[i]).TabVisible := qrySecFrm.FieldByName('ObjV').AsInteger = 1
      else
        TControl(FrmToSet.Components[i]).Visible := qrySecFrm.FieldByName('ObjV').AsInteger = 1;
    end;
  end;
  qrySecFrm.Close;
end;

procedure TdtmSecFrm.SetFrmObj(var FrmToSet: TForm; FrmID: integer);
begin
  qrySecFrm.Parameters[2].Value := FrmID;
  qrySecFrm.Open;
  qrySecFrm.First;
  while not qrySecFrm.EOF do
  begin
    if qrySecFrm.FieldByName('ObjID').AsInteger > 0 then
      if qrySecFrm.FieldByName('ObjID').AsInteger <= FrmToSet.ComponentCount-1 then
      begin
        TControl(FrmToSet.Components[qrySecFrm.FieldByName('ObjID').AsInteger]).Enabled :=
          qrySecFrm.FieldByName('ObjE').AsInteger = 1;
        if FrmToSet.Components[qrySecFrm.FieldByName('ObjID').AsInteger] is TTabSheet then
          TTabSheet(FrmToSet.Components[qrySecFrm.FieldByName('ObjID').AsInteger]).TabVisible :=
           qrySecFrm.FieldByName('ObjV').AsInteger = 1
        else
          TControl(FrmToSet.Components[qrySecFrm.FieldByName('ObjID').AsInteger]).Visible :=
             qrySecFrm.FieldByName('ObjV').AsInteger = 1;
      end;
    qrySecFrm.Next;
  end;
  qrySecFrm.Close;
end;

procedure TdtmSecFrm.DataModuleDestroy(Sender: TObject);
begin
  qrySecFrm.Close;
end;

function TdtmSecFrm.CanShowFrm(FrmID :integer): boolean;
begin
  qryLoadFrm.Parameters[2].Value := FrmID;
  qryLoadFrm.Open;
  Result := qryLoadFrm.Fields[0].AsInteger = 1;
  qryLoadFrm.Close;
end;

function TdtmSecFrm.CanShowFrmMes(FrmID :integer): boolean;
begin
  if dtmMain.UsrGrp = GTAppID then
    Result := True
  else
    Result := CanShowFrm(FrmID);
  if not Result then
  begin
    Beep;
    MesDlg('You do not have access to this facility.','E');
  end;
end;

end.
