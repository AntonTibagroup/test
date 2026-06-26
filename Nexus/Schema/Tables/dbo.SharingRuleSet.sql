CREATE TABLE [dbo].[SharingRuleSet]
( 
	[SharingRuleSetId]   integer  NOT NULL ,
	[Description]        varchar(25)  NULL ,
	CONSTRAINT [PKSharingRuleSet] PRIMARY KEY  CLUSTERED ([SharingRuleSetId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Determines the rule set applicable to this illness/incident, how eligible claims get shared. Ex: Standard, Gold Schedule, CHM Give, Senior Share',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'SharingRuleSet'
