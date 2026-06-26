

CREATE TABLE [dbo].[DocumentCase]
( 
	[DocumentId]         [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentCase] PRIMARY KEY  CLUSTERED ([DocumentId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Cases' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentCase'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentCase', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO
