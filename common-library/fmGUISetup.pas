unit fmGUISetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Grids, Db, ADODB, DBGrids, ComCtrls, DBGrdCF,
  cdsSortGrd, Provider, DBClient, Unit32, StdCtrls, Dsgnintf;

type
  TfrmGUISetup = class(TForm)
    Panel1: TPanel;
    btnDefault: TSpeedButton;
    btnSave: TSpeedButton;
    btnCancel: TSpeedButton;
    grdControls: TcdsSortGrd;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDefaultClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FCurrentForm: TForm;
    { Private declarations }
    procedure AddControl(Control: TControl);
    procedure SetCurrentForm(const Value: TForm);
  public
    { Public declarations }
    property CurrentForm: TForm read FCurrentForm write SetCurrentForm;
    procedure GetControls(Master: TWinControl);
  end;

implementation

uses dmMain, dmGuiSetup, uConst;

{$R *.DFM}

procedure TfrmGUISetup.FormCreate(Sender: TObject);
begin
  dtmMain.SetGrdColors([grdControls]);
  //dtmGuiSetup := TdtmGuiSetup.Create(self);
//  dtmGuiSetup.SetActiveQueries(True);
end;

procedure TfrmGUISetup.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGUISetup.btnSaveClick(Sender: TObject);
begin
  //dtmGuiSetup.CheckGUIStatus;
  dtmGuiSetup.PostGuiSetup;
  Close; 
//  dtmGuiSetup.InsertUpdateGUI;
//  dtmGuiSetup.cdsGuiSetup.ApplyUpdates(-1);
//  Close;
end;

procedure TfrmGUISetup.btnDefaultClick(Sender: TObject);
begin
  if MesDlg('Are you sure you want to apply defaults?', 'C') = mrYes then
  begin
    dtmGuiSetup.SetDefaults(CurrentForm, UConst.AppID);
    GetControls(CurrentForm);
  end;
end;

procedure TfrmGUISetup.AddControl(Control: TControl);
begin
  dtmGuiSetup.cdsGuiSetup.Append;
  dtmGuiSetup.cdsGuiSetup.FieldByName('AppID').AsInteger := uConst.AppID;
  dtmGuiSetup.cdsGuiSetup.FieldByName('FormName').AsString := CurrentForm.Name;
  dtmGuiSetup.cdsGuiSetup.FieldByName('ControlName').AsString := TControl(Control).Name;
  if dtmGuiSetup.qryGuiSetup.Locate('ControlName', TControl(Control).Name,
    [loCaseInsensitive]) then
  begin
    dtmGuiSetup.cdsGuiSetup.FieldByName('ControlCaption').AsString :=
      dtmGuiSetup.qryGuiSetup.FieldByName('ControlCaption').AsString;
    dtmGuiSetup.cdsGuiSetup.FieldByName('Status').AsInteger := 2;
  end
  else
  begin
    dtmGuiSetup.cdsGuiSetup.FieldByName('ControlCaption').AsString := TLabel(Control).Caption;
    dtmGuiSetup.cdsGuiSetup.FieldByName('Status').AsInteger := 0;
  end;
  dtmGuiSetup.cdsGuiSetup.FieldByName('ControlType').AsString := TControl(Control).ClassName;
  dtmGuiSetup.cdsGuiSetup.Post;
end;

procedure TfrmGUISetup.GetControls(Master : TWinControl);
var
  I: Integer;
//  Control: TControl;
begin
  if Master is TForm then
    CurrentForm := TForm(Master);
  for I := 0 to Master.ControlCount - 1 do
  begin
    Try
    if Master.Controls[I] is TWinControl then
    begin
      if TWinControl(Master.Controls[I]).ControlCount > 0 then
        GetControls(TWinControl(Master.Controls[I]));
    end;
    if Master.Controls[I] is TLabel then
      AddControl(Master.Controls[I]);
    Except
    end;
  end;
  dtmGuiSetup.cdsGuiSetup.First;
end;

procedure TfrmGUISetup.SetCurrentForm(const Value: TForm);
begin
  FCurrentForm := Value;
  dtmGuiSetup.SetGuiSetup(Value,uConst.AppID, True);
end;

procedure TfrmGUISetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmGuiSetup.cdsGuiSetup.Close;
  dtmGuiSetup.qryGuiSetup.Close;
end;

end.
