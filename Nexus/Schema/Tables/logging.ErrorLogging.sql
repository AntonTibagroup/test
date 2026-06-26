

CREATE TABLE [logging].[ErrorLogging](
	[ErrorId] [integer]  IDENTITY(1,1) NOT NULL,
	[Application] [varchar](20) NULL,
	[Host] [varchar](20) NULL,
	[Type] [varchar](20) NULL,
	[Source] [varchar](20) NULL,
	[Message] [varchar](50) NULL,
	[StatusCode] [varchar](20) NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NULL,
	[AppUserId] [int] NOT NULL,
 	CONSTRAINT [PKErrorLogging] PRIMARY KEY CLUSTERED ([ErrorId] ASC)
 )
 go