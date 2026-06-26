

CREATE TABLE [dbo].[Referral](
	[ReferralId] [int] IDENTITY(1,1) NOT NULL,
	[MembershipId] [int] NULL,
	[ReferredMembershipId] [int] NOT NULL,
	[ReferredDate] [date] NOT NULL CONSTRAINT [DFReferralReferredDate] DEFAULT (CAST(GETUTCDATE() AS DATE)),
	[CreditAppliedDate] [date] NULL,
	[CreditAmount] [int] NULL,
	CONSTRAINT [PKReferral] PRIMARY KEY CLUSTERED ([ReferralId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains Member IDs and the Referred Member IDs to track the credits applied for the referral' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Referral'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Referral', 
@level2type=N'COLUMN',@level2name=N'ReferralID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Membership ID for the Membership that did the referral' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Referral', 
@level2type=N'COLUMN',@level2name=N'MembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Membership ID for the Membership that is new and was referred' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Referral', 
@level2type=N'COLUMN',@level2name=N'ReferredMembershipID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the new membership was entered as a referral' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Referral', 
@level2type=N'COLUMN',@level2name=N'ReferredDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date that the credit for the referral was applied to the membership' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Referral', 
@level2type=N'COLUMN',@level2name=N'CreditAppliedDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Amount of the credit' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Referral', 
@level2type=N'COLUMN',@level2name=N'CreditAmount'
GO
