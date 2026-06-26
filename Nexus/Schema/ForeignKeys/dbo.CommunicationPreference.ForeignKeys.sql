
ALTER TABLE [dbo].[CommunicationPreference] ADD CONSTRAINT [FKCommunicationPreferenceMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO