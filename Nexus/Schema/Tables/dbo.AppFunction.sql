

CREATE TABLE dbo.AppFunction (
[AppFunctionId] INT IDENTITY (1, 1),
[Description] NVARCHAR(50) NOT NULL,
[StartDate] DATE NOT NULL CONSTRAINT [DFAppFunctionStartDate] DEFAULT(CAST(GETUTCDATE() AS DATE)),
[EndDate] DATE,
[CorrelationId] VARCHAR(36) NOT NULL,
CONSTRAINT PKAppFunctionId PRIMARY KEY CLUSTERED (AppFunctionId),
CONSTRAINT UQAppFunctionDescription UNIQUE ([Description]),
CONSTRAINT UQAppFunctionCorrelationId UNIQUE (CorrelationId)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains functions for pieces of the application, these functions allow permissions for each piece of the application' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppFunction'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each function, auto increments' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppFunction', 
@level2type=N'COLUMN',@level2name=N'AppFunctionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the function' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppFunction', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the function to be active in the application' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppFunction', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the function to be de-activated in the application' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppFunction', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application-generated UUIDv7. While unique, do not use as a foreign key.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppFunction', 
@level2type=N'COLUMN',@level2name=N'CorrelationId'
GO
