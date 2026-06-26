

CREATE TABLE [dbo].[Email](
[EmailId] [int] IDENTITY(1,1) NOT NULL,
[Email] [varchar](150) NOT NULL,
[AllowMarketing] [bit] NOT NULL CONSTRAINT [DFemailAllowMarketing] DEFAULT ((1)),
CONSTRAINT [PKemail] PRIMARY KEY CLUSTERED ([EmailId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains Email addresses' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Email', 
@level2type=N'COLUMN',@level2name=N'EmailID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the email address' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Email', 
@level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag on whether the owner allows marketing emails to be sent, defaults to yes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Email', 
@level2type=N'COLUMN',@level2name=N'AllowMarketing'
GO
