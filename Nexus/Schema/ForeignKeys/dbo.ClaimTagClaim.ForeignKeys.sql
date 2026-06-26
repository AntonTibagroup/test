
ALTER TABLE [dbo].[ClaimTagClaim] ADD CONSTRAINT [FKClaimTagClaimClaimTag] FOREIGN KEY ([ClaimTagId]) REFERENCES [dbo].[ClaimTag]([ClaimTagId]);
GO

ALTER TABLE [dbo].[ClaimTagClaim] ADD CONSTRAINT [FKClaimTagClaimClaim] FOREIGN KEY ([ClaimId]) REFERENCES [dbo].[Claim]([ClaimId]);
GO