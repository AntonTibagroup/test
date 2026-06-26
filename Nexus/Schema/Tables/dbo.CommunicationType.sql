CREATE TABLE [dbo].[CommunicationType](
	[CommunicationTypeId] [integer]  IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PKCommunicationType] PRIMARY KEY CLUSTERED ([CommunicationTypeId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain types of communication. (ex: portal request, letters, email)' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each type of communication' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationType', 
@level2type=N'COLUMN',@level2name=N'CommunicationTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description or name of the type of communication' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationType', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
