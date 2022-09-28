unit fmDocumentViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, imageenview, ievect, ieview, iemview, ComCtrls, ToolWin, Menus;

type
  TfrmDocumentViewer = class(TForm)
    clbNavigate: TCoolBar;
    tlbPreview: TToolBar;
    btnPrint: TToolButton;
    btnZoom: TToolButton;
    btnZoomIn: TToolButton;
    btnZoomOut: TToolButton;
    imnMulti: TImageEnMView;
    ImageEnVect1: TImageEnVect;
    ppmZoom: TPopupMenu;
    FittoPage1: TMenuItem;
    PageWidth1: TMenuItem;
    PageHeight1: TMenuItem;
    N251: TMenuItem;
    N501: TMenuItem;
    N751: TMenuItem;
    N1001: TMenuItem;
    N1501: TMenuItem;
    N2001: TMenuItem;
    N5001: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure imnMultiImageSelect(Sender: TObject; idx: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnZoomClick(Sender: TObject);
    procedure btnZoomInClick(Sender: TObject);
    procedure FittoPage1Click(Sender: TObject);
    procedure PageWidth1Click(Sender: TObject);
    procedure PageHeight1Click(Sender: TObject);
    procedure N5001Click(Sender: TObject);
  private
    FDocumentID: Integer;
    procedure SetDocumentID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property DocumentID: Integer read FDocumentID write SetDocumentID;
  end;

var
  frmDocumentViewer: TfrmDocumentViewer;

implementation

uses dmDocumentViewer, dmMain;

{$R *.dfm}

{ TfrmDocumentViewer }

procedure TfrmDocumentViewer.SetDocumentID(const Value: Integer);
var
  Filename: String;
  DocPath: String;
begin
  FDocumentID := Value;

  try
    Screen.Cursor := crHourGlass;
    imnMulti.Clear;
    ImageEnVect1.Clear;

    if Self.Showing then
    begin
      with dtmDocumentViewer do
      begin

        if DocumentID > 0 then
        begin
          dsPages.Close;
          dsPages.Parameters.ParamByName('DocumentID').Value := DocumentID;
          dsPages.Open;

          dsPages.First;

          (*prgImage.Position := 0;
          prgImage.Visible := True;
          prgImage.Max := dsDocuments.FieldByName('Pages').AsInteger;*)
          Application.ProcessMessages;

          //if dsDocuments.FieldByName('NewFolder').AsBoolean then
          //begin
            dsDocPath.Close;
            dsDocPath.Parameters[0].Value := DocumentID;
            dsDocPath.Open;
            DocPath := dsDocPath.Fields[0].AsString + '\';
            dsDocPath.Close;
          //end
          //else
            //DocPath := DocProcess;

          FileName := DocPath + dsPages.FieldByName('PageID').AsString;

          if FileExists(Filename) then
          begin
            CopyFile(PChar(Filename),PChar(TempFolder + '1.tif'),False);
            Filename := TempFolder + '1.tif';
            imnMulti.MIO.LoadFromFile(Filename);
          end;
          dsPages.Next;
          //prgImage.Position := prgImage.Position + 1;

          while not dsPages.Eof do
          begin
            Filename := DocPath + dsPages.FieldByName('PageID').AsString;
            if FileExists(Filename) then
            begin
              CopyFile(PChar(Filename),PChar(TempFolder + '1.tif'),False);
              Filename := TempFolder + '1.tif';
              imnMulti.MIO.LoadFromFile(Filename);
            end;
            dsPages.Next;
            //prgImage.Position := prgImage.Position + 1;
          end;
          //btnOK.Enabled := True;

          if imnMulti.ImageCount > 0 then
          begin
            imnMulti.SelectedImage := 0;
            imnMultiImageSelect(Self,imnMulti.SelectedImage);
          end;

          //prgImage.Visible := False;
        end;
        //else
          //btnOK.Enabled := False;
      end;
    end;
  finally
    dtmDocumentViewer.dsPages.Close;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmDocumentViewer.FormCreate(Sender: TObject);
begin
  dtmDocumentViewer := TdtmDocumentViewer.Create(Self);
end;

procedure TfrmDocumentViewer.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dtmDocumentViewer);
end;

procedure TfrmDocumentViewer.imnMultiImageSelect(Sender: TObject;
  idx: Integer);
begin
  // Copy image
  imnMulti.CopyToIEBitmap( idx, ImageEnVect1.IEBitmap );
  // Copy annotations
  ImageEnVect1.RemoveAllObjects;
  imnMulti.MIO.Params[idx].ImagingAnnot.CopyToTImageEnVect(ImageEnVect1);
  ImageEnVect1.Update;
end;

procedure TfrmDocumentViewer.FormShow(Sender: TObject);
begin
  SetDocumentID(DocumentID);
  ImageEnVect1.FitToWidth;
end;

procedure TfrmDocumentViewer.btnPrintClick(Sender: TObject);
var
  PrintCaption: String;
begin
  PrintCaption := 'Print ' + Self.Caption;
  imnMulti.MIO.DoPrintPreviewDialog(PrintCaption, false, PrintCaption);
end;

procedure TfrmDocumentViewer.btnZoomClick(Sender: TObject);
begin
  ppmZoom.Popup(btnZoom.ClientOrigin.X, btnZoom.ClientOrigin.Y + btnZoom.Height);
end;

procedure TfrmDocumentViewer.btnZoomInClick(Sender: TObject);
begin
  if Sender = btnZoomIn then
    ImageEnVect1.Zoom := ImageEnVect1.Zoom + 20
  else
    ImageEnVect1.Zoom := ImageEnVect1.Zoom - 20;
end;

procedure TfrmDocumentViewer.FittoPage1Click(Sender: TObject);
begin
  ImageEnVect1.Fit;
end;

procedure TfrmDocumentViewer.PageWidth1Click(Sender: TObject);
begin
  ImageEnVect1.FitToWidth;
end;

procedure TfrmDocumentViewer.PageHeight1Click(Sender: TObject);
begin
  ImageEnVect1.FitToHeight;
end;

procedure TfrmDocumentViewer.N5001Click(Sender: TObject);
begin
  ImageEnVect1.Zoom := TMenuItem(Sender).Tag;
end;

end.
