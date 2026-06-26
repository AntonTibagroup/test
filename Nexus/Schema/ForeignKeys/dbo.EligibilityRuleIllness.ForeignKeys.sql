
ALTER TABLE [dbo].[EligibilityRuleIllness] ADD CONSTRAINT [FKEligibilityRuleIllnessEligibilityRule]  FOREIGN KEY ([EligibilityRuleId]) REFERENCES [EligibilityRule]([EligibilityRuleId]);
GO

ALTER TABLE [dbo].[EligibilityRuleIllness] ADD CONSTRAINT [FKEligibilityRuleIllnessIllness]  FOREIGN KEY ([IllnessId]) REFERENCES [Illness]([IllnessId]);
GO