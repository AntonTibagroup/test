

CREATE TABLE [dbo].[MedicareCoverage](
[MedicareTypeId] [int] IDENTITY(1,1) NOT NULL,
[LongName] [varchar](25) NULL,
CONSTRAINT [PKmedicarecoverage] PRIMARY KEY CLUSTERED ([MedicareTypeId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains types of medicare coverages' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MedicareCoverage'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MedicareCoverage', 
@level2type=N'COLUMN',@level2name=N'MedicareTypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the Medicare Coverage type' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MedicareCoverage', 
@level2type=N'COLUMN',@level2name=N'LongName'
GO
