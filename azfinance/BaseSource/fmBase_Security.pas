unit fmBase_Security;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  stdctrls, Db, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, DBGrdClr,
  dbcgrids, Buttons, Menus;

type
  TfrmBase_Security = class(TForm)
    PanelMain: TPanel;
    grdControl: TDBGrid;
    DBGrid3: TDBGrid;
    cmbType: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    btnAdd: TSpeedButton;
    btnRemove: TSpeedButton;
    btnAddAll: TSpeedButton;
    btnRemoveAll: TSpeedButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    cmbGroups: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlDockUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure pnlDockDockDrop(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer);
    procedure cmbTypeChange(Sender: TObject);
    procedure grdControlDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Exit1Click(Sender: TObject);
    procedure cmbGroupsChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
  private
    procedure AddControl(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer); overload;
    procedure AddControl(Control: TControl); overload;
    { Private declarations }
  public
    { Public declarations }
    procedure CopyScreen(Master, Parent: TWinControl);
    procedure LoadControls(Master: TWinControl);
  end;

var
  //frmBase_Security: TfrmBase_Security;
  CurrentForm: TForm;

const
  Button = 'Button';
  LLabel = 'Label';
  Grid  = 'Grid';
  Input = 'Input';

implementation

uses uConst, dmSecurity;

{$R *.DFM}

procedure TfrmBase_Security.CopyScreen(Master, Parent: TWinControl);
{var
  I: Integer;
  Control: TControl;}
begin
  {if Master is TForm then
  begin
    CurrentForm := TForm(Master);
    TForm(Parent).Caption := 'Security setup - ' + CurrentForm.Caption;
    pnlSetup.Width := 150;
    TForm(Parent).Left := CurrentForm.Left + 20;
    TForm(Parent).Top  := CurrentForm.Top;
    TForm(Parent).Height := CurrentForm.Height;
    TForm(Parent).Width := CurrentForm.Width;// + pnlSetup.Width;
  end;
  //Showmessage(Parent.Name);
  for I := 0 to Master.ControlCount - 1 do
  begin
    //CClass := Master.Controls[I].ClassType;
    if Master.Controls[I] is TCustomLabel then
    begin
      Control := TLabel.Create(Self);
      TLabel(Control).Caption := TLabel(Master.Controls[I]).Caption;
      TLabel(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TButton then
    begin
      Control := TButton.Create(Self);
      TButton(Control).Caption := TButton(Master.Controls[I]).Caption;
      TButton(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TCustomEdit then //(Master.Controls[I] is TEdit) or (Master.Controls[I] is TDBEdit) then
    begin
      Control := TEdit.Create(Self);
      TEdit(Control).Text := TEdit(Master.Controls[I]).Text;
      TEdit(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TPageControl then
    begin
      Control := TPageControl.Create(Self);
      //TPageControl(Control).Text := TPageControl(Form.Controls[I]).Text;
      //TPageControl(Control).OnClick := AddControl;
    end
    else if Master.Controls[I] is TTabSheet then
    begin
      Control := TTabSheet.Create(Self);
      TTabSheet(Control).Caption := TTabSheet(Master.Controls[I]).Caption;
      TTabSheet(Control).TabVisible := TTabSheet(Master.Controls[I]).TabVisible;
      TTabSheet(Control).PageControl := TPageControl(Parent);
      TTabSheet(Control).PageIndex := TTabSheet(Master.Controls[I]).PageIndex;
      TTabSheet(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TPanel then
    begin
      Control := TPanel.Create(Self);
      //TPanel(Control).Caption := TPanel(Master.Controls[I]).Caption;
      //TPanel(Control).Parent := TPanel(Form.Controls[I]).Parent;
    end
    else if Master.Controls[I] is TToolBar then
    begin
      Control := TToolBar.Create(Self);
      TToolBar(Control).Caption := TToolBar(Master.Controls[I]).Caption;
      TToolBar(Control).ShowCaptions := TToolBar(Master.Controls[I]).ShowCaptions;
    end
    else if Master.Controls[I] is TToolButton then
    begin
      Control := TToolButton.Create(Self);
      TToolButton(Control).Caption := TToolButton(Master.Controls[I]).Caption;
      TToolButton(Control).AutoSize := TToolButton(Master.Controls[I]).AutoSize;
      TToolButton(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TStatusBar then
    begin
      Control := TStatusBar.Create(Self);
      TStatusBar(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TDBGrid then
    begin
      Control := TDBGrid.Create(Self);
      TDBGrid(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TDBCtrlGrid then
    begin
      Control := TDBCtrlGrid.Create(Self);
      TDBCtrlGrid(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is  TDBCtrlPanel then
    begin
      Control := TDBCtrlPanel.Create(Self);
      //TDBCtrlPanel(Control).OnMouseDown := AddControl;
    end
    else if (Master.Controls[I] is TComboBox) or (Master.Controls[I] is TDBLookupComboBox) then
    begin
      Control := TDBLookupComboBox.Create(Self);
      TDBLookupComboBox(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TDBRadioGroup then
    begin
      Control := TRadioGroup.Create(Self);
      //TRadioGroup(Control).OnMouseDown := AddControl;
    end
    else if Master.Controls[I] is TGroupBox then
    begin
      Control := TGroupBox.Create(Self);
      TGroupBox(Control).OnMouseDown := AddControl;
    end
    else
      Control := TControl.Create(Self);

    Control.Cursor  := crHandPoint;
    Control.Parent  := Parent;
    Control.Name    := Master.Controls[I].Name;
    Control.Anchors := Master.Controls[I].Anchors;
    Control.Align   := Master.Controls[I].Align;
    Control.Left    := Master.Controls[I].Left;
    Control.Top     := Master.Controls[I].Top;
    Control.Width   := Master.Controls[I].Width;
    Control.Height  := Master.Controls[I].Height;
    Control.Hint    := Control.Name + ': ' + Control.ClassName;
    Control.ShowHint := True;

    if Control is TPanel then
      TPanel(Control).Caption := TPanel(Master.Controls[I]).Caption;

    try
    if Master.Controls[I] is TWinControl then
      if TWinControl(Master.Controls[I]).ControlCount > 0 then
        CopyScreen(TWinControl(Master.Controls[I]), TWinControl(Control));
    except
      Showmessage(Master.Controls[I].ClassName);
      Showmessage(Master.Controls[I].Name);
    end;
  end;}
end;

procedure TfrmBase_Security.LoadControls(Master : TWinControl);
var
  I: Integer;
//  Control: TControl;
begin
  if Master is TForm then
  begin
    CurrentForm := TForm(Master);
    dtmSecurity.SetSecurityParameters(TForm(Master).Name, uConst.AppID);
  end;
  for I := 0 to Master.ControlCount - 1 do
  begin
    Try
    if Master.Controls[I] is TWinControl then
    begin
      if TWinControl(Master.Controls[I]).ControlCount > 0 then
        LoadControls(TWinControl(Master.Controls[I]));
    end;
    if Master.Controls[I].Visible then
      AddControl(Master.Controls[I]);
    Except
    end;
  end;
  dtmSecurity.cdsControls.First;
end;

procedure TfrmBase_Security.AddControl(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {if Sender is TTabSheet then
    if not (Button = mbRight) then
      Abort; }
  dtmSecurity.cdsControls.Append;
  dtmSecurity.cdsControls.FieldByName('AppID').AsInteger := uConst.AppID;
  dtmSecurity.cdsControls.FieldByName('Form').AsString := CurrentForm.Name;
  dtmSecurity.cdsControls.FieldByName('UserGroup').AsInteger :=
    dtmSecurity.cdsControls.FieldByName('TypeKey').AsInteger;
  dtmSecurity.cdsControls.FieldByName('Control').AsString := TControl(Sender).Name;
  dtmSecurity.cdsControls.Post;
end;

procedure TfrmBase_Security.FormCreate(Sender: TObject);
begin
  dtmSecurity.qryUserGroups.Open;
  dtmSecurity.qrySecurity.Open;

  cmbType.ItemIndex := 0;
  cmbTypeChange(Self);
  dtmSecurity.cdsControls.EmptyDataSet;

  dtmSecurity.LoadUserStrings(cmbGroups.Items);
end;

procedure TfrmBase_Security.FormShow(Sender: TObject);
begin
 { Height := Height + 1;
  pnlSetup.ManualDock(pnlDock);  }
  cmbGroups.ItemIndex := 0;
  cmbGroupsChange(cmbGroups);
end;

procedure TfrmBase_Security.pnlDockUnDock(Sender: TObject;
  Client: TControl; NewTarget: TWinControl; var Allow: Boolean);
begin
  //Width := Width - pnlSetup.Width;
end;

procedure TfrmBase_Security.pnlDockDockDrop(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer);
begin
 // Width := Width + pnlSetup.Width;
end;

procedure TfrmBase_Security.AddControl(Control: TControl);
var
  Display, Typ: String;
begin
  if Control is TCustomLabel then
  begin
    Display := TLabel(Control).Caption;
    Typ := LLabel;
  end
  else if Control is TButton then
  begin
    Display := TButton(Control).Caption;
    Typ := Button;
  end
  else if Control is TToolButton then
  begin
    Display := TToolButton(Control).Caption;
    Typ := Button;
  end
  else if Control is TCustomEdit then
    Typ := Input
  else if Control is TDBGrid then
    Typ := Grid;

  if Display = '' then
    Display := 'zz';

  dtmSecurity.cdsControls.Append;
  dtmSecurity.cdsControls.FieldByName('Caption').AsString := Trim(Display);
  dtmSecurity.cdsControls.FieldByName('Control').AsString := TControl(Control).Name;
  dtmSecurity.cdsControls.FieldByName('Type').AsString := Typ;
  dtmSecurity.cdsControls.Post;
end;

procedure TfrmBase_Security.cmbTypeChange(Sender: TObject);
begin
  if cmbType.ItemIndex = 0 then
    dtmSecurity.cdsControls.Filtered := False
  else
  begin
    dtmSecurity.cdsControls.Filter := 'Type = '+ QuotedStr(cmbType.Text);
    dtmSecurity.cdsControls.Filtered := True;
  end;
end;

procedure TfrmBase_Security.grdControlDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DataCol = 0 then
    if dtmSecurity.cdsControls.FieldByName('Caption').AsString = 'zz' then
    begin
      grdControl.Canvas.Brush.Color := Self.Color;
      grdControl.Canvas.FillRect(Rect);
    end;
end;

procedure TfrmBase_Security.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBase_Security.cmbGroupsChange(Sender: TObject);
begin
  dtmSecurity.qryUserGroups.Locate('Description',cmbGroups.Text,[]);
  dtmSecurity.SetSecurity;
end;

procedure TfrmBase_Security.btnAddClick(Sender: TObject);
begin
  dtmSecurity.AddControl(dtmSecurity.cdsControls.FieldByName('Control').AsString, True);
end;

procedure TfrmBase_Security.btnRemoveClick(Sender: TObject);
begin
  dtmSecurity.qrySecurity.Delete;
end;

procedure TfrmBase_Security.btnRemoveAllClick(Sender: TObject);
begin
  dtmSecurity.DeleteAll(dtmSecurity.qryUserGroups.FieldByName('TypeKey').AsInteger);
end;

procedure TfrmBase_Security.btnAddAllClick(Sender: TObject);
begin
  dtmSecurity.AddAllControl;
end;

end.
