

CREATE TABLE [dbo].[DocumentMember]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[MemberId]           [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentMember] PRIMARY KEY  CLUSTERED ([DocumentId] ASC,[MemberId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Members' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentMember'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentMember', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Member table on MemberId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentMember', 
@level2type=N'COLUMN',@level2name=N'MemberId'
GO
