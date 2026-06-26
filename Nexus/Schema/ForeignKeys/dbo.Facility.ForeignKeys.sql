
ALTER TABLE [dbo].[Facility] ADD CONSTRAINT [FKFacilityProvider] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Provider]([ProviderId]);
GO