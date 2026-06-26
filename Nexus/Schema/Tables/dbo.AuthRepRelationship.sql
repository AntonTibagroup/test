CREATE TABLE [dbo].[AuthRepRelationship]
( 
	[AuthRepRelationshipId] [integer] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	CONSTRAINT [PKAuthRepRelationship] PRIMARY KEY CLUSTERED ([AuthRepRelationshipId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains list of relationships for authorized representatives',
@level0type=N'SCHEMA',@level0name=N'dbo',
@level1type=N'TABLE',@level1name=N'AuthRepRelationship'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each authorized representative relationship, auto increments',
@level0type=N'SCHEMA',@level0name=N'dbo',
@level1type=N'TABLE',@level1name=N'AuthRepRelationship',
@level2type=N'COLUMN',@level2name=N'AuthRepRelationshipId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description for the authorized representative relationship',
@level0type=N'SCHEMA',@level0name=N'dbo',
@level1type=N'TABLE',@level1name=N'AuthRepRelationship',
@level2type=N'COLUMN',@level2name=N'Description'
GO
