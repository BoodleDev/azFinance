unit fmAdvancedFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBStyleGrid, ComCtrls, StdCtrls, StrUtils,
  HyperLink, ExtCtrls, dmAdvancedFilter, ToolWin, ImgList, DBGridExporter,
  fmAdvancedFilterAdmin, fmAdvancedFilterFields, Menus,
  Buttons;

type
  TfrmAdvancedFilter = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    pcResults: TPageControl;
    TabSheet1: TTabSheet;
    grdResults: TDBStyleGrid;
    GroupBox1: TGroupBox;
    lvwFilter: TListView;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnExecute: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    expResults: TDBGridExporter;
    btnEditQuery: TToolButton;
    ProgressBar1: TProgressBar;
    btnFields: TToolButton;
    cmbDefinitions: TComboBox;
    Label1: TLabel;
    btnDefinitionSave: TBitBtn;
    btnDefintionOpen: TBitBtn;
    btnDefinitionDelete: TBitBtn;
    btnDefinitionNew: TBitBtn;
    btnDefinitionRename: TBitBtn;
    lblFilterCondition: TLabel;
    procedure lvwFilterDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnEditQueryClick(Sender: TObject);
    procedure btnFieldsClick(Sender: TObject);
    procedure btnDefinitionNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDefintionOpenClick(Sender: TObject);
    procedure cmbDefinitionsChange(Sender: TObject);
    procedure btnDefinitionSaveClick(Sender: TObject);
  private
    { Private declarations }
    FilterID: Integer;
    UserID: String;
    DefinitionList: TStringList;
    FDefinitionID: Integer;
    FFilterCondition: String;
    procedure SetDefinitionID(const Value: Integer);
    procedure SetFilterCondition(const Value: String);
  public
    { Public declarations }
    lstCondition: TStringList;
    property DefinitionID: Integer read FDefinitionID write SetDefinitionID;
    property FilterCondition: String read FFilterCondition write SetFilterCondition;
    procedure LoadDefinitions;
  end;


procedure LoadAdvancedFilter(ConnectString: WideString; Parent: TWinControl;
  UserID: String; FilterID: Integer);

var
  frmAdvancedFilter: TfrmAdvancedFilter;

implementation

uses fmEditFilter, DB, DateUtils, ADODB;

{$R *.dfm}

procedure LoadAdvancedFilter(ConnectString: WideString; Parent: TWinControl; UserID: String; FilterID: Integer);
//var
//  Item: TListItem;
begin
  frmAdvancedFilter := TfrmAdvancedFilter.Create(nil);
  frmAdvancedFilter.FilterID := FilterID;
  frmAdvancedFilter.UserID := UserID;
  dtmAdvancedFilter := TdtmAdvancedFilter.Create(frmAdvancedFilter);
  with dtmAdvancedFilter do
  begin
    dsFields.Parameters[0].Value := FilterID;
    qryCommand.Parameters.ParamByName('FilterID').Value := FilterID;
    dsFilterUser.Parameters.ParamByName('FilterID').Value := FilterID;
    dsFilterUser.Parameters.ParamByName('UserID').Value := UserID;
    cmdRemoveFilterUser.Parameters.ParamByName('FilterID').Value := FilterID;
    cmdRemoveFilterUser.Parameters.ParamByName('UserID').Value := UserID;
    dsDefinitions.Parameters.ParamByName('FilterID').Value := FilterID;
    dsDefinitions.Parameters.ParamByName('UserID').Value := UserID;

    dbData.Close;
    dbData.ConnectionString := ConnectString;
    dbData.Open;
      
    if Parent is TForm then
    begin
      dsFilterCaption.Close;
      dsFilterCaption.Parameters[0].Value := FilterID;
      dsFilterCaption.Open;
      TForm(Parent).Caption := dsFilterCaption.Fields[0].AsString;
      dsFilterCaption.Close;
    end;

   { dsFilterUser.Open;
    while not dsFilterUser.Eof do
    begin
      Item := frmAdvancedFilter.lvwFilter.Items.Add;
      Item.Caption := dsFilterUser.FieldByName('FilterBy').AsString;
      Item.SubItems.Add(dsFilterUser.FieldByName('Condition').AsString);
      Item.SubItems.Add(dsFilterUser.FieldByName('Value').AsString);
      Item.SubItems.Add('');
      Item.SubItems.Add('');
      dsFilterUser.Next;
    end;
    dsFilterUser.Close; }

    dsDefinitions.Open;
    frmAdvancedFilter.LoadDefinitions;

    frmAdvancedFilter.grdResults.DataSource := dtsExecute;
    frmAdvancedFilter.Parent := Parent;
    frmAdvancedFilter.BorderStyle := bsNone;
    frmAdvancedFilter.Align := alClient;
    frmAdvancedFilter.Show;
  end;
end;

procedure TfrmAdvancedFilter.LoadDefinitions;
begin
  cmbDefinitions.Clear;
  DefinitionList.Clear;
  cmbDefinitions.Items.Add('');
  DefinitionList.Add('0');
  dtmAdvancedFilter.dsDefinitions.Requery();
  while not dtmAdvancedFilter.dsDefinitions.Eof do
  begin
    cmbDefinitions.Items.Add(dtmAdvancedFilter.dsDefinitions.FieldByName('DefinitionName').AsString);
    DefinitionList.Add(dtmAdvancedFilter.dsDefinitions.FieldByName('DefinitionID').AsString);
    dtmAdvancedFilter.dsDefinitions.Next;
  end;
  cmbDefinitions.ItemIndex := DefinitionList.IndexOf(IntToStr(DefinitionID));
end;

procedure TfrmAdvancedFilter.lvwFilterDblClick(Sender: TObject);
begin
  frmEditFilter := TfrmEditFilter.Create(Self);
  try
    frmEditFilter.lvwFilter.Items := lvwFilter.Items;
    if FilterCondition = 'Any' then
      frmEditFilter.cmbFilterCondition.ItemIndex := 1
    else
      frmEditFilter.cmbFilterCondition.ItemIndex := 0;
    if frmEditFilter.ShowModal = mrOK then
    begin
      lvwFilter.Items := frmEditFilter.lvwFilter.Items;
      if frmEditFilter.cmbFilterCondition.ItemIndex = 0 then
        FilterCondition := 'All'
      else
        FilterCondition := 'Any';
    end;
  finally
    FreeAndNil(frmEditFilter);
  end;
end;

procedure TfrmAdvancedFilter.SetDefinitionID(const Value: Integer);
begin
  FDefinitionID := Value;
  btnDefinitionRename.Enabled := DefinitionID > 0;
  btnDefinitionDelete.Enabled := DefinitionID > 0;
  btnDefinitionSave.Enabled := DefinitionID > 0;
end;

procedure TfrmAdvancedFilter.btnDefinitionNewClick(Sender: TObject);
var
  Definition: String;
begin
  if InputQuery('New Definition', 'Definition Name', Definition) then
  begin
    dtmAdvancedFilter.dsDefinitions.Append;
    dtmAdvancedFilter.dsDefinitions.FieldByName('FilterID').AsInteger := FilterID;
    dtmAdvancedFilter.dsDefinitions.FieldByName('CreateUser').AsString := UserID;
    dtmAdvancedFilter.dsDefinitions.FieldByName('DefinitionName').AsString := Definition;
    dtmAdvancedFilter.dsDefinitions.Post;
    FilterCondition := 'All'; //Default filter condition
    DefinitionID := dtmAdvancedFilter.dsDefinitions.FieldByName('DefinitionID').AsInteger;
    LoadDefinitions;
  end;
end;

procedure TfrmAdvancedFilter.btnDefinitionSaveClick(Sender: TObject);
var
  I: Integer;
begin
  try
    Screen.Cursor := crHourGlass;

    with dtmAdvancedFilter do
    begin
      cmdClearDefinition.Parameters.ParamByName('DefinitionID').Value := DefinitionID;
      cmdClearDefinition.Execute;

      dtmAdvancedFilter.dsDefinitions.Locate('DefinitionID', DefinitionID, []);
      dtmAdvancedFilter.dsDefinitions.Edit;
      dtmAdvancedFilter.dsDefinitions.FieldByName('Condition').AsString := FilterCondition;
      dtmAdvancedFilter.dsDefinitions.Post;

      for I := 0 to lvwFilter.Items.Count - 1 do
      begin
        cmdAddDefintionFilter.Parameters.ParamByName('DefinitionID').Value := DefinitionID;
        cmdAddDefintionFilter.Parameters.ParamByName('FieldName').Value := lvwFilter.Items[I].Caption;
        cmdAddDefintionFilter.Parameters.ParamByName('Condition').Value := lvwFilter.Items[I].SubItems.Strings[0];
        cmdAddDefintionFilter.Parameters.ParamByName('FilterValue').Value := lvwFilter.Items[I].SubItems.Strings[1];
        if lvwFilter.Items[I].SubItems.Strings[2] = '' then
          cmdAddDefintionFilter.Parameters.ParamByName('GroupID').Value := Null
        else
          cmdAddDefintionFilter.Parameters.ParamByName('GroupID').Value := lvwFilter.Items[I].SubItems.Strings[2];
        if lvwFilter.Items[I].SubItems.Strings[3] = '' then
          cmdAddDefintionFilter.Parameters.ParamByName('GroupType').Value := Null
        else
          cmdAddDefintionFilter.Parameters.ParamByName('GroupType').Value := lvwFilter.Items[I].SubItems.Strings[3];
        cmdAddDefintionFilter.Execute;
      end;

      for I := 0 to dsExecute.Fields.Count - 1 do
      begin
        if dsExecute.Fields[I].Visible then
        begin
          cmdAddDefintionField.Parameters.ParamByName('DefinitionID').Value := DefinitionID;
          cmdAddDefintionField.Parameters.ParamByName('FieldName').Value := dsExecute.Fields[I].FieldName;
          cmdAddDefintionField.Execute;
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmAdvancedFilter.btnDefintionOpenClick(Sender: TObject);
var
  Item: TListItem;
  I: Integer;
begin
  DefinitionID := StrToInt(DefinitionList.Strings[cmbDefinitions.ItemIndex]);
  lvwFilter.Items.Clear;
  with dtmAdvancedFilter do
  begin
    dtmAdvancedFilter.dsDefinitions.Locate('DefinitionID', DefinitionID, []);
    FilterCondition := dtmAdvancedFilter.dsDefinitions.FieldByName('Condition').AsString;

    qryDefinitionFilter.Parameters[0].Value := DefinitionID;
    qryDefinitionFilter.Open;
    while not qryDefinitionFilter.Eof do
    begin
      Item := lvwFilter.Items.Add;
      Item.Caption := qryDefinitionFilter.FieldByName('FieldName').AsString;
      Item.SubItems.Add(qryDefinitionFilter.FieldByName('Condition').AsString);
      Item.SubItems.Add(qryDefinitionFilter.FieldByName('FilterValue').AsString);
      Item.SubItems.Add(qryDefinitionFilter.FieldByName('GroupID').AsString);
      Item.SubItems.Add(qryDefinitionFilter.FieldByName('GroupType').AsString);
      qryDefinitionFilter.Next;
    end;
    qryDefinitionFilter.Close;

    btnExecute.Click;

    qryDefinitionField.Parameters[0].Value := DefinitionID;
    qryDefinitionField.Open;
    for I := 0 to dsExecute.Fields.Count - 1 do
      dsExecute.Fields[I].Visible := qryDefinitionField.Locate('FieldName', dsExecute.Fields[I].FieldName, [loCaseInsensitive]);

    qryDefinitionField.Close;
  end;
end;

procedure TfrmAdvancedFilter.btnEditQueryClick(Sender: TObject);
begin
  frmAdvancedFilterAdmin := TfrmAdvancedFilterAdmin.Create(Self);
  try
    dtmAdvancedFilter.dsAdminFilter.Parameters[0].Value := dtmAdvancedFilter.dsFields.Parameters[0].Value;
    dtmAdvancedFilter.dsAdminFilter.Open;
    dtmAdvancedFilter.dsAdminFields.Open;
    frmAdvancedFilterAdmin.ShowModal;
    if dtmAdvancedFilter.dsAdminFilter.State in [dsInsert,dsEdit] then
      dtmAdvancedFilter.dsAdminFilter.Post;
  finally
    FreeAndNil(frmAdvancedFilterAdmin);
    dtmAdvancedFilter.dsAdminFields.Close;
    dtmAdvancedFilter.dsAdminFilter.Close;
  end;
end;

procedure TfrmAdvancedFilter.btnFieldsClick(Sender: TObject);
begin
  CreateFieldSelection(dtmAdvancedFilter.dsExecute);
end;

procedure TfrmAdvancedFilter.cmbDefinitionsChange(Sender: TObject);
begin
  DefinitionID := 0;
end;

procedure TfrmAdvancedFilter.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  SQLCommand: String;
  I: Integer;
begin
  dtmAdvancedFilter.cmdRemoveFilterUser.Execute;
  if lvwFilter.Items.Count > 0 then
  begin
    for I := 0 to lvwFilter.Items.Count -1 do
    begin
      SQLCommand := SQLCommand +
        Format('INSERT INTO FilterUserLog VALUES (%s,''%s'',''%s'',''%s'',''%s'')',
        [dtmAdvancedFilter.cmdRemoveFilterUser.Parameters.ParamByName('FilterID').Value,
        dtmAdvancedFilter.cmdRemoveFilterUser.Parameters.ParamByName('UserID').Value,
        lvwFilter.Items[I].Caption, lvwFilter.Items[I].SubItems.Strings[0],
        StringReplace(lvwFilter.Items[I].SubItems.Strings[1],'''','''''',[rfReplaceAll])]) + #13#10;
    end;
    //ShowMessage(SQLCommand);
    //SQLCommand := StringReplace(SQLCommand, '''', '''''',[rfReplaceAll]);
    //ShowMessage(SQLCommand);
    dtmAdvancedFilter.dbData.Execute(SQLCommand);
  end;

  FreeAndNil(DefinitionList);

  dtmAdvancedFilter.dbData.Connected := False;
  FreeAndNil(dtmAdvancedFilter);
  Action := caFree;
end;

procedure TfrmAdvancedFilter.FormCreate(Sender: TObject);
begin
  DefinitionList := TStringList.Create;
  DefinitionID := 0;
  FilterCondition := 'All';
end;

procedure TfrmAdvancedFilter.ToolButton2Click(Sender: TObject);
begin
  lvwFilterDblClick(nil);
end;

procedure TfrmAdvancedFilter.ToolButton2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssAlt in Shift) and (ssCtrl in Shift) then
    btnEditQuery.Show;
end;

procedure TfrmAdvancedFilter.btnExecuteClick(Sender: TObject);
var
  I: Integer;
  Condition: String;
  Value: String;
  Filter: String;
  FieldType: String;
  StrList: TStringList;
  Filter1, Filter2, Filter3, Filter4, Filter5: String;
  GroupID: Integer;
  ItemFilter: String;
  //StartTime: TDateTime;
begin
  try
    Screen.Cursor := crHourGlass;
    //StartTime := Now;
    with dtmAdvancedFilter do
    begin
      //Filter := ' AND 1=1 ';
      for I := 0 to lvwFilter.Items.Count - 1 do
      begin
        dsFields.Locate('FieldCaption', lvwFilter.Items[I].Caption, []);
        FieldType := dsFields.FieldByName('FieldType').AsString;
        Value := lvwFilter.Items[I].SubItems.Strings[1];
        if FieldType = 'STRING' then
          StrList := lstString
        else if FieldType = 'MONEY' then
          StrList := lstMoney
        else //FieldType = 'DATE' 
          StrList := lstDate;

        Condition := StrList.Values[lvwFilter.Items[I].SubItems.Strings[0]];
        if FieldType = 'DATE' then
        begin
          if Condition = 'BETWEEN' then
          begin
            Value := '''' + FormatDateTime('yyyy-mm-dd',
              StrToDate(LeftStr(Value, Pos(' and ', Value) - 1))) + ''' and ''' +
              FormatDateTime('yyyy-mm-dd', StrToDate(
              RightStr(Value, Length(Value) - Pos(' and ', Value) - 4))) + '''';
            Condition := 'BETWEEN ' + Value;
          end
          else
            Value := FormatDateTime('yyyy-mm-dd', StrToDate(Value));
        end;

        if lvwFilter.Items[I].SubItems[2] = '' then
          GroupID := 0
        else
          GroupID := StrToInt(lvwFilter.Items[I].SubItems[2]);

        ItemFilter := dsFields.FieldByName('FieldName').AsString + ' ' + StringReplace(Condition, '@', Value, [rfReplaceAll]);
        if GroupID = 0 then
          ItemFilter := ' ' + IfThen(FilterCondition = 'Any', ' OR', 'AND') + ' ' + ItemFilter
        else
          ItemFilter := ' ' +  RightStr(' ' + lvwFilter.Items[I].SubItems[3], 3) + ' ' + ItemFilter;

        case GroupID of
          0: Filter  := Filter  + ItemFilter;
          1: Filter1 := Filter1 + ItemFilter;
          2: Filter2 := Filter2 + ItemFilter;
          3: Filter3 := Filter3 + ItemFilter;
          4: Filter4 := Filter4 + ItemFilter;
          5: Filter5 := Filter5 + ItemFilter;
        end;

        //Filter := Filter + ' AND ' + dsFields.FieldByName('FieldName').AsString + ' ' +
          //StringReplace(Condition, '@', Value, [rfReplaceAll]);
      end;

      if Filter1 <> ' ' then
        Delete(Filter1,1,5);
      if Filter2 <> ' ' then
        Delete(Filter2,1,5);
      if Filter3 <> ' ' then
        Delete(Filter3,1,5);
      if Filter4 <> ' ' then
        Delete(Filter4,1,5);
      if Filter5 <> ' ' then
        Delete(Filter5,1,5);

      if Filter1 <> '' then
        Filter := Filter + ' ' + IfThen(FilterCondition = 'Any', ' OR', 'AND') + ' (' + Filter1 + ')';
      if Filter2 <> '' then
        Filter := Filter + ' ' + IfThen(FilterCondition = 'Any', ' OR', 'AND') + ' (' + Filter2 + ')';
      if Filter3 <> '' then
        Filter := Filter + ' ' + IfThen(FilterCondition = 'Any', ' OR', 'AND') + ' (' + Filter3 + ')';
      if Filter4 <> '' then
        Filter := Filter + ' ' + IfThen(FilterCondition = 'Any', ' OR', 'AND') + ' (' + Filter4 + ')';
      if Filter5 <> '' then
        Filter := Filter + ' ' + IfThen(FilterCondition = 'Any', ' OR', 'AND') + ' (' + Filter5 + ')';

      if Filter <> ' ' then
        Delete(Filter,1,5);
        //Filter := StringReplace(Filter, 'AND', '', []);

      //ShowMessage(Filter);

      qryCommand.Close;
      qryCommand.Parameters.ParamByName('Filter').Value := Filter;
      qryCommand.Open;

      dsExecute.Close;
      dsExecute.CommandText := 'EXEC SP_EXECUTESQL N''' + StringReplace(qryCommand.Fields[0].AsString, '''', '''''', [rfReplaceAll]) + '''';//Filter;
      //dsExecute.Parameters[0].Value := 'EXEC SP_EXECUTESQL N''SELECT * FROM lsLoanDetail''';//Filter;
      dsExecute.Open;
      //lblStats.Caption := FloatToStr(MilliSecondsBetween(Now, StartTime)/1000);
      pcResults.Pages[0].Caption := 'Results - ' +
        IntToStr(dsExecute.RecordCount) + ' record\s found';
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmAdvancedFilter.ToolButton3Click(Sender: TObject);
begin
  expResults.Execute;
end;

procedure TfrmAdvancedFilter.SetFilterCondition(const Value: String);
begin
  FFilterCondition := Value;
  lblFilterCondition.Caption := 'Report to be generated for "' + FilterCondition + '" conditions below:';
end;

end.
