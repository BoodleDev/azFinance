unit rptPendNotes;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepPendNotes = class(TrepBasePort)
    qlDueDate: TQRDBText;
    QRLabel1: TQRLabel;
    qlUserID: TQRDBText;
    qlRefNo: TQRDBText;
    qlNoteNo: TQRDBText;
    qlNoteDate: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    qlRemindMe: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    qlEntCode: TQRDBText;
    QRLabel8: TQRLabel;
    qlTelNo1: TQRDBText;
    QRLabel9: TQRLabel;
    qlTelNo2: TQRDBText;
    QRLabel10: TQRLabel;
    qlTelNo3: TQRDBText;
    qlNote: TQRDBText;
    QRLabel12: TQRLabel;
    qlNoteName: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qlEmployer: TQRDBText;
    qlName: TQRDBText;
    qlSurname: TQRDBText;
    qlBranch: TQRDBText;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmNtsRE;

{$R *.DFM}

end.
