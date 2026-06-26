
ALTER TABLE [dbo].[TaskIncident] ADD CONSTRAINT [FKTaskIncidentIncident] FOREIGN KEY([IncidentId]) REFERENCES [dbo].[Incident] ([IncidentId]);
GO

ALTER TABLE [dbo].[TaskIncident] ADD CONSTRAINT [FKTaskIncidentTask] FOREIGN KEY ([TaskId]) REFERENCES [Task]([TaskId]);
GO