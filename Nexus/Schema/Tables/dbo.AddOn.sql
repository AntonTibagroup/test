

CREATE TABLE [dbo].[AddOn](
[AddOnId] [int] IDENTITY(1,1) NOT NULL,
[AddOnCode] [varchar](25) NOT NULL,
[Name] [varchar](50) NOT NULL,
[StartDate] [date] NOT NULL CONSTRAINT [DFAddOnStartDate]  DEFAULT (CAST(GETUTCDATE() AS DATE)),
[EndDate] [date] NULL,
[Price]   [decimal](18,2)  NOT NULL ,
[Description] varchar(200)  NOT NULL,
CONSTRAINT [PKaddon] PRIMARY KEY CLUSTERED ([AddOnId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of Add On''s such as CHM Plus, the Start date and End date of the Add On.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOn'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOn', 
@level2type=N'COLUMN',@level2name=N'AddOnID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code to identify AddOns continuous across rule changes, renames, etc.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOn', 
@level2type=N'COLUMN',@level2name=N'AddOnCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name for the AddOn' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOn', 
@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the AddOn' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOn', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the AddOn' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'AddOn', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO
