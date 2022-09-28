SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Daniel Tucker
-- Create date: 2006-01-26
-- Description:	Retrieves the number of payments
--				made against a specified loan.
-- =============================================
CREATE PROCEDURE lsGetNoOfPayments 
	@LoanID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Declare @Instal money;

	SET @LoanID = @LoanID;

	SET @Instal = 
		(SELECT ISNULL(SUM(AmtPost),0) * -1
		FROM lsBatchHistory
		WHERE LoanID = @LoanID
		AND TransType IN (11,12))

	SELECT ISNULL((
		SELECT FLOOR((@Instal/PayIns)+ 0.002)
		FROM lsLoanDetail
		WHERE LoanID = @LoanID
		AND PayINs > 0),0)

END
GO
