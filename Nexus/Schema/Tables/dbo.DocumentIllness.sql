

CREATE TABLE [dbo].[DocumentIllness]
( 
	[DocumentId]         [integer]  NOT NULL ,
	[IllnessId]          [integer]  NOT NULL ,
	CONSTRAINT [PKDocumentIllness] PRIMARY KEY  CLUSTERED ([DocumentId] ASC,[IllnessId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Documents to Illnesses' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentIllness'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Document table on DocumentId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentIllness', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Illness table on IllnessId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentIllness', 
@level2type=N'COLUMN',@level2name=N'IllnessId'
GO
