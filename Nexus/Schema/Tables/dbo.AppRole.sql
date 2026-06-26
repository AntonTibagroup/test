

CREATE TABLE dbo.AppRole (
[AppRoleId] INT IDENTITY (1, 1),
[Description] NVARCHAR(50) NOT NULL,
[StartDate] DATE NOT NULL CONSTRAINT [DFAppRoleStartDate] DEFAULT(CAST(GETUTCDATE() AS DATE)),
[EndDate] DATE,
[CorrelationId] VARCHAR(36) NOT NULL,
CONSTRAINT PKAppRoleId PRIMARY KEY CLUSTERED (AppRoleId),
CONSTRAINT UQAppRoleDescription UNIQUE ([Description]),
CONSTRAINT UQAppRoleCorrelationId UNIQUE (CorrelationId)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains roles for the users in the application' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppRole'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each role, auto increments' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppRole', 
@level2type=N'COLUMN',@level2name=N'AppRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the role' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppRole', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the role to be active in the application' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppRole', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the role to be de-activated in the application' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppRole', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application-generated UUIDv7. While unique, do not use as a foreign key.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppRole', 
@level2type=N'COLUMN',@level2name=N'CorrelationId'
GO
