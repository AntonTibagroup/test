

CREATE TABLE [dbo].[EligibilityRuleIncident]
( 
	[EligibilityRuleId]  [integer]  NOT NULL ,
	[ClaimId]            [integer]  NOT NULL ,
	CONSTRAINT [PKEligibilityRuleIncident] PRIMARY KEY  CLUSTERED ([EligibilityRuleId] ASC,[ClaimId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Link table between Eligibility Rule and Incident, allowing an Incident to have multiple eligibility rules applied to it.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleIncident'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleIncident',
@level2type = 'COLUMN', @level2name = 'EligibilityRuleId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleIncident',
@level2type = 'COLUMN', @level2name = 'ClaimId'
go