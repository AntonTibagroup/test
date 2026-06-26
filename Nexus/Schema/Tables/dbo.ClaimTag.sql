CREATE TABLE [dbo].[ClaimTag]
( 
	[ClaimTagId]         integer  IDENTITY ( 1,1 )  NOT NULL ,
	[Description]        varchar(50)  NULL ,
	[isActive]           bit  NOT NULL 	CONSTRAINT [DFClaimTagisActive]	 DEFAULT  1,
	CONSTRAINT [PKClaimTag] PRIMARY KEY  CLUSTERED ([ClaimTagId] ASC)
)

GO
EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'Lookup table for the list of available Claim Tags (ex: Medicare, Maternity, Discount, Priority, SCA, AMPS, Accident)',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'ClaimTag'
GO
