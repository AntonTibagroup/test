
ALTER TABLE [dbo].[Incident] ADD CONSTRAINT [FKIncidentIllness] FOREIGN KEY([IllnessId]) REFERENCES [dbo].[Illness] ([IllnessId]);
GO

ALTER TABLE [dbo].[Incident] ADD CONSTRAINT [FKIncidentICDCode] FOREIGN KEY ([ICDCode]) REFERENCES [ICDCode]([ICDCode]);
GO

ALTER TABLE [dbo].[Incident] ADD CONSTRAINT [FKIncidentSharingRuleSet] FOREIGN KEY ([SharingRuleSetId]) REFERENCES [dbo].[SharingRuleSet]([SharingRuleSetId]);
GO