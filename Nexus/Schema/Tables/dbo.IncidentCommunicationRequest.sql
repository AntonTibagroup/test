

CREATE TABLE [dbo].[IncidentCommunicationRequest](
	[IncidentCommunicationRequestId] [integer]  IDENTITY(1,1) NOT NULL,
	[SignOffDate] [date] NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NOT NULL,
	[CommunicationId] [int] NOT NULL,
	[AppUserId] [int] NOT NULL,
 	CONSTRAINT [PKIncidentCommunicationRequest] PRIMARY KEY CLUSTERED ([IncidentCommunicationRequestId] ASC)
 )

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain incident requests that require a sign off or workflow pertaining to a communication' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IncidentCommunicationRequest'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each incident communication request' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IncidentCommunicationRequest', 
@level2type=N'COLUMN',@level2name=N'IncidentCommunicationRequestId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the request was completed' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IncidentCommunicationRequest', 
@level2type=N'COLUMN',@level2name=N'SignOffDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the request was created in UTC timezone' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IncidentCommunicationRequest', 
@level2type=N'COLUMN',@level2name=N'CreateDateTimeOffset'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to Communication table on CommunicationId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IncidentCommunicationRequest', 
@level2type=N'COLUMN',@level2name=N'CommunicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to AppUser table on AppUserId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IncidentCommunicationRequest', 
@level2type=N'COLUMN',@level2name=N'AppUserId'
GO
