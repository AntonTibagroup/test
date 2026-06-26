CREATE TABLE [dbo].[Account](
	[AccountId] [integer]  IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50)  NULL,
	[isActive] [bit] NOT NULL CONSTRAINT DFAccountisActive DEFAULT(1),
	[Bank] [varchar](50)  NULL,
 CONSTRAINT [PKAccount] PRIMARY KEY CLUSTERED ([AccountId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The account which the sharing is being tied to or paid out of' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Account'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for the account' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Account', 
@level2type=N'COLUMN',@level2name=N'AccountId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the account' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Account', 
@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field on if the account is active or not' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Account', 
@level2type=N'COLUMN',@level2name=N'isActive'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bank that is associated to the account' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Account', 
@level2type=N'COLUMN',@level2name=N'Bank'
GO
