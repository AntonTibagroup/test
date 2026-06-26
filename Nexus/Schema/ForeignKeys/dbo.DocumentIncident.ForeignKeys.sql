
ALTER TABLE [dbo].[DocumentIncident] ADD CONSTRAINT [FKDocumentIncidentDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentIncident] ADD CONSTRAINT [FKDocumentIncidentIncident] FOREIGN KEY ([IncidentId]) REFERENCES [Incident]([IncidentId]);
GO