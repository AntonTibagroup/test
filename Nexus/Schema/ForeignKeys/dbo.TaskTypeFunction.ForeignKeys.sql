
ALTER TABLE [dbo].[TaskTypeFunction] ADD CONSTRAINT [FKTaskTypeFunctionTaskType] FOREIGN KEY([TaskTypeId]) REFERENCES [dbo].[TaskType] ([TaskTypeId]);
GO

ALTER TABLE [dbo].[TaskTypeFunction] ADD CONSTRAINT [FKTaskTypeFunctionAppFunction] FOREIGN KEY([AppFunctionId]) REFERENCES [dbo].[AppFunction] ([AppFunctionId]);
GO