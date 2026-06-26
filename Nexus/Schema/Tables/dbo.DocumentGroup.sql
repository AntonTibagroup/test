

CREATE TABLE [dbo].[DocumentGroup]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[GroupId]            [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentGroup] PRIMARY KEY  CLUSTERED ([DocumentId] ASC,[GroupId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Groups' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentGroup'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentGroup', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Group table on GroupId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentGroup', 
@level2type=N'COLUMN',@level2name=N'GroupId'
GO
