unit dmCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Unit32, uConst, ADODB;

type
  TdtmCodes = class(TDataModule)
    qryBank: TADODataSet;
    qryAddress: TADODataSet;
    qryBankLU: TADODataSet;
    qryAddressLU: TADODataSet;
    qryBankLUBankName: TStringField;
    qryAddressLUTownName: TStringField;
    dtsBank: TDataSource;
    dtsAddress: TDataSource;
    dtsBankLU: TDataSource;
    dtsAddressLU: TDataSource;
    procedure qryBankAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FMasterVal : String;
    FDetailOne : String;
    FDetailTwo : String;
    FBankOrAddr: Integer;
  public
    { Public declarations }
    property MasterVal : String read FMasterVal write FMasterVal;
    property DetailOne : String read FDetailOne write FDetailOne;
    property DetailTwo : String read FDetailTwo write FDetailTwo;
    property BankOrAddr : Integer read FBankOrAddr write FBankOrAddr;//Bank=1;Address=2
    procedure SetCodeData(Ready : Boolean);
    procedure InsertMaster(DataSet :TDataSet; Field1,Field2,Field3 : String);
    procedure InsertDetail(DataSet :TDataSet; Field1,Field2,Field3 : String);
    procedure RefreshData(DataSet :TDataSet);
  end;

var
  dtmCodes: TdtmCodes;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmCodes }

procedure TdtmCodes.SetCodeData(Ready: Boolean);
begin
  qryBankLu.Active    := Ready;
  qryAddressLu.Active := Ready;
  qryBank.Active      := Ready;
  qryAddress.Active   := Ready;
end;

procedure TdtmCodes.InsertMaster(DataSet :TDataSet; Field1,Field2,Field3 :String);
begin
  DataSet.Insert;
  DataSet.FieldByName(Field1).AsString := MasterVal;
  DataSet.FieldByName(Field2).AsString := 'not specified';
  DataSet.FieldByName(Field3).AsString := '00000';
  DataSet.Post;
end;

procedure TdtmCodes.InsertDetail(DataSet :TDataSet; Field1,Field2,Field3 :String);
var
  NoValue   : String;
begin
  NoValue := 'not specified';
  FilterDataset(DataSet,Field1+' = '''+MasterVal+''' and '+Field2+' = '''+NoValue+'''');
  if DataSet.RecordCount > 0 then
    DataSet.Edit
  else
    DataSet.Insert;
  DataSet.FieldByName(Field1).AsString := MasterVal;
  DataSet.FieldByName(Field2).AsString := Detailone;
  DataSet.FieldByName(Field3).AsString := DetailTwo;
  DataSet.Post;
  FilterDataset(DataSet,'');
end;

procedure TdtmCodes.qryBankAfterPost(DataSet: TDataSet);
begin
  RefreshData(qryBankLU);
end;

procedure TdtmCodes.RefreshData(DataSet :TDataSet);
begin
  DataSet.Close;
  DataSet.Open;
end;

procedure TdtmCodes.DataModuleCreate(Sender: TObject);
begin
  BankOrAddr := 2;  //Bank=1 Address=2 
end;

end.
