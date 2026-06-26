

CREATE TABLE [dbo].[Language](
	[LanguageCode] [char](2) NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PKlanguage] PRIMARY KEY CLUSTERED ([LanguageCode])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains list of language codes from ISO 639-2' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Language'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Language two character code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Language', 
@level2type=N'COLUMN',@level2name=N'LanguageCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Language name' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Language', 
@level2type=N'COLUMN',@level2name=N'Name'
GO
