
ALTER TABLE [dbo].[UserRole] ADD CONSTRAINT FKUserRoleAppUser FOREIGN KEY (AppUserId) REFERENCES dbo.AppUser(AppUserId);
GO

ALTER TABLE [dbo].[UserRole] ADD CONSTRAINT FKUserRoleAppRole FOREIGN KEY (AppRoleId) REFERENCES dbo.AppRole(AppRoleId);
GO