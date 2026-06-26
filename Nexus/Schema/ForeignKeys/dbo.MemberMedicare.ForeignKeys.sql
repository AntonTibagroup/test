
ALTER TABLE [dbo].[MemberMedicare] ADD CONSTRAINT [FKMemberMedicareMedicareCoverage] FOREIGN KEY([MedicareTypeId]) REFERENCES [dbo].[MedicareCoverage] ([MedicareTypeId]);
GO

ALTER TABLE [dbo].[MemberMedicare] ADD CONSTRAINT [FKMemberMedicareMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO