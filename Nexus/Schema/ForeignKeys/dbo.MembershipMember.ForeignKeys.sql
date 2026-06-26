
ALTER TABLE [dbo].[MembershipMember] ADD CONSTRAINT [FKMembershipMemberMember] FOREIGN KEY ([MemberId]) REFERENCES [Member]([MemberId]);
GO

ALTER TABLE [dbo].[MembershipMember] ADD CONSTRAINT [FKMembershipMemberMembership] FOREIGN KEY ([MembershipId]) REFERENCES [Membership]([MembershipId]);
GO

ALTER TABLE [dbo].[MembershipMember] ADD CONSTRAINT [FKMembershipMemberPersonType] FOREIGN KEY ([PersonTypeId]) REFERENCES [PersonType]([PersonTypeId]);
GO