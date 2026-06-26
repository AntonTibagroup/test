
ALTER TABLE [dbo].[Referral] ADD CONSTRAINT [FKReferralMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO