

CREATE TABLE [dbo].[UnresolvedDocumentGroupDocument]
( 
	[UnresolvedDocumentGroupId] integer  NOT NULL ,
	[DocumentId]         integer  NOT NULL ,
	CONSTRAINT [PKUnresolvedDocumentGroupDocument]  PRIMARY KEY  CLUSTERED ([UnresolvedDocumentGroupId] ASC,[DocumentId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link table for matching Unresolved Document Groups to Documents.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UnresolvedDocumentGroupDocument'
GO

EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'UnresolvedDocumentGroupDocument',
@level2type = 'COLUMN', @level2name = 'DocumentId'
