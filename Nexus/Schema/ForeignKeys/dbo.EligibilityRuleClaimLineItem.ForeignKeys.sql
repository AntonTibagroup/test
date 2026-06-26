
ALTER TABLE [dbo].[EligibilityRuleClaimLineItem] ADD CONSTRAINT [FKEligibilityRuleClaimLineItemEligibilityRule]  FOREIGN KEY ([EligibilityRuleId]) REFERENCES [EligibilityRule]([EligibilityRuleId]);
GO

ALTER TABLE [dbo].[EligibilityRuleClaimLineItem] ADD CONSTRAINT [FKEligibilityRuleClaimLineItemClaimLineItem]  FOREIGN KEY ([ClaimLineItemId]) REFERENCES [ClaimLineItem]([ClaimLineItemId]);
GO