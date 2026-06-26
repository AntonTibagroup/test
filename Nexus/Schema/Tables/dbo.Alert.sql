CREATE TABLE [dbo].[Alert](
	[AlertId] [integer]  IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[PriorityLevel] [varchar](20) NULL,
 CONSTRAINT [PKAlert] PRIMARY KEY CLUSTERED ([AlertId] ASC) 
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to hold tags or properties that will attach to the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Alert'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for the alert' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Alert', 
@level2type=N'COLUMN',@level2name=N'AlertId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description or name of the alert' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Alert', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority level of the alert' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Alert', 
@level2type=N'COLUMN',@level2name=N'PriorityLevel'
GO
