

CREATE TABLE [dbo].[MemberMedicare](
	[MemberId] [int] NOT NULL,
	[MedicareTypeId] [int] NOT NULL,
	[StartDate] [date] NOT NULL CONSTRAINT [DFMemberMedicareStartDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
	[EndDate] [date] NULL,
	CONSTRAINT [PKmembermedicare] PRIMARY KEY CLUSTERED ([MemberId],
		[MedicareTypeId],
		[StartDate])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains Member''s information about type of medicare coverage and date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberMedicare'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to Member table, links to Member ID' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberMedicare', 
@level2type=N'COLUMN',@level2name=N'MemberID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of medicare coverage such as Parts A and B' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberMedicare', 
@level2type=N'COLUMN',@level2name=N'MedicareTypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the specific coverage type and this date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberMedicare', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the specific coverage type and this date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberMedicare', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO
