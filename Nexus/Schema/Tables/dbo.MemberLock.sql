

CREATE TABLE [dbo].[MemberLock]
( 
	[LockExpiration]     datetime  NULL ,
	[MemberId]           integer  NOT NULL ,
	[AppUserId]          integer  NOT NULL ,
	CONSTRAINT [PKMemberLock] PRIMARY KEY  CLUSTERED ([MemberId] ASC,[AppUserId] ASC)
)
