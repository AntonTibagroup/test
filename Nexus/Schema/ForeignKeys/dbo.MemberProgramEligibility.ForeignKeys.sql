
ALTER TABLE [dbo].[MemberProgramEligibility] ADD CONSTRAINT [FKMemberProgramEligibilityBillableUnit] FOREIGN KEY([BillableUnitId]) REFERENCES [dbo].[BillableUnit] ([BillableUnitId]);
GO

ALTER TABLE [dbo].[MemberProgramEligibility] ADD CONSTRAINT [FKMemberProgramEligibilityMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO

ALTER TABLE [dbo].[MemberProgramEligibility] ADD CONSTRAINT [FKMemberProgramEligibilityMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO

ALTER TABLE [dbo].[MemberProgramEligibility] ADD CONSTRAINT [FKMemberProgramEligibilityProgram] FOREIGN KEY([ProgramId]) REFERENCES [dbo].[Program] ([ProgramId]);
GO