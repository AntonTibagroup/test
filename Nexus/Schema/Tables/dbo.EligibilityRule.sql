CREATE TABLE [dbo].[EligibilityRule]
( 
	[EligibilityRuleId]  [integer]  IDENTITY ( 1,1 )  NOT NULL ,
	[Description]        [varchar](25)  NOT NULL ,
	[Scope]              [varchar](25)  NULL ,
	CONSTRAINT [PKEligibilityRule]  PRIMARY KEY  CLUSTERED ([EligibilityRuleId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Table to contain rules, overrides, and/or exempltions that pertain to illnesses, incidents, claims or claim line items.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRule'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRule',
@level2type = 'COLUMN', @level2name = 'EligibilityRuleId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Description of the Eligibility Rule.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRule',
@level2type = 'COLUMN', @level2name = 'Description'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Scope of the eligibility rule, such as what level it pertains to. ex: claim, illness, incident, claim line item',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibilityRule',
@level2type = 'COLUMN', @level2name = 'Scope'
go