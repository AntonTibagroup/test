
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FKDocumentAppUser] FOREIGN KEY ([AppUserId]) REFERENCES [AppUser]([AppUserId]);
GO

ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FKDocumentDocumentType] FOREIGN KEY ([DocumentTypeId]) REFERENCES [DocumentType]([DocumentTypeId]);
GO

ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FKDocumentDocumentStatus] FOREIGN KEY ([DocumentStatusId]) REFERENCES [DocumentStatus]([DocumentStatusId]);
GO