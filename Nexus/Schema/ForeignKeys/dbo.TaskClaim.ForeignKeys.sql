
ALTER TABLE [dbo].[TaskClaim] ADD CONSTRAINT [FKTaskClaimClaim] FOREIGN KEY([ClaimId]) REFERENCES [dbo].[Claim] ([ClaimId]);
GO

ALTER TABLE [dbo].[TaskClaim] ADD CONSTRAINT [FKTaskClaimTask] FOREIGN KEY ([TaskId]) REFERENCES [dbo].[Task]([TaskId]);
GO