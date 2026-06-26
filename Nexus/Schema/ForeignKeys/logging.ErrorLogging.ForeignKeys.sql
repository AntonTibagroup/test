
ALTER TABLE [logging].[ErrorLogging] ADD CONSTRAINT [FKErrorLoggingAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO