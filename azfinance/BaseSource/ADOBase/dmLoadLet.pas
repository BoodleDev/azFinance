unit dmLoadLet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ADODB, Db, uConst;

type
  TdtmLoadLet = class(TDataModule)
    qryLoadLetters: TADODataSet;
    dtsLoadLetters: TDataSource;
    qryLUApp: TADODataSet;
    dtsLUApp: TDataSource;
    cmdDelete: TADOCommand;
    qryLetterCodes: TADODataSet;
    dtsLetterCodes: TDataSource;
    qryLetterFields: TADODataSet;
    dtsLetterFields: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetLoadLetterData(Ready: Boolean);
    procedure SetDBName(ConStr: WideString);
    procedure DoDelete;
    procedure SetParams;
  end;

implementation

{$R *.DFM}

{ TdtmLoadLet }

procedure TdtmLoadLet.SetLoadLetterData(Ready: Boolean);
begin
  qryLoadLetters.Active  := Ready;
  qryLetterFields.Active := Ready;
  qryLetterCodes.Active  := Ready;
  qryLUApp.Active        := Ready;
end;

procedure TdtmLoadLet.SetDBName(ConStr: WideString);
begin
  qryLoadLetters.ConnectionString  := ConStr;
  qryLUApp.ConnectionString        := ConStr;
  cmdDelete.ConnectionString       := ConStr;
  qryLetterCodes.ConnectionString  := ConStr;
  qryLetterFields.ConnectionString := ConStr;
end;

procedure TdtmLoadLet.DoDelete;
begin
  cmdDelete.Parameters.ParamByName('LetKey').Value := qryLoadLetters.FieldByName('LetKey').AsInteger;
  cmdDelete.Execute;
end;

procedure TdtmLoadLet.SetParams;
begin
  //qryLetterCodes.Parameters.ParamByName('AppID').Value := AppID;
end;

procedure TdtmLoadLet.DataModuleDestroy(Sender: TObject);
begin
  SetLoadLetterData(False);
end;

end.
