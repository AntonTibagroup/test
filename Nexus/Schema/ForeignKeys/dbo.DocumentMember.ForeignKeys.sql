
ALTER TABLE [dbo].[DocumentMember] ADD CONSTRAINT [FKDocumentMemberDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentMember] ADD CONSTRAINT [FKDocumentMemberMember] FOREIGN KEY ([MemberId]) REFERENCES [Member]([MemberId]);
GO