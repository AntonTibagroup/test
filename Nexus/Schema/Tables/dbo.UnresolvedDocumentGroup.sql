CREATE TABLE [dbo].[UnresolvedDocumentGroup]
( 
	[UnresolvedDocumentGroupId] integer  IDENTITY ( 1,1 )  NOT NULL ,
	[CorrelationId]      varchar(36)  NOT NULL ,
	CONSTRAINT [PKUnresolvedDocumentGroup] PRIMARY KEY  CLUSTERED ([UnresolvedDocumentGroupId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When we receive documents through the mail, the automation tries to determine the correct member and membership that the documents belong to, but it sometimes is not able to figure it out. In those cases, we need to be able to specify that one or more documents belong to the same unknown member. This table groups those unmatched documents.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UnresolvedDocumentGroup'
GO
