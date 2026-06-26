CREATE TABLE [dbo].[ReductionCode](
	[ReductionCodeId] [char](2) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Category] [varchar](50) NULL,
	[isActive] [bit] NOT NULL CONSTRAINT DFReductionCodeisActive DEFAULT(1),
 CONSTRAINT [PKReductionCode] PRIMARY KEY CLUSTERED ([ReductionCodeId] ASC)
)
