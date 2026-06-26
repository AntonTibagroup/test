

CREATE TABLE [dbo].[BenefitCode](
[BenefitCodeId] [char](3)  NOT NULL,
[Name] [varchar](50) NULL,
[isActive] [bit] NOT NULL CONSTRAINT [DFbenefitcodeIsActive] DEFAULT ((1)),
CONSTRAINT [PKbenefitcode] PRIMARY KEY CLUSTERED ([BenefitCodeId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CHM specific codes for eligiblity review of claim line items' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitCode', 
@level2type=N'COLUMN',@level2name=N'BenefitCodeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name for the benefit code' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitCode', 
@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag on whether code is active, defaults to yes' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitCode', 
@level2type=N'COLUMN',@level2name=N'isActive'
GO
