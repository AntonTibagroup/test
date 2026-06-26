
ALTER TABLE [dbo].[UnresolvedDocumentGroupDocument] ADD CONSTRAINT [FKUnresolvedDocumentGroupDocumentUnresolvedDocumentGroup] FOREIGN KEY ([UnresolvedDocumentGroupId]) REFERENCES [UnresolvedDocumentGroup]([UnresolvedDocumentGroupId]);
GO

ALTER TABLE [dbo].[UnresolvedDocumentGroupDocument] ADD CONSTRAINT [FKUnresolvedDocumentGroupDocumentDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO