
ALTER TABLE [dbo].[MembershipContactRole] ADD CONSTRAINT [FKMembershipContactRoleMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO