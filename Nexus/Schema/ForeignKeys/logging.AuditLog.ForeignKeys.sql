
ALTER TABLE [logging].[AuditLog] ADD CONSTRAINT [FKAuditLogAppUser] FOREIGN KEY (AppUserId) REFERENCES dbo.AppUser(AppUserId);
GO