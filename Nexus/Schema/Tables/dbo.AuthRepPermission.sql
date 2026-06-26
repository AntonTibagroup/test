CREATE TABLE [AuthRepPermission]
( 
	[AuthRepPermissionId] [integer]  IDENTITY(1,1) NOT NULL ,
	[Description]        varchar(25)  NOT NULL,
	CONSTRAINT [PKAuthRepPermission] PRIMARY KEY  CLUSTERED ([AuthRepPermissionId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains list of permissions for the authorized representatives', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AuthRepPermission'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each user, auto increments', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AuthRepPermission', 
@level2type=N'COLUMN',@level2name=N'AuthRepPermissionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description for the permission', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AuthRepPermission', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
