

CREATE TABLE [dbo].[MembershipContactRole](
	[MemberContactRoleId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[RoleType] [varchar](25) NULL,
	CONSTRAINT [PKMembershipContactRole] PRIMARY KEY CLUSTERED ([MemberContactRoleId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Communication role type, such as billing contact, phone contact or email contact reference table.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipContactRole'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipContactRole', 
@level2type=N'COLUMN',@level2name=N'MemberContactRoleID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Member ID for the person on the membership that matches this contact type' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipContactRole', 
@level2type=N'COLUMN',@level2name=N'MemberID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contact type, such as billing, phone or email' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipContactRole', 
@level2type=N'COLUMN',@level2name=N'RoleType'
GO
