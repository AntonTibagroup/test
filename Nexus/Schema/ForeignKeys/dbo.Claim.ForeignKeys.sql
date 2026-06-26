
ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [FKClaimIncident] FOREIGN KEY([IncidentId]) REFERENCES [Incident] ([IncidentId]);
GO

ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [FKClaimSharingType] FOREIGN KEY ([SharingTypeId]) REFERENCES [SharingType]([SharingTypeId]);
GO

ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [FKClaimProvider] FOREIGN KEY ([ProviderId]) REFERENCES [Provider]([ProviderId]);
GO

ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [FKClaimClaimStatus] FOREIGN KEY ([ClaimStatusId]) REFERENCES [ClaimStatus]([ClaimStatusId]);
GO

ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [FKClaimFacility] FOREIGN KEY ([FacilityId]) REFERENCES [Facility]([FacilityId]);
GO