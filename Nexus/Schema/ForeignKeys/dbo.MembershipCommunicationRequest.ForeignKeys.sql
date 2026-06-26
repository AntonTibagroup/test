
ALTER TABLE [dbo].[MembershipCommunicationRequest] ADD CONSTRAINT [FKMembershipCommunicationRequestCommunication] FOREIGN KEY([CommunicationId]) REFERENCES [dbo].[Communication] ([CommunicationId]);
GO

ALTER TABLE [dbo].[MembershipCommunicationRequest] ADD CONSTRAINT [FKMembershipCommunicationRequestAppUser] FOREIGN KEY([AppUserId]) REFERENCES [dbo].[AppUser] ([AppUserId]);
GO