
ALTER TABLE [dbo].[SharingPayment] ADD CONSTRAINT [FKSharingPaymentSharingBatch] FOREIGN KEY([SharingBatchId]) REFERENCES [dbo].[SharingBatch] ([SharingBatchId]);
GO

ALTER TABLE [dbo].[SharingPayment] ADD CONSTRAINT [FKSharingPaymentAddress] FOREIGN KEY ([PayToAddress]) REFERENCES [dbo].[Address]([AddressId]);
GO

ALTER TABLE [dbo].[SharingPayment] ADD CONSTRAINT [FKSharingPaymentFacility] FOREIGN KEY ([PayToFacility]) REFERENCES [dbo].[Facility]([FacilityId]);
GO

ALTER TABLE [dbo].[SharingPayment] ADD CONSTRAINT [FKSharingPaymentMember] FOREIGN KEY ([PayToMember]) REFERENCES [dbo].[Member]([MemberId]);
GO