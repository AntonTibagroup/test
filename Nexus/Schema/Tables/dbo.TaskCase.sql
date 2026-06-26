

CREATE TABLE [dbo].[TaskCase](
	[TaskId] [integer] NOT NULL ,
	[CaseId] [int] NOT NULL,
 	CONSTRAINT [PKTaskCase] PRIMARY KEY CLUSTERED ([CaseId] ASC,[TaskId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to connect Task to Case' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'TaskCase'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Task table on TaskId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'TaskCase', 
@level2type=N'COLUMN',@level2name=N'TaskId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to Case table on CaseId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'TaskCase', 
@level2type=N'COLUMN',@level2name=N'CaseId'
GO
