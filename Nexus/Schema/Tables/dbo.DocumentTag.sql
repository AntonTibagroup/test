CREATE TABLE [dbo].[DocumentTag]
( 
	[DocumentTagId]      [integer]  IDENTITY(1,1) NOT NULL ,
	[Description]        [varchar](50)  NOT NULL CONSTRAINT [UQDocumentTagDescription] DEFAULT '' ,
	[isActive]           bit  NOT NULL CONSTRAINT [DFDocumentTagIsActive] DEFAULT 1,
	CONSTRAINT [PKDocumentTag] PRIMARY KEY  CLUSTERED ([DocumentTagId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table for the list of available Document Tags (ex: Maternity, Receipt, Records Review, Worksheet)' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentTag'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentTag', 
@level2type=N'COLUMN',@level2name=N'DocumentTagId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the document tag' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentTag', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field on if the tag is active or not' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DocumentTag', 
@level2type=N'COLUMN',@level2name=N'isActive'
GO
