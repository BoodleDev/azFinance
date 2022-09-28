unit fmAccountFlagMaintain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TfrmAccountFlagMaintain = class(TForm)
    grpAvailable: TGroupBox;
    grpCurrent: TGroupBox;
    btnAdd: TSpeedButton;
    btnRemove: TSpeedButton;
    btnAddAll: TSpeedButton;
    btnRemoveAll: TSpeedButton;
    btnCancel: TButton;
    btnOK: TButton;
    lstAvailable: TListBox;
    lstCurrent: TListBox;
    Image1: TImage;
    Image2: TImage;
    procedure btnAddRemoveOneClick(Sender: TObject);
    procedure btnAddRemoveAllClick(Sender: TObject);
    procedure lstAddRemoveDblClick(Sender: TObject);
  private
    FAccountID: Integer;
    procedure SetAccountID(const Value: Integer);
    procedure AddRemove(Sender: TObject);
    procedure SortListBox(lst: TListBox);
    { Private declarations }
  public
    { Public declarations }
    property AccountID: Integer read FAccountID write SetAccountID;
  end;

var
  frmAccountFlagMaintain: TfrmAccountFlagMaintain;

implementation

uses dmAccountFlag, StrUtils;

{$R *.dfm}

{ TfrmAccountFlagMaintain }

procedure TfrmAccountFlagMaintain.SetAccountID(const Value: Integer);
var
  Flag: String;
begin
  FAccountID := Value;

  lstAvailable.Items.Clear;
  lstCurrent.Items.Clear;

  with dtmAccountFlag do
  begin
    dsFlags.Close;
    dsFlags.Parameters[0].Value := AccountID;
    dsFlags.Open;

    while not dsFlags.Eof do
    begin
      Flag := dsFlags.FieldByName('Description').AsString;

      if dsFlags.FieldByName('Available').AsBoolean then
        lstAvailable.Items.Add(Flag)
      else
        lstCurrent.Items.Add(Flag);
      dsFlags.Next;
    end;
  end;
end;


procedure TfrmAccountFlagMaintain.AddRemove(Sender: TObject);
var
  ToNewIndex, FromOldIndex: Integer;
  lstFrom, lstTo: TListBox;
  objFlag: String;
begin
  if (Sender = btnAdd) or (Sender = btnAddAll) or (Sender = lstAvailable) then
  begin
    lstFrom := lstAvailable;
    lstTo := lstCurrent;
  end
  else
  begin
    lstFrom := lstCurrent;
    lstTo := lstAvailable;
  end;

  FromOldIndex:= lstFrom.ItemIndex;
  if FromOldIndex > -1 then
  begin
    objFlag := lstFrom.Items.Strings[FromOldIndex];//We will now have both System Flags and User Flags

    if not AnsiContainsStr(objFlag, '(System)') then//Flags that are for Exclusive use for "System" user will have the word (System) appended to the flag name.
    begin
      ToNewIndex := lstTo.Items.Add(objFlag);
      lstFrom.Items.Delete(FromOldIndex);
      lstTo.ItemIndex := ToNewIndex;

      if ((FromOldIndex > 0) and ((Sender = btnAddAll) or (Sender = btnRemoveAll))) then //move down to previous index or -1
        lstFrom.ItemIndex := (FromOldIndex-1)
      else
        lstFrom.ItemIndex := -1;

    end
    else
    begin
      if ((Sender = btnAddAll) or (Sender = btnRemoveAll)) then //move down to previous index or -1
        lstFrom.ItemIndex := (FromOldIndex-1);
    end;
  end;

end;


procedure TfrmAccountFlagMaintain.btnAddRemoveOneClick(Sender: TObject);
var
  lstSort: TListBox;
begin
  if Sender = btnAdd then
    lstSort := lstCurrent
  else
    lstSort := lstAvailable;

  AddRemove(Sender);
  SortListBox(lstSort);
end;

procedure TfrmAccountFlagMaintain.btnAddRemoveAllClick(Sender: TObject);
var
  lstFrom, lstSort: TListBox;
begin
  if Sender = btnAddAll then
  begin
    lstFrom := lstAvailable;
    lstSort := lstCurrent;
  end
  else
  begin
    lstFrom := lstCurrent;
    lstSort := lstAvailable;
  end;

  if lstFrom.Items.Count > 0 then
    lstFrom.ItemIndex := (lstFrom.Items.Count-1)
  else
    lstFrom.ItemIndex := -1;

  while not lstFrom.ItemIndex < 0 do
  begin
    AddRemove(Sender);
  end;
  SortListBox(lstSort);
end;

procedure TfrmAccountFlagMaintain.lstAddRemoveDblClick(Sender: TObject);
//var
//  lstSort: TListBox;
begin
//  if Sender = lstAvailable then
//    lstSort := lstCurrent
//  else
//    lstSort := lstAvailable;

  AddRemove(Sender);
  SortListBox(lstCurrent);
end;


procedure TfrmAccountFlagMaintain.SortListBox(lst: TListBox);
var
  i, j: Integer;
  TempFlag: String;
begin

  for i := 0 to lst.Items.Count - 1 do
  begin
      TempFlag := lst.Items.Strings[i];
      for j := (lst.Items.Count - 1) downto 1  do
      begin
        TempFlag := lst.Items.Strings[j];
        TempFlag := lst.Items.Strings[(j-1)];
        if (not AnsiContainsStr(lst.Items.Strings[j], '(System)')) and AnsiContainsStr(lst.Items.Strings[(j-1)], '(System)') then
          lst.Items.Move(j, (j-1))
        else
          if (not AnsiContainsStr(lst.Items.Strings[j], '(System)')) and (AnsiCompareStr(lst.Items.Strings[j], lst.Items.Strings[(j-1)]) <= 0)   then
              lst.Items.Move(j, (j-1));
      end;
  end;

end;


end.
