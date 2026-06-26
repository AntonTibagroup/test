

CREATE TABLE [dbo].[EligibilityRuleIllness]
( 
	[EligibilityRuleId]  [integer]  NOT NULL ,
	[IllnessId]          [integer]  NOT NULL ,
	CONSTRAINT [PKEligibilityRuleIllness] PRIMARY KEY  CLUSTERED ([EligibilityRuleId] ASC,[IllnessId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Link table between Eligibility Rule and Illness, allowing an Illness to have multiple eligibility rules applied to it.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleIllness'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleIllness',
@level2type = 'COLUMN', @level2name = 'EligibilityRuleId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRuleIllness',
@level2type = 'COLUMN', @level2name = 'IllnessId'
go