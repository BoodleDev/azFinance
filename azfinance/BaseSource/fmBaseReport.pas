unit fmBaseReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ImgList;

type
  TfrmBaseReport = class(TfrmBase)
    Panel1: TPanel;
    lstReports: TListBox;
    Panel2: TPanel;
    pnlFilterOptions: TPanel;
    lblCurrReport: TLabel;
    pnlTop: TPanel;
    btnPreview: TToolButton;
    btnPrint: TToolButton;
    imglstMain: TImageList;
    memDesc: TMemo;
    procedure lstReportsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure lstReportsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetFilterOptions(CompName: Array of TControl; RepDesc : String);
  end;

var
  frmBaseReport: TfrmBaseReport;

implementation

{$R *.DFM}

procedure TfrmBaseReport.lstReportsDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  if lstReports.Items[Index][3] <> ' ' then
  begin
    lstReports.Canvas.Brush.Color := lstReports.Color;
    lstReports.Canvas.FillRect(Rect);
    lstReports.Canvas.Brush.Style := bsClear;
    lstReports.Canvas.FrameRect(Rect);
    lstReports.Canvas.Font.Style := lstReports.Canvas.Font.Style + [fsBold];
    lstReports.Canvas.Font.Color := clNavy;
    lstReports.Canvas.TextOut(Rect.Left, Rect.Top, lstReports.Items[Index]);
  end
  else
  begin
    if not (odSelected in State) then  //not selected
    begin
      lstReports.Canvas.Brush.Color := lstReports.Color;
      lstReports.Canvas.FillRect(Rect);
    end
    else
    begin
      lstReports.Canvas.Rectangle(Rect);
      lstReports.Canvas.FrameRect(Rect);
    end;
    lstReports.Canvas.TextOut(Rect.Left, Rect.Top, lstReports.Items[Index]);
  end;
end;


procedure TfrmBaseReport.SetFilterOptions(CompName: array of TControl; RepDesc : String);
var
  i : Integer;
begin
  memDesc.Clear;
  memDesc.Lines.Add(RepDesc);
  for i := pnlFilterOptions.ControlCount - 1 downto 0 do
    if pnlFilterOptions.Controls[i].Name <> 'pnlTop' then
      if pnlFilterOptions.Controls[i] is TPanel then
        pnlFilterOptions.Controls[i].Visible := False;
  for i := Low(CompName) to High(CompName) do
    TWinControl(CompName[i]).Visible := True;
end;

procedure TfrmBaseReport.lstReportsClick(Sender: TObject);
var
  ItemStr : String;
begin
  if lstReports.Items.Strings[lstReports.itemIndex][3] = ' ' then
  begin
    ItemStr := lstReports.Items.Strings[lstReports.itemIndex];
    delete(ItemStr,1,3);
    lblCurrReport.Caption := ItemStr;
  end
  else
    lblCurrReport.Caption := '';

{  case lstReports.ItemIndex of
    //0 : SetFilterOptions([]);
    1 : SetFilterOptions([pnl1,p]);
    //2 : SetFilterOptions([pnl2,pnl4]);
  end;}
end;

procedure TfrmBaseReport.FormShow(Sender: TObject);
begin
  inherited;
  lblCurrReport.Caption := '';
end;

end.
