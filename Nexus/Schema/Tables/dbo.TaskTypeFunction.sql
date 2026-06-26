

CREATE TABLE [dbo].[TaskTypeFunction](
	[TaskTypeId] [int] NOT NULL,
	[AppFunctionId] [int] NOT NULL,
 	CONSTRAINT [PKTaskTypeFunction] PRIMARY KEY CLUSTERED ([TaskTypeId] ASC,	[AppFunctionId] ASC)
 )
