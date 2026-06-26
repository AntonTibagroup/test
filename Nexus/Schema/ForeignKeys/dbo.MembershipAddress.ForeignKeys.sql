
ALTER TABLE [dbo].[MembershipAddress] ADD CONSTRAINT [FKMembershipAddressAddress] FOREIGN KEY([AddressId]) REFERENCES [dbo].[Address] ([AddressId]);
GO

ALTER TABLE [dbo].[MembershipAddress] ADD CONSTRAINT [FKMembershipAddressMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO