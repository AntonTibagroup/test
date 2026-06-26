

CREATE TABLE [dbo].[TaskMembership](
	[MembershipId] [int] NOT NULL,
	[TaskId] [integer] NOT NULL ,
 	CONSTRAINT [PKTaskMembership] PRIMARY KEY CLUSTERED ([MembershipId] ASC,[TaskId] ASC)
)
