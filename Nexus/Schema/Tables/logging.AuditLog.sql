

CREATE TABLE logging.AuditLog (
	AuditLogId INT IDENTITY(1,1),
	AppUserId INT NOT NULL,
	LogTimestamp [DATETIMEOFFSET](3) NOT NULL,
	EventType VARCHAR(100) NOT NULL,
	ResourceType VARCHAR(50) NOT NULL,
	ResourceId INT NOT NULL,
	CorrelationId VARCHAR(36) NOT NULL,
	LogChange VARCHAR(MAX) NOT NULL
	CONSTRAINT PKAuditLogId PRIMARY KEY CLUSTERED (AuditLogId)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains Logs for actions by users of the application',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each action, auto increments',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'AuditLogId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User ID for each action, Foreign key to the AppUser table AppUserID field',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'AppUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Timestamp for the audit log entry',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'LogTimestamp'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The action or event as named in Nexus, e.g. User.AddRole',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'EventType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The resource modified by the action as named in Nexus, e.g. User',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'ResourceType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the resource modified by the action',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'ResourceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correlation ID for the action logged',
@level0type=N'SCHEMA',@level0name=N'logging',
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'CorrelationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A diff of the the changes made in the audited action in JSON format',
@level0type=N'SCHEMA',@level0name=N'logging',	
@level1type=N'TABLE',@level1name=N'AuditLog',
@level2type=N'COLUMN',@level2name=N'LogChange'
GO
