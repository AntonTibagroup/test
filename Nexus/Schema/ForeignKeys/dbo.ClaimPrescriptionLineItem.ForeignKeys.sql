
ALTER TABLE [dbo].[ClaimPrescriptionLineItem] ADD CONSTRAINT [FKClaimPrescriptionLineItemClaim] FOREIGN KEY ([ClaimId]) REFERENCES [dbo].[Claim]([ClaimId]);
GO

ALTER TABLE [dbo].[ClaimPrescriptionLineItem] ADD CONSTRAINT [FKClaimPrescriptionLineItemReductionCode] FOREIGN KEY ([ReductionCodeId]) REFERENCES [dbo].[ReductionCode]([ReductionCodeId]);
GO

ALTER TABLE [dbo].[ClaimPrescriptionLineItem] ADD CONSTRAINT [FKClaimPrescriptionLineItemNDCCode] FOREIGN KEY ([ProductNDC]) REFERENCES [NDCCode]([ProductNDC]);
GO