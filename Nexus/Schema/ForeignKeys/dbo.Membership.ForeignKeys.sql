
ALTER TABLE [dbo].[Membership] ADD CONSTRAINT [FKMembershipMember] FOREIGN KEY([PrimaryPersonId]) REFERENCES [dbo].[Member] ([MemberId]);
GO

ALTER TABLE [dbo].[Membership] ADD CONSTRAINT [FKMembershipMembershipContactRole] FOREIGN KEY([MemberContactRoleId]) REFERENCES [dbo].[MembershipContactRole] ([MemberContactRoleId]);
GO

ALTER TABLE [dbo].[Membership] ADD CONSTRAINT [FKMembershipSharingType] FOREIGN KEY([SharingTypeId]) REFERENCES [dbo].[SharingType] ([SharingTypeId]);
GO

ALTER TABLE [dbo].[Membership] ADD CONSTRAINT [FKMembershipDropReason] FOREIGN KEY ([DropReasonId]) REFERENCES [DropReason]([DropReasonId]);
GO