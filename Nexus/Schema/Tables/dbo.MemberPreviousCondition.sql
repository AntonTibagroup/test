

CREATE TABLE [dbo].[MemberPreviousCondition]
( 
	[PreviousConditionId] [integer]  NOT NULL ,
	[MemberId]            [integer]  NOT NULL ,
	[StartDate]           [date]  NOT NULL ,
	[CreateDatetime]      [Datetimeoffset](3)  NOT NULL CONSTRAINT [DFMemberPreviousConditionCreateDatetime] DEFAULT  SYSUTCDATETIME(),
	CONSTRAINT [PKMemberPreviousCondition] PRIMARY KEY  CLUSTERED ([PreviousConditionId] ASC,[MemberId] ASC)
)
