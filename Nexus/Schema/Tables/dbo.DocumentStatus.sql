CREATE TABLE [dbo].[DocumentStatus]
( 
	[DocumentStatusId]   [integer]  IDENTITY(1,1) NOT NULL ,
	[Description]        [varchar](50)  NOT NULL ,
	CONSTRAINT [PKDocumentStatus] PRIMARY KEY  CLUSTERED ([DocumentStatusId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table for the list of available Document Statuses (ex: records, fraud check, data entry, filed)' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentStatus', 
@level2type=N'COLUMN',@level2name=N'DocumentStatusId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the document status' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentStatus', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
