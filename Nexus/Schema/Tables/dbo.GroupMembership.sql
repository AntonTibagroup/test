

CREATE TABLE [dbo].[GroupMembership](
	[GroupId] [int] NOT NULL,
	[MembershipId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	CONSTRAINT [PKgroupmembership] PRIMARY KEY CLUSTERED ([GroupId],[MembershipId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The eligibility date range for the membership while in the group' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupMembership'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to Group table, GroupId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupMembership', 
@level2type=N'COLUMN',@level2name=N'GroupID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to Membership table, MembershipId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupMembership', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date of the membership in the group' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupMembership', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the membership in the group' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'GroupMembership', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO
