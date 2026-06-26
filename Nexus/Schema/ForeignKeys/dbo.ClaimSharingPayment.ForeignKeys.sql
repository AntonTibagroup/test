
ALTER TABLE [dbo].[ClaimSharingPayment] ADD CONSTRAINT [FKClaimSharingPaymentClaim] FOREIGN KEY([ClaimId]) REFERENCES [dbo].[Claim] ([ClaimId]);
GO

ALTER TABLE [dbo].[ClaimSharingPayment] ADD CONSTRAINT [FKClaimSharingPaymentSharingPayment] FOREIGN KEY([SharingPaymentId]) REFERENCES [dbo].[SharingPayment] ([SharingPaymentId]);
GO