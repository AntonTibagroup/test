
ALTER TABLE [dbo].[GroupCommunicationRequest] ADD CONSTRAINT [FKGroupCommunicationRequestCommunication] FOREIGN KEY([CommunicationId]) REFERENCES [dbo].[Communication] ([CommunicationId]);
GO

ALTER TABLE [dbo].[GroupCommunicationRequest] ADD CONSTRAINT [FKGroupCommunicationRequestAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO