

CREATE TABLE dbo.RoleFunction (
	AppRoleId INT NOT NULL,
	AppFunctionId INT NOT NULL
	CONSTRAINT PKRoleFunction PRIMARY KEY CLUSTERED (AppRoleId,AppFunctionId)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains roles and the individual functions they are matched with, roles contain groups of functions' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RoleFunction'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key field to the AppRoleId in the AppRole table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RoleFunction', 
@level2type=N'COLUMN',@level2name=N'AppRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key field to the AppFunctionId in the AppFunction table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'RoleFunction', 
@level2type=N'COLUMN',@level2name=N'AppFunctionId'
GO
