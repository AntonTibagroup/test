

CREATE TABLE [dbo].[MaxSharingAmountType](
	[MemberId] [int] NOT NULL,
	[IllnessCode] [integer] NOT NULL,
	[isActive] [bit] NOT NULL CONSTRAINT DFMaxSharingAmountTypeisActive DEFAULT(1),
	[MaxSharingAmount] DECIMAL(18,2) NULL,
	CONSTRAINT [PKMaxSharingAmountType] PRIMARY KEY CLUSTERED ([MemberId] ASC,	[IllnessCode] ASC)
)
