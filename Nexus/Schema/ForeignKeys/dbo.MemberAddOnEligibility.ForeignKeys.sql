
ALTER TABLE [dbo].[MemberAddOnEligibility] ADD CONSTRAINT [FKMemberAddOnEligibilityAddOn] FOREIGN KEY([AddOnId]) REFERENCES [dbo].[AddOn] ([AddOnId]);
GO

ALTER TABLE [dbo].[MemberAddOnEligibility] ADD CONSTRAINT [FKMemberAddOnEligibilityAddOnBillableUnit] FOREIGN KEY([AddOnBillableUnitId]) REFERENCES [dbo].[AddOnBillableUnit] ([AddOnBillableUnitId]);
GO

ALTER TABLE [dbo].[MemberAddOnEligibility] ADD CONSTRAINT [FKMemberAddOnEligibilityMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO

ALTER TABLE [dbo].[MemberAddOnEligibility] ADD CONSTRAINT [FKMemberAddOnEligibilityMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO