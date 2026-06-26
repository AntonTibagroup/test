

CREATE TABLE dbo.UserFunction (
	AppUserId INT NOT NULL,
	AppFunctionId INT NOT NULL
	CONSTRAINT PKUserFunction PRIMARY KEY CLUSTERED (AppUserId,AppFunctionId)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains users and the individual functions they are matched with' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UserFunction'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key field to the AppUserId in the AppUser table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UserFunction', 
@level2type=N'COLUMN',@level2name=N'AppUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key field to the AppFunctionId in the AppFunction table' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'UserFunction', 
@level2type=N'COLUMN',@level2name=N'AppFunctionId'
GO
