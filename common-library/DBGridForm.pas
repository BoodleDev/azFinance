unit DBGridForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBStyleGrid, ComCtrls, ToolWin, Unit32,
  CustomTypes, Math, ImgList, ADODB;

type
  TDBGridForm1 = class(TForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnView: TToolButton;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    imgTools: TImageList;
    DBStyleGrid1: TDBStyleGrid;
    procedure btnViewClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
    VarList1: TStringList;
    FDataModule: TDataModule;
    FConnection: TADOConnection;
    procedure ExecuteDetailForm(DataMode: TDataMode);
  public
    { Public declarations }
    property DataModule: TDataModule read FDataModule write FDataModule;
    property Connection: TADOConnection read FConnection write FConnection;
  end;

implementation

uses UnitPlus;

{$R *.dfm}

{procedure Execute(Form: TForm; VarList: TStringList);
begin
  TDBGridForm1(Form).DataModule := TDBGridForm1(Form).DataModule.Create(Form);
  TDBGridForm1(Form).VarList1 := VarList;
  with TDBGridForm1(Form).Connection do
  begin
    Connected := False;
    ConnectionString := VarList.Values['ConnectionString'];
    Connected := True;
  end;
end;}

procedure TDBGridForm1.btnViewClick(Sender: TObject);
begin
  ExecuteDetailForm(dmRead);
end;

procedure TDBGridForm1.btnNewClick(Sender: TObject);
begin
  ExecuteDetailForm(dmNew);
end;

procedure TDBGridForm1.btnEditClick(Sender: TObject);
begin
  ExecuteDetailForm(dmEdit);
end;

procedure TDBGridForm1.ExecuteDetailForm(DataMode: TDataMode);
var
  UserID: String;
begin
 { if VarList1.IndexOfName('DataMode') > -1 then
    VarList1.Values['DataMode'] := IntToStr(DataMode)
  else
    VarList1.Add('DataMode=' + IntToStr(DataMode));

  if DataMode = dmNew then
    UserID := ''
  else
    UserID := dtmUserSecurity.dsSecurityUsers.FieldByName('UserID').AsString;

  if VarList1.IndexOfName('Key') > -1 then
    VarList1.Values['Key'] := UserID
  else
    VarList1.Add('Key=' + UserID);
  if LoadModuleModal('Security.bpl','TfrmUserAccount','ExecuteUserAccount', VarList1) = mrOK then
    RequeryOnRecord(dtmUserSecurity.dsSecurityUsers,'UserID');}
end;

procedure TDBGridForm1.FormResize(Sender: TObject);
begin

end;

{exports
  Execute;}

initialization
  RegisterClass(TDBGridForm1);

finalization
  UnRegisterClass(TDBGridForm1);


end.
