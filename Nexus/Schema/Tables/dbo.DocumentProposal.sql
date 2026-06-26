

CREATE TABLE [dbo].[DocumentProposal]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[ProposalId]         integer  NOT NULL ,
	CONSTRAINT [PKDocumentProposal] PRIMARY KEY  CLUSTERED ([DocumentId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Proposals' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentProposal'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentProposal', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO
