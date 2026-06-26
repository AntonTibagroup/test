
ALTER TABLE [dbo].[GroupAddress] ADD CONSTRAINT [FKGroupAddressAddress] FOREIGN KEY([AddressId]) REFERENCES [dbo].[Address] ([AddressId]);
GO

ALTER TABLE [dbo].[GroupAddress] ADD CONSTRAINT [FKGroupAddressGroup] FOREIGN KEY([GroupId]) REFERENCES [dbo].[Group] ([GroupId]);
GO