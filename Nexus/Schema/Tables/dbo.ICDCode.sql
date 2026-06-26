

CREATE TABLE [dbo].[ICDCode](
	[ICDCode] VARCHAR(7) NOT NULL,
	[Description] VARCHAR(50) NOT NULL,
	[DRGCode] [char](3) NULL,
	[isActive] BIT NOT NULL CONSTRAINT DFICDCodeIsActive DEFAULT(1),
 	CONSTRAINT [PKICDCode] PRIMARY KEY CLUSTERED ([ICDCode] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table for the list of ICD codes according to CMS and NCHS' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ICDCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Official ICD code value' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ICDCode', 
@level2type=N'COLUMN',@level2name=N'ICDCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ICDCode', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to DRGCode table on DRGCode field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ICDCode', 
@level2type=N'COLUMN',@level2name=N'DRGCode'
GO
