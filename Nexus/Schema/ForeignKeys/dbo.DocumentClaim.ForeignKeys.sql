
ALTER TABLE [dbo].[DocumentClaim] ADD CONSTRAINT [FKDocumentClaimDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentClaim] ADD CONSTRAINT [FKDocumentClaimClaim] FOREIGN KEY ([ClaimId]) REFERENCES [Claim]([ClaimId]);
GO