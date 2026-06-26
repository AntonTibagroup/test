
ALTER TABLE [dbo].[SharingBatch] ADD CONSTRAINT [FKSharingBatchAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO

ALTER TABLE [dbo].[SharingBatch] ADD CONSTRAINT [FKSharingBatchBatchType] FOREIGN KEY([BatchTypeId]) REFERENCES [dbo].[BatchType] ([BatchTypeId]);
GO

ALTER TABLE [dbo].[SharingBatch] ADD CONSTRAINT [FKSharingBatchAccount] FOREIGN KEY([AccountId]) REFERENCES [dbo].[Account] ([AccountId]);
GO