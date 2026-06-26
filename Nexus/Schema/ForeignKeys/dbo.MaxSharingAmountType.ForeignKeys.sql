
ALTER TABLE [dbo].[MaxSharingAmountType] ADD CONSTRAINT [FKMaxSharingAmountTypeMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO

ALTER TABLE [dbo].[MaxSharingAmountType] ADD CONSTRAINT [FKMaxSharingAmountTypeIllnessCode] FOREIGN KEY([IllnessCode]) REFERENCES [dbo].[IllnessCode] ([IllnessCode]);
GO