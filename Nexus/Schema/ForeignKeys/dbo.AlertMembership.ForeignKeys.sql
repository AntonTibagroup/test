
ALTER TABLE [dbo].[AlertMembership] ADD CONSTRAINT [FKAlertMembershipAlert] FOREIGN KEY ([AlertId]) REFERENCES [Alert]([AlertId]);
GO

ALTER TABLE [dbo].[AlertMembership] ADD CONSTRAINT [FKAlertMembershipMembership] FOREIGN KEY ([MembershipId]) REFERENCES [Membership]([MembershipId]);
GO