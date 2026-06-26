

CREATE TABLE [dbo].[Suffix](
[SuffixCode] [char](2) NOT NULL,
[Name] [varchar](10) NULL,
CONSTRAINT [PKsuffix] PRIMARY KEY CLUSTERED ([SuffixCode])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains a list of elements added to the end of a name to provide additional information, such as generational titles' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Suffix'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Two digit code assigned to the suffix' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Suffix', 
@level2type=N'COLUMN',@level2name=N'SuffixCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full value of the suffix' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Suffix', 
@level2type=N'COLUMN',@level2name=N'Name'
GO
