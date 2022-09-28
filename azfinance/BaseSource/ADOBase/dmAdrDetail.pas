unit dmAdrDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ADOint;

type
  TdtmAdrDetail = class(TDataModule)
    qryAddress: TADODataSet;
    qryAdrLU: TADODataSet;
    qryAdrLUIDVal: TAutoIncField;
    qryAdrLUSuburbName: TStringField;
    qryAdrLUTownName: TStringField;
    qryAdrLUPostCode: TStringField;
    dtsAddress: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryAddressBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FCurEntID: integer;
    FCurTypeID: integer;
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
  public
    { Public declarations }
    property CurEntID : integer read FCurEntID write SetCurEntID;
    property CurTypeID: integer read FCurTypeID write SetCurTypeID;
    procedure SetLUData(WhereStr: string);
  end;

//var
//  dtmAdrDetail: TdtmAdrDetail;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmAdrDetail.DataModuleCreate(Sender: TObject);
begin
  FCurEntID   := 0;
  FCurTypeID  := 0;
end;

procedure TdtmAdrDetail.DataModuleDestroy(Sender: TObject);
begin
  qryAddress.Close;
  qryAdrLU.Close;
end;

procedure TdtmAdrDetail.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
  qryAddress.Close;
  qryAddress.Parameters[0].Value := FCurEntID;
end;

procedure TdtmAdrDetail.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
  qryAddress.Close;
  qryAddress.Parameters[1].Value := FCurTypeID;
end;

procedure TdtmAdrDetail.SetLUData(WhereStr: string);
begin
  Screen.Cursor := crHourGlass;
  qryAdrLU.Filter   := '';
  qryAdrLU.Filtered := False;
  qryAdrLU.Close;
  qryAdrLU.CommandText :=
    'select RecID as IDVal, SuburbName, TownName, PostCode from LUPostCode '+WhereStr;
  qryAdrLU.Open;
  Screen.Cursor := crDefault;
end;

procedure TdtmAdrDetail.qryAddressBeforePost(DataSet: TDataSet);
begin
//  qryAddress.Properties['Update Criteria'].value := adCriteriaKey; // Unit - adoint
end;

end.
