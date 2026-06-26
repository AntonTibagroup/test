CREATE TABLE [DropReason]
( 
	[DropReasonId]       [Integer]  IDENTITY ( 1,1 ) ,
	[Description]        [varchar](100)  NOT NULL ,
	[isActive]           [bit] NOT NULL 
	CONSTRAINT [DFDropReasonisActive] DEFAULT  1,
	[SortOrder]          integer  NOT NULL ,
	CONSTRAINT [PKDropReason] PRIMARY KEY  CLUSTERED ([DropReasonId] ASC)
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table for the list of available reasons a member or membership would drop or be removed (ex: Insurance, Cost increase/Financial, Dependent Cancellation)' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DropReason'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DropReason', 
@level2type=N'COLUMN',@level2name=N'DropReasonId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the drop reason' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DropReason', 
@level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bit field on if the drop reason is active or not' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'DropReason', 
@level2type=N'COLUMN',@level2name=N'isActive'
GO
