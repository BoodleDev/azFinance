unit dmGuiSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, DBClient, Provider, Unit32, stdCtrls;

type
  TdtmGuiSetup = class(TDataModule)
    dspGuiSetup: TDataSetProvider;
    cdsGuiSetup: TClientDataSet;
    cmdUpdate: TADOCommand;
    cmdInsert: TADOCommand;
    cdsGuiSetupAppID: TIntegerField;
    cdsGuiSetupControlName: TStringField;
    cdsGuiSetupControlCaption: TStringField;
    cdsGuiSetupFormName: TStringField;
    cdsGuiSetupControlType: TStringField;
    qryGuiSetup: TADOQuery;
    dtsGuiSetup: TDataSource;
    cdsGuiSetupStatus: TIntegerField;
    qryCRUD: TADOQuery;
    cmdCreateGUI: TADOCommand;
    procedure cdsGuiSetupBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetDefaults(Form: TForm; AppID: Integer);
    procedure SetGuiSetup(Form: TForm; AppID: Integer; Edit: Boolean);
    procedure PostGuiSetup;
    procedure InsertGui;
    procedure UpdateGui;
  end;

var
  dtmGuiSetup: TdtmGuiSetup;
const
  csNone   = 0;
  csInsert = 1;
  csUpdate = 2;
  csDelete = 3;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmGuiSetup.SetDefaults(Form: TForm; AppID: Integer);
begin
  RunQry(qryCRUD, 'Delete from GUI where ' +
    ' AppID = ' + IntToStr(AppID) +
    ' and FormName = ' + QuotedStr(Form.Name), 'E');
  cdsGuiSetup.Close;
end;

procedure TdtmGuiSetup.InsertGui;
begin
  RunQry(qryCRUD,'insert into GUI (AppID,FormName,ControlName,'+
       'ControlCaption,ControlType) values('+
       cdsGuiSetup.FieldByName('AppID').AsString + ',' +
       QuotedStr(cdsGuiSetup.FieldByName('FormName').AsString) + ',' +
       QuotedStr(cdsGuiSetup.FieldByName('ControlName').AsString) + ',' +
       QuotedStr(cdsGuiSetup.FieldByName('ControlCaption').AsString) + ',' +
       QuotedStr(cdsGuiSetup.FieldByName('ControlType').AsString)+ ')','E');
end;

procedure TdtmGuiSetup.UpdateGui;
begin
  RunQry(qryCRUD,'Update GUI set ControlCaption = '+
      QuotedStr(cdsGuiSetup.FieldByName('ControlCaption').AsString) + ' where '+
      'AppID = '+ cdsGuiSetup.FieldByName('AppID').AsString + ' and '+
      'FormName = '+QuotedStr(cdsGuiSetup.FieldByName('FormName').AsString) +' and '+
      'ControlName = '+QuotedStr(cdsGuiSetup.FieldByName('ControlName').AsString),'E');
end;

procedure TdtmGuiSetup.SetGuiSetup(Form: TForm; AppID: Integer; Edit: Boolean);
begin
  qryGuiSetup.Close;
  qryGuiSetup.Parameters.ParamValues[('Form;AppID')] := VarArrayOf([Form.Name,AppID]);
  try
    qryGuiSetup.Open;
  except
    cmdCreateGUI.Execute;
    qryGuiSetup.Open;
  end;

  if Edit then
    cdsGuiSetup.CreateDataSet
  else
  begin
    qryGuiSetup.First;
    while not qryGuiSetup.Eof do
    begin
      with TLabel(Form.FindComponent(qryGuiSetup.FieldByName('ControlName').AsString)) do
        Caption := qryGuiSetup.FieldByName('ControlCaption').AsString;
      qryGuiSetup.Next;
    end;
  end;
end;

procedure TdtmGuiSetup.cdsGuiSetupBeforePost(DataSet: TDataSet);
begin
  if cdsGuiSetup.State = dsEdit then
    if cdsGuiSetup.FieldByName('Status').AsInteger = csNone then
      cdsGuiSetup.FieldByName('Status').AsInteger := csInsert;
end;

procedure TdtmGuiSetup.PostGuiSetup;
begin
  if cdsGuiSetup.State = dsEdit then
    cdsGuiSetup.Post;
  cdsGuiSetup.DisableControls;
  while not cdsGuiSetup.Eof do
  begin
    case cdsGuiSetup.FieldByName('Status').AsInteger of
    csUpdate: UpdateGui;
    csInsert: InsertGui;
    end;
    cdsGuiSetup.Next;
  end;
  cdsGuiSetup.EnableControls;
end;

procedure TdtmGuiSetup.DataModuleDestroy(Sender: TObject);
begin
  cdsGuiSetup.Close;
end;

end.
