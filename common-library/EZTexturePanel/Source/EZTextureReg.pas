unit EZTextureReg;

interface

uses
  Windows, Classes, Graphics, Forms, Controls, EZTexturePanel, Buttons, DesignIntf,
  DesignWindows, StdCtrls, ComCtrls, DesignEditors, Dialogs, SysUtils,
  Grids, CheckLst;

type
  TEZShadeDlg = class(TForm)
    CheckListBox1: TCheckListBox;
    procedure ButtonClose(Sender: TObject);
    procedure UpdateItems;
    procedure FormShow(Sender: TObject);
    procedure CheckListChange(Sender: TObject);
  private
    CurrItem     : integer;
    EditorShades : TEZShades;
    ShadeObjects : TShadeObjects;
  public
    { Public declarations }
  end;

  TEZTextureProperty = class(TClassProperty)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
  end;

  TEZShadeEditor = class(TDefaultEditor)
  protected
    procedure EditProperty(const PropertyEditor: IProperty; var Continue: Boolean); override;
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

var
  EZShadeDlg: TEZShadeDlg;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EZJ', [TEZTexturePanel]);
  RegisterPropertyEditor(TypeInfo(TEZShades), nil, '', TEZTextureProperty);
  RegisterComponentEditor(TEZTexturePanel, TEZShadeEditor);
end;

{$R *.dfm}
////////////////////////////////////////////////////////////////////////////////
procedure TEZShadeEditor.EditProperty(const PropertyEditor: IProperty;var Continue: Boolean);
var
  PropName: string;
begin
  PropName := PropertyEditor.GetName;
  if (CompareText(PropName, 'SHADEOBJECTS') = 0) then begin
    PropertyEditor.Edit;
    Designer.Modified;
    Continue := False;
  end;
end;
//------------------------------------------------------------------------------
function TEZShadeEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;
//------------------------------------------------------------------------------
function TEZShadeEditor.GetVerb(Index: Integer): string;
begin
  if Index = 0 then Result := 'Edit shaded objects'
  else Result := '';
end;
//------------------------------------------------------------------------------
procedure TEZShadeEditor.ExecuteVerb(Index: Integer);
begin
  if Index = 0 then Edit;
end;
////////////////////////////////////////////////////////////////////////////////
procedure TEZTextureProperty.Edit;
var
  EZSP : TEZShades;
  EZShadeEditor: TEZShadeDlg;
begin
  EZSP := TEZShades(GetOrdValue);
  EZShadeEditor := TEZShadeDlg.Create(Application);
  try
    EZShadeEditor.EditorShades := TEZShades.Create;
    EZShadeEditor.EditorShades.LoadFromStream(EZSP);
    LoadShades(EZShadeEditor.ShadeObjects,EZShadeEditor.EditorShades);
    EZShadeEditor.ShowModal;
  finally
    SaveShades(EZShadeEditor.EditorShades,EZShadeEditor.ShadeObjects);
    EZSP.LoadFromStream(EZShadeEditor.EditorShades);
    EZShadeEditor.Free;
  end;
  with GetComponent(0) as TEZTexturePanel do begin
    UpdateShadeObjects;
    UpdateTexture;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
function TEZTextureProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;
////////////////////////////////////////////////////////////////////////////////
procedure TEZShadeDlg.ButtonClose(Sender: TObject);
begin
 Close;
end;
//------------------------------------------------------------------------------
procedure TEZShadeDlg.UpdateItems;
var
  I,J : integer;
begin
  CheckListBox1.Items.Clear;
  for I := 0 to Length(ShadeObjects)-1 do begin
     J := CheckListBox1.Items.Add(ShadeObjects[I].Name);
     if (ShadeObjects[I].Act <> saNone) then CheckListBox1.Checked[J] := True
     else CheckListBox1.Checked[J] := False;
     if (ShadeObjects[I].Inherit = 'None') or (ShadeObjects[I].Visible = 0) then begin
       CheckListBox1.ItemEnabled[J] := False;
       ShadeObjects[I].Act          := saNone;
     end;
  end;
end;
//------------------------------------------------------------------------------
procedure TEZShadeDlg.FormShow(Sender: TObject);
begin
 UpdateItems;
end;
//------------------------------------------------------------------------------
procedure TEZShadeDlg.CheckListChange(Sender: TObject);
var
  I : Integer;
begin
  CurrItem := -1;
  for I := 0 to CheckListBox1.Items.Count-1 do if CheckListBox1.Selected[I] then CurrItem := I;

  if (CurrItem > -1) then begin
    if      ShadeObjects[CurrItem].Inherit = 'Window' then ShadeObjects[CurrItem].Act := saWindow
    else if ShadeObjects[CurrItem].Inherit = 'Shape'  then ShadeObjects[CurrItem].Act := saShape
    else if ShadeObjects[CurrItem].Inherit = 'Label'  then ShadeObjects[CurrItem].Act := saText
    else if ShadeObjects[CurrItem].Inherit = 'EZTex'  then ShadeObjects[CurrItem].Act := saShape
    else ShadeObjects[CurrItem].Act := saNone;
    if not CheckListBox1.Checked[CurrItem] then ShadeObjects[CurrItem].Act := saNone;
  end;

  UpdateItems;
end;
//------------------------------------------------------------------------------
end.
