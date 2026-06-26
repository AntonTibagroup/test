

CREATE TABLE [dbo].[Proposal]
( 
	[ProposalId]         integer  NOT NULL ,
	[MemberId]           integer  NULL ,
	[ProviderId]         integer  NULL ,
	CONSTRAINT [PKProposal] PRIMARY KEY  CLUSTERED ([ProposalId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'Proposal',
@level2type = 'COLUMN', @level2name = 'MemberId'
