

CREATE TABLE dbo.AppUser (
AppUserId INT IDENTITY (1, 1),
MicrosoftAd NVARCHAR(100) NOT NULL,
Email VARCHAR(150) NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
StartDate DATE NOT NULL CONSTRAINT DFAppUserStartDate DEFAULT(CAST(GETUTCDATE() AS DATE)),
EndDate DATE,
PhoneNumber CHAR(10) NULL,
PhoneExtension VARCHAR(4) NULL,
CorrelationId VARCHAR(36) NOT NULL,
CONSTRAINT PKAppUserId PRIMARY KEY CLUSTERED (AppUserId),
CONSTRAINT UQAppUserMicrosoftAd UNIQUE (MicrosoftAd),
CONSTRAINT UQAppUserEmail UNIQUE (Email),
CONSTRAINT UQAppUserCorrelationId UNIQUE (CorrelationId)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains users for the application', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each user, auto increments', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'AppUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for the user that comes from Microsoft AD', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'MicrosoftAd'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email Address for the user that is synced with Microsoft AD' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First Name for the user that is synced with Microsoft AD' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'FirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Name for the user that is synced with Microsoft AD' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'LastName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the user to be active in the application', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the user to be de-activated in the application', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number for the user', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'PhoneNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone extension for the user', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'PhoneExtension'	
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application-generated UUIDv7. While unique, do not use as a foreign key.', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AppUser', 
@level2type=N'COLUMN',@level2name=N'CorrelationId'
GO
