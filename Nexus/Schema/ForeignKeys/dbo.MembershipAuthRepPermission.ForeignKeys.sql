
ALTER TABLE [dbo].[MembershipAuthRepPermission] ADD CONSTRAINT [FKMembershipAuthRepPermissionMembershipAuthorizedRepresentative] FOREIGN KEY ([MembershipAuthRepId]) REFERENCES [MembershipAuthorizedRepresentative]([MembershipAuthRepId]);
GO

ALTER TABLE [dbo].[MembershipAuthRepPermission] ADD CONSTRAINT [FKMembershipAuthRepPermissionAuthRepPermission] FOREIGN KEY ([AuthRepPermissionId]) REFERENCES [AuthRepPermission]([AuthRepPermissionId]);
GO