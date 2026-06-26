

CREATE TABLE [dbo].[CommunicationPreference](
	[MembershipId] [int] NOT NULL,
	[PortalNotification] [bit] NULL CONSTRAINT [DFcommprefPortalNotif] DEFAULT ((1)),
	[Magazine] [bit] NULL CONSTRAINT [DFcommprefMagazine] DEFAULT ((1)),
	[Ebilling] [bit] NULL CONSTRAINT [DFcommprefEbilling] DEFAULT ((1)),
	CONSTRAINT [PKcommunicationpreference] PRIMARY KEY CLUSTERED ([MembershipId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains communication choices for the membership' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationPreference'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Membership table, links to MembershipId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationPreference', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag on whether the membership will receive notifications within the portal, defaults to yes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationPreference', 
@level2type=N'COLUMN',@level2name=N'PortalNotification'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag on whether the membership will receive a mailed magazine, defaults to yes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationPreference', 
@level2type=N'COLUMN',@level2name=N'Magazine'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag on whether the membership will receive Ebilling, defaults to yes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationPreference', 
@level2type=N'COLUMN',@level2name=N'Ebilling'
GO
