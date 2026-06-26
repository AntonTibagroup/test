

CREATE TABLE [dbo].[SharingPayment](
	[SharingPaymentId] [integer]  IDENTITY(1,1) NOT NULL,
	[SharingBatchId] [int] NOT NULL,
	[CreateDateTimeOffset] [datetimeoffset](3) NOT NULL CONSTRAINT DFSharingPaymentCreateDateTimeOffset DEFAULT (SYSUTCDATETIME()),
	[Amount] [decimal](18, 2) NULL,
	[PaymentNumber] [int] NULL,
	[Cleared] [bit] NULL,
	[PayToMember]        integer  NULL ,
	[PayToAddress]       integer  NULL ,
	[PayToFacility]      integer  NULL ,
    CONSTRAINT [PKSharingPayment] PRIMARY KEY CLUSTERED ([SharingPaymentId] ASC)
)

GO
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'SharingPayment',
@level2type = 'COLUMN', @level2name = 'PayToMember'
go
EXEC sp_addextendedproperty
@name = 'MS_Description', @value = 'ID field integer, auto incrementing',
@level0type = 'SCHEMA', @level0name = 'dbo',
@level1type = 'TABLE', @level1name = 'SharingPayment',
@level2type = 'COLUMN', @level2name = 'PayToAddress'
go