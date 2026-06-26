
ALTER TABLE [dbo].[DocumentMembership] ADD CONSTRAINT [FKDocumentMembershipDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentMembership] ADD CONSTRAINT [FKDocumentMembershipMembership] FOREIGN KEY ([MembershipId]) REFERENCES [Membership]([MembershipId]);
GO