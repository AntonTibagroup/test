

CREATE TABLE [dbo].[MembershipAuthRepPermission]
( 
	[MembershipAuthRepId] [integer]  NOT NULL ,
	[AuthRepPermissionId] [integer]  NOT NULL ,
	CONSTRAINT [PKMembershipAuthRepPermission] PRIMARY KEY  CLUSTERED ([MembershipAuthRepId] ASC,[AuthRepPermissionId] ASC)
)

GO
EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'Link table between Membership Authorized Representative and Auth Rep Permission, allowing an Auth Rep to have multiple permissions.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'MembershipAuthRepPermission'
GO
