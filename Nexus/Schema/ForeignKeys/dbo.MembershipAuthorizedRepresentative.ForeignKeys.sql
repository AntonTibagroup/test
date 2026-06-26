
ALTER TABLE [dbo].[MembershipAuthorizedRepresentative] ADD CONSTRAINT [FKMembershipAuthorizedRepresentativeMembership] FOREIGN KEY([MembershipId])	REFERENCES [dbo].[Membership] ([MembershipId]);
GO

ALTER TABLE [dbo].[MembershipAuthorizedRepresentative] ADD CONSTRAINT [FKMembershipAuthorizedRepresentativeAddress] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address]([AddressId]);
GO

ALTER TABLE [dbo].[MembershipAuthorizedRepresentative] ADD CONSTRAINT [FKMembershipAuthorizedRepresentativeAuthRepRelationship] FOREIGN KEY ([AuthRepRelationshipId]) REFERENCES [dbo].[AuthRepRelationship]([AuthRepRelationshipId]);
GO