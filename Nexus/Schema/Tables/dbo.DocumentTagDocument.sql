

CREATE TABLE [dbo].[DocumentTagDocument]
( 
	[DocumentTagId]      [integer]  NOT NULL ,
	[DocumentId]         [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentTagDocument] PRIMARY KEY  CLUSTERED ([DocumentTagId] ASC,[DocumentId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table for the list of available Document Tags (ex: Maternity, Receipt, Records Review, Worksheet)' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentTagDocument'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to DocumentTag table on DocumentTagId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentTagDocument', 
@level2type=N'COLUMN',@level2name=N'DocumentTagId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentTagDocument', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO
