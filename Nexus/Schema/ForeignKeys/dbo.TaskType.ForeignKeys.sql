
ALTER TABLE [dbo].[TaskType] ADD CONSTRAINT [FKTaskTypeAppRole] FOREIGN KEY([AppRoleId]) REFERENCES [dbo].[AppRole] ([AppRoleId]);
GO