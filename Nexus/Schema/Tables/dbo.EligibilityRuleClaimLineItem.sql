

CREATE TABLE [dbo].[EligibilityRuleClaimLineItem]
( 
	[EligibilityRuleId]  [integer]  NOT NULL ,
	[ClaimLineItemId]    [integer]  NOT NULL ,
	CONSTRAINT [PKEligibilityRuleClaimLineItem]  PRIMARY KEY  CLUSTERED ([EligibilityRuleId] ASC,[ClaimLineItemId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Link table between Eligibility Rule and Claim Line Item, allowing a Claim Line Item to have multiple eligibility rules applied to it.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleClaimLineItem'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleClaimLineItem',
@level2type = 'COLUMN', @level2name = 'EligibilityRuleId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field for each claim line item',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleClaimLineItem',
@level2type = 'COLUMN', @level2name = 'ClaimLineItemId'
go