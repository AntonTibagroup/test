
ALTER TABLE [dbo].[TaskMembership] ADD CONSTRAINT [FKTaskMembershipMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO

ALTER TABLE [dbo].[TaskMembership] ADD CONSTRAINT [FKTaskMembershipTask] FOREIGN KEY ([TaskId]) REFERENCES [Task]([TaskId]);
GO