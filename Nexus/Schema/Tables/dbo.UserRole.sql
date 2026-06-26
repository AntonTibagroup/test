

CREATE TABLE dbo.UserRole (
AppUserId INT NOT NULL,
AppRoleId INT NOT NULL
CONSTRAINT PKUserRole PRIMARY KEY CLUSTERED (AppUserId,AppRoleId))
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains users and the roles they are matched with' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UserRole'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key field to the AppUserId in the AppUser table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UserRole', 
@level2type=N'COLUMN',@level2name=N'AppUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key field to the AppRoleId in the AppRole table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UserRole', 
@level2type=N'COLUMN',@level2name=N'AppRoleId'
GO
