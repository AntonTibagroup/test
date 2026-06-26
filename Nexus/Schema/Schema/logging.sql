CREATE SCHEMA logging;
GO

EXEC sys.sp_addextendedproperty @name=N'Caption', @value=N'Schema created for logging tables such as audit logs' , 
@level0type=N'SCHEMA',@level0name=N'logging'
GO