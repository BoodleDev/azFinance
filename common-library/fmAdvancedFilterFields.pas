unit fmAdvancedFilterFields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ADODB, Menus;

type
  TfrmAdvancedFilterFields = class(TForm)
    clbFields: TCheckListBox;
    btnOK: TButton;
    btnCancel: TButton;
    ppmSelection: TPopupMenu;
    SelectAll1: TMenuItem;
    ClearAll1: TMenuItem;
    procedure SelectAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function CreateFieldSelection(DataSet: TADODataSet): Boolean;

var
  frmAdvancedFilterFields: TfrmAdvancedFilterFields;

implementation

{$R *.dfm}

function CreateFieldSelection(DataSet: TADODataSet): Boolean;
var
  I: Integer;
begin
  frmAdvancedFilterFields := TfrmAdvancedFilterFields.Create(nil);
  try
    for I := 0 to DataSet.Fields.Count - 1 do
    begin
      frmAdvancedFilterFields.clbFields.Items.Add(DataSet.Fields[I].FieldName);
      frmAdvancedFilterFields.clbFields.Checked[I] := DataSet.Fields[I].Visible;
    end;           
    if frmAdvancedFilterFields.ShowModal = mrOK then
    begin
      for I := 0 to frmAdvancedFilterFields.clbFields.Items.Count -1 do
        DataSet.Fields[I].Visible := frmAdvancedFilterFields.clbFields.Checked[I];
    end;
  finally
    FreeAndNil(frmAdvancedFilterFields);
  end;
  Result := True;
end;

procedure TfrmAdvancedFilterFields.SelectAll1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to clbFields.Items.Count - 1 do
    clbFields.Checked[I] := Sender = SelectAll1;     
end;

end.
