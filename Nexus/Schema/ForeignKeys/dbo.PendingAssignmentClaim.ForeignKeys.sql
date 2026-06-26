
ALTER TABLE [dbo].[PendingAssignmentClaim] ADD CONSTRAINT [FKPendingAssignmentClaimMembership] FOREIGN KEY ([MembershipId]) REFERENCES [dbo].[Membership]([MembershipId]);
GO

ALTER TABLE [dbo].[PendingAssignmentClaim] ADD CONSTRAINT [FKPendingAssignmentClaimMember] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member]([MemberId]);
GO

ALTER TABLE [dbo].[PendingAssignmentClaim] ADD CONSTRAINT [FKPendingAssignmentClaimClaim] FOREIGN KEY ([ClaimId]) REFERENCES [dbo].[Claim]([ClaimId]);
GO