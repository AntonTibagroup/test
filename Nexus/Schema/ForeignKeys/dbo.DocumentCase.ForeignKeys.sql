
ALTER TABLE [dbo].[DocumentCase] ADD CONSTRAINT [FKDocumentCaseDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO