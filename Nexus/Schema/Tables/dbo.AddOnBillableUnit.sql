

CREATE TABLE [dbo].[AddOnBillableUnit](
[AddOnBillableUnitId] [int] IDENTITY(1,1) NOT NULL,
[Description] [varchar](50) NULL,
CONSTRAINT [PKaddonbillableunit] PRIMARY KEY CLUSTERED ([AddOnBillableUnitId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Unit ID assigned to the Person Unit for counting purposes.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOnBillableUnit'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOnBillableUnit', 
@level2type=N'COLUMN',@level2name=N'AddOnBillableUnitID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description for the Add On Billable Unit' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOnBillableUnit', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
