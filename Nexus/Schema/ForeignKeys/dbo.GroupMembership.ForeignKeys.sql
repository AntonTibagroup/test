
ALTER TABLE [dbo].[GroupMembership] ADD CONSTRAINT [FKGroupMembershipGroup] FOREIGN KEY([GroupId]) REFERENCES [dbo].[Group] ([GroupId]);
GO

ALTER TABLE [dbo].[GroupMembership] ADD CONSTRAINT [FKGroupMembershipMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO