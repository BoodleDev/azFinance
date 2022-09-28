unit fmLoanBook;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, cdsSortGrd,
  DBGrdClr;

type
  TfrmLoanBook = class(TfrmBase)
    grdLoanBook: TDBGrdClr;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmLoanMan, dmMain;

{$R *.DFM}

procedure TfrmLoanBook.FormCreate(Sender: TObject);
begin
  inherited;
  dtmLoanMan := TdtmLoanMan.Create(Self);
  dtmLoanMan.SetupClientDataSet;
end;

procedure TfrmLoanBook.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmLoanMan.Free;
  dtmLoanMan := nil;
end;

procedure TfrmLoanBook.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdLoanBook);
  TStringGrid(grdLoanBook).DefaultRowHeight := TStringGrid(grdLoanBook).DefaultRowHeight + 1;
end;

end.
