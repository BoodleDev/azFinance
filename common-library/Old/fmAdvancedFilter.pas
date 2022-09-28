unit fmAdvancedFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBStyleGrid, ComCtrls, StdCtrls, StrUtils,
  HyperLink, ExtCtrls, dmAdvancedFilter, ToolWin, ImgList, DBGridExporter,
  fmAdvancedFilterAdmin;

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
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ImageList1: TImageList;
    expResults: TDBGridExporter;
    btnEditQuery: TToolButton;
    procedure lvwFilterDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnEditQueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lstCondition: TStringList;
  end;


procedure LoadAdvancedFilter(ConnectString: WideString; Parent: TWinControl;
  UserID: String; FilterID: Integer);

var
  frmAdvancedFilter: TfrmAdvancedFilter;

implementation

uses fmEditFilter, DB, DateUtils;

{$R *.dfm}

procedure LoadAdvancedFilter(ConnectString: WideString; Parent: TWinControl;
  UserID: String; FilterID: Integer);
var
  Item: TListItem;
begin
  frmAdvancedFilter := TfrmAdvancedFilter.Create(nil);
  dtmAdvancedFilter := TdtmAdvancedFilter.Create(frmAdvancedFilter);
  with dtmAdvancedFilter do
  begin
    dsFields.Parameters[0].Value := FilterID;
    dsExecute.Parameters.ParamByName('FilterID').Value := FilterID;
    dsFilterUser.Parameters.ParamByName('FilterID').Value := FilterID;
    dsFilterUser.Parameters.ParamByName('UserID').Value := UserID;
    cmdRemoveFilterUser.Parameters.ParamByName('FilterID').Value := FilterID;
    cmdRemoveFilterUser.Parameters.ParamByName('UserID').Value := UserID;

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

    dsFilterUser.Open;
    while not dsFilterUser.Eof do
    begin
      Item := frmAdvancedFilter.lvwFilter.Items.Add;
      Item.Caption := dsFilterUser.FieldByName('FilterBy').AsString;
      Item.SubItems.Add(dsFilterUser.FieldByName('Condition').AsString);
      Item.SubItems.Add(dsFilterUser.FieldByName('Value').AsString);
      dsFilterUser.Next;
    end;
    dsFilterUser.Close;
    frmAdvancedFilter.grdResults.DataSource := dtsExecute;
    frmAdvancedFilter.Parent := Parent;
    frmAdvancedFilter.BorderStyle := bsNone;
    frmAdvancedFilter.Align := alClient;
    frmAdvancedFilter.Show;
  end;
end;

procedure TfrmAdvancedFilter.lvwFilterDblClick(Sender: TObject);
begin
  frmEditFilter := TfrmEditFilter.Create(Self);
  try
    frmEditFilter.lvwFilter.Items := lvwFilter.Items;
    if frmEditFilter.ShowModal = mrOK then
    begin
      lvwFilter.Items := frmEditFilter.lvwFilter.Items;
    end;
  finally
    FreeAndNil(frmEditFilter);
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

  dtmAdvancedFilter.dbData.Connected := False;
  FreeAndNil(dtmAdvancedFilter);
  Action := caFree;
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

procedure TfrmAdvancedFilter.ToolButton1Click(Sender: TObject);
var
  I: Integer;
  Condition: String;
  Value: String;
  Filter: String;
  FieldType: String;
  StrList: TStringList;
  StartTime: TDateTime;
begin
  try
    Screen.Cursor := crHourGlass;
    StartTime := Now;
    with dtmAdvancedFilter do
    begin
      Filter := ' AND 1=1 ';
      for I := 0 to lvwFilter.Items.Count - 1 do
      begin
        dsFields.Locate('FieldCaption', lvwFilter.Items[I].Caption, []);
        FieldType := dsFields.FieldByName('FieldType').AsString;
        Value := lvwFilter.Items[I].SubItems.Strings[1];
        if FieldType = 'STRING' then
          StrList := lstString
        else if FieldType = 'MONEY' then
          StrList := lstMoney
        else if FieldType = 'DATE' then
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
        Filter := Filter + ' AND ' + dsFields.FieldByName('FieldName').AsString + ' ' +
          StringReplace(Condition, '@', Value, [rfReplaceAll]);
      end;
      if Filter <> ' ' then
        Delete(Filter,1,5);
        //Filter := StringReplace(Filter, 'AND', '', []);


      dsExecute.Close;
      dsExecute.Parameters[0].Value := Filter;
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

end.
