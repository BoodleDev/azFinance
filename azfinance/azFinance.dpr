program azFinance;

uses
  MemCheck,
  Forms,
  ShellApi,
  windows,
  fmMain in 'fmMain.pas' {frmMain},
  uReports in 'uReports.pas',
  uConst in 'uConst.pas',
  fmLoanDet in 'fmLoanDet.pas' {frmLoanDet},
  dmLoanC in 'dmLoanC.pas' {dtmLoanC: TDataModule},
  fmEntLoan in 'fmEntLoan.pas' {frmEntLoan},
  dmLS in 'dmLS.pas' {dtmLS: TDataModule},
  dmBatchTrans in 'dmBatchTrans.pas' {dtmBatchTrans: TDataModule},
  fmBatch in 'fmBatch.pas' {frmBatch},
  fmBatchNote in 'fmBatchNote.pas' {frmBatchNote},
  dmProcBatch in 'dmProcBatch.pas' {dtmProcBatch: TDataModule},
  fmLoanAgeing in 'fmLoanAgeing.pas' {frmLoanAgeing},
  fmLoanCons in 'fmLoanCons.pas' {frmLoanCons},
  fmDepAcc in 'fmDepAcc.pas' {frmDepAcc},
  fmClientAcc in 'fmClientAcc.pas' {frmClientAcc},
  dmBatchQuery in 'dmBatchQuery.pas' {dtmBatchQuery: TDataModule},
  fmBatchQuery in 'fmBatchQuery.pas' {frmBatchQuery},
  fmBatchPost in 'fmBatchPost.pas' {frmBatchPost},
  fmBatchView in 'fmBatchView.pas' {frmBatchView},
  dmGraphs in 'dmGraphs.pas' {dtmGraphs: TDataModule},
  rptLoanBook in 'rptLoanBook.pas' {repLoanBook},
  rptCube in 'rptCube.pas' {repCube},
  dmLS2GL in 'dmLS2GL.pas' {dtmLS2GL: TDataModule},
  fmGLReport in 'fmGLReport.pas' {frmGLReport},
  fmGLTransDet in 'fmGLTransDet.pas' {frmGLTransDet},
  rptGLTransCode in 'rptGLTransCode.pas' {repGLTransCode},
  rptGLAcc in 'rptGLAcc.pas' {repGLAcc},
  rptGLContra in 'rptGLContra.pas' {repGLContra},
  dmReports in 'dmReports.pas' {dtmReports: TDataModule},
  fmRepLSum in 'fmRepLSum.pas' {frmRepLSum},
  fmIntToDate in 'fmIntToDate.pas' {frmIntToDate},
  fmTransSum in 'fmTransSum.pas' {frmTransSum},
  dmMESum in 'dmMESum.pas' {dtmMESum: TDataModule},
  fmRepFilter in 'fmRepFilter.pas' {frmRepFilter},
  fmMeSum in 'fmMeSum.pas' {frmMESum},
  uFldSumConst in 'uFldSumConst.pas',
  rptLSCustom in 'rptLSCustom.pas' {repLSCustom},
  fmSettleDetail in 'fmSettleDetail.pas' {frmSettleDetail},
  rptSettlement in 'rptSettlement.pas' {repSettle},
  fmRepDSum in 'fmRepDSum.pas' {frmRepDSum},
  dmLetter in 'dmLetter.pas' {dtmLetter: TDataModule},
  fmLetter in 'fmLetter.pas' {frmLetter},
  dmLoanMan in 'dmLoanMan.pas' {dtmLoanMan: TDataModule},
  fmLoanView in 'fmLoanView.pas' {frmLoanView},
  fmEntNote in 'fmEntNote.pas' {frmEntNote},
  rptEntNotes in 'rptEntNotes.pas' {repEntNotes},
  fmNoteDiary in 'fmNoteDiary.pas' {frmNoteDiary},
  rptBaseAcc in 'rptBaseAcc.pas' {repBaseAcc},
  rptClientState in 'rptClientState.pas' {repClientState},
  rptLCPD in 'rptLCPD.pas' {repLCPD},
  rptBatch in 'rptBatch.pas' {repBatch},
  rptPendNotes in 'rptPendNotes.pas' {repPendNotes},
  rptYMDetail in 'rptYMDetail.pas' {repYMDetail},
  rptTranssum in 'rptTranssum.pas' {repTransSum},
  rptImpactSummary in 'rptImpactSummary.pas' {repImpactSummary},
  rptTransDet in 'rptTransDet.pas' {repTransDet},
  rptIntForDay in 'rptIntForDay.pas' {repIntForDay},
  rptLoanView in 'rptLoanView.pas' {repLoanView},
  rptBaseLandTag in 'rptBaseLandTag.pas' {repBaseLandTag},
  rptLoanSummary in 'rptLoanSummary.pas' {repLoanSummary},
  rptDepositSum in 'rptDepositSum.pas' {repDepositSum},
  rptLoanAgeSum in 'rptLoanAgeSum.pas' {repLoanAgeSum},
  rptLoanForPeriod in 'rptLoanForPeriod.pas' {repLoanForPeriod},
  rptLoanFees in 'rptLoanFees.pas' {repLoanFees},
  rptLoanFeeAnal in 'rptLoanFeeAnal.pas' {repLoanFeeAnal},
  rptEmployee in 'rptEmployee.pas' {repEmployee},
  rptEmpMthly in 'rptEmpMthly.pas' {repEmpMthly},
  rptInsurance in 'rptInsurance.pas' {repInsurance},
  rptArrearsControl in 'rptArrearsControl.pas' {repArrearsControl},
  dmEntCode in 'dmEntCode.pas' {dtmEntCode: TDataModule},
  fmLDStruc in 'fmLDStruc.pas' {frmLDStruc},
  fmBulkLet in 'fmBulkLet.pas' {frmBulkLet},
  dmBulkLet in 'dmBulkLet.pas' {dtmBulkLet: TDataModule},
  fmBulkStatement in 'fmBulkStatement.pas' {frmBulkStatement},
  fmEntDetS in 'fmEntDetS.pas' {frmEntDetS},
  dmEntRef in 'dmEntRef.pas' {dtmEntRef: TDataModule},
  rptBulkAcc in 'rptBulkAcc.pas' {repBulkAcc},
  dmLoanCLU in 'dmLoanCLU.pas' {dtmLoanCLU: TDataModule},
  rptAffCalc in 'rptAffCalc.pas' {repAffCalc},
  fmBSms in 'fmBSms.pas' {frmBSms},
  dmSms in 'dmSms.pas' {dtmSms: TDataModule},
  dmNtsRE in 'dmNtsRE.pas' {dtmNtsRE: TDataModule},
  dmNLR in 'dmNLR.pas' {dtmNLR: TDataModule},
  fmViewNLR in 'fmViewNLR.pas' {frmViewNLR},
  rptBatchBnk in 'rptBatchBnk.pas' {repBatchBnk},
  fmLoanBook in 'fmLoanBook.pas' {frmLoanBook},
  rptBasePort in 'rptBasePort.pas' {repBasePort},
  rptBaseLand in 'rptBaseLand.pas' {repBaseLand},
  fmQuickRePay in 'fmQuickRePay.pas' {frmQuickRePay},
  dmBatchSusp in 'dmBatchSusp.pas' {dtmBatchSusp: TDataModule},
  fmSuspAllocate in 'fmSuspAllocate.pas' {frmSuspAllocate},
  rptClientLoans in 'rptClientLoans.pas' {repClientLoans},
  rptLoanBookMain in 'rptLoanBookMain.pas' {repLoanBookMain},
  fmAllocate in 'fmAllocate.pas' {frmAllocate},
  rptSuspAcc in 'rptSuspAcc.pas' {repSuspAcc},
  fmBulkUpd in 'fmBulkUpd.pas' {frmBulkUpd},
  fmUpdDtl in 'fmUpdDtl.pas' {frmUpdDtl},
  rptPortAtRisk in 'rptPortAtRisk.pas' {repPortAtRisk},
  rptTracking in 'rptTracking.pas' {repTracking},
  rptAppStatus in 'rptAppStatus.pas' {repAppStatus},
  fmClientLoans in 'fmClientLoans.pas' {frmClientLoans},
  fmSuspMulti in 'fmSuspMulti.pas' {frmSuspMulti},
  rptConsPay in 'rptConsPay.pas' {repConsPay},
  fmCpyDetail in 'fmCpyDetail.pas' {frmCpyDetail},
  dmEntityC in 'dmEntityC.pas' {dtmEntityC: TDataModule},
  fmProvExpRatio in 'fmProvExpRatio.pas' {frmProvExpRatio},
  rptProvExpenseRatio in 'rptProvExpenseRatio.pas' {repProvExpenseRatio},
  fmReportDates in 'fmReportDates.pas' {frmRptDates},
  rptLoanAgree in 'rptLoanAgree.pas' {repLoanAgree},
  rptWriteOffRatio in 'rptWriteOffRatio.pas' {repWriteOffRatio},
  rptInstPay in 'rptInstPay.pas' {repInstPay},
  fmLoanAgree in 'fmLoanAgree.pas' {frmLoanAgree},
  dmMain in 'dmMain.pas' {dtmMain: TDataModule},
  uCallDll in '..\..\common-library\uCallDll.pas',
  uBase32 in '..\..\common-library\ADOBase\uBase32.pas',
  dmBankDet in '..\..\common-library\ADOBase\dmBankDet.pas' {dtmBankDet: TDataModule},
  fmDBBase in '..\..\common-library\fmDBBase.pas' {frmDBBase},
  dmEntity in '..\..\common-library\ADOBase\dmEntity.pas' {dtmEntity: TDataModule},
  dmSecFrm in '..\..\common-library\ADOBase\dmSecFrm.pas' {dtmSecFrm: TDataModule},
  fmDBGridView in '..\..\common-library\fmDBGridView.pas' {frmDBGridView},
  fmDBBaseGrdClr in '..\..\common-library\fmDBBaseGrdClr.pas' {frmDBBaseGrdClr},
  fmEntityDetail in '..\..\common-library\fmEntityDetail.pas' {frmEntityDetail},
  fmBase in '..\..\common-library\fmBase.pas' {frmBase},
  fmPersonLoan in '..\..\common-library\fmPersonLoan.pas',
  dmNotes in '..\..\common-library\ADOBase\dmNotes.pas' {dtmNotes: TDataModule},
  dmAffordability in 'dmAffordability.pas' {dtmAffordability: TDataModule},
  dmEntityLoan in '..\..\common-library\ADOBase\dmEntityLoan.pas' {dtmEntityLoan: TDataModule},
  fmAffordDetail in 'fmAffordDetail.pas' {frmAffordDetail},
  fmAffordCalc in '..\..\common-library\fmAffordCalc.pas' {frmAffordCalc},
  dmAttach in '..\..\common-library\ADOBase\dmAttach.pas' {dtmAttach: TDataModule},
  dmRemind in '..\..\common-library\ADOBase\dmRemind.pas' {dtmRemind: TDataModule},
  fmRemind in '..\..\common-library\fmRemind.pas' {frmRemind},
  uGTcentral in '..\..\common-library\uGTCentral.pas',
  dmEntCheck in '..\..\common-library\ADOBase\dmEntCheck.pas' {dtmEntCheck: TDataModule},
  fmEntCheck in '..\..\common-library\fmEntCheck.pas' {frmEntCheck},
  uLSconst in 'Central\uLSConst.pas',
  dmLCD in 'Central\dmLCD.pas' {dtmLCD: TDataModule},
  dmLCST in 'Central\dmLCST.pas' {dtmLCST: TDataModule},
  uLCCentral in 'Central\uLCCentral.pas',
  dmAdrDetail in '..\..\common-library\ADOBase\dmAdrDetail.pas' {dtmAdrDetail: TDataModule},
  fmAttachDetail in '..\..\common-library\fmAttachDetail.pas' {frmAttachDetail},
  fmImportTrans in 'fmImportTrans.pas' {frmImportTrans},
  fmAffordability in 'fmAffordability.pas' {frmAffordability},
  dmAffordCalc in '..\..\common-library\ADOBase\dmAffordCalc.pas' {dtmAffordCalc: TDataModule},
  Unit32 in '..\..\common-library\Unit32.pas',
  fmDBBaseGrd in '..\..\common-library\fmDBBaseGrd.pas' {frmDBBaseGrd},
  fmResultOptions in '..\..\common-library\fmResultOptions.pas' {frmResultOptions},
  fmVerifyLoan in 'fmVerifyLoan.pas' {frmVerifyLoan},
  fmSettleArrears2 in 'fmSettleArrears2.pas' {frmSettleArrears2},
  fmOptions in 'fmOptions.pas' {frmOptions},
  dmSettleArrears in '..\..\common-library\ADOBase\dmSettleArrears.pas' {dtmSettleArrears: TDataModule},
  dmSettle in '..\..\common-library\ADOBase\dmSettle.pas' {dtmSettle: TDataModule},
  fmAffordSettle in 'fmAffordSettle.pas' {frmAffordSettle},
  fmLoanApproval in 'fmLoanApproval.pas' {frmLoanApproval},
  fmNewNote in '..\..\common-library\fmNewNote.pas' {frmNewNote},
  fmEditNotes in '..\..\common-library\fmEditNotes.pas' {frmEditNotes},
  uNoteSys in '..\..\common-library\uNoteSys.pas',
  dmReporting in 'dmReporting.pas' {dtmReporting: TDataModule},
  fmBureau in 'fmBureau.pas' {frmBureau},
  dmBureau in 'dmBureau.pas' {dtmBureau: TDataModule},
  fmAllocateTrans in 'fmAllocateTrans.pas' {frmAllocateTrans},
  dmLegal in 'dmLegal.pas' {dtmLegal: TDataModule},
  uLScentral in 'Central\uLScentral.pas',
  fmLoanStatus in 'fmLoanStatus.pas' {frmLoanStatus},
  dmLoanStatus in 'dmLoanStatus.pas' {dtmLoanStatus: TDataModule},
  fmLoanBook2 in 'fmLoanBook2.pas' {frmLoanBook2},
  dmEntitySearch in '..\..\common-library\dmEntitySearch.pas' {dtmEntitySearch: TDataModule},
  fmWizard in '..\..\common-library\fmWizard.pas' {frmWizard},
  fmEmpPayRules in 'fmEmpPayRules.pas' {frmEmpPayRules},
  fmBankDetail in '..\..\common-library\fmBankDetail.pas' {frmBankDetail},
  fmFlagHistory in 'fmFlagHistory.pas' {frmFlagHistory},
  dmLoanFlags in 'dmLoanFlags.pas' {dtmLoanFlags: TDataModule},
  dmLegalSettlement in 'dmLegalSettlement.pas' {dtmLegalSettlement: TDataModule},
  fmLegalSettlement in 'fmLegalSettlement.pas' {frmLegalSettlement},
  fmThirdPartySettle in 'fmThirdPartySettle.pas' {frmThirdPartySettle},
  fmPayoutDetail in 'fmPayoutDetail.pas' {frmPayoutDetail},
  fmPreviewDoc in '..\..\common-library\fmPreviewDoc.pas' {frmPreviewDoc},
  fmAcceptOption in 'fmAcceptOption.pas' {frmAcceptOption},
  fmBureauAccount in 'fmBureauAccount.pas' {frmBureauAccount},
  dmVerifyLoan in 'dmVerifyLoan.pas' {dtmVerifyLoan: TDataModule},
  fmAffordItem in 'fmAffordItem.pas' {frmAffordItem},
  fmRejectQuote in 'fmRejectQuote.pas' {frmRejectQuote},
  fmPreviewDocEdit in '..\..\common-library\fmPreviewDocEdit.pas' {frmPreviewDocEdit},
  fmPayLoanSettle in 'fmPayLoanSettle.pas' {frmPayLoanSettle},
  dmPayouts in 'dmPayouts.pas' {dtmPayouts: TDataModule},
  fmPayLoanTransfer in 'fmPayLoanTransfer.pas' {frmPayLoanTransfer},
  fmActiveOffers in 'fmActiveOffers.pas' {frmActiveOffers},
  fmSettlements in 'fmSettlements.pas' {frmSettlements},
  dmSettlementQuotes in 'dmSettlementQuotes.pas' {dtmSettlementQuotes: TDataModule},
  fmAddSettlementWizard in 'fmAddSettlementWizard.pas' {frmAddSettlementWizard},
  fmSMSWizard in '..\..\common-library\fmSMSWizard.pas' {frmSMSWizard},
  dmSMSWizard in '..\..\common-library\ADOBase\dmSMSWizard.pas' {dtmSMSWizard: TDataModule},
  fmLoanAccount in 'fmLoanAccount.pas' {frmLoanAccount},
  fmPrintLetter in 'fmPrintLetter.pas' {frmPrintLetter},
  fmLoanEnquiry in 'fmLoanEnquiry.pas' {frmLoanEnquiry},
  fmMyWork in 'fmMyWork.pas' {frmMyWork},
  fmManualOptionWizard in 'fmManualOptionWizard.pas' {frmManualOptionWizard},
  fmPreviewDocMax in '..\..\common-library\fmPreviewDocMax.pas' {frmPreviewDocMax},
  fmLoanViewDoc in 'fmLoanViewDoc.pas' {frmLoanViewDoc},
  fmDebtObligations in 'fmDebtObligations.pas' {frmDebtObligations},
  fmLoanHeader in 'fmLoanHeader.pas' {frmLoanHeader},
  fmLoanSummary in 'fmLoanSummary.pas' {frmLoanSummary},
  fmMyWorkNotify in 'fmMyWorkNotify.pas' {frmMyWorkNotify},
  dmWorkFlow in 'dmWorkFlow.pas' {dtmWorkFlow: TDataModule},
  dmLoanRates in 'dmLoanRates.pas' {dtmLoanRates: TDataModule},
  fmLoanNewRate in 'fmLoanNewRate.pas' {frmLoanNewRate},
  dmLoanFees in 'dmLoanFees.pas' {dtmLoanFees: TDataModule},
  fmWait in 'fmWait.pas' {frmWait},
  fmSend in 'fmSend.pas' {frmSend},
  fmDocumentReindex in 'fmDocumentReindex.pas' {frmDocumentReindex},
  fmSendFax in 'fmSendFax.pas' {frmSendFax},
  fmEmploymentConfirmationEdit in 'fmEmploymentConfirmationEdit.pas' {frmEmploymentConfirmationEdit},
  fmLinkEmployerWizard in 'fmLinkEmployerWizard.pas' {frmLinkEmployerWizard},
  fmEmploymentConfirmationHistory in 'fmEmploymentConfirmationHistory.pas' {frmEmploymentConfirmationHistory},
  dmEmployer in 'dmEmployer.pas' {dtmEmployer: TDataModule},
  dmFraud in 'dmFraud.pas' {dtmFraud: TDataModule},
  dmSecurity in '..\..\common-library\dmSecurity.pas' {dtmSecurity: TDataModule},
  fmAddSettlement in 'fmAddSettlement.pas' {frmAddSettlement},
  SettlementService in 'SettlementService.pas',
  fmArrearsSettlement in 'fmArrearsSettlement.pas' {frmArrearsSettlement},
  fmAccountLegalApplication in 'fmAccountLegalApplication.pas' {frmAccountLegalApplication},
  fmAccountFlagMaintain in 'fmAccountFlagMaintain.pas' {frmAccountFlagMaintain},
  dmAccountFlag in 'dmAccountFlag.pas' {dtmAccountFlag: TDataModule},
  fmLegalApplicationMaintain in 'fmLegalApplicationMaintain.pas' {frmLegalApplicationMaintain},
  fmDocumentViewer in 'fmDocumentViewer.pas' {frmDocumentViewer},
  dmDocumentViewer in 'dmDocumentViewer.pas' {dtmDocumentViewer: TDataModule},
  fmLoanAuthoriseFlag in 'fmLoanAuthoriseFlag.pas' {frmLoanAuthoriseFlag},
  fmWorkMove in 'fmWorkMove.pas' {frmWorkMove},
  fmWorkAddRequest in 'fmWorkAddRequest.pas' {frmWorkAddRequest},
  fmDeclineReason in 'fmDeclineReason.pas' {frmDeclineReason},
  fmAddAccountFlag in 'fmAddAccountFlag.pas' {frmAddAccountFlag},
  fmDeclineCancelLoan in 'fmDeclineCancelLoan.pas' {frmDeclineCancelLoan},
  fmLookupLoan in 'fmLookupLoan.pas' {frmLookupLoan},
  fmLoanAuthenticationDetail in 'fmLoanAuthenticationDetail.pas' {frmLoanAuthenticationDetail},
  FPMEnquiryService in 'FPMEnquiryService.pas',
  BankService in 'BankService.pas',
  fmSMSMessage in 'fmSMSMessage.pas' {frmSMSMessage},
  fmEmailPreview in 'fmEmailPreview.pas' {frmEmailPreview},
  dmQuotations in 'dmQuotations.pas' {dtmQuotations: TDataModule},
  AutoCursor in '..\..\common-library\AutoCursor.pas',
  ConnectionStringBuilder in '..\..\common-library\ConnectionStringBuilder.pas',
  dmAdvancedFilter in '..\..\common-library\ADOBase\dmAdvancedFilter.pas' {dtmAdvancedFilter: TDataModule},
  fmSqlReport in '..\..\common-library\fmSqlReport.pas' {frmSqlReport},
  fmBankDetails in '..\..\common-library\fmBankDetails.pas' {frmBankDetails},
  uDV360 in '..\common-library\uDV360.pas';

{$R *.RES}

begin
{$IFDEF CHECKMEM}
  MemChk;
{$ENDIF}

{$IFDEF DB_PARAMSTR}
  if ParamStr(1) = '' then
    begin
      ShellExecute(Application.Handle,'Open',PChar('azHome.exe'),nil,nil,SW_Shownormal);
    end
  else
    begin
{$ENDIF}
        Application.Initialize;
        Application.Title := 'azFinance Boodle ';
        Application.CreateForm(TdtmMain, dtmMain);
  Application.CreateForm(TdtmSecFrm, dtmSecFrm);
  Application.CreateForm(TdtmLS, dtmLS);
  Application.CreateForm(TdtmBatchTrans, dtmBatchTrans);
  Application.CreateForm(TdtmReporting, dtmReporting);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
{$IFDEF DB_PARAMSTR}
    end;
{$ENDIF}
end.