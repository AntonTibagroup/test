

CREATE TABLE [dbo].[Communication](
	[CommunicationId] [integer]  IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[CommunicationTypeId] [int] NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NOT NULL CONSTRAINT [DFCommunicationCreateDateTimeOffset] DEFAULT(SYSUTCDATETIME()),
	[AppUserId] [int] NULL,
	[SentDateTimeOffset] [datetimeoffset](3) NULL,
	[CommunicationDescriptionId] [int] NULL,
	[MembershipId] [int] NULL,
	[DocumentId] [int] NULL,
	[Message] [varchar](400)  NULL,
	[CorrelationId]      	 [varchar](36)  NOT NULL ,
CONSTRAINT [PKCommunication] PRIMARY KEY CLUSTERED ([CommunicationId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain communications' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each communication' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'CommunicationId'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to Member table on MemberId field' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'MemberId'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to CommunicationType table on CommunicationTypeId field' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'CommunicationTypeId'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and Time the communication was created in UTC timezone, defaults to system UTC datetime' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'CreateDateTimeOffset'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to AppUser table on AppUserId field' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'AppUserId'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the communication was sent in UTC timezone' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'SentDateTimeOffset'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to CommunicationDescription table on CommunicationDescriptionId field' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'CommunicationDescriptionId'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to Membership table on MembershipId field' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'MembershipId'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to Document table on DocumentId field' , 	
@level0type=N'SCHEMA',@level0name=N'dbo', 	
@level1type=N'TABLE',@level1name=N'Communication', 	
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO
