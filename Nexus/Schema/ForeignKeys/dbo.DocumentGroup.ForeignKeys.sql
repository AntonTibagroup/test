
ALTER TABLE [dbo].[DocumentGroup] ADD CONSTRAINT [FKDocumentGroupDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentGroup] ADD CONSTRAINT [FKDocumentGroupGroup] FOREIGN KEY ([GroupId]) REFERENCES [Group]([GroupId]);
GO