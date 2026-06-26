

CREATE TABLE [dbo].[Illness](
[IllnessId] INT IDENTITY(1,1) NOT NULL,
[MemberId] INT NOT NULL,
[FirstSymptomDate] DATE NULL,
[CreateDateTimeOffset] DATETIMEOFFSET(3) NULL,
[UpdateDateTimeOffset] DATETIMEOFFSET(3) NULL,
[DRGCode] CHAR(3) NULL,
[IllnessCode] [integer] NOT NULL
CONSTRAINT [PKillness] PRIMARY KEY CLUSTERED ([IllnessId]),
CONSTRAINT [CKIllnessCreateDateTimeOffsetUTC] 
    CHECK (DATEPART(TZOFFSET, [CreateDateTimeOffset]) = 0),
CONSTRAINT [CKIllnessUpdateDateTimeOffsetUTC] 
	CHECK (DATEPART(TZOFFSET, UpdateDateTimeOffset) = 0)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table for Illnesses that belong to a member. And illness is the top tier of a medical issue in the hierarchy.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness', 
@level2type=N'COLUMN',@level2name=N'IllnessId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Member table, links to the MemberId, will be the Id for the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness', 
@level2type=N'COLUMN',@level2name=N'MemberId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First day the illness was experienced or treated.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness', 
@level2type=N'COLUMN',@level2name=N'FirstSymptomDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the illness was entered into the system.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness', 
@level2type=N'COLUMN',@level2name=N'CreateDateTimeOffset'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date changes were made to the illness in the system.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness', 
@level2type=N'COLUMN',@level2name=N'UpdateDateTimeOffset'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the DRGCode table, links to the DRGCode, will be the DRGCode for the illness' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness', 
@level2type=N'COLUMN',@level2name=N'DRGCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the IllnessCode table, links to the IllnessCode, will be the IllnessCode for the illness' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Illness', 
@level2type=N'COLUMN',@level2name=N'IllnessCode'
GO
