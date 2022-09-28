unit dmReporting;

interface

uses
  SysUtils, Classes, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ADODB, DB, Provider, DBClient, ppParameter, ppModule, raCodMod,
  ppBands, ppCtrls, jpeg, ppPrnabl, ppCache, ppStrtch, ppMemo, ppVar,
  Graphics, ppRichTx;//, JvGIF;

type
  TdtmReporting = class(TDataModule)
    plClientStatement: TppDBPipeline;
    dsLoanAccount: TADODataSet;
    dtsLoanAccount: TDataSource;
    dsClientAccount: TADODataSet;
    dtsClientAccount: TDataSource;
    prClientStatement: TppReport;
    dsLoanAccount2: TADODataSet;
    dtsLoanAccount2: TDataSource;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel71: TppLabel;
    ppLabel81: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel49: TppLabel;
    ppDBText29: TppDBText;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBText35: TppDBText;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText55: TppDBText;
    ppDBText62: TppDBText;
    ppDBText64: TppDBText;
    ppDBText66: TppDBText;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel28: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel26: TppLabel;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppMemo10: TppMemo;
    ppMemo11: TppMemo;
    ppMemo12: TppMemo;
    ppMemo13: TppMemo;
    ppMemo14: TppMemo;
    ppMemo15: TppMemo;
    ppMemo16: TppMemo;
    ppLabel50: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppRichText1: TppRichText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    ppParameter1: TppParameter;
    ppParameter2: TppParameter;
    ppParameter3: TppParameter;
    ppShape2: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppDBText67: TppDBText;
    ppDBText11: TppDBText;
    ppDBText70: TppDBText;
    ppDBText12: TppDBText;
    ppImage3: TppImage;
    ppDBMemo1: TppDBMemo;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    raCodeModule1: TraCodeModule;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmReporting: TdtmReporting;

implementation

uses dmMain;

{$R *.dfm}


end.
