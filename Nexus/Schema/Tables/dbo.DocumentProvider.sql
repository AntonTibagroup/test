

CREATE TABLE [dbo].[DocumentProvider]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[ProviderId]         [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentProvider] PRIMARY KEY  CLUSTERED ([DocumentId] ASC,[ProviderId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document repository for documents like W-9s' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentProvider'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentProvider', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Provider table on ProviderId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentProvider', 
@level2type=N'COLUMN',@level2name=N'ProviderId'
GO
