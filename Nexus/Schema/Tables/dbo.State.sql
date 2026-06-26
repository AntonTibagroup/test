

CREATE TABLE [dbo].[State](
	[StateCode] [char](2) NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PKstate] PRIMARY KEY CLUSTERED ([StateCode])
 )

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains a list of states or US territories where people can receive mail' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'State'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Two character code assigned to the state or territory' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'State', 
@level2type=N'COLUMN',@level2name=N'StateCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full value of the state or territory' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'State', 
@level2type=N'COLUMN',@level2name=N'Name'
GO
