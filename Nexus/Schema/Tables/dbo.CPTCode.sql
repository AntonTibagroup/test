CREATE TABLE [dbo].[CPTCode](
	[CPTCode] CHAR(5) NOT NULL,
	[Description] VARCHAR(100) NOT NULL,
	[Status] VARCHAR(25) NOT NULL,
	[isActive] BIT NOT NULL CONSTRAINT DFCPTCodeisActive DEFAULT(1),
	[Category]           varchar(50)  NULL ,
 CONSTRAINT [PKCPTCode] PRIMARY KEY CLUSTERED ([CPTCode] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to hold CPT Codes from AMA' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CPTCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPT Code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CPTCode', 
@level2type=N'COLUMN',@level2name=N'CPTCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description for the CPT Code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CPTCode', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of the CPT Code, such as new, revised, or deleted' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'CPTCode', 
@level2type=N'COLUMN',@level2name=N'Status'
GO
