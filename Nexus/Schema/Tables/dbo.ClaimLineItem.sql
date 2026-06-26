

CREATE TABLE [dbo].[ClaimLineItem](
	[ClaimLineItemId] [integer]  IDENTITY(1,1) NOT NULL,
	[ClaimId] [int] NOT NULL,
	[BenefitCodeId]      char(3)  NULL,
    [PlaceOfServiceId]   char(2)  NULL,
	[Count] [int] NULL,
	[ServiceDateBegin] [date] NOT NULL CONSTRAINT [DFClaimLineItemServiceDateBegin] DEFAULT (CAST(GETUTCDATE() AS DATE)),
	[ServiceDateEnd] [date] NULL,
	[Amount] DECIMAL(18,2) NULL,
	[ReductionAmount] DECIMAL(18,2) NULL,
	[CPTCode] CHAR(5) NULL,
	[CPTCodeModifier] CHAR(2) NULL,
	[ReductionCodeId] [char](2) NULL,
	[EligibilityOverride] [bit] NOT NULL CONSTRAINT [DFClaimLineItemEligibilityOverride] DEFAULT (0),
	[TimeFrameExemption] [bit] NOT NULL CONSTRAINT [DFClaimLineItemTimeFrameExemption] DEFAULT (0),
	[SortOrder]          [integer]  NULL ,
 	CONSTRAINT [PKClaimLineItem] PRIMARY KEY CLUSTERED ([ClaimLineItemId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to contain line items for each claim' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each claim line item' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'ClaimLineItemId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to Claim table on ClaimId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'ClaimId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to BenefitCode table on BenefitCodeId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'BenefitCodeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to PlaceOfService table on PlaceOfServiceId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'PlaceOfServiceId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The count or number for the line item' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'Count'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Service date the line item began' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'ServiceDateBegin'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dollar amount for the line item' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'Amount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dollar amount of the reduction for the line item' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'ReductionAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to CPTCode table on CPTCode field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'CPTCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to CPTCodeModifier table on CPTCodeModifier field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'CPTCodeModifier'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key to ReductionCode table on ReductionCodeId field' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'ReductionCodeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field on if this is an eligibility override' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'EligibilityOverride'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field on if this is a time frame exemption override' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'ClaimLineItem', 
@level2type=N'COLUMN',@level2name=N'TimeFrameExemption'
GO
