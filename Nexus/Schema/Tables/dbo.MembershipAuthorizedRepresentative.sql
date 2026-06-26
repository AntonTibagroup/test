

CREATE TABLE [dbo].[MembershipAuthorizedRepresentative](
	[MembershipAuthRepId] [integer]  IDENTITY(1,1) NOT NULL, 
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [char](10) NULL,
	[StartDate] [date] NOT NULL CONSTRAINT [DFMembershipAuthorizedRepresentativeStartDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
	[EndDate] [date] NULL,
	[AuthRepRelationshipId] [integer] NOT NULL,
	[Reason] [varchar](20) NULL,
	[Email] [varchar](150) NULL,
	[MembershipId] [int] NOT NULL,
	[CorrelationId] [varchar](36) NOT NULL,
	[AddressId]          [integer]  NULL, 
	CONSTRAINT [PKMemberShipAuthorizedRepresentative] PRIMARY KEY CLUSTERED ([MembershipAuthRepId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Authorized users who can make changes to the membership, other than the primary unit on the membership.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Membership ID that foreign keys to the membership table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First Name of the authorized representative' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'FirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Name of the authorized representative' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'LastName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number of the authorized representative' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'PhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date that the authorized representative is allowed to be active' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date that the authorized representative is no longer allowed to be active' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship of the authorized representative to the member or membership' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'AuthRepRelationshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason for the authorized representative to be added to the membership' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'Reason'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email address for the authorized representative' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application-generated UUIDv7. While unique, do not use as a foreign key.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MembershipAuthorizedRepresentative', 
@level2type=N'COLUMN',@level2name=N'CorrelationId'
GO

EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'MembershipAuthorizedRepresentative',
@level2type = 'COLUMN', @level2name = 'AddressId'
GO
