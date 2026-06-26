CREATE TABLE [dbo].[DocumentType]
( 
	[DocumentTypeId]     [integer]  IDENTITY(1,1) NOT NULL ,
	[Description]        [varchar](50)  NOT NULL ,
	[isForm]             [bit]  NOT NULL CONSTRAINT [DFDocumentTypeIsForm] DEFAULT 0,
	CONSTRAINT [PKDocumentType] PRIMARY KEY  CLUSTERED ([DocumentTypeId] ASC)

)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table for the list of available Document Types (ex: Bill, Sharing Request Form, Receipt, Medical Records)' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentType', 
@level2type=N'COLUMN',@level2name=N'DocumentTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the document type' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentType', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field on if the document type is a form or not' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentType', 
@level2type=N'COLUMN',@level2name=N'isForm'
GO
