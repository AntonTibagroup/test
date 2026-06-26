
ALTER TABLE [dbo].[EligibilityRuleIncident] ADD CONSTRAINT [FKEligibilityRuleIncidentEligibilityRule] FOREIGN KEY ([EligibilityRuleId]) REFERENCES [EligibilityRule]([EligibilityRuleId]);
GO

ALTER TABLE [dbo].[EligibilityRuleIncident] ADD CONSTRAINT [FKEligibilityRuleIncidentClaim] FOREIGN KEY ([ClaimId]) REFERENCES [Claim]([ClaimId]);
GO