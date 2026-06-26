

CREATE TABLE [dbo].[Group](
[GroupId] [int] IDENTITY(1,1) NOT NULL,
[Name] [varchar](50) NOT NULL,
[PlanClass] [varchar](25) NULL,
CONSTRAINT [PKgroup] PRIMARY KEY CLUSTERED ([GroupId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Organizations and non-profit ministries that purchase memberships for their employees.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Group'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Group', 
@level2type=N'COLUMN',@level2name=N'GroupID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the organization or ministry' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Group', 
@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Classification for the group' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Group', 
@level2type=N'COLUMN',@level2name=N'PlanClass'
GO
