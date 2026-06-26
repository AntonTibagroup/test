

CREATE TABLE [dbo].[Membership](
	[MembershipId] [int] IDENTITY(100000,1) NOT NULL,
	[SharingTypeId] [int] NOT NULL,
	[StartDate] [date] NOT NULL CONSTRAINT [DFMembershipStartDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
	[EndDate] [date] NULL,
	[MemberContactRoleId] [int] NULL,
	[PrimaryPersonId] [int] NOT NULL,
	[CorrelationId] varchar(36) NOT NULL,
	[DropReasonId] [integer]  NULL ,
	CONSTRAINT [PKmembership] PRIMARY KEY CLUSTERED ([MembershipId]),
	CONSTRAINT [UQMembershipCorrelationId] UNIQUE ([CorrelationId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Participating unit(s) grouped together for payment. Maximum of 3 units under one membership.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the SharingType table, links the sharing method type for this membership' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership', 
@level2type=N'COLUMN',@level2name=N'SharingTypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for this membership, the date this membership is active' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for this membership, the date this membership is no longer active' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the MembershipContactRole table, links to the types of contact roles on this membership' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership', 
@level2type=N'COLUMN',@level2name=N'MemberContactRoleID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Member table, links to the person who is the Primary person on this membership' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership', 
@level2type=N'COLUMN',@level2name=N'PrimaryPersonID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application-generated UUIDv7. While unique, do not use as a foreign key.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Membership', 
@level2type=N'COLUMN',@level2name=N'CorrelationId'
GO
