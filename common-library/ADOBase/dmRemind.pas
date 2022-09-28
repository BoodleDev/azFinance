unit dmRemind;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB;

type
  TdtmRemind = class(TDataModule)
    spCntRE: TADOStoredProc;
    cmdSnoozeN: TADOCommand;
    qryRemind: TADOStoredProc;
    dtsRemind: TDataSource;
    qryNote: TADODataSet;
    dtsNote: TDataSource;
    cmdDismiss: TADOCommand;
    procedure qryRemindBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FAppID: integer;
    procedure SetAppID(const Value: integer);
  public
    { Public declarations }
    property AppID : integer read FAppID write SetAppID;
//    function GetRECnt:integer; moved to dtmMain save memory of auto create for dtm
    procedure SetREStatus(Ready: boolean);
    procedure SnoozeCurRmd;
    procedure DismissCurRmd;
  end;

//var
//  dtmRemind: TdtmRemind;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmRemind.SetAppID(const Value: integer);
begin
  FAppID := Value;
  qryRemind.Parameters[2].Value  := AppID; // AppID
  cmdSnoozeN.Parameters[2].Value := AppID; // AppID
  cmdDismiss.Parameters[2].Value := AppID; // AppID
  spCntRE.Parameters[2].Value    := AppID; // AppID
end;

{function TdtmRemind.GetRECnt: integer;
begin
  spCntRE.Close;
  spCntRE.Parameters[1].Value := dtmMain.CurrentID;
  spCntRE.Open;
  Result := spCntRE.Fields[0].AsInteger;
  spCntRE.Close;
end;}

procedure TdtmRemind.qryRemindBeforeOpen(DataSet: TDataSet);
begin
  qryRemind.Parameters[1].Value := dtmMain.CurrentID; // AppID
end;

procedure TdtmRemind.SnoozeCurRmd;
begin
  //update NoteTbl set RemindMe = RemindMe + 0.006944445=10min
  //cmdSnoozeN.Parameters[0].Value := Now+0.0090; //GetDate()+0.009
  cmdSnoozeN.Parameters[0].Value := qryRemind.FieldByName('EntityID').AsInteger; // EntityID
  cmdSnoozeN.Parameters[1].Value := qryRemind.FieldByName('NoteNo').AsInteger; // NoteNo
  cmdSnoozeN.Execute;
  qryRemind.Requery;
end;

procedure TdtmRemind.SetREStatus(Ready: boolean);
begin
  qryRemind.Active := Ready;
  qryNote.Active := Ready;
end;

procedure TdtmRemind.DismissCurRmd;
begin
  cmdDismiss.Parameters[0].Value := qryRemind.FieldByName('EntityID').AsInteger; // EntityID
  cmdDismiss.Parameters[1].Value := qryRemind.FieldByName('NoteNo').AsInteger; // NoteNo
  cmdDismiss.Execute;
  qryRemind.Requery;
end;

end.
