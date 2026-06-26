

CREATE TABLE [dbo].[PendingAssignmentClaim]
( 
	[MembershipId]       integer  NULL ,
	[MemberId]           integer  NULL ,
	[ClaimId]            integer  NOT NULL ,
	CONSTRAINT [PKPendingAssignmentClaim] PRIMARY KEY  CLUSTERED ([ClaimId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'Link table for Claims that do not link to an Incident yet and need to be worked on.  While being worked on to be attached to the claim, they need to be linked to a MemberId or MembershipId',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'PendingAssignmentClaim'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'PendingAssignmentClaim',
@level2type = 'COLUMN', @level2name = 'MembershipId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'PendingAssignmentClaim',
@level2type = 'COLUMN', @level2name = 'MemberId'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'PendingAssignmentClaim',
@level2type = 'COLUMN', @level2name = 'ClaimId'
go