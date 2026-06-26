

CREATE TABLE [dbo].[DocumentMembership]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[MembershipId]       [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentMembership] PRIMARY KEY  CLUSTERED ([DocumentId] ASC,[MembershipId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Memberships' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentMembership'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentMembership', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Membership table on MembershipId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentMembership', 
@level2type=N'COLUMN',@level2name=N'MembershipId'
GO
