

CREATE TABLE [dbo].[PhoneNumber](
	[PhoneNumberId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NULL,
	[Value] [char](10) NOT NULL,
	[AllowSMS] [bit] NOT NULL CONSTRAINT [DFphonenumberAllowSMS] DEFAULT ((1)),
	[isActive] [bit] NOT NULL CONSTRAINT [DFPhoneNumberisActive] DEFAULT ((1)),
	[MemberId] [int] NOT NULL,
	CONSTRAINT [PKPhoneNumber] PRIMARY KEY CLUSTERED ([PhoneNumberId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains Home, Mobile, Fax, or Work phone number.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PhoneNumber', 
@level2type=N'COLUMN',@level2name=N'PhoneNumberID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of phone number, such as Primary or Secondary' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PhoneNumber', 
@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number value for the phone number' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PhoneNumber', 
@level2type=N'COLUMN',@level2name=N'Value'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag whether this phone allows SMS communications, defaults to yes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PhoneNumber', 
@level2type=N'COLUMN',@level2name=N'AllowSMS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag whehter this phone is active, defaults to yes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PhoneNumber', 
@level2type=N'COLUMN',@level2name=N'isActive'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MemberID associated with this phone number' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'PhoneNumber', 
@level2type=N'COLUMN',@level2name=N'MemberId'
GO
