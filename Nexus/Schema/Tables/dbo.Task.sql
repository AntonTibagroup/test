

CREATE TABLE [dbo].[Task](
	[TaskId] [integer]  IDENTITY(1,1) NOT NULL,
	[SignOffDate] [date] NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NOT NULL CONSTRAINT [DFTaskCreateDateTimeOffset] DEFAULT(SYSUTCDATETIME()),
	[DueDate] [date] NULL,
	[AssignedUserId] [int] NULL,
	[TaskTypeId] [int] NOT NULL,
	[CreatedUserId]      integer  NOT NULL ,
 	CONSTRAINT [PKTask] PRIMARY KEY CLUSTERED (	[TaskId] ASC)
 )
