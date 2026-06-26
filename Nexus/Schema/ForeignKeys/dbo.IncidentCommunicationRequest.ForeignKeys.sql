
ALTER TABLE [dbo].[IncidentCommunicationRequest] ADD CONSTRAINT [FKIncidentCommunicationRequestCommunication] FOREIGN KEY([CommunicationId]) REFERENCES [dbo].[Communication] ([CommunicationId]);
GO

ALTER TABLE [dbo].[IncidentCommunicationRequest] ADD CONSTRAINT [FKIncidentCommunicationRequestAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO