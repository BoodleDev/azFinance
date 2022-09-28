unit dmDocumentViewer;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmDocumentViewer = class(TDataModule)
    dsPages: TADODataSet;
    dsDocuments: TADODataSet;
    dsDocPath: TADODataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmDocumentViewer: TdtmDocumentViewer;

implementation

{$R *.dfm}

end.
