unit fmCodeLU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ImgList, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, Unit32,
  DBGrdClr;

type
  TfrmCodeLU = class(TForm)
    tlbFilter: TToolBar;
    btnClose: TToolButton;
    ToolButton1: TToolButton;
    pnlFilter: TPanel;
    Label1: TLabel;
    lblFldFilter: TLabel;
    edtFilter: TEdit;
    ToolButton2: TToolButton;
    btnSelect: TToolButton;
    grdLookup: TDBGrdClr;
    imglstMain: TImageList;
    procedure btnSelectClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FLUValue     : String;
    FdtsLU       : TDatasource;
    FFldName  : String;
    FSQLFilter: boolean;
  public
    { Public declarations }
    property LUValue : String read FLUValue;
    property FldName : String read FFldName write FFldName;
    property dtsLU   : TDatasource read FdtsLU write FdtsLU;
    property SQLFilter : boolean read FSQLFilter write FSQLFilter;
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TfrmCodeLU.FormCreate(Sender: TObject);
begin
  SQLFilter := False;
end;

procedure TfrmCodeLU.FormShow(Sender: TObject);
begin
  FLUValue := '';
  grdLookup.DataSource := FdtsLU;
  dtmMain.SetGrdColors([grdLookUp]);
  Self.Color           := dtmMain.ScrPnlColor;
end;

procedure TfrmCodeLU.btnCloseClick(Sender: TObject);
begin
  FLUValue := '';
  Close;
end;

procedure TfrmCodeLU.btnSelectClick(Sender: TObject);
begin
  FLUValue := grdLookup.DataSource.DataSet.FieldByName(FFldName).AsString;
  Close;
end;

procedure TfrmCodeLU.edtFilterChange(Sender: TObject);
begin
  if Trim(edtFilter.Text) = '' then
    FilterDataSet(grdLookup.DataSource.DataSet,'')
  else
  begin
    if SQLFilter then
      FilterDataSet(grdLookup.DataSource.DataSet,FFldName+' like '''+edtFilter.Text+'%''')
    else
      FilterDataSet(grdLookup.DataSource.DataSet,FFldName+'='''+edtFilter.Text+'*''');
  end;
end;

end.
