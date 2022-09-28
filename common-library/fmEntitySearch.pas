unit fmEntitySearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, DBStyleGrid, DB, ADODB;

type
  TfrmEntitySearch = class(TForm)
    tcSearch: TTabControl;
    grdSearch: TDBStyleGrid;
    GroupBox1: TGroupBox;
    edtIDNo: TEdit;
    edtFirstname: TEdit;
    edtLastname: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dsEntitySearch: TADODataSet;
    btnSearch: TButton;
    btnNew: TButton;
    btnSelect: TButton;
    btnCancel: TButton;
    StatusBar: TStatusBar;
    procedure btnSelectClick(Sender: TObject);
    procedure edtIDNoChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tcSearchChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FilterList: TStringList;
    FEntityID: Integer;
    FConnection: TADOConnection;
    procedure SetConnection(const Value: TADOConnection);
  public
    { Public declarations }
    property Connection: TADOConnection read FConnection write SetConnection;
    property EntityID: Integer read FEntityID write FEntityID;
  end;

var
  frmEntitySearch: TfrmEntitySearch;

implementation

uses dmEntitySearch;

{$R *.dfm}

procedure TfrmEntitySearch.btnSearchClick(Sender: TObject);
var
  IDNumber: String;
  FirstName: String;
  LastName: String;

  procedure FilterSearch(sFilter, TabCaption: String);
  begin
    dtmEntitySearch.dsSearch.Filter := sFilter;
    if dtmEntitySearch.dsSearch.RecordCount > 0 then
    begin
      tcSearch.Tabs.Add(TabCaption + ' (' + IntToStr(dtmEntitySearch.dsSearch.RecordCount) + ')');
      FilterList.Add(sFilter);
    end;
  end;
begin
  if edtIDNo.Text <> '' then
    IDNumber := '%' + edtIDNo.Text + '%';
  if edtFirstname.Text <> '' then
    FirstName := '%' + edtFirstname.Text + '%';
  if edtLastname.Text <> '' then
    LastName := '%' + edtLastname.Text + '%';
  with dtmEntitySearch do
  begin
    try
      Screen.Cursor := crHourGlass;
      BeginSearch(IDNumber, Firstname, LastName);
      tcSearch.Tabs.Clear;
      FilterList.Clear;
      if dsSearchAll.RecordCount > 0 then
      begin
        tcSearch.Tabs.Add('ID Number && First Name && Last Name (' + IntToStr(dsSearchAll.RecordCount) + ')');
        FilterList.Add(' ');
      end;

      dsSearch.Filtered := True;
      if (IDNumber <> '') and (FirstName <> '') then
        FilterSearch('RegNo LIKE ''' + IDNumber + ''' AND Name LIKE ''' + FirstName + '''',
          'ID Number && First Name');

      if (IDNumber <> '') and (LastName <> '') then
        FilterSearch('RegNo LIKE ''' + IDNumber + ''' AND Name2 LIKE ''' + LastName + '''',
          'ID Number && Last Name');

      if (FirstName <> '') and (LastName <> '') then
        FilterSearch('Name LIKE ''' + FirstName + ''' AND Name2 LIKE ''' +
          LastName + '''', 'First Name && Last Name');

      if IDNumber <> '' then
        FilterSearch('RegNo LIKE ''' + IDNumber + '''', 'ID Number');

      if FirstName <> '' then
        FilterSearch('Name LIKE ''' + FirstName + '''', 'First Name');

      if LastName <> '' then
        FilterSearch('Name2 LIKE ''' + LastName + '''', 'Last Name');
    finally
      if tcSearch.Tabs.Count > 0 then
        tcSearchChange(nil);
      Screen.Cursor := crDefault;
    end;
  end;
  FormResize(Self);
  btnNew.Enabled := True;
end;

procedure TfrmEntitySearch.btnSelectClick(Sender: TObject);
begin
  EntityID := grdSearch.DataSource.DataSet.FieldByName('EntityID').AsInteger;
end;

procedure TfrmEntitySearch.edtIDNoChange(Sender: TObject);
begin
  btnNew.Enabled := False;
end;

procedure TfrmEntitySearch.FormCreate(Sender: TObject);
begin
  FilterList := TStringList.Create;
  dtmEntitySearch := TdtmEntitySearch.Create(Self);
end;

procedure TfrmEntitySearch.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FilterList);
  FreeAndNil(dtmEntitySearch);
end;

procedure TfrmEntitySearch.FormResize(Sender: TObject);
begin
{  grdSearch.Columns[1].Width := (grdSearch.ClientWidth - grdSearch.Columns[0].Width -
    grdSearch.Columns[3].Width - IndicatorWidth - 5);
  grdSearch.Columns[1].Width := Trunc(grdSearch.Columns[1].Width/2);
  grdSearch.Columns[2].Width := grdSearch.Columns[1].Width + 1;   }
end;

procedure TfrmEntitySearch.SetConnection(const Value: TADOConnection);
begin
  FConnection := Value;
  dtmEntitySearch.cnSearch.Close;
  dtmEntitySearch.cnSearch.ConnectionString := Connection.ConnectionString;
  dtmEntitySearch.cnSearch.Open;
end;

procedure TfrmEntitySearch.tcSearchChange(Sender: TObject);
begin
  if FilterList.Strings[tcSearch.TabIndex] = ' ' then
    grdSearch.DataSource := dtmEntitySearch.dtsSearchAll
  else
  begin
    grdSearch.DataSource := dtmEntitySearch.dtsSearch;
    dtmEntitySearch.dsSearch.Filter := FilterList.Strings[tcSearch.TabIndex];
  end;
end;

end.
