unit fmLoanEnquiry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmAdvancedFilter;

type
  TfrmLoanEnquiry = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FIntValue1: Integer;
    procedure SetIntValue1(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property IntValue1: Integer read FIntValue1 write SetIntValue1;
  end;

var
  frmLoanEnquiry: TfrmLoanEnquiry;

implementation

uses dmMain;

{$R *.dfm}

procedure TfrmLoanEnquiry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAdvancedFilter.Close;
end;

procedure TfrmLoanEnquiry.SetIntValue1(const Value: Integer);
begin
  FIntValue1 := Value;
  LoadAdvancedFilter(dtmMain.dbData.ConnectionString, Self, dtmMain.CurrentID, Value);
end;

end.
