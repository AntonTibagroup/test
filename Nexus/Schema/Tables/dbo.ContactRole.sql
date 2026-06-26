CREATE TABLE [dbo].[ContactRole](
	[ContactRoleId] [integer]  IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	CONSTRAINT [PKContactRole] PRIMARY KEY CLUSTERED ([ContactRoleId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link table between location contacts and health system contacts' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ContactRole'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each contact role' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ContactRole', 
@level2type=N'COLUMN',@level2name=N'ContactRoleId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the contact role' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ContactRole', 
@level2type=N'COLUMN',@level2name=N'Description'
GO
