
ALTER TABLE [dbo].[DocumentIllness] ADD CONSTRAINT [FKDocumentIllnessDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO

ALTER TABLE [dbo].[DocumentIllness] ADD CONSTRAINT [FKDocumentIllnessIllness] FOREIGN KEY ([IllnessId]) REFERENCES [Illness]([IllnessId]);
GO