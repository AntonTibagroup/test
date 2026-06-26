
ALTER TABLE [dbo].[FacilityAddress] ADD CONSTRAINT [FKFacilityAddressFacility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility]([FacilityId]);
GO

ALTER TABLE [dbo].[FacilityAddress] ADD CONSTRAINT [FKFacilityAddressAddress] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address]([AddressId]);
GO