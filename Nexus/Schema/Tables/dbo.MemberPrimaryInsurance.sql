

CREATE TABLE [dbo].[MemberPrimaryInsurance](
	[MemberPrimaryInsuranceId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[StartDate] [date] NOT NULL CONSTRAINT [DFMemberPrimaryInsuranceStartDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
	[EndDate] [date] NULL,
	[PlanName] [varchar](25) NULL,
	CONSTRAINT [PKmemberprimaryinsurance] PRIMARY KEY CLUSTERED ([MemberId],
		[MemberPrimaryInsuranceId],
		[StartDate])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the Member''s primary insurance information' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberPrimaryInsurance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberPrimaryInsurance', 
@level2type=N'COLUMN',@level2name=N'MemberPrimaryInsuranceID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Member table, Member ID that holds this primary insurance' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberPrimaryInsurance', 
@level2type=N'COLUMN',@level2name=N'MemberID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the primary insurance, defaults to the date entered' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberPrimaryInsurance', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the primary insurance' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberPrimaryInsurance', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan name for the primary insurance', 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberPrimaryInsurance', 
@level2type=N'COLUMN',@level2name=N'PlanName'
GO
