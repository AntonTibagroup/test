
ALTER TABLE [dbo].[MemberPreferredContactMethod] ADD CONSTRAINT [FKMemberPreferredContactMethodMember] FOREIGN KEY ([MemberId]) REFERENCES [Member]([MemberId]);
GO

ALTER TABLE [dbo].[MemberPreferredContactMethod] ADD CONSTRAINT [FKMemberPreferredContactMethodPreferredContactMethod] FOREIGN KEY ([PreferredContactMethodId]) REFERENCES [PreferredContactMethod]([PreferredContactMethodId]);
GO