

CREATE TABLE [dbo].[ClaimTagClaim]
( 
	[ClaimTagId]         integer  NOT NULL ,
	[ClaimId]            integer  NOT NULL ,
	CONSTRAINT [PKClaimTagClaim] PRIMARY KEY  CLUSTERED ([ClaimTagId] ASC,[ClaimId] ASC)
	);
	go

EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'ClaimTagClaim',
@level2type = 'COLUMN', @level2name = 'ClaimId'
