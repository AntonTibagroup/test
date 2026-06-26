

CREATE TABLE [dbo].[TaskIncident](
	[IncidentId] [int] NOT NULL,
	[TaskId] [integer] NOT NULL ,
 	CONSTRAINT [PKTaskIncident] PRIMARY KEY CLUSTERED ([IncidentId] ASC,[TaskId] ASC)
)
