CREATE TABLE [dbo].[Case](
	[CaseId] [integer] NOT NULL ,
 CONSTRAINT [PKCase] PRIMARY KEY CLUSTERED ([CaseId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain cases' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Case'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Case', 
@level2type=N'COLUMN',@level2name=N'CaseId'
GO
