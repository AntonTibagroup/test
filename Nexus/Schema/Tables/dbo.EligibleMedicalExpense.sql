

CREATE TABLE [dbo].[EligibleMedicalExpense](
	[EligibleMedExpenseID] [integer]  IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Amount] [numeric](18, 2) NULL,
	[Count] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[ProgramId] [int] NULL,
	[ReferralRequired] [bit] NULL,
	[BenefitCodeId]  char(3)  NULL,
	[PlaceOfServiceId]  char(2)  NULL,
 	CONSTRAINT [PKEligibleMedicalExpense] PRIMARY KEY CLUSTERED ([EligibleMedExpenseID] ASC)
 )

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Medical expenses that qualify for sharing by members under the designated program. 
Ex: V.C. Some conditions have limitations to sharing. These include cataract surgery, congenital conditions, dental expenses, dietary supplements, 
extreme sports, genetic tests, medical devices and equipment, medical transportation, organ donation, prescription medication, psych treatment, 
regenerative injection therapy, skilled nursing and rehabilitation, sleep apnea appliances, and physical therapy. Some of these, like congenital 
conditions, have sharing limits, so those at least need built in rules.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EligibleMedicalExpense'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field for each eligible medical expense' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EligibleMedicalExpense', 
@level2type=N'COLUMN',@level2name=N'EligibleMedExpenseID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name or description for eligible medical expense' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EligibleMedicalExpense', 
@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dollar amount for the eligible medical expense' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EligibleMedicalExpense', 
@level2type=N'COLUMN',@level2name=N'Amount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Count or number allowed for the eligible medical expense' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EligibleMedicalExpense', 
@level2type=N'COLUMN',@level2name=N'Count'
GO

EXEC sp_addextendedproperty @name = 'MS_Description', @value = 'Start date for the BenefitPlaceElig date span',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibleMedicalExpense',
@level2type = 'COLUMN', @level2name = 'StartDate'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for this eligible medical expense' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EligibleMedicalExpense', 
@level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sp_addextendedproperty @name = 'MS_Description', @value = 'Foreign keys to Program table, links to ProgramId',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibleMedicalExpense',
@level2type = 'COLUMN', @level2name = 'ProgramId'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field on if a referral is required' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EligibleMedicalExpense', 
@level2type=N'COLUMN',@level2name=N'ReferralRequired'
GO

EXEC sp_addextendedproperty @name = 'MS_Description', @value = 'Foreign keys BenefitCode table, links to BenefitCodeId',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibleMedicalExpense',
@level2type = 'COLUMN', @level2name = 'BenefitCodeId'
go
EXEC sp_addextendedproperty	@name = 'MS_Description', @value = 'Foreign keys to PlaceOfService table, links to PlaceOfServiceId',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'EligibleMedicalExpense',
@level2type = 'COLUMN', @level2name = 'PlaceOfServiceId'
go