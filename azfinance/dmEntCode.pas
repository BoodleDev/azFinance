unit dmEntCode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmEntCode = class(TDataModule)
    qryMaritialStats: TADODataSet;
    qryNationality: TADODataSet;
    qryEmployment: TADODataSet;
    qryOccupation: TADODataSet;
    qryRelation: TADODataSet;
    qryPersonInd: TADODataSet;
    dtsEmployment: TDataSource;
    dtsNationality: TDataSource;
    dtsMaritialStats: TDataSource;
    dtsOccupation: TDataSource;
    dtsPersonInd: TDataSource;
    dtsRelation: TDataSource;
    qryUnion: TADODataSet;
    dtsUnion: TDataSource;
    dsConfirmationSource: TADODataSet;
    dtsConfirmationSource: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetPersonCTL(Ready: Boolean);
  end;

var
  dtmEntCode: TdtmEntCode;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmCodes }

{WB 28/01/2000 Set all the Code queries Acitve status to input Status}
procedure TdtmEntCode.SetPersonCTL(Ready: Boolean);
begin
  qryNationality.Active       := Ready;
  qryMaritialStats.Active     := Ready;
  qryEmployment.Active        := Ready;
  qryOccupation.Active        := Ready;
  qryRelation.Active          := Ready;
  qryPersonInd.Active         := Ready;
  qryUnion.Active             := Ready;
  dsConfirmationSource.Active := Ready;
end;

procedure TdtmEntCode.DataModuleDestroy(Sender: TObject);
begin
  SetPersonCTL(False);
end;

end.
