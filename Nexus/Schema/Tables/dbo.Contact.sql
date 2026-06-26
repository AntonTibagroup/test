CREATE TABLE [dbo].[Contact](
	[ContactId] [integer]  IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Phone] [char](10) NULL,
	[Email] [varchar](150) NULL,
 CONSTRAINT [PKContact] PRIMARY KEY CLUSTERED ([ContactId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain contacts for providers or facilities' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Contact'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each contact' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Contact', 
@level2type=N'COLUMN',@level2name=N'ContactId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First name of the contact' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Contact', 
@level2type=N'COLUMN',@level2name=N'FirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last name of the contact' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Contact', 
@level2type=N'COLUMN',@level2name=N'LastName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone number for the contact' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Contact', 
@level2type=N'COLUMN',@level2name=N'Phone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email for the contact' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Contact', 
@level2type=N'COLUMN',@level2name=N'Email'
GO
