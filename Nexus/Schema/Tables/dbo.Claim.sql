

CREATE TABLE [dbo].[Claim](
[ClaimId] 				INT IDENTITY(1,1) NOT NULL,
[IncidentId] 			INT 		NULL,
[HumanReadableClaimId] 	VARCHAR(25) NULL,
[ClaimAccountNumber] 	VARCHAR(50) NULL,
[ProviderId] 			INT 		NULL,
[SharingTypeId] 		INT 		NULL,
[ReceiveDate] 			DATE 		NOT NULL,
[isDeleted]          	bit  		NULL CONSTRAINT DFClaimisDeleted DEFAULT(0),
[ClaimStatusId] 		INT 		NULL,
[FacilityId]            integer  	NULL ,
CONSTRAINT [PKclaim] PRIMARY KEY CLUSTERED ([ClaimId])
)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table for Claims that belong to a member. A claim is the bottom tier of a medical issue in the hierarchy. A
															claim belongs to an incident and an incident can have many claims.' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID field integer, auto incrementing' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'ClaimId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Incident table, links to the IncidentId, will be the IncidentId for the claim' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'IncidentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A claim number that the claim entry person can type in manually if provided one by the member' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'HumanReadableClaimId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An account number for the member with the provider or facility' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'ClaimAccountNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Provider table, links to the ProviderId, will be the ProviderId for the claim' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'ProviderId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the SharingType table, links to the SharingTypeId, will be the SharingTypeId for the claim' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'SharingTypeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Received date for the claim document' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'ReceiveDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign keys to the Location table, links to the LocationId, will be the LocationId for the claim [Calculated]' , 
@level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'Claim', 
@level2type=N'COLUMN',@level2name=N'FacilityId'
GO
