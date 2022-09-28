unit ExportData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB;

type
  TExportLineEvent = procedure(var ExportLine: string) of object;
  TExportData = class(TComponent)
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
    { Private declarations }
    FExportDataSet: TDataSet;
    //FRunExport: Boolean;
    FOnLineChange: TExportLineEvent;
    FDoExportLine: Boolean;
    FVisibleFldOnly: boolean;
    FUseSaveDialog: Boolean;
    FDestination: String;
    FRunExport: Boolean;
    FExportFieldHeaders: Boolean;
    procedure SetExportDataSet(const Value: TDataSet);
    procedure SetRunExport(const Value: Boolean);
    //
    procedure ExportDataToFile;
    procedure LoopDataToFile(expFileName : string);
    procedure SetOnLineChange(const Value: TExportLineEvent);
    procedure SetUseSaveDialog(const Value: Boolean);
    procedure SetDestination(const Value: String);
    procedure SetExportFieldHeaders(const Value: Boolean);
  protected
    { Protected declarations }
  public
    { Public declarations }
    property ExportFieldHeaders: Boolean read FExportFieldHeaders write SetExportFieldHeaders default True;
    property UseSaveDialog: Boolean read FUseSaveDialog write SetUseSaveDialog default True;
  published
    { Published declarations }
    property Destination: String read FDestination write SetDestination;
    property ExportDataSet : TDataSet read FExportDataSet write SetExportDataSet;
    property RunExport     : Boolean read FRunExport write SetRunExport;
    property DoExportLine  : Boolean read FDoExportLine write FDoExportLine;
    property VisibleFldOnly: boolean read FVisibleFldOnly write FVisibleFldOnly;
    property OnLineChange  : TExportLineEvent read FOnLineChange write SetOnLineChange;
  end;

procedure Register;

implementation
{$R 'ExportData.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TExportData]);
end;

{ TExportData }

constructor TExportData.Create(AOwner: TComponent);
begin
  inherited;
  {if csDesigning in Self.ComponentState then
  begin}
    ExportFieldHeaders := True;
    UseSaveDialog := True;
  //end;
//FVisibleFldOnly := False;
end;

destructor TExportData.Destroy;
begin
  inherited Destroy;
end;

procedure TExportData.ExportDataToFile;
var
  sdFileDest : TSaveDialog;
begin
  if Assigned(ExportDataSet) then
  begin
    if Destination = '' then
    begin
      sdFileDest := TSaveDialog.Create(nil);
      sdFileDest.Filter := 'Excel files (*.csv)|*.csv|Text files (*.txt)|*.txt';
      sdFileDest.DefaultExt := 'cvs';
      sdFileDest.FileName := Destination;
      try
        if sdFileDest.Execute then
          LoopDataToFile(sdFileDest.FileName);
      finally
        sdFileDest.Free;
      end;
    end
    else
      LoopDataToFile(Destination);
  end
  else
     MessageDlg('There is no data to export',mtInformation,[mbOK],0);
end;

procedure TExportData.LoopDataToFile(expFileName : string);
var
  expFile : TextFile;
  i : integer;
  strRecord  : string;
  destFile   : string;
begin
  destFile := expFileName;
  ExportDataSet.DisableControls;
  try
    Screen.Cursor := crHourGlass;
    AssignFile(expFile,destFile);
    if FileExists(destFile) then
      Append(expFile)
    else
      Rewrite(expFile);
    //write headings
    if ExportFieldHeaders then
    begin
      strRecord := '';
      for i := 0 to ExportDataSet.FieldCount-1 do
      begin
        if FVisibleFldOnly then
        begin
          if ExportDataSet.Fields[i].Visible then
            strRecord := strRecord + ExportDataSet.Fields[i].DisplayName+','
        end
        else
          strRecord := strRecord + ExportDataSet.Fields[i].DisplayName+',';
      end;
      Delete(strRecord,Length(strRecord),1);
      WriteLn(expFile,strRecord);
    end;
    //write table
    ExportDataSet.First;
    while not ExportDataSet.Eof do
    begin
      strRecord := '';
      if DoExportLine and Assigned(OnLineChange) then
        OnLineChange(strRecord)
      else
      begin
        for i := 0 to ExportDataSet.FieldCount-1 do
        begin
          if FVisibleFldOnly then
          begin
            if ExportDataSet.Fields[i].Visible then
            strRecord := strRecord + ExportDataSet.Fields[i].AsString+',';
          end
          else
            strRecord := strRecord + ExportDataSet.Fields[i].AsString+',';
        end;
      end;  
      //
      Delete(strRecord,Length(strRecord),1);
      WriteLn(expFile,strRecord);
      ExportDataSet.Next;
    end;
    MessageDlg('Data export complete',mtInformation,[mbOk],0);
    ExportDataSet.First;
  finally
    Screen.Cursor := crDefault;
    CloseFile(expFile);
    ExportDataSet.EnableControls;
    RunExport := False;
  end;
end;

procedure TExportData.SetDestination(const Value: String);
begin
  FDestination := Value;
end;

procedure TExportData.SetExportDataSet(const Value: TDataSet);
begin
  FExportDataSet := Value;
end;

procedure TExportData.SetExportFieldHeaders(const Value: Boolean);
begin
  FExportFieldHeaders := Value;
end;

procedure TExportData.SetOnLineChange(const Value: TExportLineEvent);
begin
  FOnLineChange := Value;
end;

procedure TExportData.SetRunExport(const Value: Boolean);
begin
  FRunExport := Value;
  if FRunExport then
  begin
    if Assigned(ExportDataSet) then
    {begin
      Screen.Cursor := crHourGlass;
      try  }
        ExportDataToFile
      {finally
        Screen.Cursor := crDefault;
      end;
    end }
    else
      MessageDlg('There is no data to export',mtError,[mbOk],0);
  end;
end;

procedure TExportData.SetUseSaveDialog(const Value: Boolean);
begin
  //FUseSaveDialog := Value;
end;

end.
