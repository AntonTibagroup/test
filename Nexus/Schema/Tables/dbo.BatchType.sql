CREATE TABLE [dbo].[BatchType](
	[BatchTypeId] [integer]  IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PKBatchType] PRIMARY KEY CLUSTERED ([BatchTypeId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain sharing batch types which are payment methods. Ex: Check, ACH, Credit Card.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BatchType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each batch type' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BatchType', 
@level2type=N'COLUMN',@level2name=N'BatchTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description or name for each batch type or payment method' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BatchType', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
