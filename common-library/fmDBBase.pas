unit fmDBBase;
{===============================================================================
 Author  : Wicus Botha
 Date    : 31/01/2000
 Unit    : This form will be a database baseform, to handle the basic database
           functionallity
 PreConditions  : Have to assign the datasource.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, DB, ExtCtrls, Unit32, Menus;

type
  TfrmDBBase = class(TForm)
    btnAmend: TToolButton;
    btnNew: TToolButton;
    btnDelete: TToolButton;
    btnSave: TToolButton;
    btnCancel: TToolButton;
    tlbDBBase: TToolBar;
    btnExit: TToolButton;
    ppmDBBase: TPopupMenu;
    ppmExit: TMenuItem;
    ppmNew: TMenuItem;
    ppmAmend: TMenuItem;
    ppmSave: TMenuItem;
    ppmCancel: TMenuItem;
    ppmDelete: TMenuItem;
    ppmToggle: TMenuItem;
    Viewmenu1: TMenuItem;
    procedure btnAmendClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppmToggleClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Viewmenu1Click(Sender: TObject);
    procedure ppmDBBasePopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FCurrentDts: TDataSource;
    procedure StateChange(Sender: TObject);
    procedure SetCurrentDts(const Value: TDataSource);
    procedure SetButtons(Status: boolean);
    procedure SetBtnForDts(Status:boolean);
    procedure AddPMitems;
    procedure SetPMitems;
  public
    { Public declarations }
    property CurrentDts: TDataSource read FCurrentDts write SetCurrentDts;
  end;

implementation

uses dmMain, uConst;

{$R *.DFM}

{ TfrmLoanDBBase }

procedure TfrmDBBase.btnExitClick(Sender: TObject);
begin
  close;
end;

{WB 31/01/2000
 This property current DataSource will be the access route to save or
 delete data back to the dataset that is connected to this datasource}
procedure TfrmDBBase.SetCurrentDts(const Value: TDataSource);
begin
  // First clear Change event
  if Assigned(FCurrentDts) then
    FCurrentDts.OnStateChange := nil;
  //
  FCurrentDts := Value;
  if FCurrentDts <> nil then
  begin
    SetBtnForDts(True);
    FCurrentDts.OnStateChange := StateChange;
    StateChange(FCurrentDts);
  end
  else
  begin
    SetBtnForDts(False);
  end;
end;

{WB 31/01/2000
 Inserts a new record}
procedure TfrmDBBase.btnNewClick(Sender: TObject);
begin
  if Assigned(CurrentDts) and Assigned(CurrentDts.DataSet) then
    CurrentDts.DataSet.Append;
end;

{WB 31/01/2000
 Put the dataset into edit mode}
procedure TfrmDBBase.btnAmendClick(Sender: TObject);
begin
  if Assigned(CurrentDts) and Assigned(CurrentDts.DataSet) then
    CurrentDts.DataSet.Edit;
end;

{WB 31/01/2000
 Save any changes back to the dataset}
procedure TfrmDBBase.btnSaveClick(Sender: TObject);
begin
  if (Assigned(CurrentDts) and Assigned(CurrentDts.DataSet)) and
    (CheckDataSetForPost(CurrentDts.DataSet)) then
    CurrentDts.DataSet.Post;
end;

{WB 31/01/2000
 Cancel dataset edits}
procedure TfrmDBBase.btnCancelClick(Sender: TObject);
begin
  if Assigned(CurrentDts) and Assigned(CurrentDts.DataSet) then
    CurrentDts.DataSet.Cancel;
end;

{WB 31/01/2000
 Delete the current record}
procedure TfrmDBBase.btnDeleteClick(Sender: TObject);
begin
  if (Assigned(CurrentDts) and Assigned(CurrentDts.DataSet)) and
   (CurrentDts.DataSet.RecordCount > 0) then
   if MesDlg('Are you sure you want to delete this record?','C') = mrYes then
     CurrentDts.DataSet.Delete;
end;

{WB 31/01/2000
 Set the save & cancel buttons status apposite to the amend button status
 to follow logical order}
procedure TfrmDBBase.SetButtons(Status: boolean);
begin
  btnSave.Enabled   := Status;
  btnCancel.Enabled := Status;
  btnAmend.Enabled  := not Status;
end;

{WB 31/01/2000
 On the dataset status change check to set the buttons statusses}
procedure TfrmDBBase.StateChange(Sender: TObject);
begin
  if Assigned(CurrentDts) and Assigned(CurrentDts.DataSet) then
  begin
    if CheckDataSetForPost(CurrentDts.DataSet) then
      SetButtons(True)
    else
      SetButtons(False);
  end; {Assigned DataSet}
end;

{WB 31/01/2000
 On closing of the form clear the current datasource pointer to aviod
 executing code of non-visible forms}
procedure TfrmDBBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// 19/02/2003 taken out
// if Assigned(CurrentDts)  and Assigned(CurrentDts.DataSet) then
//    CurrentDts.DataSet.Close;
  CurrentDts := nil;
end;

{WB 31/01/2000
 On assigning of the current datasource set the buttons accordingly, this
 is when CurrentDts=nil all buttons will have an Enabled=False status}
procedure TfrmDBBase.SetBtnForDts(Status: boolean);
begin
  btnNew.Enabled    := Status;
  btnAmend.Enabled  := Status;
  btnSave.Enabled   := Status;
  btnCancel.Enabled := Status;
  btnDelete.Enabled := Status;
end;

procedure TfrmDBBase.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if Assigned(CurrentDts) and Assigned(CurrentDts.DataSet) then
  begin
    if CheckDataSetForPost(CurrentDts.DataSet) then
    begin
      case MesDlg('Save changes before exit?','F') of
        mrYes : CurrentDts.DataSet.Post;
        mrNo  : CurrentDts.DataSet.Cancel;
        else
          CanClose := false;
      end;
    end;
  end;
end;

procedure TfrmDBBase.FormShow(Sender: TObject);
begin
  Self.Color := dtmMain.ScrPnlColor;
  tlbDBBase.Color := dtmMain.RecBarColor;
  AddPMitems;
  SetPMitems;
end;

procedure TfrmDBBase.ppmToggleClick(Sender: TObject);
begin
  tlbDBBase.Visible := not tlbDBBase.Visible;  
end;

procedure TfrmDBBase.FormActivate(Sender: TObject);
begin
  Self.SetFocus;
end;

procedure TfrmDBBase.AddPMitems;
var
  i : integer;
  NewItem : TMenuItem;
begin
  if tlbDBBase.ButtonCount <> (ppmDBBase.Items.Count-2) then
  begin
    for i := 0 to tlbDBBase.ButtonCount-1 do
    begin
      if tlbDBBase.Buttons[i].Tag <> 9 then
      begin
        NewItem := TMenuItem.Create(Self);
        NewItem.Name    := 'ppm'+tlbDBBase.Buttons[i].Name;
        NewItem.Caption := tlbDBBase.Buttons[i].Caption;
        NewItem.OnClick := tlbDBBase.Buttons[i].OnClick;
        NewItem.ImageIndex := tlbDBBase.Buttons[i].ImageIndex;
        NewItem.Visible := tlbDBBase.Buttons[i].Visible;
        NewItem.Enabled := tlbDBBase.Buttons[i].Enabled;
        ppmDBBase.Items.Add(NewItem);
      end;
    end;
  end;
  ppmToggle.MenuIndex := ppmDBBase.Items.Count-1;
end;

procedure TfrmDBBase.Viewmenu1Click(Sender: TObject);
begin
  ppmDBBase.Popup(Self.ClientOrigin.x,Self.ClientOrigin.y);
end;

procedure TfrmDBBase.ppmDBBasePopup(Sender: TObject);
begin
  SetPMitems;
end;

procedure TfrmDBBase.SetPMitems;
var
  i : integer;
begin
  for i := 1 to ppmDBBase.Items.Count-2 do
  begin
    ppmDBBase.Items[i].Enabled := tlbDBBase.Buttons[i-1].Enabled;
    ppmDBBase.Items[i].Visible := tlbDBBase.Buttons[i-1].Visible;
  end;
end;

procedure TfrmDBBase.FormCreate(Sender: TObject);
begin
  //ReadFormGrids(Self,ApplName,PersonalFolder);
end;

procedure TfrmDBBase.FormDestroy(Sender: TObject);
begin
  //WriteFormGrids(Self,ApplName,PersonalFolder);
end;

end.
