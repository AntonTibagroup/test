

CREATE TABLE [dbo].[TaskType](
	[TaskTypeId] [integer]  IDENTITY(1,1) NOT NULL,
	[isError] [bit] NOT NULL CONSTRAINT DFTaskTypeisError DEFAULT(0),
	[Description] [varchar](50) NOT NULL,
	[PreventsSharing] [bit] NOT NULL CONSTRAINT DFTaskTypePreventsSharing DEFAULT(0),
	[AppRoleId] [int] NOT NULL,
 	CONSTRAINT [PKTaskType] PRIMARY KEY CLUSTERED ([TaskTypeId] ASC)
 )
