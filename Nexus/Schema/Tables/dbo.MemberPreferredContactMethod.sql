

CREATE TABLE [dbo].[MemberPreferredContactMethod]
( 
	[MemberId]           [integer]  NOT NULL ,
	[PreferredContactMethodId] [integer]  NULL ,
	CONSTRAINT [PKMemberPreferredContactMethod] PRIMARY KEY  CLUSTERED ([MemberId] ASC)
)
