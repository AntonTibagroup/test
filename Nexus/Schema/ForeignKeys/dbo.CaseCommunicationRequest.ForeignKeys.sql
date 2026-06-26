
ALTER TABLE [dbo].[CaseCommunicationRequest] ADD CONSTRAINT [FKCaseCommunicationRequestCommunication] FOREIGN KEY([CommunicationId]) REFERENCES [dbo].[Communication] ([CommunicationId]);
GO

ALTER TABLE [dbo].[CaseCommunicationRequest] ADD CONSTRAINT [FKCaseCommunicationRequestAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO