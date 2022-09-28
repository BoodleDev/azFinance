unit dmLetter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, uConst;

type
  TdtmLetter = class(TDataModule)
    qryLetterFld: TADODataSet;
    qryLetters: TADODataSet;
    dtsLetters: TDataSource;
    dtsLetterFld: TDataSource;
    qryReplace: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryLettersBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetLetterData(Ready : Boolean);
    procedure SetDBName(ConStr : WideString);
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmLetter.SetDBName(ConStr : WideString);
begin
  qryLetters.ConnectionString   := ConStr;
  qryReplace.ConnectionString   := ConStr;
  qryLetterFld.ConnectionString := ConStr;
end;

procedure TdtmLetter.SetLetterData(Ready: Boolean);
begin
  qryLetters.Active   := Ready;
  qryReplace.Active   := Ready;
  qryLetterFld.Active := Ready;
end;

procedure TdtmLetter.DataModuleCreate(Sender: TObject);
begin
  qryLetters.Parameters.ParamByName('AppID').Value := AppID;
end;

procedure TdtmLetter.qryLettersBeforeOpen(DataSet: TDataSet);
begin
  qryLetters.Parameters[0].Value := AppID;
end;

end.
