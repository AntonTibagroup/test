

CREATE TABLE [dbo].[SharingBatch](
	[SharingBatchId] [integer]  IDENTITY(1,1) NOT NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NOT NULL CONSTRAINT DFSharingBatchCreateDateTimeOffset DEFAULT (SYSUTCDATETIME()),
	[AppUserId] [int] NOT NULL,
	[PostDate] [date] NULL,
	[BatchTypeId] [int] NOT NULL,
	[AccountId] [int]  NOT NULL,
	[Description] [varchar](255) NULL,
 	CONSTRAINT [PKSharingBatch] PRIMARY KEY CLUSTERED ([SharingBatchId] ASC)
 )
