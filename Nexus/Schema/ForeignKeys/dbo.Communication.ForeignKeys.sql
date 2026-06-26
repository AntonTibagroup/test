
ALTER TABLE [dbo].[Communication] ADD CONSTRAINT [FKCommunicationMember] FOREIGN KEY([MemberId]) REFERENCES [dbo].[Member] ([MemberId]);
GO

ALTER TABLE [dbo].[Communication] ADD CONSTRAINT [FKCommunicationCommunicationType] FOREIGN KEY([CommunicationTypeId]) REFERENCES [dbo].[CommunicationType] ([CommunicationTypeId]);
GO

ALTER TABLE [dbo].[Communication] ADD CONSTRAINT [FKCommunicationAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO

ALTER TABLE [dbo].[Communication] ADD CONSTRAINT [FKCommunicationCommunicationDescription] FOREIGN KEY([CommunicationDescriptionId]) REFERENCES [dbo].[CommunicationDescription] ([CommunicationDescriptionId]);
GO

ALTER TABLE [dbo].[Communication] ADD CONSTRAINT [FKCommunicationMembership] FOREIGN KEY([MembershipId]) REFERENCES [dbo].[Membership] ([MembershipId]);
GO

ALTER TABLE [dbo].[Communication] ADD CONSTRAINT [FKCommunicationDocument] FOREIGN KEY ([DocumentId]) REFERENCES [Document]([DocumentId]);
GO