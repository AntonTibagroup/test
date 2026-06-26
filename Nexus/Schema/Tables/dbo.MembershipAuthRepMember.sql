

CREATE TABLE [dbo].[MembershipAuthRepMember]
( 
	[MembershipAuthRepId] [integer]  NOT NULL ,
	[MemberId]            [integer]  NOT NULL ,
	CONSTRAINT [PKMembershipAuthRepMember] PRIMARY KEY  CLUSTERED ([MembershipAuthRepId] ASC,[MemberId] ASC)
)
