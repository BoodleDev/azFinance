unit dmCodeTblGrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, uConst, Unit32;

type
  TdtmCodeTblGrp = class(TDataModule)
    qryCodeGrp: TADODataSet;
    dtsCodeGrp: TDataSource;
    qryCodesLU: TADODataSet;
    dtsCodesLU: TDataSource;
    qryCodesLUIDVal: TIntegerField;
    qryCodesLUDescription: TStringField;
    qryGrpKey: TADODataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dtsGrpKey: TDataSource;
    qryToUse: TADOQuery;
    qrySubGrpKey: TADODataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsSubGrpKey: TDataSource;
    qryGrpCodesLU: TADODataSet;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetActiveQueries(Ready: Boolean);
    procedure AddTypeKeyToGrp(Grp,TypeKey: integer);
    procedure DelTypeKeyToGrp(Grp,TypeKey: integer);
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmCodeGrpTbl }

procedure TdtmCodeTblGrp.SetActiveQueries(Ready: Boolean);
begin
  qryGrpKey.Parameters.ParamByName('AppID').Value := AppID;
  qrySubGrpKey.Parameters.ParamByName('AppID').Value := AppID;
  qryGrpKey.Active     := Ready;
  qrySubGrpKey.Active  := Ready;
  qryGrpCodesLU.Active := Ready;
  qryCodesLU.Active    := Ready;
  qryCodeGrp.Active    := Ready;
end;

procedure TdtmCodeTblGrp.DataModuleDestroy(Sender: TObject);
begin
  SetActiveQueries(False);
end;

procedure TdtmCodeTblGrp.AddTypeKeyToGrp(Grp, TypeKey: integer);
begin
  RunQry(qryToUse,'insert into CodeTblGrp select '+IntToStr(Grp)+','
    +IntToStr(TypeKey)+',GetDate(),'''+dtmMain.CurrentID+'''','E');
  qryCodeGrp.Requery;
end;

procedure TdtmCodeTblGrp.DelTypeKeyToGrp(Grp, TypeKey: integer);
begin
  RunQry(qryToUse,'delete from CodeTblGrp where GrpKey='+IntToStr(Grp)+' and '+
    'TypeKey='+IntToStr(TypeKey),'E');
  qryCodeGrp.Requery;
end;

end.
