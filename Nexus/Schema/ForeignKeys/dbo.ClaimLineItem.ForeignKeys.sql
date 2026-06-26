
ALTER TABLE [dbo].[ClaimLineItem] ADD CONSTRAINT [FKClaimLineItemCPTCode] FOREIGN KEY([CPTCode]) REFERENCES [dbo].[CPTCode] ([CPTCode]);
GO

ALTER TABLE [dbo].[ClaimLineItem] ADD CONSTRAINT [FKClaimLineItemCPTCodeModifier] FOREIGN KEY([CPTCodeModifier]) REFERENCES [dbo].[CPTCodeModifier] ([CPTCodeModifier]);
GO

ALTER TABLE [dbo].[ClaimLineItem] ADD CONSTRAINT [FKClaimLineItemReductionCode] FOREIGN KEY([ReductionCodeId]) REFERENCES [dbo].[ReductionCode] ([ReductionCodeId]);
GO

ALTER TABLE [dbo].[ClaimLineItem] ADD CONSTRAINT [FKClaimLineItemClaim] FOREIGN KEY([ClaimId]) REFERENCES [dbo].[Claim] ([ClaimId]);
GO

ALTER TABLE [dbo].[ClaimLineItem] ADD CONSTRAINT [FKClaimLineItemBenefitCode] FOREIGN KEY ([BenefitCodeId]) REFERENCES [dbo].[BenefitCode]([BenefitCodeId]);
GO

ALTER TABLE [dbo].[ClaimLineItem] ADD CONSTRAINT [FKClaimLineItemPlaceOfService] FOREIGN KEY ([PlaceOfServiceId]) REFERENCES [dbo].[PlaceOfService]([PlaceOfServiceId]);
GO