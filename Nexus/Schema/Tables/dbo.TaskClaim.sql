

CREATE TABLE [dbo].[TaskClaim](
	[ClaimId] [int] NOT NULL,
	[TaskId] [integer] NOT NULL ,
 	CONSTRAINT [PKTaskClaim] PRIMARY KEY CLUSTERED ([ClaimId] ASC,[TaskId] ASC)
)
