

CREATE TABLE [dbo].[Program](
[ProgramId] [int] IDENTITY(1,1) NOT NULL,
[ProgramCode] [varchar](25) NOT NULL,
[Name] [varchar](50) NOT NULL,
[StartDate] [date] NOT NULL CONSTRAINT [DFProgramStartDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
[EndDate] [date] NULL,
[Price] [decimal](18,2)  NOT NULL, 
[Description] varchar(200)  NOT NULL,
CONSTRAINT [PKprogram] PRIMARY KEY CLUSTERED ([ProgramId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A package of covered health care items and services. The program sets how much it will pay for those items and services. Ex: Gold, Silver, Bronze.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Program'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Program', 
@level2type=N'COLUMN',@level2name=N'ProgramID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code to identify programs continuous across rule changes, renames, etc.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Program', 
@level2type=N'COLUMN',@level2name=N'ProgramCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name details for the program' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Program', 
@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the program' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Program', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the program' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Program', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty
@name = 'MS_Description', @value = 'Description of the program (ex: CHM Gold, Qualifying Amount $1250, PR $1250, Maternity $2500, Reg Lifetime Max $125k)',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'Program',
@level2type = 'COLUMN', @level2name = 'Description'
GO
