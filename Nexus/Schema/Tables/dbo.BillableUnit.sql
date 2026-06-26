

CREATE TABLE [dbo].[BillableUnit](
[BillableUnitId] [int] IDENTITY(1,1) NOT NULL,
[Description] [varchar](25) NULL,
CONSTRAINT [PKbillableunit] PRIMARY KEY CLUSTERED ([BillableUnitId])
 )

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of what each billable unit is and how they are used and/or assigned (1 is first adult, 2 is second adult, 3 is dependent(s))' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BillableUnit'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BillableUnit', 
@level2type=N'COLUMN',@level2name=N'BillableUnitID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the billable unit' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BillableUnit', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
