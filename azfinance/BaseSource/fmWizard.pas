unit fmWizard;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, ImgList;

type
  TfrmWizard = class(TForm)
    pcWizard: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    btnBack: TButton;
    btnNext: TButton;
    btnClose: TButton;
    Panel2: TPanel;
    lblTitle: TLabel;
    Shape1: TShape;
    btnFinish: TButton;
    ImageList1: TImageList;
    imgTitle: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBackClick(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    CurrentTab: TTabSheet;
    { Private declarations }
  public
    { Public declarations }
    procedure LoadTabSheet(PageIndex: Integer);
  end;

implementation

{$R *.DFM}

procedure TfrmWizard.FormCreate(Sender: TObject);
begin
  LoadTabSheet(0);
end;

procedure TfrmWizard.btnNextClick(Sender: TObject);
begin
  LoadTabSheet(pcWizard.ActivePageIndex + 1);
end;

procedure TfrmWizard.LoadTabSheet(PageIndex: Integer);
begin
  if Assigned(CurrentTab) then
    CurrentTab.Parent := pcWizard;
  pcWizard.ActivePageIndex := PageIndex;
  CurrentTab := pcWizard.Pages[PageIndex];
  CurrentTab.Parent := Self;
  CurrentTab.Show;
  lblTitle.Caption := CurrentTab.Caption;
  if CurrentTab.ImageIndex > -1 then
    ImageList1.GetBitmap(CurrentTab.ImageIndex, imgTitle.Picture.Bitmap);
  if PageIndex + 1 = pcWizard.PageCount then
  begin
    btnFinish.BoundsRect := btnNext.BoundsRect;
    btnFinish.BringToFront;
    btnFinish.Show;
  end
  else
    btnFinish.Hide;
  btnBack.Enabled := not (PageIndex = 0);
end;

procedure TfrmWizard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(CurrentTab) then
    CurrentTab.Parent := pcWizard;
end;

procedure TfrmWizard.btnBackClick(Sender: TObject);
begin
  LoadTabSheet(pcWizard.ActivePageIndex - 1);
end;

procedure TfrmWizard.btnFinishClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmWizard.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
