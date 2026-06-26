

CREATE TABLE [dbo].[MembershipMember]
( 
	[MemberId]           integer  NOT NULL ,
	[MembershipId]       integer  NOT NULL,
	[PersonTypeId]       integer  NULL ,
	CONSTRAINT [PKMembershipMember] PRIMARY KEY  CLUSTERED ([MemberId] ASC,[MembershipId] ASC)
)
