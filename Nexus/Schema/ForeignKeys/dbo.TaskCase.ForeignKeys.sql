
ALTER TABLE [dbo].[TaskCase] ADD CONSTRAINT [FKTaskCaseTask] FOREIGN KEY ([TaskId]) REFERENCES [Task]([TaskId]);
GO

ALTER TABLE [dbo].[TaskCase] ADD CONSTRAINT [FKTaskCaseCase] FOREIGN KEY ([CaseId]) REFERENCES [Case]([CaseId]);
GO