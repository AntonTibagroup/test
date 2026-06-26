
ALTER TABLE [dbo].[DocumentTagDocument] ADD CONSTRAINT [FKDocumentTagDocumentDocumentTag] FOREIGN KEY ([DocumentTagId]) REFERENCES [DocumentTag]([DocumentTagId]);
GO

ALTER TABLE [dbo].[DocumentTagDocument] ADD CONSTRAINT [FKDocumentTagDocumentDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO