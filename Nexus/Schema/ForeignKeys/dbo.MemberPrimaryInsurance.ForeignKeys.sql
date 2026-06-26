
ALTER TABLE [dbo].[MemberPrimaryInsurance] ADD CONSTRAINT [FKMemberPrimaryInsuranceMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO