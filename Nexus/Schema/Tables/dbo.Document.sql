

CREATE TABLE [dbo].[Document]
( 
	[DocumentId]         	 [integer]  IDENTITY(1,1) ,
	[Filepath]           	 [varchar](255)  NOT NULL ,
	[ReceivedDate]			 [Date]  NOT NULL ,
	[isActive]           	 [bit]  NOT NULL CONSTRAINT [DFDocumentIsActive] DEFAULT  1,
	[ScannedDateTimeOffset]  [Datetimeoffset](3)  NULL ,
	[Origin]             	 [varchar](50) NULL,
	[AppUserId]          	 [integer]  NULL ,
	[DocumentTypeId]     	 [integer]  NULL ,
	[DocumentStatusId]   	 [integer]  NULL ,
	[CorrelationId]      	 [varchar](36)  NOT NULL ,
	CONSTRAINT [PKDocument] PRIMARY KEY  CLUSTERED ([DocumentId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain documents' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'DocumentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The filepath for the document, to where the document actually lives' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'Filepath'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the document was received by CHM' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'ReceivedDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field, whether document is active or not, default to active' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'isActive'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time in UTC the records team scanned a document' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'ScannedDateTimeOffset'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Where the document came from, such as portal, mail or email' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'Origin'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to AppUser table on AppUserId field, for the locked user purpose, where this user is the user accessing the document at the time' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'AppUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to DocumentType table on DocumentTypeId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'DocumentTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to DocumentStatus table on DocumentStatusId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Document', 
@level2type=N'COLUMN',@level2name=N'DocumentStatusId'
GO
