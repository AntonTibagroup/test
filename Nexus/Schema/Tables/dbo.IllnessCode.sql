CREATE TABLE [dbo].[IllnessCode](
	[IllnessCode] [integer] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PKIllnessCode] PRIMARY KEY CLUSTERED ([IllnessCode] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table for the list of Illness codes that have specific sharing amounts tied to them.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IllnessCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IllnessCode', 
@level2type=N'COLUMN',@level2name=N'IllnessCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the IllnessCode' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'IllnessCode', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
