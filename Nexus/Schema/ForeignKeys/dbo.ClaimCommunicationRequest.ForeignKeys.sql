
ALTER TABLE [dbo].[ClaimCommunicationRequest] ADD CONSTRAINT [FKClaimCommunicationRequestCommunication] FOREIGN KEY([CommunicationId]) REFERENCES [dbo].[Communication] ([CommunicationId]);
GO

ALTER TABLE [dbo].[ClaimCommunicationRequest] ADD CONSTRAINT [FKClaimCommunicationRequestAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO