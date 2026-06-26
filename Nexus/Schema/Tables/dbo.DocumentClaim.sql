

CREATE TABLE [dbo].[DocumentClaim]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[ClaimId]            [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentClaim] PRIMARY KEY  CLUSTERED ([DocumentId] ASC,[ClaimId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Claims' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentClaim'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentClaim', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Claim table on ClaimId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentClaim', 
@level2type=N'COLUMN',@level2name=N'ClaimId'
GO
