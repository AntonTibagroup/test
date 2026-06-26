CREATE TABLE [dbo].[ClaimStatus]
( 
	[ClaimStatusId]      integer  IDENTITY ( 1,1 )  NOT NULL ,
	[Description]        varchar(20)  NULL ,
	CONSTRAINT [PKClaimStatus] PRIMARY KEY  CLUSTERED ([ClaimStatusId] ASC)
)
