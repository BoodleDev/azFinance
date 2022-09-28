unit fmEditFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, CheckLst, StrUtils, Menus,
  fmAdvancedFilterGroup;

type
  TfrmEditFilter = class(TForm)
    lvwFilter: TListView;
    Panel1: TPanel;
    cmbField: TComboBox;
    cmbCondition: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtValue: TEdit;
    btnAdd: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    Panel2: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    lstLookup: TCheckListBox;
    dtpDate1: TDateTimePicker;
    dtpDate2: TDateTimePicker;
    lblAnd: TLabel;
    Button1: TButton;
    ppmSelectClear: TPopupMenu;
    SelectAll1: TMenuItem;
    ClearAll1: TMenuItem;
    btnGroup: TButton;
    Panel3: TPanel;
    Label4: TLabel;
    cmbFilterCondition: TComboBox;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cmbFieldChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure lvwFilterChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure cmbConditionChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditFilter: TfrmEditFilter;

implementation

uses dmAdvancedFilter;

{$R *.dfm}

procedure TfrmEditFilter.FormCreate(Sender: TObject);
begin
  dtpDate1.Date := Date;
  dtpDate2.Date := Date;
  dtpDate1.Hide;
  dtpDate2.Hide;
  lblAnd.Hide;
  lstLookup.Hide;
  edtValue.Show;

  with dtmAdvancedFilter do
  begin
    dsFields.First;
    while not dsFields.Eof do
    begin
      cmbField.Items.Add(dsFields.FieldByName('FieldCaption').AsString);
      dsFields.Next;
    end;
    //dsFields.Close;
  end;
end;

procedure TfrmEditFilter.cmbFieldChange(Sender: TObject);
var
  StrList: TStringList;
  I: Integer;
  FieldType: String;
begin
  with dtmAdvancedFilter do
  begin
    cmbCondition.Items.Clear;
    dsFields.Locate('FieldCaption', cmbField.Text, []);
    FieldType := dsFields.FieldByName('FieldType').AsString;
    StrList := lstString;
    if FieldType = 'STRING' then
      StrList := lstString
    else if FieldType = 'DATE' then
      StrList := lstDate
    else if FieldType = 'MONEY' then
      StrList := lstMoney;

    if dsFields.FieldByName('Lookup').AsBoolean then
    begin
      try
        Screen.Cursor := crHourGlass;
        dsLookup.Close;
        dsLookup.CommandText := dsFields.FieldByName('LookupValues').AsString;
        dsLookup.Open;
        lstLookup.Items.Clear;
        while not dsLookup.Eof do
        begin
          lstLookup.Items.Add(dsLookup.Fields[0].AsString);
          dsLookup.Next;
        end;
        cmbCondition.Items.Add('One Of');
        cmbCondition.Items.Add('Not One Of');
      finally
        Screen.Cursor := crDefault;
      end;
    end;

    for I := 0 to StrList.Count - 1 do
      cmbCondition.Items.Add(StrList.Names[I]);

    cmbCondition.ItemIndex := 0;
    cmbConditionChange(nil);
  end
end;

procedure TfrmEditFilter.btnAddClick(Sender: TObject);
var
  Item: TListItem;
  Value: String;
  I: Integer;
begin
  if Sender = btnAdd then
  begin
    Item := lvwFilter.Items.Add;
    Item.SubItems.Add(cmbCondition.Text);
  end
  else
  begin
    Item := lvwFilter.Selected;
    Item.SubItems.Strings[0] := cmbCondition.Text;
  end;

  Item.Caption := cmbField.Text;
  if edtValue.Showing then
    Value := edtValue.Text
  else if dtpDate1.Showing and dtpDate2.Showing then
    Value := DateToStr(dtpDate1.DateTime) + ' and ' + DateToStr(dtpDate2.DateTime)
  else if dtpDate1.Showing then
    Value := DateToStr(dtpDate1.DateTime)
  else if dtpDate2.Showing then
    Value := DateToStr(dtpDate2.DateTime)
  else if lstLookup.Showing then
  begin
    for I := 0 to lstLookup.Items.Count - 1 do
      if lstLookup.Checked[I] then
      begin
        if dtmAdvancedFilter.dsFields.FieldByName('FieldType').AsString = 'STRING' then
          Value := Value + '''' + lstLookup.Items.Strings[I] + ''', '
        else
          Value := Value + lstLookup.Items.Strings[I] + ', ';
      end;

    if Value <> '' then
      Delete(Value,Length(Value)-1,2);
    Value := '(' + Value + ')';
  end;
  if Sender = btnAdd then
  begin
    Item.SubItems.Add(Value);
    Item.SubItems.Add('');
    Item.SubItems.Add('');
    cmbField.ItemIndex := -1;
    cmbCondition.Clear;
    edtValue.Clear;
    lstLookup.Clear;
  end
  else
    Item.SubItems.Strings[1] := Value;
end;

procedure TfrmEditFilter.lvwFilterChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  Value: String;
  I: Integer;
  Index: Integer;
begin
  if lvwFilter.Focused then
  begin
    cmbField.ItemIndex := cmbField.Items.IndexOf(Item.Caption);
    cmbFieldChange(nil);
    cmbCondition.ItemIndex := cmbCondition.Items.IndexOf(Item.SubItems.Strings[0]);
    cmbConditionChange(nil);
    Value := Item.SubItems.Strings[1];
    if edtValue.Showing then
      edtValue.Text := Value
    else if dtpDate1.Showing and dtpDate2.Showing then
    begin
      dtpDate1.DateTime := StrToDate(LeftStr(Value,Pos(' and', Value)));
      Delete(Value,1,Pos(' and', Value) + 3);
      dtpDate2.DateTime := StrToDate(Value);
    end
    else if dtpDate1.Showing then
      dtpDate1.DateTime := StrToDate(Value)
    else if dtpDate2.Showing then
      dtpDate2.DateTime := StrToDate(Value)
    else if lstLookup.Showing then
    begin
      Value := Copy(Value,2,Length(Value)-2);
      Value := StringReplace(Value,'''','', [rfReplaceAll]) + ',';
      I := Pos(',',Value);
      while I > 0 do
      begin
        Index := lstLookup.Items.IndexOf(LeftStr(Value,I-1));
        if Index > -1 then
          lstLookup.Checked[Index] := True;

        Delete(Value,1,I+1);
        I := Pos(',',Value);
      end;
    end;
  end;
end;

procedure TfrmEditFilter.cmbConditionChange(Sender: TObject);
begin
  dtpDate1.Hide;
  dtpDate2.Hide;
  lblAnd.Hide;
  lstLookup.Hide;
  edtValue.Hide;

  if cmbCondition.Text = 'Between' then
  begin
    dtpDate1.Show;
    dtpDate2.Show;
    lblAnd.Show;
  end
  else if dtmAdvancedFilter.dsFields.FieldByName('FieldType').AsString = 'DATE' then
    dtpDate1.Show
  else if (cmbCondition.Text = 'One Of') or (cmbCondition.Text = 'Not One Of') then
    lstLookup.Show
  else
    edtValue.Show;
end;

procedure TfrmEditFilter.btnDeleteClick(Sender: TObject);
begin
  lvwFilter.Selected.Delete;
end;

procedure TfrmEditFilter.Button1Click(Sender: TObject);
begin
  lvwFilter.Clear;
end;

procedure TfrmEditFilter.SelectAll1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to lstLookup.Items.Count - 1 do
    lstLookup.Checked[I] := Sender = SelectAll1;
end;

procedure TfrmEditFilter.btnGroupClick(Sender: TObject);
var
  I: Integer;
begin
  frmAdvancedFilterGroup := TfrmAdvancedFilterGroup.Create(Self);
  try
    with frmAdvancedFilterGroup do
    begin
      if frmAdvancedFilterGroup.ShowModal = mrOK then
      begin
        for I := 0 to lvwFilter.Items.Count - 1 do
          if lvwFilter.Items[I].Selected then
          begin
            lvwFilter.Items[I].SubItems.Strings[2] := cmbGroupID.Text;
            lvwFilter.Items[I].SubItems.Strings[3] := cmbGroupType.Text;
          end;
      end;
    end;
  finally
    FreeAndNil(frmAdvancedFilterGroup);
  end;
end;

end.
