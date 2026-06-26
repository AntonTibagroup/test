

CREATE TABLE [dbo].[EligibilityRuleClaim]
( 
	[EligibilityRuleId]  [integer]  NOT NULL ,
	[ClaimId]            [integer]  NOT NULL ,
	CONSTRAINT [PKEligibilityRuleClaim] PRIMARY KEY  CLUSTERED ([EligibilityRuleId] ASC,[ClaimId] ASC)
);

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Link table between Eligibility Rule and Claim, allowing a Claim to have multiple eligibility rules applied to it.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleClaim'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleClaim',
@level2type = 'COLUMN', @level2name = 'EligibilityRuleId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleClaim',
@level2type = 'COLUMN', @level2name = 'ClaimId'
go