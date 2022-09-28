unit dbDateTimePicker;

interface

uses
  CommCtrl, Windows, Messages, SysUtils, Classes, Graphics, Controls,
  ComCtrls, DbCtrls, Db;

type

  THackCommonCalendar = class(TCommonCalendar);

  TdbDateTimePicker = class(TDateTimePicker)
  private
    FDataLink: TFieldDataLink;
    fShowWeekNumbers: boolean;

    procedure DataChange(Sender: TObject);
    procedure UpdateData(Sender: TObject);

    procedure SetDataSource(Value: TDataSource);
    function  GetDataSource: TDataSource;

    procedure SetDataField(const value : string);
    function  GetDataField : string;

    function GetReadOnly: boolean;
    procedure SetReadOnly(const Value: boolean);

    // field linked to the control
    function  GetField : TField;

    //trick to override the nonexisting DoDropDown and raise OnDropDown event
    procedure CNNotify(var Message: TWMNotify); message CN_NOTIFY;

    procedure SetWeekNumbers;
  protected
    // OnEnter & Onexit
    procedure DoEnter; override;
    procedure DoExit; override;

    // OnChange
    procedure Change; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    property Field : TField read getField;
  published
    property DataField  : string read getDataField  write setDataField;
    property DataSource : TDataSource read getDataSource write setDataSource;
    property ShowWeekNumbers : boolean read fShowWeekNumbers write fShowWeekNumbers default False;
    property ReadOnly : boolean read GetReadOnly write SetReadOnly;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Graytech', [TdbDateTimePicker]);
end; (* Register *)

constructor TdbDateTimePicker.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FDataLink                 := TFieldDataLink.Create;
  FDataLink.Control         := Self;
  FDataLink.OnDataChange    := DataChange;
  FDataLink.OnUpdateData    := UpdateData;

  fShowWeekNumbers          := False;
end; (* Create *)

destructor TdbDateTimePicker.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;

  inherited destroy;
end; (* Destroy *)

procedure TdbDateTimePicker.DataChange(Sender: TObject);
begin
  // is it a valid field ?
  if fDataLink.Field <> nil then
  begin
    //handle null
    if Field.IsNull then
    begin
      DateTime_SetFormat(Self.Handle, 'gg'); //display "NULL"
      case Kind of
        dtkDate: dateTime := Date;
        dtkTime: dateTime := Time;
      end;
    end
    else
    begin
      DateTime_SetFormat(Self.Handle, '') ;
      DateTime := fDataLink.Field.asDateTime;
    end;

  end;
end; (* DataChange *)

procedure TdbDateTimePicker.UpdateData(Sender: TObject);
begin
  if fDataLink.Field <> nil then begin
    if DateTime = 0 then //handle "null" value
    begin
      DateTime_SetFormat(Self.Handle, 'gg') ;
    end
    else
    begin
      DateTime_SetFormat(Self.Handle, '') ;
    end;

    fDataLink.Field.asDateTime := DateTime;
  end;
end; (* UpdateData *)

function TdbDateTimePicker.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end; (* GetDataSource *)

procedure TdbDateTimePicker.SetDataSource(Value: TDataSource);
begin
  fDataLink.DataSource := Value;
end; (* SetDataSource *)

function TdbDateTimePicker.GetDataField: string;
begin
  Result := fDataLink.FieldName;
end; (* GetDataField *)

procedure TdbDateTimePicker.SetDataField(const Value: string);
begin
  fDataLink.FieldName := Value;
end; (* SetDataField *)

function TdbDateTimePicker.GetField : TField;
begin
  Result := FDataLink.field;
end; (* GetField *)

procedure TdbDateTimePicker.Change;
begin
  if fDataLink.Edit then
  begin
    DateTime_SetFormat(Self.Handle, '');
    inherited Change;
    fDataLink.Modified;
  end;
end; (* Change *)


procedure TdbDateTimePicker.DoEnter;
begin
  inherited;
  //nothing special for now
end; (* DoEnter *)

procedure TdbDateTimePicker.DoExit;
begin
  try
    FDataLink.UpdateRecord;
  except
    SetFocus;
    raise;
  end;

  inherited;
end; (* DoExit *)

procedure TdbDateTimePicker.SetWeekNumbers;
var
  Style: Integer;
  ReqRect: TRect;
  MaxTodayWidth: Integer;
begin
  with THackCommonCalendar(self) do
  begin
    // set style to include week numbers
    Style := GetWindowLong(CalendarHandle, GWL_STYLE);
    SetWindowLong(CalendarHandle, GWL_STYLE, Style or MCS_WEEKNUMBERS);
    FillChar(ReqRect, SizeOf(TRect), 0);
    // get required rect
    Win32Check(MonthCal_GetMinReqRect(CalendarHandle, ReqRect));
    // get max today string width
    MaxTodayWidth := MonthCal_GetMaxTodayWidth(CalendarHandle);
    // adjust rect width to fit today string
    if MaxTodayWidth > ReqRect.Right then
      ReqRect.Right := MaxTodayWidth;
    // set new height & width
    SetWindowPos(CalendarHandle, 0, 0, 0, ReqRect.Right, ReqRect.Bottom, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOZORDER);
  end;
end; (* SetWeekNumbers *)

procedure TdbDateTimePicker.CNNotify(var Message: TWMNotify);
begin
  //this will "fire" the OnDropDown event - we add week numbers here
  if Message.NMHdr^.code = DTN_DROPDOWN then
  begin
    if ShowWeekNumbers then SetWeekNumbers;
  end;

  inherited;
end; (*CNNotify*)

function TdbDateTimePicker.GetReadOnly: boolean;
begin
  Result := FDataLink.ReadOnly;
end; (* GetReadOnly *)


procedure TdbDateTimePicker.SetReadOnly(const Value: boolean);
begin
  FDataLink.ReadOnly := Value;
end;(* SetReadOnly *)

end.

