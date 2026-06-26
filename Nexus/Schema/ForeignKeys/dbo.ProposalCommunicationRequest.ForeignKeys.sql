
ALTER TABLE [dbo].[ProposalCommunicationRequest] ADD CONSTRAINT [FKProposalCommunicationRequestCommunication] FOREIGN KEY([CommunicationId]) REFERENCES [dbo].[Communication] ([CommunicationId]);
GO

ALTER TABLE [dbo].[ProposalCommunicationRequest] ADD CONSTRAINT [FKProposalCommunicationRequestAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO