CREATE TABLE [dbo].[PreviousCondition]
( 
	[PreviousConditionId] [integer]  IDENTITY(1,1) NOT NULL ,
	[Name]                [varchar](255)  NOT NULL ,
	CONSTRAINT [PKPreviousCondition] PRIMARY KEY  CLUSTERED ([PreviousConditionId] ASC)
)

GO
EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'Table to contain list of previous conditions.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'PreviousCondition'
GO
