
ALTER TABLE [dbo].[MembershipAuthRepMember] ADD CONSTRAINT [FKMembershipAuthRepMemberMembershipAuthorizedRepresentative] FOREIGN KEY ([MembershipAuthRepId]) REFERENCES [MembershipAuthorizedRepresentative]([MembershipAuthRepId]);
GO

ALTER TABLE [dbo].[MembershipAuthRepMember] ADD CONSTRAINT [FKMembershipAuthRepMemberMember] FOREIGN KEY ([MemberId]) REFERENCES [Member]([MemberId]);
GO