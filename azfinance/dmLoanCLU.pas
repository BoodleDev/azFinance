unit dmLoanCLU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmLoanCLU = class(TDataModule)
    qryLUSecT: TADODataSet;
    dtsLUSecT: TDataSource;
    qryLUAssets: TADODataSet;
    dtsLUAssets: TDataSource;
    qryLUAuthority: TADODataSet;
    dtsLUAuthority: TDataSource;
    qryLoanInd2: TADODataSet;
    dtsLoanInd2: TDataSource;
    qryLUActInd: TADODataSet;
    dtsLUActInd: TDataSource;
    qryLoanInd: TADODataSet;
    qryLoanUse: TADODataSet;
    dtsLoanInd: TDataSource;
    dtsLoanUse: TDataSource;
    qryLUIndustry: TADODataSet;
    dtsLUIndustry: TDataSource;
    qryLURegion: TADODataSet;
    dtsLURegion: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataStatus(Ready : boolean);
  public
    { Public declarations }
  end;

var
  dtmLoanCLU : TdtmLoanCLU;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmLoanCLU.SetDataStatus(Ready: boolean);
begin
  qryLoanUse.Active     := Ready;
  qryLoanInd.Active     := Ready;
  qryLUAuthority.Active := Ready;
  qryLoanInd2.Active    := Ready;
  qryLUActInd.Active    := Ready;
  qryLUSecT.Active      := Ready;
  qryLUAssets.Active    := Ready;
  qryLURegion.Active    := Ready;
  qryLUIndustry.Active  := Ready;
end;

procedure TdtmLoanCLU.DataModuleCreate(Sender: TObject);
begin
  SetDataStatus(True);
end;

procedure TdtmLoanCLU.DataModuleDestroy(Sender: TObject);
begin
  SetDataStatus(False);
end;

end.
