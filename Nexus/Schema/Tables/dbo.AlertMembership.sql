

CREATE TABLE [dbo].[AlertMembership]
( 
	[AlertId]            [integer]  NOT NULL ,
	[GeneratedData]      [varchar](50)  NULL ,
	[MembershipId]       [integer]  NOT NULL ,
	CONSTRAINT [PKAlertMembership] PRIMARY KEY  CLUSTERED ([AlertId] ASC,[MembershipId] ASC)
);
go

EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'Link table between Alert and Membership',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'AlertMembership'
GO

EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'Foreign Key to Alert table on AlertId field',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'AlertMembership',
@level2type = 'COLUMN', @level2name = 'AlertId'
GO

EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'A field to contain more details and it is generated from the front end. Could be a specific date such as estimated due date.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'AlertMembership',
@level2type = 'COLUMN', @level2name = 'GeneratedData'
GO

EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'Foreign Key to Membership table on MembershipId field',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'AlertMembership',
@level2type = 'COLUMN', @level2name = 'MembershipId'
GO
