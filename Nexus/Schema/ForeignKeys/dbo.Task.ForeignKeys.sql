
ALTER TABLE [dbo].[Task] ADD CONSTRAINT [FKTaskAppUserAssignedUserId] FOREIGN KEY([AssignedUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO

ALTER TABLE [dbo].[Task] ADD CONSTRAINT [FKTaskAppUserCreatedUserId] FOREIGN KEY ([CreatedUserId]) REFERENCES [AppUser]([AppUserId]);
GO

ALTER TABLE [dbo].[Task] ADD CONSTRAINT [FKTaskTaskType] FOREIGN KEY([TaskTypeId]) REFERENCES [dbo].[TaskType] ([TaskTypeId]);
GO