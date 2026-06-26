CREATE TABLE [dbo].[DRGCode](
	[DRGCode] [char](3) NOT NULL,
	[Description] VARCHAR(25) NOT NULL,
 CONSTRAINT [PKDRGCode] PRIMARY KEY CLUSTERED ([DRGCode] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain DRG codes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DRGCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DRG code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DRGCode', 
@level2type=N'COLUMN',@level2name=N'DRGCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of DRG code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DRGCode', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
