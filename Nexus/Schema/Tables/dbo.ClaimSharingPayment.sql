

CREATE TABLE [dbo].[ClaimSharingPayment](
	[ClaimId] [int] NOT NULL,
	[SharingPaymentId] [int] NOT NULL,
 	CONSTRAINT [PKClaimSharingPayment] PRIMARY KEY CLUSTERED ([ClaimId] ASC,[SharingPaymentId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link table between Claim and SharingPayment' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimSharingPayment'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to Claim table on ClaimId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimSharingPayment', 
@level2type=N'COLUMN',@level2name=N'ClaimId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to SharingPayment table on SharingPaymentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimSharingPayment', 
@level2type=N'COLUMN',@level2name=N'SharingPaymentId'
GO
