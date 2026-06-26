
ALTER TABLE [dbo].[EligibilityRuleClaim] ADD CONSTRAINT [FKEligibilityRuleClaimEligibilityRule]  FOREIGN KEY ([EligibilityRuleId]) REFERENCES [EligibilityRule]([EligibilityRuleId]);
GO

ALTER TABLE [dbo].[EligibilityRuleClaim] ADD CONSTRAINT [FKEligibilityRuleClaimClaim]  FOREIGN KEY ([ClaimId]) REFERENCES [Claim]([ClaimId]);
GO