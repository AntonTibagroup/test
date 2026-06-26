CREATE TABLE [dbo].[CommunicationDescription](
	[CommunicationDescriptionId] [integer]  IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PKCommunicationDescription] PRIMARY KEY CLUSTERED ([CommunicationDescriptionId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain list of descriptions of communications. ex: aging out, delinquent, etc.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationDescription'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each communication description' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationDescription', 
@level2type=N'COLUMN',@level2name=N'CommunicationDescriptionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description or name for each communication description' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CommunicationDescription', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
