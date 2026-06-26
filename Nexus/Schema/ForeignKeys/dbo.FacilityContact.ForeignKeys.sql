
ALTER TABLE [dbo].[FacilityContact] ADD CONSTRAINT [FKFacilityContactContact] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact]([ContactId]);
GO

ALTER TABLE [dbo].[FacilityContact] ADD CONSTRAINT [FKFacilityContactContactRole] FOREIGN KEY ([ContactRoleId]) REFERENCES [dbo].[ContactRole]([ContactRoleId]);
GO

ALTER TABLE [dbo].[FacilityContact] ADD CONSTRAINT [FKFacilityContactFacility] FOREIGN KEY ([FacilityId]) REFERENCES [dbo].[Facility]([FacilityId]);
GO