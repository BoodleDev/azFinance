unit dmQuotations;


interface

uses
  SysUtils, Classes, DB, ADODB, ppModule, raCodMod, ppBarCod, ppParameter,
  ppBands, ppPageBreak, ppCtrls, ppRegion, ppReport, ppSubRpt, ppRichTx,
  ppClass, ppVar, Graphics, ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd,
  ppDB, ppComm, ppRelatv, ppDBPipe, myChkBox, daDataModule, jpeg;

type
  TdtmQuotations = class(TDataModule)
    dsAffordability: TADODataSet;
    dtsAffordability: TDataSource;
    dsPrintQuote: TADODataSet;
    dtsPrintQuote: TDataSource;
    dsThirdParty: TADODataSet;
    dtsThirdParty: TDataSource;
    dsQuoteScript: TADODataSet;
    dtsQuoteScript: TDataSource;
    cmdEndWaiting: TADOCommand;
    cmdAssignProcess: TADOCommand;
    qryCallRecords: TADOQuery;
    plQuoteScript: TppDBPipeline;
    plThirdParty: TppDBPipeline;
    rpBureau: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel89: TppLabel;
    ppLine1: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppMemo4: TppMemo;
    ppImage2: TppImage;
    ppDetailBand4: TppDetailBand;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine4: TppLine;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel95: TppLabel;
    ppDBText131: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    plAffordability: TppDBPipeline;
    plQuote: TppDBPipeline;
    rpQuoteScript: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel119: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppRichText10: TppRichText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand8: TppDetailBand;
    ppLabel118: TppLabel;
    ppDBText205: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppRichText8: TppRichText;
    ppRichText9: TppRichText;
    ppRichText7: TppRichText;
    ppRegion1: TppRegion;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppDBText219: TppDBText;
    ppDBText220: TppDBText;
    ppDBText221: TppDBText;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText234: TppDBText;
    ppDBText235: TppDBText;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppDBText239: TppDBText;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppDBText270: TppDBText;
    ppDBText271: TppDBText;
    ppDBText273: TppDBText;
    ppDBText274: TppDBText;
    ppDBText275: TppDBText;
    ppDBText276: TppDBText;
    ppDBText277: TppDBText;
    ppLabel122: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppDBText206: TppDBText;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppDBText209: TppDBText;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppDBText244: TppDBText;
    ppDBText245: TppDBText;
    ppDBText246: TppDBText;
    ppDBText247: TppDBText;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppDBText250: TppDBText;
    ppDBText251: TppDBText;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppDBText262: TppDBText;
    ppDBText263: TppDBText;
    ppDBText264: TppDBText;
    ppDBText265: TppDBText;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppDBText268: TppDBText;
    ppDBText269: TppDBText;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppRichText3: TppRichText;
    ppPageBreak2: TppPageBreak;
    ppPageBreak1: TppPageBreak;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLine22: TppLine;
    ppShape13: TppShape;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLabel97: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel100: TppLabel;
    ppLabel99: TppLabel;
    ppLabel98: TppLabel;
    ppLabel96: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine26: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppFooterBand5: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppParameterList3: TppParameterList;
    rpQuote: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText104: TppDBText;
    ppLabel74: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel140: TppLabel;
    ppDBText278: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel55: TppLabel;
    ppLine11: TppLine;
    ppLabel56: TppLabel;
    ppLine12: TppLine;
    ppLabel57: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    ppMemo1: TppMemo;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape9: TppShape;
    ppLabel62: TppLabel;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
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
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel52: TppLabel;
    ppLabel1: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel50: TppLabel;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
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
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText81: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLabel73: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLine16: TppLine;
    ppLine20: TppLine;
    ppShape12: TppShape;
    ppLine18: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLabel80: TppLabel;
    ppLine27: TppLine;
    ppLabel103: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText138: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppMemo5: TppMemo;
    ppLabel54: TppLabel;
    ppRichText1: TppRichText;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppRichText2: TppRichText;
    ppParameterList1: TppParameterList;
    rpQuote2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppImage3: TppImage;
    ppMemo6: TppMemo;
    ppMemo7: TppMemo;
    ppLabel53: TppLabel;
    ppLabel104: TppLabel;
    ppDBText94: TppDBText;
    ppLabel105: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel106: TppLabel;
    ppDBText102: TppDBText;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppLabel107: TppLabel;
    ppLine2: TppLine;
    ppLabel108: TppLabel;
    ppLine3: TppLine;
    ppLabel109: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    ppMemo8: TppMemo;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppShape14: TppShape;
    ppLabel110: TppLabel;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppDBText103: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText203: TppDBText;
    ppDBText279: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppDBText284: TppDBText;
    ppDBText285: TppDBText;
    ppDBText286: TppDBText;
    ppDBText287: TppDBText;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppDBText290: TppDBText;
    ppDBText291: TppDBText;
    ppDBText292: TppDBText;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppDBText293: TppDBText;
    ppDBText294: TppDBText;
    ppDBText295: TppDBText;
    ppDBText296: TppDBText;
    ppDBText297: TppDBText;
    ppDBText298: TppDBText;
    ppDBText299: TppDBText;
    ppDBText300: TppDBText;
    ppDBText301: TppDBText;
    ppDBText302: TppDBText;
    ppDBText303: TppDBText;
    ppDBText304: TppDBText;
    ppDBText305: TppDBText;
    ppDBText306: TppDBText;
    ppDBText307: TppDBText;
    ppDBText308: TppDBText;
    ppDBText309: TppDBText;
    ppDBText310: TppDBText;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppDBText311: TppDBText;
    ppDBText312: TppDBText;
    ppDBText313: TppDBText;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppDBText314: TppDBText;
    ppDBText315: TppDBText;
    ppDBText316: TppDBText;
    ppLabel196: TppLabel;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppShape30: TppShape;
    ppLine7: TppLine;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel202: TppLabel;
    ppLine10: TppLine;
    ppLabel203: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText317: TppDBText;
    ppDBText318: TppDBText;
    ppDBText319: TppDBText;
    ppDBText320: TppDBText;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppMemo9: TppMemo;
    ppLabel204: TppLabel;
    ppRichText4: TppRichText;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLine15: TppLine;
    ppLine28: TppLine;
    ppRichText5: TppRichText;
    ppParameterList2: TppParameterList;
    plQuote2: TppDBPipeline;
    dsQuote2: TADODataSet;
    dtsQuote2: TDataSource;
    rpQuote3: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppImage4: TppImage;
    ppMemo10: TppMemo;
    ppMemo11: TppMemo;
    ppLabel134: TppLabel;
    ppLabel148: TppLabel;
    ppDBText150: TppDBText;
    ppLabel207: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel208: TppLabel;
    ppDBText168: TppDBText;
    ppDetailBand11: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppLabel210: TppLabel;
    ppLine30: TppLine;
    ppLabel211: TppLabel;
    ppDBBarCode3: TppDBBarCode;
    ppMemo12: TppMemo;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppDBText204: TppDBText;
    ppDBText218: TppDBText;
    ppDBText236: TppDBText;
    ppDBText254: TppDBText;
    ppDBText272: TppDBText;
    ppDBText323: TppDBText;
    ppDBText324: TppDBText;
    ppDBText325: TppDBText;
    ppDBText326: TppDBText;
    ppDBText327: TppDBText;
    ppDBText328: TppDBText;
    ppDBText329: TppDBText;
    ppDBText330: TppDBText;
    ppDBText331: TppDBText;
    ppDBText332: TppDBText;
    ppDBText333: TppDBText;
    ppDBText335: TppDBText;
    ppDBText336: TppDBText;
    ppDBText337: TppDBText;
    ppDBText338: TppDBText;
    ppDBText339: TppDBText;
    ppDBText340: TppDBText;
    ppDBText341: TppDBText;
    ppDBText342: TppDBText;
    ppDBText343: TppDBText;
    ppDBText344: TppDBText;
    ppDBText345: TppDBText;
    ppDBText346: TppDBText;
    ppDBText347: TppDBText;
    ppDBText348: TppDBText;
    ppDBText349: TppDBText;
    ppDBText350: TppDBText;
    ppDBText352: TppDBText;
    ppDBText353: TppDBText;
    ppDBText354: TppDBText;
    ppDBText355: TppDBText;
    ppDBText356: TppDBText;
    ppDBText357: TppDBText;
    ppDBText358: TppDBText;
    ppDBText359: TppDBText;
    ppDBText360: TppDBText;
    ppDBText361: TppDBText;
    ppDBText362: TppDBText;
    ppDBText363: TppDBText;
    ppDBText364: TppDBText;
    ppDBText365: TppDBText;
    ppDBText366: TppDBText;
    ppDBText367: TppDBText;
    ppDBText369: TppDBText;
    ppDBText370: TppDBText;
    ppDBText371: TppDBText;
    ppDBText372: TppDBText;
    ppDBText373: TppDBText;
    ppDBText374: TppDBText;
    ppDBText375: TppDBText;
    ppDBText376: TppDBText;
    ppDBText377: TppDBText;
    ppDBText378: TppDBText;
    ppDBText379: TppDBText;
    ppDBText380: TppDBText;
    ppDBText381: TppDBText;
    ppDBText382: TppDBText;
    ppDBText383: TppDBText;
    ppDBText384: TppDBText;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppDBText385: TppDBText;
    ppDBText386: TppDBText;
    ppDBText387: TppDBText;
    ppDBText388: TppDBText;
    ppDBText389: TppDBText;
    ppDBText391: TppDBText;
    ppDBText392: TppDBText;
    ppDBText393: TppDBText;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppDBText396: TppDBText;
    ppDBText397: TppDBText;
    ppDBText398: TppDBText;
    ppDBText399: TppDBText;
    ppDBText400: TppDBText;
    ppDBText401: TppDBText;
    ppDBText402: TppDBText;
    ppDBText403: TppDBText;
    ppDBText404: TppDBText;
    ppDBText405: TppDBText;
    ppDBText406: TppDBText;
    ppDBText407: TppDBText;
    ppDBText408: TppDBText;
    ppDBText409: TppDBText;
    ppDBText411: TppDBText;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppDBText412: TppDBText;
    ppDBText413: TppDBText;
    ppDBText414: TppDBText;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppDBText415: TppDBText;
    ppDBText416: TppDBText;
    ppDBText417: TppDBText;
    ppLabel274: TppLabel;
    ppSubReport7: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppShape42: TppShape;
    ppLine33: TppLine;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel279: TppLabel;
    ppLine34: TppLine;
    ppLine36: TppLine;
    ppLabel281: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText418: TppDBText;
    ppDBText419: TppDBText;
    ppDBText421: TppDBText;
    ppDBText423: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppParameterList4: TppParameterList;
    plQuote3: TppDBPipeline;
    dsQuote3: TADODataSet;
    dtsQuote3: TDataSource;
    ppLabel250: TppLabel;
    ppDBText394: TppDBText;
    ppLabel212: TppLabel;
    ppDBText390: TppDBText;
    ppLine39: TppLine;
    ppLabel209: TppLabel;
    ppLine40: TppLine;
    ppLabel251: TppLabel;
    ppMemo14: TppMemo;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLine29: TppLine;
    ppLabel285: TppLabel;
    ppMemo15: TppMemo;
    ppImage5: TppImage;
    ppMemo16: TppMemo;
    ppLabel252: TppLabel;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppDBText186: TppDBText;
    ppFaxNo: TppParameter;
    lblFaxNo: TppLabel;
    qryFaxNo: TADOQuery;
    ppShape31: TppShape;
    ppReport1: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape40: TppShape;
    ppImage6: TppImage;
    ppMemo13: TppMemo;
    ppMemo17: TppMemo;
    ppLabel278: TppLabel;
    ppLabel280: TppLabel;
    ppDBText334: TppDBText;
    ppLabel282: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel283: TppLabel;
    ppDBText351: TppDBText;
    ppLabel284: TppLabel;
    ppDBText368: TppDBText;
    ppLabel291: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppFooterBand9: TppFooterBand;
    ppLine35: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppDBText395: TppDBText;
    ppLine41: TppLine;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppMemo18: TppMemo;
    ppMemo19: TppMemo;
    ppImage7: TppImage;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppDBText410: TppDBText;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppShape41: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppDBText420: TppDBText;
    ppDBText422: TppDBText;
    ppDBText424: TppDBText;
    ppDBText425: TppDBText;
    ppDBText426: TppDBText;
    ppDBText427: TppDBText;
    ppDBText428: TppDBText;
    ppDBText429: TppDBText;
    ppDBText430: TppDBText;
    ppDBText431: TppDBText;
    ppDBText432: TppDBText;
    ppDBText433: TppDBText;
    ppDBText434: TppDBText;
    ppDBText435: TppDBText;
    ppDBText436: TppDBText;
    ppDBText437: TppDBText;
    ppDBText438: TppDBText;
    ppDBText439: TppDBText;
    ppDBText440: TppDBText;
    ppDBText441: TppDBText;
    ppDBText442: TppDBText;
    ppDBText443: TppDBText;
    ppDBText444: TppDBText;
    ppDBText445: TppDBText;
    ppDBText446: TppDBText;
    ppDBText447: TppDBText;
    ppDBText448: TppDBText;
    ppDBText449: TppDBText;
    ppDBText450: TppDBText;
    ppDBText451: TppDBText;
    ppDBText452: TppDBText;
    ppDBText453: TppDBText;
    ppDBText454: TppDBText;
    ppDBText455: TppDBText;
    ppDBText456: TppDBText;
    ppDBText457: TppDBText;
    ppDBText458: TppDBText;
    ppDBText459: TppDBText;
    ppDBText460: TppDBText;
    ppDBText461: TppDBText;
    ppDBText462: TppDBText;
    ppDBText463: TppDBText;
    ppDBText464: TppDBText;
    ppDBText465: TppDBText;
    ppDBText466: TppDBText;
    ppDBText467: TppDBText;
    ppDBText468: TppDBText;
    ppDBText469: TppDBText;
    ppDBText470: TppDBText;
    ppDBText471: TppDBText;
    ppDBText472: TppDBText;
    ppDBText473: TppDBText;
    ppDBText474: TppDBText;
    ppDBText475: TppDBText;
    ppDBText476: TppDBText;
    ppDBText477: TppDBText;
    ppDBText478: TppDBText;
    ppDBText479: TppDBText;
    ppDBText480: TppDBText;
    ppDBText481: TppDBText;
    ppDBText482: TppDBText;
    ppDBText483: TppDBText;
    ppDBText484: TppDBText;
    ppDBText485: TppDBText;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppDBText486: TppDBText;
    ppDBText487: TppDBText;
    ppDBText488: TppDBText;
    ppDBText489: TppDBText;
    ppDBText490: TppDBText;
    ppDBText491: TppDBText;
    ppDBText492: TppDBText;
    ppDBText493: TppDBText;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLabel345: TppLabel;
    ppDBText494: TppDBText;
    ppDBText495: TppDBText;
    ppDBText496: TppDBText;
    ppDBText497: TppDBText;
    ppDBText498: TppDBText;
    ppDBText499: TppDBText;
    ppDBText500: TppDBText;
    ppDBText501: TppDBText;
    ppDBText502: TppDBText;
    ppDBText503: TppDBText;
    ppDBText504: TppDBText;
    ppDBText505: TppDBText;
    ppDBText506: TppDBText;
    ppDBText507: TppDBText;
    ppDBText508: TppDBText;
    ppLabel346: TppLabel;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppDBText509: TppDBText;
    ppDBText510: TppDBText;
    ppDBText511: TppDBText;
    ppLabel349: TppLabel;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppDBText512: TppDBText;
    ppDBText513: TppDBText;
    ppDBText514: TppDBText;
    ppLabel352: TppLabel;
    ppSubReport8: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppShape50: TppShape;
    ppLine44: TppLine;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppLabel356: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLabel357: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText515: TppDBText;
    ppDBText516: TppDBText;
    ppDBText517: TppDBText;
    ppDBText518: TppDBText;
    ppFooterBand10: TppFooterBand;
    ppSummaryBand8: TppSummaryBand;
    ppLabel358: TppLabel;
    ppMemo20: TppMemo;
    ppLabel359: TppLabel;
    ppLabel360: TppLabel;
    ppLabel361: TppLabel;
    ppLabel362: TppLabel;
    ppLabel363: TppLabel;
    ppMemo21: TppMemo;
    ppLabel364: TppLabel;
    ppLabel365: TppLabel;
    ppLabel366: TppLabel;
    ppLabel367: TppLabel;
    ppDBBarCode4: TppDBBarCode;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppParameterList5: TppParameterList;
    ppParameter1: TppParameter;
    dsAuthorisationPay: TADODataSet;
    dtsAuthorisationPay: TDataSource;
    plAuthorisationPay: TppDBPipeline;
    rpAuthorisationPay: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDetailBand16: TppDetailBand;
    ppFooterBand11: TppFooterBand;
    ppLabel381: TppLabel;
    ppDBText527: TppDBText;
    ppLabel382: TppLabel;
    ppShape52: TppShape;
    ppLine52: TppLine;
    ppLabel383: TppLabel;
    ppLabel384: TppLabel;
    ppLine53: TppLine;
    ppDBText528: TppDBText;
    ppDBText529: TppDBText;
    ppLabel385: TppLabel;
    ppLabel386: TppLabel;
    ppRichText11: TppRichText;
    ppDBText530: TppDBText;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppLabel389: TppLabel;
    ppLabel390: TppLabel;
    ppDBText531: TppDBText;
    ppDBText532: TppDBText;
    ppDBText533: TppDBText;
    ppDBText534: TppDBText;
    ppMemo23: TppMemo;
    ppLabel391: TppLabel;
    ppLabel392: TppLabel;
    ppLine54: TppLine;
    ppLabel393: TppLabel;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppSystemVariable9: TppSystemVariable;
    rpQuote4: TppReport;
							
						  
						   
							
						  
						   
						
								  
					   
										   
							  
							  
						
						 
						 
						
						 
						
						
						
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						   
						   
						   
						 
						 
						 
						 
						 
						 
						   
						   
						 
						 
						   
						   
						 
						   
						 
						 
						   
						 
						   
						 
						   
						 
						 
						
						 
						 
						 
						   
						 
						   
						 
						   
						 
						   
						 
						   
						 
						   
						   
						 
							  
						 
						 
						   
						   
						   
						   
						 
						 
						 
						 
						 
						 
								
									
							   
					  
					  
						 
						 
						 
					  
					  
						 
								  
						   
						   
						   
						   
								  
									
								 
						 
							  
										   
									   
							   
						
						
						
						
						
						   
						 
						 
						 
						   
						 
						 
						 
						   
						
						
						
						
						
						
						
						 
									   
								  
								  
							   
								  
								   
								 
								
								   
								  
								 
							   
									 
								  
									  
								   
									
											
										   
										   
								   
								   
									 
									 
							 
							 
								 
								 
									  
									  
										
										
									   
									   
									   
									   
										
										
								  
								  
								   
								   
										 
										 
									  
									  
								   
								   
							   
							   
										 
										 
											 
											 
										 
										 
												 
													
												
												
									   
										   
									  
									   
								  
									 
								  
							   
								 
								 
								   
								
										
										  
									 
									 
										 
									   
									  
										
									   
									   
									   
									 
								   
									   
									 
									  
								   
								   
								   
								   
									  
								  
									  
								   
									
									  
											
									  
									
								   
										  
								  
									
								 
								 
								 
								 
								   
								   
								   
								   
									 
									 
									 
									 
							 
							 
							 
							 
								 
								 
								 
								 
									  
									  
									  
									  
										
										
										
										
									   
									   
									   
									   
									   
									   
									   
									   
										
										
										
										
								  
								  
								  
								  
								   
								   
								   
								   
										 
										 
										 
										 
									  
									  
									  
									  
								   
								   
								   
								   
							   
							   
							   
							   
								   
    ppHeaderBand8: TppHeaderBand;
    ppShape51: TppShape;
    ppImage8: TppImage;
    ppMemo22: TppMemo;
    ppMemo24: TppMemo;
    ppLabel368: TppLabel;
    ppLabel369: TppLabel;
    ppDBText519: TppDBText;
    ppLabel370: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel371: TppLabel;
    ppDBText520: TppDBText;
    ppLabel372: TppLabel;
    ppDBText521: TppDBText;
    lblFaxNo1: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppFooterBand12: TppFooterBand;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel374: TppLabel;
    ppLabel375: TppLabel;
    ppDBText522: TppDBText;
    ppLine50: TppLine;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppMemo25: TppMemo;
    ppMemo26: TppMemo;
    ppImage9: TppImage;
    ppLabel378: TppLabel;
    ppLabel379: TppLabel;
    ppDBText523: TppDBText;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape53: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppShape60: TppShape;
    ppDBText524: TppDBText;
    ppDBText525: TppDBText;
    ppDBText526: TppDBText;
    ppDBText535: TppDBText;
    ppDBText536: TppDBText;
    ppDBText537: TppDBText;
    ppDBText538: TppDBText;
    ppDBText539: TppDBText;
    ppDBText540: TppDBText;
    ppDBText541: TppDBText;
    ppDBText542: TppDBText;
    ppDBText543: TppDBText;
    ppDBText544: TppDBText;
    ppDBText545: TppDBText;
    ppDBText546: TppDBText;
    ppDBText547: TppDBText;
    ppDBText548: TppDBText;
    ppDBText549: TppDBText;
    ppDBText550: TppDBText;
    ppDBText551: TppDBText;
    ppDBText552: TppDBText;
    ppDBText553: TppDBText;
    ppDBText554: TppDBText;
    ppDBText555: TppDBText;
    ppDBText556: TppDBText;
    ppDBText557: TppDBText;
    ppDBText558: TppDBText;
    ppDBText559: TppDBText;
    ppDBText560: TppDBText;
    ppDBText561: TppDBText;
    ppDBText562: TppDBText;
    ppDBText563: TppDBText;
    ppDBText564: TppDBText;
    ppDBText565: TppDBText;
    ppDBText566: TppDBText;
    ppDBText567: TppDBText;
    ppDBText568: TppDBText;
    ppDBText569: TppDBText;
    ppDBText570: TppDBText;
    ppDBText571: TppDBText;
    ppDBText572: TppDBText;
    ppDBText573: TppDBText;
    ppDBText574: TppDBText;
    ppDBText575: TppDBText;
    ppDBText576: TppDBText;
    ppDBText577: TppDBText;
    ppDBText578: TppDBText;
    ppDBText579: TppDBText;
    ppDBText580: TppDBText;
    ppDBText581: TppDBText;
    ppDBText582: TppDBText;
    ppDBText583: TppDBText;
    ppDBText584: TppDBText;
    ppDBText585: TppDBText;
    ppDBText586: TppDBText;
    ppDBText587: TppDBText;
    ppDBText588: TppDBText;
    ppDBText589: TppDBText;
    ppDBText590: TppDBText;
    ppDBText591: TppDBText;
    ppDBText592: TppDBText;
    ppDBText593: TppDBText;
    ppDBText594: TppDBText;
    ppDBText595: TppDBText;
    ppLabel380: TppLabel;
    ppLabel394: TppLabel;
    ppLabel395: TppLabel;
    ppLabel396: TppLabel;
    ppLabel397: TppLabel;
    ppLabel398: TppLabel;
    ppLabel399: TppLabel;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppLabel402: TppLabel;
    ppLabel403: TppLabel;
    ppLabel404: TppLabel;
    ppLabel405: TppLabel;
    ppLabel406: TppLabel;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppLabel410: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppLabel415: TppLabel;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLabel419: TppLabel;
    ppLabel420: TppLabel;
    ppLabel421: TppLabel;
    ppLabel422: TppLabel;
    ppDBText596: TppDBText;
    ppDBText597: TppDBText;
    ppDBText598: TppDBText;
    ppDBText599: TppDBText;
    ppDBText600: TppDBText;
    ppDBText601: TppDBText;
    ppDBText602: TppDBText;
    ppDBText603: TppDBText;
    ppLabel423: TppLabel;
    ppLabel424: TppLabel;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppLabel427: TppLabel;
    ppLabel428: TppLabel;
    ppLabel429: TppLabel;
    ppLabel430: TppLabel;
    ppLabel431: TppLabel;
    ppLabel432: TppLabel;
    ppLabel433: TppLabel;
    ppLabel434: TppLabel;
    ppLabel435: TppLabel;
    ppLabel436: TppLabel;
    ppLabel437: TppLabel;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppDBText604: TppDBText;
    ppDBText605: TppDBText;
    ppDBText606: TppDBText;
    ppDBText607: TppDBText;
    ppDBText608: TppDBText;
    ppDBText609: TppDBText;
    ppDBText610: TppDBText;
    ppDBText611: TppDBText;
    ppDBText612: TppDBText;
    ppDBText613: TppDBText;
    ppDBText614: TppDBText;
    ppDBText615: TppDBText;
    ppDBText616: TppDBText;
    ppDBText617: TppDBText;
    ppDBText618: TppDBText;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLabel443: TppLabel;
    ppDBText619: TppDBText;
    ppDBText620: TppDBText;
    ppDBText621: TppDBText;
    ppLabel444: TppLabel;
    ppLabel445: TppLabel;
    ppLabel446: TppLabel;
    ppDBText622: TppDBText;
    ppDBText623: TppDBText;
    ppDBText624: TppDBText;
    ppLabel447: TppLabel;
    ppSubReport9: TppSubReport;
    ppChildReport9: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppLine51: TppLine;
    ppLine57: TppLine;
    ppShape61: TppShape;
    ppLine58: TppLine;
    ppLabel448: TppLabel;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppLabel451: TppLabel;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLabel452: TppLabel;
    ppDetailBand17: TppDetailBand;
    ppDBText625: TppDBText;
    ppDBText626: TppDBText;
    ppDBText627: TppDBText;
    ppDBText628: TppDBText;
    ppFooterBand13: TppFooterBand;
    ppSummaryBand9: TppSummaryBand;
								 
    ppLabel453: TppLabel;
    ppMemo27: TppMemo;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    ppLabel458: TppLabel;
    ppMemo28: TppMemo;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppDBBarCode5: TppDBBarCode;
    ppGroupFooterBand7: TppGroupFooterBand;
								 
    ppParameterList6: TppParameterList;
    ppParameter2: TppParameter;
    plQuote4: TppDBPipeline;
    dsQuote4: TADODataSet;
    dtsQuote4: TDataSource;
    raCodeModule1: TraCodeModule;
    raCodeModule2: TraCodeModule;
    plQuote5: TppDBPipeline;
    dsQuote5: TADODataSet;
    dtsQuote5: TDataSource;
    rpQuote5: TppReport;
    ppDetailBand19: TppDetailBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppRichText13: TppRichText;
    ppRichText14: TppRichText;
    ppShape63: TppShape;
    ppLabel517: TppLabel;
    ppLabel518: TppLabel;
    ppImage11: TppImage;
    ppLabel519: TppLabel;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppShape66: TppShape;
    ppDBText683: TppDBText;
    ppDBText684: TppDBText;
    ppDBText685: TppDBText;
    ppDBText686: TppDBText;
    ppDBText690: TppDBText;
    ppDBText691: TppDBText;
							 
							  
						
						 
						 
						
						 
						
						
						
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						   
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						   
						   
						   
						 
						 
						 
						 
						 
						 
						   
						   
						 
						 
						   
						   
						 
						   
						 
						 
						   
						 
						   
						 
						   
						 
						 
						
						 
						 
						 
						   
						 
						   
						 
						   
						 
						   
						 
						   
						   
						 
							  
						 
						 
						   
						   
						   
						   
						 
						 
						 
						 
						 
						 
								
									
								
					  
					  
						 
						 
						 
					  
					  
						 
								  
						   
						   
						   
						   
								  
									
								 
						 
							  
						   
						 
						   
						   
						
						 
						 
						 
						 
						 
						   
						 
						
						
						   
						 
						
						
						 
						
						 
						   
						
						
						 
						   
						   
						   
						   
						   
						 
						   
						   
						   
						 
						   
						 
						   
						   
										   
									   
							   
						 
						 
						   
								 
								 
							   
							   
							   
							   
							   
							   
							   
							   
							   
								
								
								   
								   
								
								
								   
								
								
						 
						 
						   
						   
						 
						 
						 
						 
						 
						 
						 
						  
						  
						  
						  
						  
						  
						  
						  
						  
						  
						  
						  
						  
								 
								 
						  
						  
						  
						  
								 
								 
								   
								   
						   
						   
									   
									   
									   
									   
						  
						  
								 
							 
							 
								
								
							
							 
						 
						   
    ppDBText692: TppDBText;
    ppDBText693: TppDBText;
    ppDBText694: TppDBText;
    ppDBText695: TppDBText;
    ppDBText696: TppDBText;
    ppDBText697: TppDBText;
    ppDBText698: TppDBText;
    ppDBText699: TppDBText;
    ppDBText700: TppDBText;
    ppDBText701: TppDBText;
    ppDBText702: TppDBText;
    ppDBText703: TppDBText;
    ppDBText704: TppDBText;
    ppDBText705: TppDBText;
    ppDBText706: TppDBText;
    ppDBText707: TppDBText;
    ppDBText708: TppDBText;
    ppDBText709: TppDBText;
    ppDBText710: TppDBText;
    ppDBText711: TppDBText;
    ppDBText712: TppDBText;
    ppDBText713: TppDBText;
    ppDBText714: TppDBText;
    ppDBText715: TppDBText;
    ppLabel520: TppLabel;
    ppLabel521: TppLabel;
    ppLabel541: TppLabel;
    ppLabel542: TppLabel;
    ppLabel543: TppLabel;
    ppLabel544: TppLabel;
    ppLabel545: TppLabel;
    ppLabel546: TppLabel;
    ppLabel547: TppLabel;
    ppLabel548: TppLabel;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel551: TppLabel;
    ppLabel552: TppLabel;
    ppLabel553: TppLabel;
    ppLabel554: TppLabel;
    ppLabel555: TppLabel;
    ppLabel556: TppLabel;
    ppShape67: TppShape;
    ppLabel557: TppLabel;
    ppLabel558: TppLabel;
    ppLabel559: TppLabel;
    ppLabel560: TppLabel;
    ppLabel561: TppLabel;
    ppLabel562: TppLabel;
    ppLabel563: TppLabel;
    ppLabel564: TppLabel;
    ppLabel565: TppLabel;
    ppLabel566: TppLabel;
    ppLabel567: TppLabel;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppLabel570: TppLabel;
    ppLabel571: TppLabel;
    ppDBText716: TppDBText;
    ppDBText717: TppDBText;
    ppDBText718: TppDBText;
    ppLabel572: TppLabel;
    ppLabel573: TppLabel;
    ppLabel574: TppLabel;
    ppLabel575: TppLabel;
    ppLabel576: TppLabel;
    ppLabel577: TppLabel;
    ppDBText719: TppDBText;
    ppDBText720: TppDBText;
    ppLabel578: TppLabel;
    ppLabel579: TppLabel;
    ppDBText721: TppDBText;
    ppDBText722: TppDBText;
    ppLabel580: TppLabel;
    ppDBText723: TppDBText;
    ppLabel581: TppLabel;
    ppLabel582: TppLabel;
    ppDBText724: TppDBText;
    ppLabel583: TppLabel;
    ppDBText725: TppDBText;
    ppLabel584: TppLabel;
    ppDBText726: TppDBText;
    ppShape68: TppShape;
    ppLabel587: TppLabel;
    ppLabel588: TppLabel;
    ppLabel589: TppLabel;
    ppDBText727: TppDBText;
    ppLabel590: TppLabel;
    ppDBText728: TppDBText;
    ppLabel591: TppLabel;
    ppDBText729: TppDBText;
    ppLabel592: TppLabel;
    ppDBText730: TppDBText;
    ppLabel593: TppLabel;
    ppDBText731: TppDBText;
    ppLabel594: TppLabel;
    ppDBText733: TppDBText;
    ppDBText734: TppDBText;
    ppLabel596: TppLabel;
    ppRichText17: TppRichText;
    ppLabel597: TppLabel;
    ppLabel598: TppLabel;
    ppDBText735: TppDBText;
    ppDBText736: TppDBText;
    ppDBText737: TppDBText;
    ppDBText738: TppDBText;
    ppLabel599: TppLabel;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppLabel602: TppLabel;
    ppLabel603: TppLabel;
    ppLabel604: TppLabel;
    ppSubReport10: TppSubReport;
    ppChildReport10: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLine61: TppLine;
    ppLine66: TppLine;
    ppLabel605: TppLabel;
    ppLabel606: TppLabel;
    ppLabel607: TppLabel;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLabel608: TppLabel;
    ppDetailBand21: TppDetailBand;
    ppDBText739: TppDBText;
    ppDBText740: TppDBText;
    ppDBText741: TppDBText;
    ppDBText742: TppDBText;
    ppFooterBand15: TppFooterBand;
    ppSummaryBand10: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    ppLabel609: TppLabel;
    ppRichText18: TppRichText;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppParameterList8: TppParameterList;
    ppParameter4: TppParameter;
    ppShape62: TppShape;
    ppShape69: TppShape;
    ppShape71: TppShape;
    ppShape72: TppShape;
    ppShape70: TppShape;
    ppDBText629: TppDBText;
    ppLabel465: TppLabel;
    ppLabel466: TppLabel;
    ppDBText632: TppDBText;
    ppLabel468: TppLabel;
    ppLabel469: TppLabel;
    ppLabel470: TppLabel;
    ppDBText633: TppDBText;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppShape75: TppShape;
    ppShape79: TppShape;
    ppShape80: TppShape;
    raCodeModule3: TraCodeModule;
    daDataModule1: TdaDataModule;
    ppLabel471: TppLabel;
    ppLabel472: TppLabel;
    ppLabel473: TppLabel;
    ppRichText6: TppRichText;
    procedure rpQuote3BeforePrint(Sender: TObject);
    procedure rpQuote5BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmQuotations: TdtmQuotations;

implementation

uses dmMain, dmLoanC, StrUtils;

{$R *.dfm}

procedure TdtmQuotations.rpQuote3BeforePrint(Sender: TObject);
var
  FaxNo: String;
begin
  qryFaxNo.Close;
  qryFaxNo.Parameters[0].Value := dtmMain.CurrentID;
  qryFaxNo.Open;
  if qryFaxNo.Fields[0].AsString = '' then
    FaxNo := '087 943 1700'
  else
  begin
    FaxNo := qryFaxNo.Fields[0].AsString;
    FaxNo := LeftStr(FaxNo, 3) + ' ' + MidStr(FaxNo, 4, 3) + ' ' + RightStr(FaxNo, 4);
  end;
  qryFaxNo.Close;
  lblFaxNo.Caption := 'FAX SIGNED QUOTATION TO: ' + FaxNo;
  lblFaxNo1.Caption := 'FAX SIGNED QUOTATION TO: ' + FaxNo;
end;

procedure TdtmQuotations.rpQuote5BeforePrint(Sender: TObject);
var
  FaxNo: String;
  DefaultAdminFeeStr: string;
  DefaultAdminFee: Currency;
					  
					
begin
					
													  
		  
																				  
		
	  
		  
												
  DefaultAdminFee := dtmQuotations.dsQuote5.FieldByName('DefaultAdminFee').AsCurrency;
		 
													  
  DefaultAdminFeeStr := Format('%m', [defaultAdminFee]);
  ppRichText18.SelStart := ppRichText18.FindText('{1}', 0, 3000, []);
  ppRichText18.SelLength := 3;
  ppRichText18.SelText := DefaultAdminFeeStr;

  qryFaxNo.Close;
  qryFaxNo.Parameters[0].Value := dtmMain.CurrentID;
  qryFaxNo.Open;
  if qryFaxNo.Fields[0].AsString = '' then
    FaxNo := '087 943 1700'
  else
  begin
    FaxNo := qryFaxNo.Fields[0].AsString;
    FaxNo := LeftStr(FaxNo, 3) + ' ' + MidStr(FaxNo, 4, 3) + ' ' + RightStr(FaxNo, 4);
  end;
  qryFaxNo.Close;
  lblFaxNo.Caption := 'FAX SIGNED QUOTATION TO: ' + FaxNo;
  lblFaxNo1.Caption := 'FAX SIGNED QUOTATION TO: ' + FaxNo;
end;

end.

