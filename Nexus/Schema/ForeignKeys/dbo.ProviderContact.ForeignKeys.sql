
ALTER TABLE [dbo].[ProviderContact] ADD CONSTRAINT [FKProviderContactProvider] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Provider]([ProviderId]);
GO

ALTER TABLE [dbo].[ProviderContact] ADD CONSTRAINT [FKProviderContactContact] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact]([ContactId]);
GO

ALTER TABLE [dbo].[ProviderContact] ADD CONSTRAINT [FKProviderContactContactRole] FOREIGN KEY ([ContactRoleId]) REFERENCES [dbo].[ContactRole]([ContactRoleId]);
GO