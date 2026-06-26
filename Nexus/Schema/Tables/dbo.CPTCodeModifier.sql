CREATE TABLE [dbo].[CPTCodeModifier](
	[CPTCodeModifier] CHAR(2) NOT NULL,
	[Description] VARCHAR(25) NOT NULL,
 CONSTRAINT [PKCPTCodeModifier] PRIMARY KEY CLUSTERED (	[CPTCodeModifier] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain CPT Code Modifiers from AMA' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CPTCodeModifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPT Code Modifiers' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CPTCodeModifier', 
@level2type=N'COLUMN',@level2name=N'CPTCodeModifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the Modifier' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CPTCodeModifier', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
