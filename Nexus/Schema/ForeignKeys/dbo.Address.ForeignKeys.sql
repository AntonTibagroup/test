
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FKAddressState] FOREIGN KEY([StateCode]) REFERENCES [dbo].[State] ([StateCode]);
GO

ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FKAddressCountry] FOREIGN KEY([CountryCode]) REFERENCES [dbo].[Country] ([CountryCode]);
GO

ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FKAddressAddressType] FOREIGN KEY([AddressTypeId]) REFERENCES [dbo].[AddressType] ([AddressTypeId]);
GO