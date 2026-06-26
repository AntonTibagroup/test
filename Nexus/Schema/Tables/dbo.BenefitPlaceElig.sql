

CREATE TABLE [dbo].[BenefitPlaceElig](
[BenefitCodeId] [char](3) NOT NULL,
[PlaceOfServiceId] [char](2) NOT NULL,
[ProgramId] [int] NOT NULL,
[StartDate] [date] NOT NULL CONSTRAINT [DFBenefitPlaceEligStartDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
[EndDate] [date] NULL,
[EligiblePercentage] decimal(4,2)  NULL ,
CONSTRAINT [PKBenefitPlaceElig] PRIMARY KEY  CLUSTERED ([BenefitCodeId] ASC,[PlaceOfServiceId] ASC,[ProgramId] ASC,[StartDate] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains combination of benefit code, place of service and program id with date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitPlaceElig'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the BenefitPlaceElig date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitPlaceElig', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the BenefitPlaceElig date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitPlaceElig', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys BenefitCode table, links to BenefitCodeId' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitPlaceElig', 
@level2type=N'COLUMN',@level2name=N'BenefitCodeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to PlaceOfService table, links to PlaceOfServiceId' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitPlaceElig', 
@level2type=N'COLUMN',@level2name=N'PlaceOfServiceID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to Program table, links to ProgramId' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'BenefitPlaceElig', 
@level2type=N'COLUMN',@level2name=N'ProgramID'
GO

EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'The percentage of eligibility for each combination of program, place of service and benefit code.',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'BenefitPlaceElig',
@level2type = 'COLUMN', @level2name = 'EligiblePercentage'
