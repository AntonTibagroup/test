
ALTER TABLE [dbo].[Illness] ADD CONSTRAINT [FKIllnessIllnessCode] FOREIGN KEY ([IllnessCode]) REFERENCES [IllnessCode]([IllnessCode]);
GO

ALTER TABLE [dbo].[Illness] ADD CONSTRAINT [FKIllnessDRGCode] FOREIGN KEY ([DRGCode]) REFERENCES [DRGCode]([DRGCode]);
GO

ALTER TABLE [dbo].[Illness] ADD CONSTRAINT [FKIllnessMember] FOREIGN KEY ([MemberId]) REFERENCES [Member]([MemberId]);
GO