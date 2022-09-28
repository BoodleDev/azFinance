unit dmAttach;

{===============================================================================
 Author  : Willene le Roux
 Date    : 13/02/2003
 Unit    : Datamodule for frmAttach
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, uConst;

//Constants
const
  Entity   = 0;
  Notes    = 1;
  Loans    = 2;
  Projects = 3;

type
  TdtmAttach = class(TDataModule)
    qryAttach: TADODataSet;
    dtsAttach: TDataSource;
    qryDocTypes: TADODataSet;
    dtsDocTypes: TDataSource;
    qryEntity: TADODataSet;
    qryNotes: TADODataSet;
    dtsEntity: TDataSource;
    dtsNotes: TDataSource;
    qryLoans: TADODataSet;
    dtsLoans: TDataSource;
    qryProjects: TADODataSet;
    dtsProjects: TDataSource;
    procedure qryAttachAfterInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetActiveQueries (Ready: Boolean);
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmAttach.qryAttachAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('AppID').AsInteger      := AppID;
  DataSet.FieldByName('DateAdded').AsDateTime := Now;
  Dataset.FieldByName('UserID').AsString      := dtmMain.CurrentID;
end;

procedure TdtmAttach.SetActiveQueries(Ready: Boolean);
begin
  qryAttach.Active   := Ready;
  qryDocTypes.Active := Ready;
  qryEntity.Active   := Ready;
  qryNotes.Active    := Ready;
  qryLoans.Active    := Ready;
  qryProjects.Active := Ready;
end;

procedure TdtmAttach.DataModuleDestroy(Sender: TObject);
begin
  SetActiveQueries(False);
end;

end.
