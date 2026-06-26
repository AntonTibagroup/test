
ALTER TABLE [dbo].[DocumentProvider] ADD CONSTRAINT [FKDocumentProviderDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentProvider] ADD CONSTRAINT [FKDocumentProviderProvider] FOREIGN KEY ([ProviderId]) REFERENCES [Provider]([ProviderId]);
GO