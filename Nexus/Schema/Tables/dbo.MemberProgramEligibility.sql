

CREATE TABLE [dbo].[MemberProgramEligibility](
	[MemberId] [int] NOT NULL,
	[MembershipId] [int] NOT NULL,
	[BillableUnitId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[StartDate] [date] NOT NULL CONSTRAINT [DFMemberProgramEligibilityStartDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
	[EndDate] [date] NULL,
	CONSTRAINT [PKMemberProgramEligibility] PRIMARY KEY CLUSTERED ([MemberId],
		[MembershipId],
		[BillableUnitId],
		[ProgramId],
		[StartDate])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The start and end date of the Unit''s program under the listed membership.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberProgramEligibility'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Member table, links to member unit that is on this program' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberProgramEligibility', 
@level2type=N'COLUMN',@level2name=N'MemberID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Mewmbership table, Membership ID for the Member unit that is on this program' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberProgramEligibility', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the BillableUnit table, links to the unit that is on this program' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberProgramEligibility', 
@level2type=N'COLUMN',@level2name=N'BillableUnitID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Program table, links to the program for this eligibility span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberProgramEligibility', 
@level2type=N'COLUMN',@level2name=N'ProgramID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the eligibility span started' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberProgramEligibility', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the eligibility span ended' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberProgramEligibility', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO
