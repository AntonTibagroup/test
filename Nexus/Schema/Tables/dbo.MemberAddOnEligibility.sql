

CREATE TABLE [dbo].[MemberAddOnEligibility] (
[AddOnId] [int] NOT NULL,
[MembershipId] [int] NOT NULL,
[MemberId] [int] NOT NULL,
[AddOnBillableUnitId] [int] NOT NULL,
[StartDate] [date] NOT NULL CONSTRAINT [DFMemberAddOnEligibility] DEFAULT (CONVERT([date],getutcdate())),
[EndDate] [date] NULL,
CONSTRAINT [PKmemberaddoneligibility] PRIMARY KEY CLUSTERED ([AddOnId], 
	[MembershipId], 
	[MemberId], 
	[AddOnBillableUnitId], 
	[StartDate])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The join table where the Member, Membership, Add On and Add On Unit Id are joined.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberAddOnEligibility'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to AddOn table, AddOnId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberAddOnEligibility', 
@level2type=N'COLUMN',@level2name=N'AddOnID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to Membership table, MembershipId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberAddOnEligibility', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to Member table, MemberId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberAddOnEligibility', 
@level2type=N'COLUMN',@level2name=N'MemberID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to AddOnBillableUnit table, AddOnBillableUnitId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberAddOnEligibility', 
@level2type=N'COLUMN',@level2name=N'AddOnBillableUnitID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for this add on, during this membership, during this date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberAddOnEligibility', 
@level2type=N'COLUMN',@level2name=N'StartDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for this add on, during this membership, during this date span' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'MemberAddOnEligibility', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO
